package com.swaap.service;

import java.util.List;

import com.swaap.model.CategoryVO;
import com.swaap.model.SubCategoryVO;

public interface SubCategoryService {
	public void insertSubCategory(SubCategoryVO subCategoryVO);

	public List searchSubCategory();

	public List editSubCategory(SubCategoryVO subCategoryVO);
	
	List searchSubCategoryByCategory(CategoryVO categoryVO);
}
