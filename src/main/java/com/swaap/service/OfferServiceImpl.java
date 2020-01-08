package com.swaap.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.swaap.dao.OfferDAO;
import com.swaap.model.OfferVO;

@Service
@Transactional
public class OfferServiceImpl implements OfferService{
	@Autowired
	OfferDAO offerDAO;
	
	@Override
	public void insertOffer(OfferVO offerVO) {
		this.offerDAO.insertOffer(offerVO);
		
	}

	@Override
	public List searchOffer() {
		List offerList=this.offerDAO.searchOffer();
		return offerList;
	}

	@Override
	public List editOffer(OfferVO offerVO) {
		List offerList=this.offerDAO.editOffer(offerVO);
		return offerList;
	}

}
