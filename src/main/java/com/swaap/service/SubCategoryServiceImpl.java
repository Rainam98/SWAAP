package com.swaap.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.swaap.dao.SubCategoryDAO;
import com.swaap.model.SubCategoryVO;

@Service
@Transactional
public class SubCategoryServiceImpl implements SubCategoryService{
	@Autowired
	SubCategoryDAO subCategoryDAO;


	public void insertSubCategory(SubCategoryVO subCategoryVO) 
	{
		this.subCategoryDAO.insertSubCategory(subCategoryVO);
		
	}


	@Override
	public List searchSubCategory() {
		List subCategoryList=this.subCategoryDAO.searchSubCategory();
		return subCategoryList;
	}


	@Override
	public List editSubCategory(SubCategoryVO subCategoryVO) {
		List subCategoryList=this.subCategoryDAO.editSubCategory(subCategoryVO);
		return subCategoryList;
	}
}
