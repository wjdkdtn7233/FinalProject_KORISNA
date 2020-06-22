package com.kh.finalpj.board2.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.finalpj.board2.model.service.Board2Service;
import com.kh.finalpj.board2.model.vo.Board2;

@Controller
@RequestMapping("/board2")
public class Board2Controller {

	@Autowired
	private Board2Service bs;

	@RequestMapping("/board2.do")
	public ModelAndView openApi(@RequestParam Map<String, Object> commandMap) {
		ModelAndView mav = new ModelAndView();

//      List<Board2> boardList2 = bs.boardList2();
//      //bs.openApi();
//      
//      mav.addObject("data", boardList2);

		int currentPage = 1;
		int cntPerPage = 6;
		String orderby = "B2_NO";

		if (commandMap.get("cPage") != null) {
			currentPage = Integer.parseInt((String) commandMap.get("cPage"));
		}

		if (commandMap.get("cntPerPage") != null) {
			cntPerPage = Integer.parseInt((String) commandMap.get("cPage"));
		}

		Map<String, Object> res = bs.selectNoticeList(orderby, currentPage, cntPerPage);

		// res.put("url", "board2.do");
		mav.addObject("noticeData", res);
		mav.addObject("board2", "board2");
		mav.setViewName("board2/board2test");

		return mav;

	}

	@RequestMapping("/board2search.do")
	public ModelAndView searchinfo(HttpServletRequest request, String b2_yadmnm) {

		ModelAndView mav = new ModelAndView();

		int currentPage = 1;
		int cntPerPage = 6;

		if (request.getParameter("cPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("cPage"));
		}

		if (request.getParameter("cntPerPage") != null) {
			cntPerPage = Integer.parseInt(request.getParameter("cntPerPage"));
		}

		Map<String, Object> res = new HashMap<String, Object>();

		res = bs.searchinfo(b2_yadmnm, currentPage, cntPerPage);

//		if(commandMap.get("b2_yadmnm") != null) {
//			System.out.println(">>>>>>>>>>> " + commandMap.get("b2_yadmnm"));
//			res.put("b2_yadmnm",commandMap.get("b2_yadmnm"));
//		}

		for (String key : res.keySet()) {
			System.out.println("검색시 컨트롤러 " + res.get(key));
		}

		// res.put("url", "board2search.do");
		mav.addObject("paging", res.get("paging"));
		mav.addObject("noticeData", res);
		mav.addObject("board2", "board2search");
		mav.addObject("b2_yadmnm", b2_yadmnm);
		mav.setViewName("board2/board2test");

		return mav;
	}

	@RequestMapping("/index.do")
	public ModelAndView index(ModelAndView mav) {

		System.out.println("kekekekekekek");

		mav.setViewName("board2/board2");

		return mav;
	}

	@RequestMapping("/board2map.do")
	public ModelAndView board2map(HttpServletRequest request,String name,String addr,String telno, String xpos, String ypos) {

		ModelAndView mav = new ModelAndView();

		Map<String, Object> mapmap = new HashMap<String, Object>();
		mapmap.put("name", name);
		mapmap.put("addr", addr);
		mapmap.put("telno", telno);
		mapmap.put("xpos", Double.parseDouble(xpos));
		mapmap.put("ypos", Double.parseDouble(ypos));
		System.out.println("컨트롤러" + mapmap);

		mav.addObject("mapmap", mapmap);
		mav.setViewName("board2/board2map");

		return mav;
	}

}