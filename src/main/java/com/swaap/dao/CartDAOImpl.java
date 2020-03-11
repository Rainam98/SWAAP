package com.swaap.dao;

import com.swaap.model.CartVO;
import com.swaap.model.LoginVO;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public class CartDAOImpl implements CartDAO{

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public List editCart(CartVO cartVO) {
		Session session = sessionFactory.openSession();		
		Query q=session.createQuery("from CartVO where id="+cartVO.getId()+" and status=false");		
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
		Query q = session.createQuery("from CartVO where login_id=" + loginVO.getLoginId() + " and status=false and orderVO IS NULL");
		List productList = q.list();
		return productList;
	}

	@Override
	public List searchOrderDetails(int orderId) {
		Session session = sessionFactory.openSession();		
		Query q=session.createQuery("from CartVO where status=true and order_id="+orderId);		
		List productList=q.list();
		return productList;
	}
}
