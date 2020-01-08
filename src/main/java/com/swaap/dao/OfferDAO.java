package com.swaap.dao;

import java.util.List;

import com.swaap.model.OfferVO;

public interface OfferDAO {
	public void insertOffer(OfferVO offerVO);

	public List searchOffer();

	public List editOffer(OfferVO offerVO);
}
