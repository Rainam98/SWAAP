package com.swaap.service;

import java.util.List;

import com.swaap.model.ChecklistVO;
import com.swaap.model.ComplainVO;
import com.swaap.model.LoginVO;

public interface ChecklistService {
		
	public void insertChecklist(ChecklistVO checklistVO);
	
	public List searchBranchChecklist();
}
