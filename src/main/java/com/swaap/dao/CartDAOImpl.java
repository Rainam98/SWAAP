package com.swaap.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.swaap.model.CartVO;
import com.swaap.model.LoginVO;
import com.swaap.model.ProductVO;
@Repository
public class CartDAOImpl implements CartDAO{

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public List editCart(CartVO cartVO) {
		Session session = sessionFactory.openSession();		
		Query q=session.createQuery("from CartVO where id="+cartVO.getId());		
		List productList=q.list();
		return productList;
	}
	
	public void insertProductToCart(CartVO cartVO) 
	{
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(cartVO);		
	}

	@Override
	public List searchCart(LoginVO loginVO) {
		Session session = sessionFactory.openSession();		
		Query q=session.createQuery("from CartVO where login_id="+loginVO.getLoginId());		
		List productList=q.list();
		return productList;
	}
}
