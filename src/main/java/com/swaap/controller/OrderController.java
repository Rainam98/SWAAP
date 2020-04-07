package com.swaap.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.swaap.model.CartVO;
import com.swaap.model.LoginVO;
import com.swaap.model.OrderVO;
import com.swaap.model.ProductCountVO;
import com.swaap.service.CartService;
import com.swaap.service.LoginService;
import com.swaap.service.OrderService;
import com.swaap.service.ProductCountService;
import com.swaap.service.ProductService;
import com.swaap.utils.Basemethods;

@Controller
public class OrderController {
	
	@Autowired
	OrderService orderService;

	@Autowired
	ProductService productService;
	
	@Autowired
	ProductCountService productCountService;

	@Autowired
	LoginService loginService;

	@Autowired
	CartService cartService;

	@RequestMapping(value = "/user/placeOrder", method = RequestMethod.GET)
	public ModelAndView placeOrder(@ModelAttribute OrderVO orderVO) {
		Date date=new Date();
		String setDateFormat="dd/MM/yyyy";
		DateFormat dateformat=new SimpleDateFormat(setDateFormat);
		String formattedDate=dateformat.format(date);
		orderVO.setPurchaseDate(formattedDate);
		ProductCountVO productCountVO=new ProductCountVO();
		productCountVO.setDate(formattedDate);
		String userName = Basemethods.getUser();
		LoginVO loginVO;
		List userList = this.loginService.searchUserByUsername(userName);
		loginVO = (LoginVO) userList.get(0);
		List cartList = this.cartService.searchCart(loginVO);
		orderVO.setLoginVO(loginVO);
		this.orderService.insertOrder(orderVO);
		int totalAmount=0;
		for(Object cartObjects: cartList) {
            CartVO cartVO = (CartVO) cartObjects;
            cartVO.setOrderVO(orderVO);
            cartVO.setStatus(true);
            int quantity = cartVO.getProductQuantityBought();
            double price = cartVO.getProductVO().getProductPrice();
            totalAmount += quantity * price;
            this.cartService.insertProductToCart(cartVO);
            
        }
		orderVO.setTotalAmount(totalAmount);
		this.orderService.insertOrder(orderVO);
		for(Object cartObjects: cartList) 
		{
            CartVO cartVO = (CartVO) cartObjects;
            List productCountList=this.productCountService.searchProductCount(cartVO.getProductVO(), formattedDate);
            if(!(productCountList.isEmpty()))
            {
            	for(Object productCountObjects : productCountList)
            	{
            		ProductCountVO productCount=(ProductCountVO)productCountObjects;
            		productCount.setFrequency(cartVO.getProductQuantityBought()+productCount.getFrequency());
            		this.productCountService.insertProductCount(productCount);	
            	}
            }
            else
            {
            		productCountVO.setProductVO(cartVO.getProductVO());
            		productCountVO.setFrequency(cartVO.getProductQuantityBought());
            		this.productCountService.insertProductCount(productCountVO);	
            }
		}
		return new ModelAndView("redirect:/user/index"); 
	}
	
	@RequestMapping(value = "/user/viewOrderHistory", method = RequestMethod.GET)
	public ModelAndView orderHistory() {
		String userName = Basemethods.getUser();
		LoginVO loginVO;
		List userList = this.loginService.searchUserByUsername(userName);
		loginVO = (LoginVO) userList.get(0);
		List orderList=this.orderService.getOrderDetails(loginVO);
		return new ModelAndView("/user/viewOrderHistory","orderList",orderList);
	}
	
	@RequestMapping(value = "/user/orderDetail", method = RequestMethod.GET)
	public ModelAndView orderDetail(@RequestParam int orderId) {
		List cartList=this.cartService.getOrderDetails(orderId);
		return new ModelAndView("/user/orderDetail","cartList",cartList);
	}
}
