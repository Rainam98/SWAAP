package com.swaap.dao;

import java.util.List;


import com.swaap.model.StateVO;

public interface StateDAO {

	void insertState(StateVO stateVO);
	public List searchState();
	public List editState(StateVO stateVO);

}
