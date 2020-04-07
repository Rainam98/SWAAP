package com.swaap.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.swaap.model.ProductCountVO;
import com.swaap.model.ProductVO;

@Repository
public class ProductCountDAOImpl implements ProductCountDAO{
	@Autowired
	SessionFactory sessionFactory;
	
	public void insertProductCount(ProductCountVO productCountVO) 
	{
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(productCountVO);		
	}
	
	public List searchProductCount() {
		Session session = sessionFactory.openSession();
		Query q=session.createQuery("from ProductCountVO");
		List productCountList=q.list();
		return productCountList;
		
	}

	
	public List searchProductCount(ProductVO productVO, String date) {
		Session session = sessionFactory.openSession();
		Query q=session.createQuery("from ProductCountVO where productVO.id='"+productVO.getId()+"' and date='"+date+"'");
		List productCountList=q.list();
		return productCountList;
		
	}

	@Override
	public List searchProductCountById(int id) {
		Session session = sessionFactory.openSession();
		Query q=session.createQuery("from ProductCountVO where productVO.id='"+id+"'");
		List productCountList=q.list();
		return productCountList;
	}

}
