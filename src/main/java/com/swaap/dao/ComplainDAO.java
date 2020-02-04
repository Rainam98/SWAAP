package com.swaap.dao;

import java.util.List;

import com.swaap.model.ComplainVO;
import com.swaap.model.LoginVO;

public interface ComplainDAO {

	public void insertComplain(ComplainVO complainVO);
	
	public List findByIdComplain(ComplainVO complainVO);
	
	public List searchBranchComplain();

	public List searchUserComplain(LoginVO loginId);
}
