package com.swaap.controller;

import com.swaap.model.CartVO;
import com.swaap.model.LoginVO;
import com.swaap.model.OrderVO;
import com.swaap.service.CartService;
import com.swaap.service.LoginService;
import com.swaap.service.OrderService;
import com.swaap.service.ProductService;
import com.swaap.utils.Basemethods;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class OrderController {
	
	@Autowired
	OrderService orderService;

	@Autowired
	ProductService productService;

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
            System.out.println(cartVO.getOrderVO().getId());
            System.out.println(cartVO.isStatus());
        }
		orderVO.setTotalAmount(totalAmount);
		this.orderService.insertOrder(orderVO);
		return new ModelAndView("redirect:/user/index"); 
	}
	
	@RequestMapping(value = "/user/vieworderHistory", method = RequestMethod.GET)
	public ModelAndView orderHistory() {
		String userName = Basemethods.getUser();
		LoginVO loginVO;
		List userList = this.loginService.searchUserByUsername(userName);
		loginVO = (LoginVO) userList.get(0);
		List orderList=this.orderService.getOrderDetails(loginVO);
		return new ModelAndView("/user/viewOrderHistory","orderList",orderList);
	}
}
