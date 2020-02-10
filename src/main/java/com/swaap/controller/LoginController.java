package com.swaap.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.swaap.model.CategoryVO;
import com.swaap.model.LoginVO;
import com.swaap.model.SubCategoryVO;
import com.swaap.service.CategoryService;
import com.swaap.service.LoginService;
import com.swaap.service.SubCategoryService;


@Controller
public class LoginController {

	@Autowired
	LoginService loginService;
	@Autowired
	CategoryService categoryService;
	@Autowired
	SubCategoryService subCategoryService;
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView loadLogin() {

		return new ModelAndView("login");
	}
	
	@RequestMapping(value = "/mall/index", method = RequestMethod.GET)
	public ModelAndView mallIndex(LoginVO loginVO,CategoryVO categoryVO, SubCategoryVO subCategoryVO, Model model ) {

		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String userName = user.getUsername();
	/*	List categoryList=this.categoryService.searchCategory();
		List subCategoryList=this.subCategoryService.searchSubCategory();
		model.addAttribute("categoryList",categoryList);
		model.addAttribute("subCategoryList",subCategoryList);*/
		return new ModelAndView("mall/index");
	}
	
	@RequestMapping(value = "/branch/index", method = RequestMethod.GET)
	public ModelAndView userIndex() {
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String userName = user.getUsername();
		return new ModelAndView("branch/index");
	}
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView register() {
		/*User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String userName = user.getUsername();*/
		return new ModelAndView("mall/register");
	}
	@RequestMapping(value = "/user/index", method = RequestMethod.GET)
	public ModelAndView userIndex(LoginVO loginVO, Model model ) {

		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String userName = user.getUsername();
		List categoryList=this.categoryService.searchCategory();
		model.addAttribute("categoryList",categoryList);		
		return new ModelAndView("user/index");
	}
	@RequestMapping(value = "/logout", method = {RequestMethod.POST, RequestMethod.GET})	
	public String viewUserDetails(ModelMap model,HttpServletResponse response,HttpServletRequest request) {

		  Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	        if (auth != null) {
	            new SecurityContextLogoutHandler().logout(request, response, auth);
	            request.getSession().invalidate();
	            request.getSession().setAttribute("tempStatus", "success");
	            request.getSession().setAttribute("statusText", "Logout Successfully!");
	        }
	        return "login";
	}
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView load() {

		return new ModelAndView("login");
	}
	
	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public ModelAndView load403() {

		return new ModelAndView("login");
	}
	
	@RequestMapping(value = "/error", method = RequestMethod.GET)
	public ModelAndView error() {

		return new ModelAndView("login");
	}
	
}