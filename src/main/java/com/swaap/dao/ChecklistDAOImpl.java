package com.swaap.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.swaap.model.ChecklistVO;
import com.swaap.model.ComplainVO;
import com.swaap.model.LoginVO;
@Repository
public class ChecklistDAOImpl implements ChecklistDAO{
	@Autowired 
	SessionFactory sessionFactory;
	
	
	public void insertChecklist(ChecklistVO checklistVO)
	{
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(checklistVO);
	}
	
	public List searchBranchChecklist()
	{
		Session session = sessionFactory.openSession();
		Query q=session.createQuery("from ChecklistVO where status=true and productVO.status=true");
		List ls=q.list();
		return ls;
	}
}
