package com.swaap.dao;

import java.util.List;

import com.swaap.model.ProductVO;
import com.swaap.model.SubCategoryVO;

public interface ProductDAO {
	public void insertProduct(ProductVO productVO);

	public List searchProduct();

	public List editProduct(ProductVO productVO);

	public List searchProductBySubCategory(SubCategoryVO subCategoryVO);

	public List getProductByString(String searchString);
}
