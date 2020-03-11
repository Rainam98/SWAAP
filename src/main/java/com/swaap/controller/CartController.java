package com.swaap.controller;

import com.swaap.model.CartVO;
import com.swaap.model.LoginVO;
import com.swaap.model.ProductVO;
import com.swaap.model.RegisterVO;
import com.swaap.service.CartService;
import com.swaap.service.LoginService;
import com.swaap.service.ProductService;
import com.swaap.service.RegisterService;
import com.swaap.utils.Basemethods;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class CartController {
	@Autowired
	RegisterService registerService;

	@Autowired
	ProductService productService;

	@Autowired
	LoginService loginService;

	@Autowired
	CartService cartService;

	@RequestMapping(value = "/user/myAccount", method = RequestMethod.GET)
	public ModelAndView loadLogin() {
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String userName = user.getUsername();
		System.out.println(userName);
		List userList = this.registerService.searchUserByUsername(userName);
		return new ModelAndView("user/myAccount", "registerVO", (RegisterVO) userList.get(0));
	}

	@RequestMapping(value = "/user/updateAccount", method = RequestMethod.POST)
	public ModelAndView updateAccount(@ModelAttribute RegisterVO registerVO) {
		this.registerService.insertRegister(registerVO);
		return new ModelAndView("redirect:/user/index");
	}

	@RequestMapping(value = "/user/search", method = RequestMethod.GET)
	public ModelAndView searchProduct(@RequestParam String q) {
		List productList = this.productService.getProductByString(q);
		return new ModelAndView("/user/productDetail", "productList", productList);
	}



	@RequestMapping(value = "/user/addToCart", method = RequestMethod.GET)
	public ModelAndView addToCart(@RequestParam int productId, @ModelAttribute CartVO cartVO) {
		ProductVO productVO = new ProductVO();
		productVO.setId(productId);

		cartVO.setProductQuantityBought(1);
		cartVO.setProductVO(productVO);

		String userName = Basemethods.getUser();

		LoginVO loginVO;

		List userList = this.loginService.searchUserByUsername(userName);
		loginVO = (LoginVO) userList.get(0);
		cartVO.setLoginVO(loginVO);
		cartVO.setStatus(true);

		this.cartService.insertProductToCart(cartVO);

		List cartList = this.cartService.searchCart(loginVO);
		return new ModelAndView("/user/cart", "cartList", cartList);
	}
	
	@RequestMapping(value = "/user/viewCart", method = RequestMethod.GET)
	public ModelAndView viewCart() {
		String userName = Basemethods.getUser();
		LoginVO loginVO;
		List userList = this.loginService.searchUserByUsername(userName);
		loginVO = (LoginVO) userList.get(0);
		List cartList = this.cartService.searchCart(loginVO);
		return new ModelAndView("/user/cart", "cartList", cartList);
	}
}
