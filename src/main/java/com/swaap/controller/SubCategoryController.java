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

import com.swaap.model.CategoryVO;
import com.swaap.model.SubCategoryVO;
import com.swaap.service.CategoryService;
import com.swaap.service.SubCategoryService;

@Controller
public class SubCategoryController {
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	SubCategoryService subCategoryService;
	
	@RequestMapping(value="mall/addSubCategory", method=RequestMethod.GET)
	public ModelAndView addSubCategory(Model model)
	{
		List CategoryList=this.categoryService.searchCategory();
		model.addAttribute("categoryList",CategoryList);
		model.addAttribute("subCategoryVO", new SubCategoryVO());
		return new ModelAndView("mall/addSubCategory");
	}
	
	@RequestMapping(value="mall/saveSubCategory", method=RequestMethod.POST)
	public ModelAndView saveSubCategory(@ModelAttribute SubCategoryVO subCategoryVO)
	{
		subCategoryVO.setStatus(true);
		this.subCategoryService.insertSubCategory(subCategoryVO);
		return new ModelAndView("redirect:/mall/viewSubCategory");
	}
	
	@RequestMapping(value="mall/viewSubCategory", method=RequestMethod.GET)
	public ModelAndView viewSubCategory(@ModelAttribute SubCategoryVO subCategoryVO)
	{
		List subCategoryList=this.subCategoryService.searchSubCategory();
		return new ModelAndView("mall/viewSubCategory","subCategoryList",subCategoryList);
	}
	
	@RequestMapping(value="mall/deleteSubCategory", method=RequestMethod.GET)
	public ModelAndView deleteSubCategory(@ModelAttribute SubCategoryVO subCategoryVO, @RequestParam int findById)
	{
		subCategoryVO.setId(findById);
		List subCategoryList=this.subCategoryService.editSubCategory(subCategoryVO);
		SubCategoryVO foundSubCategoryVO=(SubCategoryVO)subCategoryList.get(0);
		foundSubCategoryVO.setStatus(false);
		this.subCategoryService.insertSubCategory(foundSubCategoryVO);
		return new ModelAndView("redirect:/mall/viewSubCategory");
	}
	
	@RequestMapping(value="mall/updateSubCategory", method=RequestMethod.GET)
	public ModelAndView updateSubCategory(@ModelAttribute SubCategoryVO subCategoryVO, @RequestParam int findById, Model model)
	{
		subCategoryVO.setId(findById);
		List subCategoryList=this.subCategoryService.editSubCategory(subCategoryVO);
		List categoryList=this.categoryService.searchCategory();
		model.addAttribute("subCategoryVO",(SubCategoryVO)subCategoryList.get(0));
		model.addAttribute("categoryList",categoryList);
		return new ModelAndView("mall/addSubCategory");
	}
	@RequestMapping(value="branch/viewSubCategory", method=RequestMethod.GET)
	public ModelAndView viewBranchSubCategory(@ModelAttribute SubCategoryVO subCategoryVO)
	{
		List subCategoryList=this.subCategoryService.searchSubCategory();
		return new ModelAndView("branch/viewSubCategory","subCategoryList",subCategoryList);
	}
	@RequestMapping(value="user/subCategoryDetail", method=RequestMethod.GET)
	public ModelAndView viewSubCategoryDetail(@ModelAttribute SubCategoryVO subCategoryVO, @RequestParam int categoryId, @ModelAttribute CategoryVO categoryVO)
	{
		categoryVO.setId(categoryId);
		subCategoryVO.setCategoryVO(categoryVO);
		List subCategoryList=this.subCategoryService.searchSubCategoryByCategory(subCategoryVO.getCategoryVO());
		return new ModelAndView("user/subCategoryDetail","subCategoryList",subCategoryList);
	}
	
}
