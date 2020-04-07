package com.swaap.dao;

import java.util.List;

import com.swaap.model.ProductCountVO;
import com.swaap.model.ProductVO;

public interface ProductCountDAO {
	public void insertProductCount(ProductCountVO productCountVO);
	public List searchProductCount(ProductVO productVO, String date);
	public List searchProductCount();
	public List searchProductCountById(int id);

}
