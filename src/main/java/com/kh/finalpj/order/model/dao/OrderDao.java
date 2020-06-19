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
	
	public List<Map<String, Object>> selectOrderDetailList(Map<String, Object> commandMap) {
		return sqlSession.selectList("Order.selectOrderDetailList",commandMap);
	}
	
	public int selectTotalPrice(Map<String, Object> commandMap) {
		return sqlSession.selectOne("Order.selectTotalPrice",commandMap);
	}

}
