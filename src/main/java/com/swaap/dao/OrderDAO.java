package com.swaap.dao;

import java.util.List;

import com.swaap.model.LoginVO;
import com.swaap.model.OrderVO;

public interface OrderDAO {
	
	public void insertOrder(OrderVO orderVO);

	public List getOrderDetails(LoginVO loginVO);
}
