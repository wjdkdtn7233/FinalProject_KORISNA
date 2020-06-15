package com.kh.finalpj.board.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.finalpj.board.model.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	private BoardService bs;

	@RequestMapping("/board.do")
	public ModelAndView openApi() {
		ModelAndView mav = new ModelAndView();

		List<Map<String, Object>> res = bs.openApi();
		
		mav.addObject("data",res);
		mav.setViewName("board/boardtest");
	
		return mav;

	}
	
	@RequestMapping("/index.do")
	public ModelAndView index(ModelAndView mav) {
		
		System.out.println("kekekekekekek");
		
		mav.setViewName("board/board");
		
		return mav;
	}
	

}
