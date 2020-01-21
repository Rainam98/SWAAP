package com.swaap.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.swaap.model.FeedbackVO;

@Repository
public class FeedbackDAOImpl implements FeedbackDAO{

	@Autowired 
	SessionFactory sessionFactory;
	
	
	public void insertFeedback(FeedbackVO feedbackVO)
	{
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(feedbackVO);
	}
	
	public List searchFeedback()
	{
		Session session = sessionFactory.openSession();
		Query q=session.createQuery("from FeedbackVO where status=true and loginVO.status=true");
		List ls=q.list();
		return ls;
	}
	
	public List findByIdFeedback(FeedbackVO feedbackVO)
	{
			Session session = sessionFactory.openSession();
			Query q=session.createQuery("from FeedbackVO where id="+feedbackVO.getId());
			List ls=q.list();
			return ls;
	}

}
