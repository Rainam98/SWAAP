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

import com.swaap.model.ProductVO;
import com.swaap.service.BranchService;
import com.swaap.service.CategoryService;
import com.swaap.service.ProductService;
import com.swaap.service.SubCategoryService;

@Controller
public class ProductController {
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	SubCategoryService subCategoryService;
	
	@Autowired
	ProductService productService;
	
	@Autowired
	BranchService branchService;
	
	@RequestMapping(value="addProduct", method=RequestMethod.GET)
	public ModelAndView addProduct(Model model)
	{
		List CategoryList=this.categoryService.searchCategory();
		List SubCategoryList=this.subCategoryService.searchSubCategory();
		List BranchList=this.branchService.searchBranch();
		model.addAttribute("categoryList",CategoryList);
		model.addAttribute("subCategoryList",SubCategoryList);
		model.addAttribute("branchList",BranchList);
		model.addAttribute("productVO", new ProductVO());
		return new ModelAndView("mall/addProduct");
	}
	
	@RequestMapping(value="saveProduct", method=RequestMethod.POST)
	public ModelAndView saveProduct(@ModelAttribute ProductVO productVO)
	{
		productVO.setStatus(true);
		this.productService.insertProduct(productVO);
		return new ModelAndView("redirect:mall/viewProduct");
	}
	
	@RequestMapping(value="viewProduct", method=RequestMethod.GET)
	public ModelAndView viewProduct(@ModelAttribute ProductVO productVO)
	{
		List productList=this.productService.searchProduct();
		return new ModelAndView("mall/viewProduct","productList",productList);
	}
	
	@RequestMapping(value="deleteProduct", method=RequestMethod.GET)
	public ModelAndView deleteProduct(@ModelAttribute ProductVO productVO, @RequestParam int findById)
	{
		productVO.setId(findById);
		List productList=this.productService.editProduct(productVO);
		ProductVO foundProductVO=(ProductVO)productList.get(0);
		foundProductVO.setStatus(false);
		this.productService.insertProduct(foundProductVO);
		return new ModelAndView("redirect:mall/viewProduct");
	}
	
	@RequestMapping(value="updateProduct", method=RequestMethod.GET)
	public ModelAndView updateProduct(@ModelAttribute ProductVO productVO, @RequestParam int findById, Model model)
	{
		productVO.setId(findById);
		List productList=this.productService.editProduct(productVO);
		List CategoryList=this.categoryService.searchCategory();
		List SubCategoryList=this.subCategoryService.searchSubCategory();
		List BranchList=this.branchService.searchBranch();
		model.addAttribute("productVO",(ProductVO)productList.get(0));
		model.addAttribute("categoryList",CategoryList);
		model.addAttribute("subCategoryList",SubCategoryList);
		model.addAttribute("branchList",BranchList);
		return new ModelAndView("mall/addProduct");
	}
}
