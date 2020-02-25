package com.swaap.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.swaap.dao.CartDAO;
import com.swaap.model.CartVO;
import com.swaap.model.LoginVO;
import com.swaap.model.ProductVO;

@Service
@Transactional
public class CartServiceImpl implements CartService{
	@Autowired 
	CartDAO cartDAO;
	
	@Override
	public List editCart(CartVO cartVO) {
		List productList=this.cartDAO.editCart(cartVO);
		return productList;
	}

	@Override
	public void insertProductToCart(CartVO cartVO) {
			this.cartDAO.insertProductToCart(cartVO);			
	}

	@Override
	public List searchCart(LoginVO loginVO) {
		List productList=this.cartDAO.searchCart(loginVO);
		return productList;
	}
}
