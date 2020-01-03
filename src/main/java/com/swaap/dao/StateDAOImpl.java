package com.swaap.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.swaap.model.StateVO;

@Repository
public class StateDAOImpl implements StateDAO{
	@Autowired
	SessionFactory sessionFactory;

	public void insertState(StateVO stateVO) {
		Session session=this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(stateVO);
		
	}

	public List searchState() 
	{
		Session session = sessionFactory.openSession();
		Query q=session.createQuery("from StateVO where status=true");
		List stateList=q.list();
		return stateList;
		
	}

	public List editState(StateVO stateVO) 
	{
		Session session = sessionFactory.openSession();		
		Query q=session.createQuery("from StateVO where id="+stateVO.getId());		
		List stateList=q.list();
		return stateList;
	}

}
