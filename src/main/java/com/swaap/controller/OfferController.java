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

import com.swaap.model.OfferVO;
import com.swaap.service.CategoryService;
import com.swaap.service.OfferService;
import com.swaap.service.ProductService;
import com.swaap.service.SubCategoryService;

@Controller
public class OfferController {
	@Autowired
	ProductService productService;
	
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	SubCategoryService subCategoryService;
	
	@Autowired
	OfferService offerService;
	
	@RequestMapping(value="mall/addOffer", method=RequestMethod.GET)
	public ModelAndView addOffer(Model model)
	{
		List productList=this.productService.searchProduct();
		List categoryList=this.categoryService.searchCategory();
		List subCategoryList=this.subCategoryService.searchSubCategory();
		model.addAttribute("productList",productList);
		model.addAttribute("categoryList",categoryList);
		model.addAttribute("subCategoryList",subCategoryList);
		model.addAttribute("offerVO", new OfferVO());
		return new ModelAndView("mall/addOffer");
	}
	
	@RequestMapping(value="mall/saveOffer", method=RequestMethod.POST)
	public ModelAndView saveOffer(@ModelAttribute OfferVO offerVO)
	{
		offerVO.setStatus(true);
		this.offerService.insertOffer(offerVO);
		return new ModelAndView("redirect:/mall/viewOffer");
	}
	@RequestMapping(value="mall/viewOffer", method=RequestMethod.GET)
	public ModelAndView viewOffer(@ModelAttribute OfferVO offerVO)
	{
		List offerList=this.offerService.searchOffer();
		return new ModelAndView("mall/viewOffer","offerList",offerList);
	}
	
	@RequestMapping(value="mall/deleteOffer", method=RequestMethod.GET)
	public ModelAndView deleteOffer(@ModelAttribute OfferVO offerVO, @RequestParam int findById)
	{
		offerVO.setId(findById);
		List offerList=this.offerService.editOffer(offerVO);
		OfferVO foundOfferVO=(OfferVO)offerList.get(0);
		foundOfferVO.setStatus(false);
		this.offerService.insertOffer(foundOfferVO);
		return new ModelAndView("redirect:mall/viewOffer");
	}
	
	@RequestMapping(value="mall/updateOffer", method=RequestMethod.GET)
	public ModelAndView updateOffer(@ModelAttribute OfferVO offerVO, @RequestParam int findById, Model model)
	{
		offerVO.setId(findById);
		List offerList=this.offerService.editOffer(offerVO);
		List productList=this.productService.searchProduct();
		List categoryList=this.categoryService.searchCategory();
		List subCategoryList=this.subCategoryService.searchSubCategory();
		model.addAttribute("productList",productList);
		model.addAttribute("categoryList",categoryList);
		model.addAttribute("subCategoryList",subCategoryList);
		model.addAttribute("offerVO",(OfferVO)offerList.get(0));
		return new ModelAndView("mall/addOffer");
	}
	@RequestMapping(value="branch/viewOffer", method=RequestMethod.GET)
	public ModelAndView viewBranchOffer(@ModelAttribute OfferVO offerVO)
	{
		List offerList=this.offerService.searchOffer();
		return new ModelAndView("branch/viewOffer","offerList",offerList);
	}
}
