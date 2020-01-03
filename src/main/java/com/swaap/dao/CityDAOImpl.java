package com.swaap.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.swaap.model.CityVO;

@Repository
public class CityDAOImpl implements CityDAO {
	
	@Autowired
	SessionFactory sessionFactory;

	public void insertCity(CityVO cityVO) 
	{
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(cityVO);		
	}

	@Override
	public List searchCity() {
		Session session = sessionFactory.openSession();
		Query q=session.createQuery("from CityVO where status=true");
		List cityList=q.list();
		return cityList;
	}

	@Override
	public List editCity(CityVO cityVO) {
		Session session = sessionFactory.openSession();		
		Query q=session.createQuery("from CityVO where id="+cityVO.getId());		
		List cityList=q.list();
		return cityList;
	}

}
