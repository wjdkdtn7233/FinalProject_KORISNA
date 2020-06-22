package com.kh.finalpj.cart.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CartDao {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	
	public int insertCart(Map<String, Object> commandMap) {
		return sqlSession.insert("Cart.insertCart",commandMap);
	}
	
	public List<Map<String, Object>> selectCartList(String f_email) {
		return sqlSession.selectList("Cart.selectCartList",f_email);
	}
	
	public int updateCart(Map<String, Object> commandMap) {
		return sqlSession.update("Cart.updateCart",commandMap);
	}
	
	public Map<String, Object> selectCart(Map<String, Object> commandMap) {
		return sqlSession.selectOne("Cart.selectCart",commandMap);
	}
	
	public int selectSumPrice(String f_email) {
		return sqlSession.selectOne("Cart.selectSumPrice",f_email);
	}
	
	public int deleteCart(Map<String,Object> commandMap) {
		return sqlSession.delete("Cart.deleteCart",commandMap);
	}
	
	public int deleteCartAll(Map<String, Object> commandMap) {
		return sqlSession.delete("Cart.deleteCartAll",commandMap);
	}
	
	public Map<String, Object> selectCartYN(Map<String, Object> commandMap) {
		return sqlSession.selectOne("Cart.selectCartYN",commandMap);
	}
	
	public int selectProductCnt(Map<String, Object> commandMap) {
		return sqlSession.selectOne("Product.selectProductCnt",commandMap);
	}
	
	public int updateProductCnt(Map<String, Object> commandMap) {
		return sqlSession.update("Cart.updateProductCnt",commandMap);
	}
	
	
	
}
