package com.swaap.dao;

import java.util.List;

import com.swaap.model.ProductVO;

public interface ProductDAO {
	public void insertProduct(ProductVO productVO);

	public List searchProduct();

	public List editProduct(ProductVO productVO);
}
