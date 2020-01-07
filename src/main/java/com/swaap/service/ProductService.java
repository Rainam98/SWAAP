package com.swaap.service;

import java.util.List;

import com.swaap.model.ProductVO;

public interface ProductService {
	public void insertProduct(ProductVO productVO);

	public List searchProduct();

	public List editProduct(ProductVO productVO);
}
