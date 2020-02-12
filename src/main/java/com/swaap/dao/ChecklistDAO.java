package com.swaap.dao;

import java.util.List;

import com.swaap.model.ChecklistVO;

public interface ChecklistDAO {
	
	public void insertChecklist(ChecklistVO checklistVO);
	
	public List searchBranchChecklist();
}
