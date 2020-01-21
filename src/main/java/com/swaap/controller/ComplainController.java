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

import com.swaap.model.ComplainVO;
import com.swaap.model.LoginVO;
import com.swaap.service.ComplainService;
import com.swaap.service.LoginService;
import com.swaap.utils.Basemethods;

@Controller
public class ComplainController {

	@Autowired
	ComplainService complainService;
	
	@Autowired
	LoginService loginService;
	
	
	@RequestMapping(value="/branch/addComplain", method=RequestMethod.GET)
	public ModelAndView loadComplain()
	{
		return new ModelAndView("branch/addComplain","complainVO", new ComplainVO());
	}

	@RequestMapping(value="/branch/insertComplain")
	public ModelAndView insertComplain(@ModelAttribute ComplainVO complainVO,@ModelAttribute LoginVO loginVO)
	{
		complainVO.setStatus(true);
		complainVO.setComplainStatus("Pending");
		
		String branch=Basemethods.getUser();
		loginVO.setUsername(branch);
		List branchList=loginService.searchLoginID(branch);
		complainVO.setLoginVO((LoginVO)branchList.get(0));
		
		Date date=new Date();
		String setDateFormat="dd/MM/yyyy";
		DateFormat dateformat=new SimpleDateFormat(setDateFormat);
		String formattedDate=dateformat.format(date);
		complainVO.setComplainDate(formattedDate);
		
		this.complainService.insertComplain(complainVO);
		return new ModelAndView("redirect:/branch/index");
	}
	
	@RequestMapping(value="/mall/insertReply")
	public ModelAndView insertReply(@ModelAttribute ComplainVO complainVO)
	{
		//complainVO.setStatus(false);
		complainVO.setComplainStatus("Resolved");
		Date date=new Date();
		String setDateFormat="dd/MM/yyyy";
		DateFormat dateformat=new SimpleDateFormat(setDateFormat);
		String formattedDate=dateformat.format(date);
		complainVO.setReplyDate(formattedDate);
		
		this.complainService.insertComplain(complainVO);
		return new ModelAndView("redirect:/mall/index");
	}

	@RequestMapping(value="/mall/viewMallComplain")
	public ModelAndView viewMallComplain()
	{
		List complainList=this.complainService.searchComplain();
		return new ModelAndView("mall/viewMallComplain","complainList",complainList);
	}
	
	@RequestMapping(value="/branch/viewBranchComplain")
	public ModelAndView viewBranchComplain(@ModelAttribute LoginVO loginVO)
	{
		String branch=Basemethods.getUser();
		loginVO.setUsername(branch);
		List branchList=loginService.searchLoginID(branch);
		LoginVO loggedInUser=((LoginVO)branchList.get(0));
		List complainList=this.complainService.searchUserComplain(loggedInUser);
		return new ModelAndView("branch/viewBranchComplain","complainList",complainList);
	}
	
	@RequestMapping(value="/mall/reply")
	public ModelAndView replyComplain(@RequestParam int id,@ModelAttribute ComplainVO complainVO)
	{
		complainVO.setId(id);
		List complainList=this.complainService.findByIdComplain(complainVO);
		return new ModelAndView("mall/addReply","complainVO",(ComplainVO)complainList.get(0));
	}
}
