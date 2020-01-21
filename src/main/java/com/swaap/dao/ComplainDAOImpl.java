package com.swaap.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.swaap.model.ComplainVO;
import com.swaap.model.LoginVO;

@Repository
public class ComplainDAOImpl implements ComplainDAO {

	@Autowired 
	SessionFactory sessionFactory;
	
	
	public void insertComplain(ComplainVO complainVO)
	{
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(complainVO);
	}
	
	public List searchComplain()
	{
		Session session = sessionFactory.openSession();
		Query q=session.createQuery("from ComplainVO where status=true and loginVO.status=true");
		List ls=q.list();
		return ls;
	}
	
	public List findByIdComplain(ComplainVO complainVO)
	{
			Session session = sessionFactory.openSession();
			Query q=session.createQuery("from ComplainVO where id="+complainVO.getId());
			List ls=q.list();
			return ls;
	}

	@Override
	public List searchUserComplain(LoginVO loginId) {
		Session session = sessionFactory.openSession();
		Query q=session.createQuery("from ComplainVO where login_id="+loginId.getLoginId());
		List ls=q.list();
		return ls;
	}

}
