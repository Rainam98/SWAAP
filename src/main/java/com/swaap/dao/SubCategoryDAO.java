package com.swaap.dao;

import java.util.List;

import com.swaap.model.CategoryVO;
import com.swaap.model.SubCategoryVO;

public interface SubCategoryDAO {
	public void insertSubCategory(SubCategoryVO subCategoryVO);

	public List searchSubCategory();

	public List editSubCategory(SubCategoryVO subCategoryVO);

	List searchSubCategoryByCategory(CategoryVO categoryVO);
}
