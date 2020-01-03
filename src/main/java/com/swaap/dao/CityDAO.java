package com.swaap.dao;

import java.util.List;

import com.swaap.model.CityVO;

public interface CityDAO {

	public void insertCity(CityVO cityVO);

	public List searchCity();

	public List editCity(CityVO cityVO);

}
