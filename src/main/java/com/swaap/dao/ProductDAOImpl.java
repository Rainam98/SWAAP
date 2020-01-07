package com.swaap.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.swaap.model.BranchVO;
import com.swaap.model.ProductVO;

@Repository
public class ProductDAOImpl implements ProductDAO{
	@Autowired
	SessionFactory sessionFactory;

	public void insertProduct(ProductVO productVO) 
	{
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(productVO);		
	}

	@Override
	public List searchProduct() {
		Session session = sessionFactory.openSession();
		Query q=session.createQuery("from ProductVO where status=true and categoryVO.status=true");
		List productList=q.list();
		return productList;
	}

	@Override
	public List editProduct(ProductVO productVO) {
		Session session = sessionFactory.openSession();		
		Query q=session.createQuery("from ProductVO where id="+productVO.getId());		
		List productList=q.list();
		return productList;
	}
}
