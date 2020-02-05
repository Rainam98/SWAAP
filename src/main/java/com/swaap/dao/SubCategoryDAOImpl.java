package com.swaap.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.swaap.model.CategoryVO;
import com.swaap.model.SubCategoryVO;

@Repository
public class SubCategoryDAOImpl implements SubCategoryDAO{
	@Autowired
	SessionFactory sessionFactory;
	public void insertSubCategory(SubCategoryVO subCategoryVO) 
	{
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(subCategoryVO);		
	}
	@Override
	public List searchSubCategory() {
		Session session = sessionFactory.openSession();
		Query q=session.createQuery("from SubCategoryVO where status=true and categoryVO.status=true");
		List subCategoryList=q.list();
		return subCategoryList;
	}
	@Override
	public List editSubCategory(SubCategoryVO subCategoryVO) {
		Session session = sessionFactory.openSession();		
		Query q=session.createQuery("from SubCategoryVO where id="+subCategoryVO.getId());		
		List subCategoryList=q.list();
		return subCategoryList;
	}
	@Override
	public List searchSubCategoryByCategory(CategoryVO categoryVO) {
		Session session = sessionFactory.openSession();		
		Query q=session.createQuery("from SubCategoryVO where categoryVO.id="+categoryVO.getId());		
		List subCategoryList=q.list();
		return subCategoryList;
	}
}
