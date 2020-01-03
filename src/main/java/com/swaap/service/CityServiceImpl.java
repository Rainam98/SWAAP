package com.swaap.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.swaap.dao.CityDAO;
import com.swaap.model.CityVO;

@Service
@Transactional
public class CityServiceImpl implements CityService {
	
	@Autowired
	CityDAO cityDAO;


	public void insertCity(CityVO cityVO) 
	{
		this.cityDAO.insertCity(cityVO);
		
	}


	@Override
	public List searchCity() {
		List ls=this.cityDAO.searchCity();
		return ls;
	}


	@Override
	public List editCity(CityVO cityVO) {
		List cityList=this.cityDAO.editCity(cityVO);
		return cityList;
	}

}
