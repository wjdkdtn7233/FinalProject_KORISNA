package com.kh.finalpj.product.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDao {

	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public List<Map<String, Object>> selectProductList() {
		return sqlSession.selectList("Product.selectProductList");
	}
	
	public List<Map<String, Object>> selectProductSortList(String orderby) {
		return sqlSession.selectList("Product.selectProductSortList",orderby);
	}
	
	public Map<String, Object> selectProductDetail(String p_no) {
		return sqlSession.selectOne("Product.selectProductDetail",p_no);
	}
	
	public List<Map<String, Object>> selectReviewList(String p_no) {
		return sqlSession.selectList("Review.selectReviewList",p_no);
	}
	
	public int selectReviewCnt(String p_no) {
		return sqlSession.selectOne("Review.selectReviewCnt",p_no);
	}
}
