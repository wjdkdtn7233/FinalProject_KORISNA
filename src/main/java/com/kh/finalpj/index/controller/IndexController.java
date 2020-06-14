package com.kh.finalpj.index.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.finalpj.index.model.service.IndexService;

@Controller
@RequestMapping("/index")
public class IndexController {
	ased
	private static final Logger logger = LoggerFactory.getLogger(IndexController.class);
	
	@Autowired
	private IndexService id;
	
	@RequestMapping("/index.do")
	public String home() {
		return "index/index";
	}
	
	
	
}
