package com.swaap.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.swaap.dao.FeedbackDAO;
import com.swaap.model.FeedbackVO;


@Service
@Transactional
public class FeedbackServiceImpl implements FeedbackService{

	@Autowired
	FeedbackDAO feedbackDAO;
	
	public void insertFeedback(FeedbackVO feedbackVO)
	{
		this.feedbackDAO.insertFeedback(feedbackVO);
	}

	public List searchFeedback()
	{
		return this.feedbackDAO.searchFeedback();
	}
		
	public List findByIdFeedback(FeedbackVO feedbackVO)
	{
		return this.feedbackDAO.findByIdFeedback(feedbackVO);
	}

		
}
