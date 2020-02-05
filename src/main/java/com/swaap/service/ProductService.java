package com.swaap.service;

import java.util.List;

import com.swaap.model.ProductVO;
import com.swaap.model.SubCategoryVO;

public interface ProductService {
	public void insertProduct(ProductVO productVO);

	public List searchProduct();

	public List editProduct(ProductVO productVO);

	public List searchProductBySubCategory(SubCategoryVO subCategoryVO);
}
