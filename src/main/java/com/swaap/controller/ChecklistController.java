package com.swaap.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.swaap.model.ChecklistVO;
import com.swaap.model.ProductVO;
import com.swaap.service.ChecklistService;
import com.swaap.service.ProductService;

@Controller
public class ChecklistController {

	@Autowired
	ChecklistService checklistService;
	
	@Autowired
	ProductService productService;
	
	@RequestMapping(value="/mall/viewChecklistMall")
	public ModelAndView viewMallComplain()
	{
		List checklistList=this.checklistService.searchBranchChecklist();
		return new ModelAndView("mall/viewMallChecklist","checklistList",checklistList);
	}
	
	@RequestMapping(value="/mall/approve")
	public ModelAndView approve(@ModelAttribute ChecklistVO checklistVO)
	{
		checklistVO.setChecklistStatus("Resolved");
		Date date=new Date();
		String setDateFormat="dd/MM/yyyy";
		DateFormat dateformat=new SimpleDateFormat(setDateFormat);
		String formattedDate=dateformat.format(date);
		checklistVO.setApproveDate(formattedDate);
		
		this.checklistService.insertChecklist(checklistVO);
		return new ModelAndView("redirect:/mall/viewMallChecklist");
	}

	
	@RequestMapping(value="/branch/viewChecklist")
	public ModelAndView viewChecklist(@ModelAttribute ProductVO productVO)
	{
		List productList=this.productService.searchProduct();
		return new ModelAndView("branch/viewChecklist","productList",productList);
	}
	
	@RequestMapping(value="/branch/requestRefill")
	public ModelAndView requestRefill(@ModelAttribute ChecklistVO checklistVO, @RequestParam int productId, Model model, @ModelAttribute ProductVO productVO)
	{
		productVO.setId(productId);
		List foundProductVOList=this.productService.editProduct(productVO);
		ProductVO foundProductVO=(ProductVO)foundProductVOList.get(0);
		checklistVO.setProductVO(foundProductVO);
		model.addAttribute("checklistVO",checklistVO);
		return new ModelAndView("branch/requestRefill");
	}
	
	@RequestMapping(value="/branch/addRequest")
	public ModelAndView addRequest(@ModelAttribute ChecklistVO checklistVO)
	{
		checklistVO.setStatus(true);
		checklistVO.setChecklistStatus("Pending");
		this.checklistService.insertChecklist(checklistVO);
		return new ModelAndView("redirect:/branch/viewChecklist");
	}
}
