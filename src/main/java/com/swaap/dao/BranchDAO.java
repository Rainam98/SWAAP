package com.swaap.dao;

import java.util.List;

import com.swaap.model.BranchVO;

public interface BranchDAO {
	public void insertBranch(BranchVO branchVO);

	public List searchBranch();

	public List editBranch(BranchVO branchVO);
}
