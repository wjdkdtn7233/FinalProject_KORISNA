package com.kh.finalpj.board2.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.finalpj.board2.model.service.Board2Service;

@Controller
@RequestMapping("/board2")
public class Board2Controller {

   @Autowired
   private Board2Service bs;

   @RequestMapping("/board2.do")
   public ModelAndView openApi() {
      ModelAndView mav = new ModelAndView();

      List<Map<String, Object>> res = bs.openApi();
      
      mav.addObject("data",res);
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