package com.swaap.service;

import java.util.List;

import com.swaap.model.BranchVO;

public interface BranchService {
	public void insertBranch(BranchVO branchVO);

	public List searchBranch();

	public List editBranch(BranchVO branchVO);
}
