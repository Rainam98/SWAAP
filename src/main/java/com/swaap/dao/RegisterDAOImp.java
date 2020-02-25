package com.swaap.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.swaap.model.RegisterVO;


@Repository
public class RegisterDAOImp implements RegisterDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void insertRegister(RegisterVO registerVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(registerVO);
	}
	
	@Override
	public List searchUser() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Query q=session.createQuery("from RegisterVO where status=true and loginVO.role='ROLE_USER'");
		List users=q.list();
		return users;
	
	}
	
	public List searchUserByUsername(String username) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Query q=session.createQuery("from LoginVO where role='ROLE_USER' and username='"+username+"'");
		List users=q.list();
		return users;
	
	}
}
