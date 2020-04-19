package com.swaap.controller;

import com.swaap.model.BranchVO;
import com.swaap.model.LoginVO;
import com.swaap.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class BranchController {
	@Autowired
	StateService stateService;
	
	@Autowired
	CityService cityService;

	@Autowired
	BranchService branchService;

	@Autowired
	EmailSendService emailSendService;

	@Autowired
	LoginService loginService;

	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;

	@RequestMapping(value = "mall/addBranch", method = RequestMethod.GET)
	public ModelAndView addBranch(Model model) {
		List StateList = this.stateService.searchState();
		List CityList = this.cityService.searchCity();
		model.addAttribute("stateList", StateList);
		model.addAttribute("cityList", CityList);
		model.addAttribute("branchVO", new BranchVO());

		return new ModelAndView("mall/addBranch");
	}

	@RequestMapping(value="mall/saveBranch", method=RequestMethod.POST)
	public ModelAndView saveBranch(@ModelAttribute BranchVO branchVO) {
		branchVO.setStatus(true);
		this.branchService.insertBranch(branchVO);
		LoginVO loginVO = new LoginVO();
		loginVO.setPassword(bCryptPasswordEncoder.encode(branchVO.getPassword()));
		loginVO.setRole("ROLE_BRANCH");
		loginVO.setUsername(branchVO.getUserName());
		loginVO.setStatus(true);
		loginVO.setEnabled("1");
		this.loginService.insertLogin(loginVO);
		emailSendService.sendMail(branchVO.getUserName(),"Branch added","your  password is: "+branchVO.getPassword());
		return new ModelAndView("redirect:/mall/viewBranch");
	}
	
	@RequestMapping(value="mall/viewBranch", method=RequestMethod.GET)
	public ModelAndView viewBranch(@ModelAttribute BranchVO branchVO)
	{
		List branchList=this.branchService.searchBranch();
		return new ModelAndView("mall/viewBranch","branchList",branchList);
	}
	
	@RequestMapping(value="mall/deleteBranch", method=RequestMethod.GET)
	public ModelAndView deleteBranch(@ModelAttribute BranchVO branchVO, @RequestParam int findById)
	{
		branchVO.setId(findById);
		List branchList=this.branchService.editBranch(branchVO);
		BranchVO foundBranchVO=(BranchVO)branchList.get(0);
		foundBranchVO.setStatus(false);
		this.branchService.insertBranch(foundBranchVO);
		return new ModelAndView("redirect:/mall/viewBranch");
	}
	
	@RequestMapping(value="mall/updateBranch", method=RequestMethod.GET)
	public ModelAndView updateBranch(@ModelAttribute BranchVO branchVO, @RequestParam int findById, Model model)
	{
		branchVO.setId(findById);
		List branchList=this.branchService.editBranch(branchVO);
		List StateList=this.stateService.searchState();
		List CityList=this.cityService.searchCity();
		model.addAttribute("branchVO",(BranchVO)branchList.get(0));
		model.addAttribute("stateList",StateList);
		model.addAttribute("cityList",CityList);
        return new ModelAndView("mall/addBranch");
	}
}
