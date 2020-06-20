package com.kh.finalpj.review.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	
	public int insertReview(Map<String, Object> commandMap) {
		return sqlSession.insert("Review.insertReview",commandMap);
	}
	
	public List<Map<String, Object>> selectReviewList(Map<String, Object> commandMap){
		return sqlSession.selectList("Review.selectReviewList",commandMap);
	}
	
	public int selectReviewCnt(Map<String, Object> commandMap) {
		return sqlSession.selectOne("Review.selectReviewCnt",commandMap);
	}
	
	public double selectReviewStarScoreAvg(Map<String, Object> commandMap) {
		return sqlSession.selectOne("Review.selectAvgStarScore",commandMap);
	}

	public int updateProductStarScore(Map<String, Object> commandMap) {
		return sqlSession.update("Review.updateProductStarScore",commandMap);
	}
	
	public int insertLikeOrHate(Map<String, Object> commandMap) {
		return sqlSession.insert("Empathy.insertLikeOrHate",commandMap);
	}
	
	public int selectEmpathyYN(Map<String, Object> commandMap) {
		return sqlSession.selectOne("Empathy.selectEmpathyYN",commandMap);
	}
	
	public Map<String, Object> selectLikeAndHateCnt(Map<String, Object> commandMap) {
		return sqlSession.selectOne("Review.selectLikeAndHateCnt",commandMap);
	}
	
	public int updateLikeOrHateCnt(Map<String, Object> commandMap) {
		return sqlSession.update("Review.updateLikeOrHateCnt",commandMap);
	}
	
	public int deleteReview(Map<String, Object> commandMap) {
		return sqlSession.delete("Review.deleteReview",commandMap);
	}
	
	public int deleteEmpathy(Map<String, Object> commandMap) {
		return sqlSession.delete("Empathy.deleteEmpathy",commandMap);
	}
	
	public int selectEmpathyCnt(Map<String, Object> commandMap) {
		return sqlSession.selectOne("Empathy.selectEmpathyCnt",commandMap);
	}
}
