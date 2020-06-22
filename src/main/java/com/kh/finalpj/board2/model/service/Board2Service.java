package com.kh.finalpj.board2.model.service;

import java.util.List;
import java.util.Map;

import com.kh.finalpj.board2.model.vo.Board2;

public interface Board2Service {

	public void openApi();

	public List<Board2> boardList2();
	
	
	public Map<String, Object> selectNoticeList(String orderby, int currentPage, int cntPerPage);

	public Map<String, Object> searchinfo(String b2_yadmnm, int currentPage, int cntPerPage);
	


	



}
