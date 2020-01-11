//ritu tested this
package com.swaap.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
public class CityController {
	@Autowired
	StateService stateService;
	
	@Autowired
	CityService cityService;
	
	@RequestMapping(value="mall/addCity", method=RequestMethod.GET)
	public ModelAndView addCity(Model model)
	{
		List StateList=this.stateService.searchState();
		model.addAttribute("stateList",StateList);
		model.addAttribute("cityVO", new CityVO());
		return new ModelAndView("mall/addCity");
	}
	
	@RequestMapping(value="mall/saveCity", method=RequestMethod.POST)
	public ModelAndView saveCity(@ModelAttribute CityVO cityVO)
	{
		cityVO.setStatus(true);
		this.cityService.insertCity(cityVO);
		return new ModelAndView("redirect:mall/viewCity");
	}
	
	@RequestMapping(value="mall/viewCity", method=RequestMethod.GET)
	public ModelAndView viewCity(@ModelAttribute CityVO cityVO)
	{
		List cityList=this.cityService.searchCity();
		return new ModelAndView("mall/viewCity","cityList",cityList);
	}
	
	@RequestMapping(value="mall/deleteCity", method=RequestMethod.GET)
	public ModelAndView deleteCity(@ModelAttribute CityVO cityVO, @RequestParam int findById)
	{
		cityVO.setId(findById);
		List cityList=this.cityService.editCity(cityVO);
		CityVO foundCityVO=(CityVO)cityList.get(0);
		foundCityVO.setStatus(false);
		this.cityService.insertCity(foundCityVO);
		return new ModelAndView("redirect:mall/viewCity");
	}
	
	@RequestMapping(value="mall/updateCity", method=RequestMethod.GET)
	public ModelAndView updateCity(@ModelAttribute CityVO cityVO, @RequestParam int findById, Model model)
	{
		cityVO.setId(findById);
		List cityList=this.cityService.editCity(cityVO);
		List stateList=this.stateService.searchState();
		model.addAttribute("cityVO",(CityVO)cityList.get(0));
		model.addAttribute("stateList",stateList);
		return new ModelAndView("mall/addCity");
	}
	
	
}
