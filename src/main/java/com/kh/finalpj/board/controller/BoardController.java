package com.kh.finalpj.board.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.finalpj.board.model.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	private BoardService bs;

	@RequestMapping("/index.do")
	public ModelAndView index(ModelAndView mav) {
		mav.setViewName("board/board");

		return mav;
	}

	@RequestMapping("/board.do")
	public ModelAndView openApi() {
		ModelAndView mav = new ModelAndView();

		List<Map<String, Object>> res = bs.openApi();

		mav.addObject("data", res);
		mav.setViewName("board/boardtest");

		return mav;
	}
	
	@RequestMapping("/boardlist.do")
	public ModelAndView boardList() {
		ModelAndView mav = new ModelAndView();

		List<Map<String, Object>> res = bs.openApi();
		
		
		
		
		

		mav.addObject("data", res);
		mav.setViewName("board/boardlist");
	
		
		return mav;
	}

	@RequestMapping("/boarddetail.do")
	public ModelAndView boardDetail(String id) {
		ModelAndView mav = new ModelAndView();

//		List<Map<String, Object>> res = bs.openApi();
//
//		if (res.get() != null) {
//			mav.addObject("data", res);
//			mav.setViewName("board/boarddetail");
//		} else {
//			mav.addObject("alertMsg", "존재하지 않는 게시물입니다.");
//			mav.addObject("back", "back");
//			mav.setViewName("common/result");
//		}

		return mav;
	}



}
