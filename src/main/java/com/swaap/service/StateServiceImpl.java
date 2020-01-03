package com.swaap.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.swaap.dao.StateDAO;
import com.swaap.model.StateVO;

@Service
@Transactional
public class StateServiceImpl implements StateService{

	@Autowired
	StateDAO stateDAO;
	@Override
	public void insertState(StateVO stateVO) 
	{
		
		this.stateDAO.insertState(stateVO);
	}
	public List searchState()
	{
		List ls=this.stateDAO.searchState();
		return ls;
	}
	
	public List editState(StateVO stateVO)
	{
		List stateList=this.stateDAO.editState(stateVO);
		return stateList;
	}

}
