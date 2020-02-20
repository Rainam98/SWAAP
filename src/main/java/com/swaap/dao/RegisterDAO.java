package com.swaap.dao;

import java.util.List;

import com.swaap.model.RegisterVO;

public interface RegisterDAO {

	void insertRegister(RegisterVO registerVO);
	
	public List searchUser();
	
	public List searchUserByUsername(String username);

}
