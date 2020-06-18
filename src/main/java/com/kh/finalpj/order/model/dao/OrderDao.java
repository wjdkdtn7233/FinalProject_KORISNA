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

}
