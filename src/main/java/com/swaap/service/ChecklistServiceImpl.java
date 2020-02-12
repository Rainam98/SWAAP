package com.swaap.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.swaap.dao.ChecklistDAO;
import com.swaap.dao.LoginDAO;
import com.swaap.model.ChecklistVO;
import com.swaap.model.ComplainVO;
import com.swaap.model.LoginVO;
@Service
@Transactional
public class ChecklistServiceImpl implements ChecklistService{
	@Autowired
	ChecklistDAO checklistDAO;
	
	public void insertChecklist(ChecklistVO checklistVO)
	{
	
		this.checklistDAO.insertChecklist(checklistVO);
	}

	public List searchBranchChecklist()
	{
		return this.checklistDAO.searchBranchChecklist();
	}
		
}
