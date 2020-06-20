package com.kh.finalpj.review.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.finalpj.review.model.dao.ReviewDao;

@Service
public class ReviewServiceImpl implements ReviewService {
	
	@Autowired
	ReviewDao reviewDao;

	@Override
	public int insertReview(Map<String, Object> commandMap) {
		return reviewDao.insertReview(commandMap);
	}

	@Override
	public List<Map<String, Object>> selectReviewList(Map<String, Object> commandMap) {
		return reviewDao.selectReviewList(commandMap);
	}

	@Override
	public int selectReviewCnt(Map<String, Object> commandMap) {
		return reviewDao.selectReviewCnt(commandMap);
	}

	@Override
	public double selectReviewStarScoreAvg(Map<String, Object> commandMap) {
		return reviewDao.selectReviewStarScoreAvg(commandMap);
	}

	@Override
	public int updateProductStarScore(Map<String, Object> commandMap) {
		return reviewDao.updateProductStarScore(commandMap);
	}

	@Override
	public int insertLikeOrHate(Map<String, Object> commandMap) {
		return reviewDao.insertLikeOrHate(commandMap);
	}

	@Override
	public int selectEmpathyYN(Map<String, Object> commandMap) {
		return reviewDao.selectEmpathyYN(commandMap);
	}

	@Override
	public Map<String, Object> selectLikeAndHateCnt(Map<String, Object> commandMap) {
		return reviewDao.selectLikeAndHateCnt(commandMap);
	}

	@Override
	public int updateLikeOrHateCnt(Map<String, Object> commandMap) {
		return reviewDao.updateLikeOrHateCnt(commandMap);
	}

	@Override
	public int deleteReview(Map<String, Object> commandMap) {
		return reviewDao.deleteReview(commandMap);
	}
	@Override
	public int deleteEmpathy(Map<String, Object> commandMap) {
		return reviewDao.deleteEmpathy(commandMap);
	}
	@Override
	public int selectEmpathyCnt(Map<String, Object> commandMap) {
		return reviewDao.selectEmpathyCnt(commandMap);
	}
	
}
