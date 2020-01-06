package com.swaap.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.swaap.model.CategoryVO;
import com.swaap.service.CategoryService;

@Controller
public class CategoryController {
	@Autowired
	CategoryService categoryService;
	
	@RequestMapping(value="addCategory", method=RequestMethod.GET)
	public ModelAndView addCategory()
	{
		return new ModelAndView("mall/addCategory","categoryVO", new CategoryVO());
	}
	
	@RequestMapping(value="saveCategory", method=RequestMethod.POST)
	public ModelAndView saveCategory(@ModelAttribute CategoryVO categoryVO)
	{
		categoryVO.setStatus(true);
		this.categoryService.insertCategory(categoryVO);
		return new ModelAndView("redirect:/");
	}
	
	@RequestMapping(value="deleteCategory", method=RequestMethod.GET)
	public ModelAndView deleteCategory(@ModelAttribute CategoryVO categoryVO, @RequestParam int findById)
	{
		categoryVO.setId(findById);
		List categoryList=this.categoryService.editCategory(categoryVO);
		CategoryVO foundCategoryVO=(CategoryVO)categoryList.get(0);
		foundCategoryVO.setStatus(false);
		this.categoryService.insertCategory(foundCategoryVO);
		return new ModelAndView("redirect:/");
	}
	
	@RequestMapping(value="viewCategory")
	public ModelAndView viewCategory()
	{
		List categoryList=this.categoryService.searchCategory();
		return new ModelAndView("mall/viewCategory","categoryList",categoryList);
	}

	@RequestMapping(value="updateCategory", method=RequestMethod.GET)
	public ModelAndView updateCategory(@ModelAttribute CategoryVO categoryVO, @RequestParam int findById)
	{
		categoryVO.setId(findById);
		List categoryList=this.categoryService.editCategory(categoryVO);
		return new ModelAndView("mall/addCategory","stateVO",(CategoryVO)categoryList.get(0));
	}
}
