package com.swaap.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.swaap.dao.ProductCountDAO;
import com.swaap.model.ProductCountVO;
import com.swaap.model.ProductVO;

@Service
@Transactional
public class ProductCountServiceImpl implements ProductCountService{

	@Autowired 
	ProductCountDAO productCountDAO;
	
	public void insertProductCount(ProductCountVO productCountVO) {
		this.productCountDAO.insertProductCount(productCountVO);
		
	}

	public List searchProductCount(ProductVO productVO, String date) {
		List productCountList=this.productCountDAO.searchProductCount(productVO,date);
		return productCountList;
	}

	public List searchProductCount() {
		List productCountList=this.productCountDAO.searchProductCount();
		return productCountList;
	}

	@Override
	public List searchProductCountById(int id) {
		List productCountList=this.productCountDAO.searchProductCountById(id);
		return productCountList;
	}
}
