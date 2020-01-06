package com.swaap.dao;

import java.util.List;

import com.swaap.model.CategoryVO;

public interface CategoryDAO {
	public void insertCategory(CategoryVO categoryVO);
	public List searchCategory();
	public List editCategory(CategoryVO categoryVO);
}
