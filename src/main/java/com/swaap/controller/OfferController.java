package com.swaap.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.swaap.model.OfferVO;
import com.swaap.service.CategoryService;
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
	
	
	@RequestMapping(value="addOffer")
	public ModelAndView addOffer(Model model)
	{
		List productList=this.productService.searchProduct();
		List categoyList=this.categoryService.searchCategory();
		List subCategoryList=this.subCategoryService.searchSubCategory();
		model.addAttribute("productList",productList);
		model.addAttribute("categoyList",categoyList);
		model.addAttribute("subCategoryList",subCategoryList);
		model.addAttribute("offerVO", new OfferVO());
		return new ModelAndView("mall/addOffer");
	}
}
