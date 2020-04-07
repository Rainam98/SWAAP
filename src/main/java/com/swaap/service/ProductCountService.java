package com.swaap.service;

import java.util.List;

import com.swaap.model.ProductCountVO;
import com.swaap.model.ProductVO;

public interface ProductCountService {
	public void insertProductCount(ProductCountVO productCountVO);
	public List searchProductCount(ProductVO productVO, String date);
	public List searchProductCount();
	public List searchProductCountById(int id);
}
