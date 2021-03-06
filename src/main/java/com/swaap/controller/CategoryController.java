package com.swaap.controller;

import com.swaap.model.CategoryVO;
import com.swaap.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class CategoryController {
	@Autowired
	CategoryService categoryService;
	
	@RequestMapping(value="mall/addCategory", method=RequestMethod.GET)
	public ModelAndView addCategory()
	{
		return new ModelAndView("mall/addCategory","categoryVO", new CategoryVO());
	}
	
	@RequestMapping(value="mall/saveCategory", method=RequestMethod.POST)
	public ModelAndView saveCategory(@ModelAttribute CategoryVO categoryVO) {
        System.out.println("Received request for adding cagtegory " + categoryVO.getCategoryName());
        categoryVO.setStatus(true);
        this.categoryService.insertCategory(categoryVO);
        return new ModelAndView("redirect:/mall/viewCategory");
    }
	
	@RequestMapping(value="mall/deleteCategory", method=RequestMethod.GET)
	public ModelAndView deleteCategory(@ModelAttribute CategoryVO categoryVO, @RequestParam int findById)
	{
		categoryVO.setId(findById);
		List categoryList=this.categoryService.editCategory(categoryVO);
		CategoryVO foundCategoryVO=(CategoryVO)categoryList.get(0);
		foundCategoryVO.setStatus(false);
		this.categoryService.insertCategory(foundCategoryVO);
		return new ModelAndView("redirect:/mall/viewCategory");
	}
	
	@RequestMapping(value="mall/viewCategory")
	public ModelAndView viewCategory()
	{
		List categoryList=this.categoryService.searchCategory();
		return new ModelAndView("mall/viewCategory","categoryList",categoryList);
	}

	@RequestMapping(value="mall/updateCategory", method=RequestMethod.GET)
	public ModelAndView updateCategory(@ModelAttribute CategoryVO categoryVO, @RequestParam int findById) {
        categoryVO.setId(findById);
        List categoryList = this.categoryService.editCategory(categoryVO);
        return new ModelAndView("mall/addCategory", "categoryVO", (CategoryVO) categoryList.get(0));
    }
	@RequestMapping(value="branch/viewCategory")
	public ModelAndView viewBranchCategory()
	{
		List categoryList=this.categoryService.searchCategory();
		return new ModelAndView("branch/viewCategory","categoryList",categoryList);
	}

}
