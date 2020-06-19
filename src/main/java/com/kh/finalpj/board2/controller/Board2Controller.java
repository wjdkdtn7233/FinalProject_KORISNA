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

		res.put("url", "board2.do");
		mav.addObject("noticeData", res);
		mav.setViewName("board2/board2test");
 
      return mav;

   }
   
   
   @RequestMapping("/board2search.do")
	public ModelAndView searchinfo(@RequestParam Map<String,Object> commandMap) {
	   
	   ModelAndView mav = new ModelAndView();
	   System.out.println("controller : " + commandMap.get("b2_yadmnm"));
	   
		int currentPage = 1;
		int cntPerPage = 6;
		String orderby = "B2_NO";

		if (commandMap.get("cPage") != null) {
			currentPage = Integer.parseInt((String) commandMap.get("cPage"));
		}

		if (commandMap.get("cntPerPage") != null) {
			cntPerPage = Integer.parseInt((String) commandMap.get("cPage"));
		}

		Map<String, Object> res = bs.searchinfo(commandMap, orderby, currentPage, cntPerPage);
		
		if(commandMap.get("b2_yadmnm") != null) {
			System.out.println(">>>>>>>>>>> " + commandMap.get("b2_yadmnm"));
			res.put("b2_yadmnm",commandMap.get("b2_yadmnm"));
		}
		
		System.out.println("컨트롤러" + res);
		
		res.put("url", "board2search.do");
		mav.addObject("noticeData", res);
		mav.setViewName("board2/board2test");
		
		
		return mav;
	}
   
     
   
   @RequestMapping("/index.do")
   public ModelAndView index(ModelAndView mav) {
      
      System.out.println("kekekekekekek");
      
      mav.setViewName("board2/board2");
      
      return mav;
   }
   
   

   
   
   
   

}