package com.kh.finalpj.index.model.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class IndexDao {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public Map<String, Object> testt(){
		
		return sqlSession.selectOne("Test.test");
	}
	
	
}
