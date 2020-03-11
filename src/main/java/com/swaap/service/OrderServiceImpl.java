package com.swaap.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.swaap.dao.OrderDAO;
import com.swaap.model.LoginVO;
import com.swaap.model.OrderVO;
@Service
@Transactional
public class OrderServiceImpl implements OrderService {

	@Autowired 
	OrderDAO orderDAO;
	
	public void insertOrder(OrderVO orderVO) {
			this.orderDAO.insertOrder(orderVO);			
	}

	@Override
	public List getOrderDetails(LoginVO loginVO) {
		List orderList=this.orderDAO.getOrderDetails(loginVO);
		return orderList;
	}
}
