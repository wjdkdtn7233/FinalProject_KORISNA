package com.kh.finalpj.board.model.service;

import java.util.List;
import java.util.Map;

public interface BoardService {

	public List<Map<String, Object>> openApi();

	public Map<String, Object> selectBoardList(int currentPage, int cntPerPage);
}
