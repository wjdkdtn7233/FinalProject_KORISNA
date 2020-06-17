package com.kh.finalpj.board2.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.finalpj.board2.model.vo.Board2;

@Repository
public class Board2Dao {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	
	public void openApi(Board2 bd2){
			
		sqlSession.insert("Board2.board2", bd2);
				
	}


	public List<Board2> boardList2() {
		
		System.out.println("다오");
		return sqlSession.selectList("Board2.selectboard");
	}
	
		
	
	
}
