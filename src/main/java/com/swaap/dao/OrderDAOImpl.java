package com.swaap.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.swaap.model.LoginVO;
import com.swaap.model.OrderVO;

@Repository
public class OrderDAOImpl implements OrderDAO{
	
	@Autowired
	SessionFactory sessionFactory;
	
	public void insertOrder(OrderVO orderVO) 
	{
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(orderVO);		
	}

	@Override
	public List getOrderDetails(LoginVO loginVO) {
		Session session = sessionFactory.openSession();		
		Query q=session.createQuery("from OrderVO where login_id="+loginVO.getLoginId());		
		List orderList=q.list();
		return orderList;
	}

}
