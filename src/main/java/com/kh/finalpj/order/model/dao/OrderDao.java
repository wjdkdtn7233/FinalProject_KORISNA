package com.kh.finalpj.order.model.dao;

import java.util.List;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrderDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	
	
	public List<Map<String, Object>> selectCartList(Map<String, Object> commandMap) {
		return sqlSession.selectList("Cart.selectCartList",commandMap);
	}

	public int selectSumPrice(Map<String, Object> commandMap) {
		return sqlSession.selectOne("Cart.selectSumPrice",commandMap);
	}
	
	public int insertOrderList(Map<String, Object> commandMap) {
		return sqlSession.insert("Order.insertOrderList",commandMap);
	}
	
	public int insertPayList(Map<String, Object> commandMap) {
		return sqlSession.insert("Order.insertPayList",commandMap);
	}
	
	public int updateOrderYN(Map<String, Object> commandMap) {
		return sqlSession.update("Cart.updateOrderYN",commandMap);
	}
	
	public int updateProductCnt(Map<String, Object> commandMap) {
		return sqlSession.update("Product.updateProductCnt",commandMap);
	}
	
	public List<Map<String, Object>> selectOrderList(Map<String, Object> commandMap) {
		return sqlSession.selectList("Order.selectOrderList",commandMap);
	}
	
	public List<Map<String, Object>> selectAllOrderList() {
		return sqlSession.selectList("Order.selectAllOrderList");
	}
	
	public List<Map<String, Object>> selectOrderDetailList(Map<String, Object> commandMap) {
		return sqlSession.selectList("Order.selectOrderDetailList",commandMap);
	}
	
	public List<Map<String, Object>> selectOrderDetailListAdmin(Map<String, Object> commandMap) {
		System.out.println("여기는되냐?");
		return sqlSession.selectList("Order.selectOrderDetailListAdmin",commandMap);
	}
	
	
	public int updateOrderStatus(Map<String, Object> commandMap) {
		return sqlSession.update("Order.updateOrderStatus",commandMap);
	}
	
	public int selectTotalPrice(Map<String, Object> commandMap) {
		return sqlSession.selectOne("Order.selectTotalPrice",commandMap);
	}
	
	public int selectTotalPriceAdmin(Map<String, Object> commandMap) {
		return sqlSession.selectOne("Order.selectTotalPriceAdmin",commandMap);
	}
	
	public int updateOrderCancle(Map<String, Object> commandMap) {
		return sqlSession.update("Order.updateOrderCancle",commandMap);
	}
	
	public List<Map<String, Object>> selectProductList() {
		return sqlSession.selectList("Product.selectProductList");
	}
	
	
	
	public int insertReview(Map<String, Object> commandMap) {
		return sqlSession.insert("Review.insertReview",commandMap);
	}
	
	public Map<String, Object> selectCancleInfo(Map<String, Object> commandMap) {
		return sqlSession.selectOne("Order.selectCancleInfo",commandMap);
	}
	
	public double selectAvgStarScore(Map<String, Object> commandMap) {
		return sqlSession.selectOne("Review.selectAvgStarScore",commandMap);
	}

	public int updateProductStarScore(Map<String, Object> commandMap) {
		return sqlSession.update("Review.updateProductStarScore",commandMap);
	}
	
	public int selectProductCnt(Map<String, Object> commandMap) {
		return sqlSession.selectOne("Product.selectProductCnt",commandMap);
	}
	
	public int deleteCart(Map<String, Object> commandMap) {
		return sqlSession.delete("Cart.deleteCart",commandMap);
	}
	
	public int updateCart(Map<String, Object> commandMap) {
		return sqlSession.update("Cart.updateCart",commandMap);
	}
	
	public int updateProductCntPlus(Map<String, Object> commandMap) {
		return sqlSession.update("Product.updateProductCntPlus",commandMap);
	}
	
	public int updatePayCancle(Map<String, Object> commandMap) {
		return sqlSession.update("Order.updatePayCancle",commandMap);
	}
	
	public int selectOrderChange(Map<String, Object> commandMap) {
		return sqlSession.update("Order.selectOrderChange",commandMap);
	}
}
