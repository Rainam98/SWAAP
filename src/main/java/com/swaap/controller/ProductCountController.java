package com.swaap.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.swaap.service.ProductCountService;

@Controller
public class ProductCountController {
	@Autowired
    ProductCountService productCountService;
	
	@RequestMapping(value = "mall/viewGraph", method = RequestMethod.GET)
	public ModelAndView viewGraph(@RequestParam int findById) 
	{
		List productCountList=this.productCountService.searchProductCountById(findById);
		return new ModelAndView("mall/productKeywordGraph","productCountList",productCountList);
	}
}
