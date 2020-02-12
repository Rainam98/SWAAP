package com.swaap.service;

import java.util.List;

import com.swaap.model.ChecklistVO;
import com.swaap.model.ComplainVO;
import com.swaap.model.LoginVO;

public interface ChecklistService {
public void insertChecklist(ChecklistVO checklistVO);
	
	public List findByIdComplain(ComplainVO complainVO);
	
	public List searchBranchChecklist();

	public List searchUserComplain(LoginVO loginId);
}
