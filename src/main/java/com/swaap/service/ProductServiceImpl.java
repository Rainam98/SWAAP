package com.swaap.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.swaap.dao.ProductDAO;
import com.swaap.model.BranchVO;
import com.swaap.model.ProductVO;
import com.swaap.model.SubCategoryVO;

@Service
@Transactional
public class ProductServiceImpl implements ProductService{
	@Autowired
	ProductDAO productDAO;


	public void insertProduct(ProductVO productVO) 
	{
		this.productDAO.insertProduct(productVO);	
	}


	@Override
	public List searchProduct() {
		List productList=this.productDAO.searchProduct();
		return productList;
	}


	@Override
	public List editProduct(ProductVO productVO) {
		List productList=this.productDAO.editProduct(productVO);
		return productList;
	}


	@Override
	public List searchProductBySubCategory(SubCategoryVO subCategoryVO) {
		List productList=this.productDAO.searchProductBySubCategory(subCategoryVO);
		return productList;
	}
}
