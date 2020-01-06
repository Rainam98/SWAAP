package com.swaap.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.swaap.model.CategoryVO;
@Repository
public class CategoryDAOImpl implements CategoryDAO {
	@Autowired
	SessionFactory sessionFactory;

	public void insertCategory(CategoryVO categoryVO) {
		Session session=this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(categoryVO);
		
	}

	public List searchCategory() 
	{
		Session session = sessionFactory.openSession();
		Query q=session.createQuery("from CategoryVO where status=true");
		List categoryList=q.list();
		return categoryList;
		
	}

	public List editCategory(CategoryVO categoryVO) 
	{
		Session session = sessionFactory.openSession();		
		Query q=session.createQuery("from CategoryVO where id="+categoryVO.getId());		
		List categoryList=q.list();
		return categoryList;
	}
}
