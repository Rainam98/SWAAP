package com.swaap.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.swaap.dao.CategoryDAO;
import com.swaap.model.CategoryVO;

@Service
@Transactional
public class CategoryServiceImpl implements CategoryService{
	@Autowired
	CategoryDAO categoryDAO;
	@Override
	public void insertCategory(CategoryVO categoryVO) 
	{
		
		this.categoryDAO.insertCategory(categoryVO);
	}
	public List searchCategory()
	{
		List categorylist=this.categoryDAO.searchCategory();
		return categorylist;
	}
	
	public List editCategory(CategoryVO categoryVO)
	{
		List categoryList=this.categoryDAO.editCategory(categoryVO);
		return categoryList;
	}

}
