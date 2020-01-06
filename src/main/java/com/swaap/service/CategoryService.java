package com.swaap.service;

import java.util.List;

import com.swaap.model.CategoryVO;

public interface CategoryService {
	public void insertCategory(CategoryVO categoryVO);
	public List searchCategory();
	public List editCategory(CategoryVO categoryVO);
}
