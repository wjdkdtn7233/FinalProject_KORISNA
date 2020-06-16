package com.kh.finalpj.map.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MapDao {

	@Autowired
	SqlSessionTemplate sqlSession;


	public List<Map<String, Object>> selectFavorate(String userId) {
		return sqlSession.selectList("Map.selectFavorate", userId);
	}

	public int deleteFavor(Map<String, String> commandMap) {
		
		return sqlSession.delete("Map.deleteFavor", commandMap);
	}

	public int insertFavorate(Map<String, Object> commandMap) {

		return sqlSession.insert("Map.insertFavorate", commandMap);
	}
	
	
	
	
}
