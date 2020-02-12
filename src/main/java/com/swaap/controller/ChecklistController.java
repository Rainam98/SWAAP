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
		List checkList=this.checklistService.searchBranchChecklist();
		return new ModelAndView("mall/viewChecklistMall","checkList",checkList);
	}
	
	@RequestMapping(value="/mall/approve")
	public ModelAndView approve(@RequestParam int id)
	{
		List checkList=this.checklistService.findByIdChecklist(id);
		ChecklistVO checklistVO=(ChecklistVO)checkList.get(0);
		checklistVO.setStatus(true);
		System.out.println(checklistVO.getProductVO().getId());
		checklistVO.setChecklistStatus("Resolved");
		Date date=new Date();
		String setDateFormat="dd/MM/yyyy";
		DateFormat dateformat=new SimpleDateFormat(setDateFormat);
		String formattedDate=dateformat.format(date);
		checklistVO.setApproveDate(formattedDate);
		
		this.checklistService.insertChecklist(checklistVO);
		return new ModelAndView("redirect:/mall/viewChecklistMall");
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
		System.out.println(checklistVO.getProductVO().getId());
		checklistVO.setStatus(true);
		checklistVO.setChecklistStatus("Pending");
		Date date=new Date();
		String setDateFormat="dd/MM/yyyy";
		DateFormat dateformat=new SimpleDateFormat(setDateFormat);
		String formattedDate=dateformat.format(date);
		checklistVO.setRequestDate(formattedDate);
		this.checklistService.insertChecklist(checklistVO);
		return new ModelAndView("redirect:/branch/viewChecklistHistory");
	}
	
	@RequestMapping(value="/branch/viewChecklistHistory")
	public ModelAndView viewChecklistHistory(@ModelAttribute ChecklistVO checklistVO)
	{
		List checkList=this.checklistService.searchBranchChecklist();
		return new ModelAndView("branch/viewChecklistHistory","checkList",checkList);
	}
}
