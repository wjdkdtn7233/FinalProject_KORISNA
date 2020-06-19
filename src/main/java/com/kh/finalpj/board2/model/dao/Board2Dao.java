package com.kh.finalpj.board2.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.finalpj.board2.model.vo.Board2;

import common.util.Paging;

@Repository
public class Board2Dao {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	
	public void openApi(Board2 bd2){
			
		sqlSession.insert("Board2.board2", bd2);
				
	}


	public List<Board2> boardList2() {
		
		
		return sqlSession.selectList("Board2.selectboard");
	}
	
	
	public List<Board2> selectNoticList(Paging page, String orderby) {
		
		
		Map<String, Object> data = new HashMap<String, Object>();

		data.put("page", page);
		data.put("orderby", orderby);
		return sqlSession.selectList("Board2.selectNoticeList", data);

	}
	

	public int contentCnt() {

		return sqlSession.selectOne("Board2.contentCnt");

	}


	public List<Board2> searchinfo(Map<String, Object> commandMap,Paging page, String orderby) {
		
		
		commandMap.put("page", page);
		commandMap.put("orderby", orderby);
		System.out.println("다오커맨드맵" + commandMap);
		return sqlSession.selectList("Board2.searchinfo", commandMap);

	}
	
	public int searchPaging(Map<String,Object> commandMap) {
		
		System.out.println("12rae[ioghaeroigwapoiefhwoeifgui");
		
		int i = sqlSession.selectOne("Board2.searchPaging",commandMap);
		
		System.out.println("dao : " + i);
		
		return i;

	}
	
}
