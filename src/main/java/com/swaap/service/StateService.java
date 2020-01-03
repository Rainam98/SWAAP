package com.swaap.service;

import java.util.List;

import com.swaap.model.StateVO;

public interface StateService {
	
	public void insertState(StateVO stateVO);
	public List searchState();
	public List editState(StateVO stateVO);
}
