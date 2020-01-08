package com.swaap.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.swaap.model.OfferVO;

@Repository
public class OfferDAOImpl implements OfferDAO{
	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public void insertOffer(OfferVO offerVO) {
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(offerVO);
		
	}

	@Override
	public List searchOffer() {
		Session session = sessionFactory.openSession();
		Query q=session.createQuery("from OfferVO where status=true");
		List offerList=q.list();
		return offerList;
	}

	@Override
	public List editOffer(OfferVO offerVO) {
		Session session = sessionFactory.openSession();		
		Query q=session.createQuery("from OfferVO where id="+offerVO.getId());		
		List offerList=q.list();
		return offerList;
	}

}
