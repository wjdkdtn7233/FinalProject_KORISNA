package com.kh.finalpj.order.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.finalpj.order.model.service.OrderService;

@Controller
public class OrderController {

	@Autowired
	OrderService orderService;
	
	
	@RequestMapping("/order/orderwriting.do")
	public ModelAndView orderWriting(ModelAndView mav,@RequestParam Map<String,Object> commandMap) {
		
		
		
		mav.addObject("cartList", orderService.selectCartList(commandMap));
		mav.addObject("totalPrice", orderService.selectSumPrice(commandMap));
		mav.setViewName("order/order");
		return mav;
		
	}
	
}
