package com.swaap.controller;

import com.swaap.model.LoginVO;
import com.swaap.service.*;
import com.swaap.utils.Basemethods;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

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
