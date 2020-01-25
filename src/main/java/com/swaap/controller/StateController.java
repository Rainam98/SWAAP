package com.swaap.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.swaap.model.CityVO;
import com.swaap.model.StateVO;
import com.swaap.service.CityService;
import com.swaap.service.StateService;

@Controller
public class StateController {
	@Autowired
	StateService stateService;
	
	@RequestMapping(value="mall/addState", method=RequestMethod.GET)
	public ModelAndView addState()
	{
		return new ModelAndView("mall/addState","stateVO", new StateVO());
	}
	
	@RequestMapping(value="mall/saveState", method=RequestMethod.POST)
	public ModelAndView saveState(@ModelAttribute StateVO stateVO)
	{
		stateVO.setStatus(true);
		this.stateService.insertState(stateVO);
		return new ModelAndView("redirect:/mall/viewState");
	}
	
	@RequestMapping(value="mall/deleteState", method=RequestMethod.GET)
	public ModelAndView deleteState(@ModelAttribute StateVO stateVO, @RequestParam int findById)
	{
		stateVO.setId(findById);
		List stateList=this.stateService.editState(stateVO);
		StateVO foundStateVO=(StateVO)stateList.get(0);
		foundStateVO.setStatus(false);
		this.stateService.insertState(foundStateVO);
		return new ModelAndView("redirect:/mall/viewState");
	}
	
	@RequestMapping(value="mall/viewState")
	public ModelAndView viewState()
	{
		List stateList=this.stateService.searchState();
		return new ModelAndView("mall/viewState","stateList",stateList);
	}

	@RequestMapping(value="mall/updateState", method=RequestMethod.GET)
	public ModelAndView updateState(@ModelAttribute StateVO stateVO, @RequestParam int findById)
	{
		stateVO.setId(findById);
		List stateList=this.stateService.editState(stateVO);
		return new ModelAndView("mall/addState","stateVO",(StateVO)stateList.get(0));
	}
}
