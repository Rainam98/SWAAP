package com.swaap.service;

import java.util.List;

import com.swaap.model.OfferVO;

public interface OfferService {
	public void insertOffer(OfferVO offerVO);

	public List searchOffer();

	public List editOffer(OfferVO offerVO);
}
