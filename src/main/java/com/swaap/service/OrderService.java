package com.swaap.service;

import java.util.List;

import com.swaap.model.LoginVO;
import com.swaap.model.OrderVO;

public interface OrderService {

	public void insertOrder(OrderVO orderVO);

	public List getOrderDetails(LoginVO loginVO);
}
