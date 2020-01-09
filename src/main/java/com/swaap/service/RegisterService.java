package com.swaap.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.swaap.dao.RegisterDAO;
import com.swaap.model.RegisterVO;

@Service
public class RegisterService {
	
	@Autowired RegisterDAO registerDAO;
	
	@Transactional
	public void insertRegister(RegisterVO registerVO) {
		this.registerDAO.insertRegister(registerVO);
	}

}
