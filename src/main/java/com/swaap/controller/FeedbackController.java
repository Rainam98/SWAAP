package com.swaap.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.swaap.model.FeedbackVO;
import com.swaap.model.LoginVO;
import com.swaap.service.FeedbackService;
import com.swaap.service.LoginService;
import com.swaap.utils.Basemethods;

@Controller
public class FeedbackController {

	@Autowired
	FeedbackService feedbackService;
	
	@Autowired
	LoginService loginService;
	
	@RequestMapping(value="/user/addFeedback", method=RequestMethod.GET)
	public ModelAndView loadFeedback()
	{
		return new ModelAndView("user/addFeedback","feedbackVO", new FeedbackVO());
	}

	@RequestMapping(value="/user/insertFeedback")
	public ModelAndView insertFeedback(@ModelAttribute FeedbackVO feedbackVO,@ModelAttribute LoginVO loginVO)
	{
		feedbackVO.setStatus(true);
		String user=Basemethods.getUser();
		loginVO.setUsername(user);
		List userList=loginService.searchLoginID(user);
		feedbackVO.setLoginVO((LoginVO)userList.get(0));
		this.feedbackService.insertFeedback(feedbackVO);
		return new ModelAndView("redirect:/user/index");
	}
	
	@RequestMapping(value="/mall/viewFeedback")
	public ModelAndView viewFeedback()
	{
		List feedbackList=this.feedbackService.searchFeedback();
		return new ModelAndView("mall/viewFeedback","feedbackList",feedbackList);
	}
}
