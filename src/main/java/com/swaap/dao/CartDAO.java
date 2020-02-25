package com.swaap.dao;

import java.util.List;

import com.swaap.model.CartVO;
import com.swaap.model.LoginVO;
import com.swaap.model.ProductVO;

public interface CartDAO {
	
	public void insertProductToCart(CartVO cartVO);
	
	public List editCart(CartVO cartVO);

	public List searchCart(LoginVO loginVO);
}
