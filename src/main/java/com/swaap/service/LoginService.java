package com.swaap.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.swaap.dao.LoginDAO;
import com.swaap.model.LoginVO;
import com.swaap.model.RegisterVO;

@Service
public class LoginService {

	@Autowired
	LoginDAO loginDAO;

	@Transactional
	public void insertRegister(RegisterVO registerVO) {
		loginDAO.register(registerVO);
	}

	@Transactional
	public void insertLogin(LoginVO loginVO) {
		// TODO Auto-generated method stub
		loginDAO.insertLogin(loginVO);
	}

	@Transactional
	public List searchLoginID(String loginService) {
		// TODO Auto-generated method stub
		List ls = loginDAO.searchLoginID(loginService);
		return ls;
	}
	
	@Transactional
	public List searchUserByUsername(String username) {
		List ls = loginDAO.searchUserByUsername(username);
		return ls;
	}
	
}