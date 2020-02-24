package com.swaap.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.swaap.model.RegisterVO;
import com.swaap.service.LoginService;
import com.swaap.service.ProductService;
import com.swaap.service.RegisterService;

@Controller
public class CartController {
	@Autowired
	RegisterService registerService;
	
	@Autowired
	ProductService productService;
	
	@Autowired
	LoginService loginService;
	
	@RequestMapping(value = "/user/myAccount", method = RequestMethod.GET)
	public ModelAndView loadLogin() {
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String userName = user.getUsername();
		System.out.println(userName);
		List userList=this.registerService.searchUserByUsername(userName);
		return new ModelAndView("user/myAccount","registerVO",(RegisterVO)userList.get(0));
	}
	
	@RequestMapping(value = "/user/updateAccount", method = RequestMethod.POST)
	public ModelAndView updateAccount(@ModelAttribute RegisterVO registerVO) {
		this.registerService.insertRegister(registerVO);
		return new ModelAndView("redirect:/user/index");
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public ModelAndView searchProduct(@RequestParam String q) {
		List productList=this.productService.getProductByString(q);
		return new ModelAndView("/user/productDetail","productList",productList);
	}
	
	@RequestMapping(value = "/user/viewCart", method = RequestMethod.GET)
	public ModelAndView viewCart()
	{
		return new ModelAndView("/user/cart");
	}
}
