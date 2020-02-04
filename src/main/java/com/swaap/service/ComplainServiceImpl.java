package com.swaap.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.swaap.dao.ComplainDAO;
import com.swaap.dao.LoginDAO;
import com.swaap.model.ComplainVO;
import com.swaap.model.LoginVO;;

@Service
@Transactional
public class ComplainServiceImpl implements ComplainService{
	
	@Autowired
	ComplainDAO complainDAO;
	@Autowired
	LoginDAO loginDAO;
	
	public void insertComplain(ComplainVO complainVO)
	{
	
		this.complainDAO.insertComplain(complainVO);
	}

	public List searchBranchComplain()
	{
		return this.complainDAO.searchBranchComplain();
	}
		
	public List findByIdComplain(ComplainVO complainVO)
	{
		return this.complainDAO.findByIdComplain(complainVO);
	}

	@Override
	public List searchUserComplain(LoginVO loginId) {
		return this.complainDAO.searchUserComplain(loginId);
	}

		

}
