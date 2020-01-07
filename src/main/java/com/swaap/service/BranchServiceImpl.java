package com.swaap.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.swaap.dao.BranchDAO;
import com.swaap.model.BranchVO;

@Service
@Transactional
public class BranchServiceImpl implements BranchService{
	@Autowired
	BranchDAO branchDAO;


	public void insertBranch(BranchVO branchVO) 
	{
		this.branchDAO.insertBranch(branchVO);	
	}


	@Override
	public List searchBranch() {
		List branchList=this.branchDAO.searchBranch();
		return branchList;
	}


	@Override
	public List editBranch(BranchVO branchVO) {
		List branchList=this.branchDAO.editBranch(branchVO);
		return branchList;
	}
}
