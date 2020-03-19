package com.swaap.service;

import java.util.List;

import com.swaap.model.CartVO;
import com.swaap.model.LoginVO;
import com.swaap.model.ProductVO;

public interface CartService {

	public List editCart(CartVO cartVO);
	
	public void insertProductToCart(CartVO cartVO);

	public List searchCart(LoginVO loginVO);

	public List getOrderDetails(int orderId);
}
