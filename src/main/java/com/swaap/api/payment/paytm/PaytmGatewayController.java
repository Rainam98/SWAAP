package com.swaap.api.payment.paytm;

import com.paytm.pg.merchant.CheckSumServiceHelper;
import com.swaap.model.*;
import com.swaap.service.*;
import com.swaap.utils.Basemethods;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map.Entry;
import java.util.TreeMap;

@Controller
public class PaytmGatewayController {


    @Autowired
    LoginService loginService;

    @Autowired
    CartService cartService;

    @Autowired
    RegisterService registerService;

    @Autowired
    Environment environment;

    @Autowired
    OrderService orderService;

    @Autowired
    ProductCountService productCountService;

    @RequestMapping(value = "/user/payonline", method = RequestMethod.GET)
    public ModelAndView loadCheckoutDetails(HttpServletRequest request) throws Exception {
        String userName = Basemethods.getUser();
        RegisterVO registerVO;
        List userList = this.registerService.searchUserByUsername(userName);
        registerVO = (RegisterVO) userList.get(0);
        List cartList = this.cartService.searchCart(registerVO.getLoginVO());

        //calculating the payment amount
        double txn_amount = 0;
        for (Object cartObjects : cartList) {
            CartVO cartVO = (CartVO) cartObjects;
            cartVO.setStatus(true);
            int quantity = cartVO.getProductQuantityBought();
            double price = cartVO.getProductVO().getProductPrice();
            txn_amount += quantity * price;
        }
        if (txn_amount == 0) {
            return new ModelAndView("redirect:/user/index");
        }
        String emailid = userName;
        String encOrderId = Basemethods.generateHash(userName + new Date());
        String merchantMid = environment.getProperty("paytm.merchantId");
        String merchantKey = environment.getProperty("paytm.merchantKey");
        String orderId = encOrderId;
        String channelId = "WEB";
        String custId = "CUST_" + registerVO.getLoginVO().getLoginId();
        String mobileNo = registerVO.getMobileNumber();
        String email = emailid;
        String txnAmount = "" + txn_amount;
        String website = environment.getProperty("paytm.website");
        String industryTypeId = environment.getProperty("paytm.industryTypeId");
        String callbackUrl = environment.getProperty("paytm.callBackURL");
        ModelAndView modelAndView = new ModelAndView("redirect:" + environment.getProperty("paytm.paymentURL"));
        TreeMap<String, String> paytmParams = new TreeMap<String, String>();
        paytmParams.put("MID", merchantMid);
        paytmParams.put("ORDER_ID", orderId);
        paytmParams.put("CHANNEL_ID", channelId);
        paytmParams.put("CUST_ID", custId);
        paytmParams.put("MOBILE_NO", mobileNo);
        paytmParams.put("EMAIL", email);
        paytmParams.put("TXN_AMOUNT", txnAmount);
        paytmParams.put("WEBSITE", website);
        paytmParams.put("INDUSTRY_TYPE_ID", industryTypeId);
        paytmParams.put("CALLBACK_URL", callbackUrl);
        String paytmChecksum = CheckSumServiceHelper.getCheckSumServiceHelper().genrateCheckSum(merchantKey, paytmParams);
        paytmParams.put("CHECKSUMHASH", paytmChecksum);
        modelAndView.addAllObjects(paytmParams);
        return modelAndView;
    }

    @RequestMapping(value = "/user/paytmResponse", method = RequestMethod.POST)
    public String paytmResponse(HttpServletRequest request) throws Exception {
        final String merchantKey = environment.getProperty("paytm.merchantKey");
        String paytmChecksum = null;
        // Create a tree map from the form post param
        TreeMap<String, String> paytmParams = new TreeMap<String, String>();
        // Request is HttpServletRequest
        for (Entry<String, String[]> requestParamsEntry : request.getParameterMap().entrySet()) {
            if ("CHECKSUMHASH".equalsIgnoreCase(requestParamsEntry.getKey())) {
                paytmChecksum = requestParamsEntry.getValue()[0];
            } else {
                paytmParams.put(requestParamsEntry.getKey(), requestParamsEntry.getValue()[0]);
            }
        }
        // Call the method for verification
        boolean isValidChecksum = CheckSumServiceHelper.getCheckSumServiceHelper().verifycheckSum(merchantKey, paytmParams, paytmChecksum);
        if (isValidChecksum) {
            OrderVO orderVO = new OrderVO();
            orderVO.setTotalAmount(Double.parseDouble(paytmParams.get("TXNAMOUNT")));
            orderVO.setTransactionId(paytmParams.get("TXNID"));
            orderVO.setPaymentMode(paytmParams.get("PAYMENTMODE"));
            orderVO.setPaymentGateway(paytmParams.get("GATEWAYNAME"));
            saveOrder(orderVO);
            return "redirect:" + environment.getProperty("paytm.successURL");
        } else {
            System.out.println("Checksum MisMatch");
            return "redirect:" + environment.getProperty("paytm.errorURL");
        }
    }

    private void saveOrder(OrderVO orderVO) {
        DateFormat dateformat = new SimpleDateFormat("dd/MM/yyyy");
        String formattedDate = dateformat.format(new Date());
        String userName = Basemethods.getUser();
        LoginVO loginVO;
        List userList = this.loginService.searchUserByUsername(userName);
        loginVO = (LoginVO) userList.get(0);
        List cartList = this.cartService.searchCart(loginVO);

        orderVO.setPurchaseDate(formattedDate);
        orderVO.setLoginVO(loginVO);
        this.orderService.insertOrder(orderVO);

        for (Object cartObjects : cartList) {
            CartVO cartVO = (CartVO) cartObjects;
            cartVO.setOrderVO(orderVO);
            cartVO.setStatus(true);
            this.cartService.insertProductToCart(cartVO);
        }
        updateProductCounts(formattedDate, cartList);
    }

    private void updateProductCounts(String purchaseDate, List cartList) {
        for (Object cartObjects : cartList) {
            CartVO cartVO = (CartVO) cartObjects;
            List productCountList = this.productCountService.searchProductCount(cartVO.getProductVO(), purchaseDate);
            if (!productCountList.isEmpty()) {
                for (Object productCountObjects : productCountList) {
                    ProductCountVO productCount = (ProductCountVO) productCountObjects;
                    productCount.setFrequency(cartVO.getProductQuantityBought() + productCount.getFrequency());
                    this.productCountService.insertProductCount(productCount);
                }
            } else {
                ProductCountVO productCountVO = new ProductCountVO();
                productCountVO.setDate(purchaseDate);
                productCountVO.setProductVO(cartVO.getProductVO());
                productCountVO.setFrequency(cartVO.getProductQuantityBought());
                this.productCountService.insertProductCount(productCountVO);
            }
        }
    }
}

