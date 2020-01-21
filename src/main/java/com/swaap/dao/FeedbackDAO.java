package com.swaap.dao;

import java.util.List;

import com.swaap.model.FeedbackVO;

public interface FeedbackDAO {
	
	public void insertFeedback(FeedbackVO feedbackVO);
	
	public List findByIdFeedback(FeedbackVO feedbackVO);
	
	public List searchFeedback();

}
