package com.kh.finalpj.board2.controller;

import java.util.List;
import java.util.Map;

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
      
      List<Board2> boardList2 = bs.boardList2();
      //bs.openApi();
      
      mav.addObject("data", boardList2);
      mav.setViewName("board2/board2test");
    		
      int currentPage = 1;
	int cntPerPage = 10;
		String orderby = "noticeno";

		if (commandMap.get("cPage") != null) {
			currentPage = Integer.parseInt((String) commandMap.get("cPage"));
		}

		if (commandMap.get("cntPerPage") != null) {
			cntPerPage = Integer.parseInt((String) commandMap.get("cPage"));
		}

		Map<String, Object> res = bs.selectNoticeList(orderby, currentPage, cntPerPage);
		mav.addObject("noticeData", res);
		mav.setViewName("board/board2test");

      
      
      
      
      
   
      return mav;

   }
   
   @RequestMapping("/index.do")
   public ModelAndView index(ModelAndView mav) {
      
      System.out.println("kekekekekekek");
      
      mav.setViewName("board2/board2");
      
      return mav;
   }
   
   

   
   
   
   

}