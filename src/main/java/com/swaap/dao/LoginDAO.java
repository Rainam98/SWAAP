package com.swaap.dao;

import java.util.List;

import com.swaap.model.LoginVO;
import com.swaap.model.RegisterVO;

public interface LoginDAO {

	public void register(RegisterVO registerVO);

	public void insertLogin(LoginVO loginVO);

	public List searchLoginID(String loginService);

}
