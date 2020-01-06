package com.swaap.service;

import java.util.List;

import com.swaap.model.CityVO;
import com.swaap.model.StateVO;

public interface CityService {

	public void insertCity(CityVO cityVO);

	public List searchCity();

	public List editCity(CityVO cityVO);

}
