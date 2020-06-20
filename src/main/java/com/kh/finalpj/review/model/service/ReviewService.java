package com.kh.finalpj.review.model.service;

import java.util.List;
import java.util.Map;


public interface ReviewService {

	//리뷰 작성시 insert
	public int insertReview(Map<String,Object> commandMap);
	//상품 디테일 들어갈시 리뷰 리스트 불러오기
	public List<Map<String, Object>> selectReviewList(Map<String, Object> commandMap);
	//해당 상품 리뷰의 총 갯수
	public int selectReviewCnt(Map<String, Object> commandMap);
	//해당 상품 리뷰의 별점 평균
	public double selectReviewStarScoreAvg(Map<String, Object> commandMap);
	//해당 상품 별점 갱신 update
	public int updateProductStarScore(Map<String, Object> commandMap);
	//해당 리뷰 like 또는 hate 눌렀을 시 empathy테이블에 insert (해당 리뷰에 추천 눌렀는지 안눌렀는지 알기위함)
	public int insertLikeOrHate(Map<String, Object> commandMap);
	//해당 리뷰 추천 눌렀는지 안눌렀는지 확인
	public int selectEmpathyYN(Map<String, Object> commandMap);
	//해당 리뷰 like와 hate 갯수 select
	public Map<String, Object> selectLikeAndHateCnt(Map<String, Object> commandMap);
	//해당 리뷰 like와 hate 갯수 파악 후  사용자가 누른 것에 따라 +1 업데이트 해주기
	public int updateLikeOrHateCnt(Map<String, Object> commandMap);
	
	public int deleteReview(Map<String, Object> commandMap);
	
	public int deleteEmpathy(Map<String, Object> commandMap);
	
	public int selectEmpathyCnt(Map<String, Object> commandMap);
}
