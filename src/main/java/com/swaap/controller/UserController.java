package com.swaap.controller;

import com.swaap.service.LoginService;
import com.swaap.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class UserController {

	@Autowired
	RegisterService registerService;

	@Autowired
	LoginService loginService;

	@RequestMapping(value = "/mall/viewUser", method = RequestMethod.GET)
	public ModelAndView viewUser() {
		List users = this.registerService.searchUser();
		return new ModelAndView("mall/manageUser", "userList", users);
	}

	@RequestMapping(value = "/user/scanner", method = RequestMethod.GET)
	public ModelAndView scanner() {
		return new ModelAndView("user/scanner");
	}
}