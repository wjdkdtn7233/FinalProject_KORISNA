package com.kh.finalpj.order.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	
	
	@RequestMapping("/order/ordercomplete.do")
	public ModelAndView orderComplete(HttpServletRequest request,ModelAndView mav,@RequestParam Map<String,Object> commandMap) {
		
		String[] pno = String.valueOf(commandMap.get("p_no")).split(",");
		String[] pcnt = String.valueOf(commandMap.get("o_count")).split(",");
		String[] ptprice = String.valueOf(commandMap.get("o_price")).split(",");
		String[] cno = String.valueOf(commandMap.get("c_no")).split(",");
		
		int result = 0;
		
		for(int i = 1; i < pno.length; i++) {
			if(i == 1) {
				commandMap.put("number","ok");
			}else {
				commandMap.put("number","no");
			}
			
			commandMap.put("p_no",pno[i]);
			commandMap.put("o_count",pcnt[i]);
			commandMap.put("o_price",ptprice[i]);
			commandMap.put("c_no",cno[i]);
			result += orderService.insertOrderList(commandMap);
			result += orderService.insertPayList(commandMap);
			result += orderService.updateOrderYN(commandMap);
			result += orderService.updateProductCnt(commandMap);
		}
		
		
		
		if(result > 3 ) {
			mav.addObject("alertMsg","주문을 완료하였습니다. 무통장입금은 문자로 계좌번호가 전송됩니다.");
			mav.addObject("url",request.getContextPath() +"/order/orderlist.do");
			mav.setViewName("common/result");
		}else {
			mav.addObject("alertMsg","결제에 실패하였습니다.");
			mav.addObject("back","back");
			mav.setViewName("common/result");
		}
		
		
		
		
		return mav;
		
	}
	
	@RequestMapping("/order/orderlist.do")
	public ModelAndView orderList(HttpSession session,ModelAndView mav,@RequestParam Map<String,Object> commandMap) {
		
		Map<String, Object> loginUser= (Map<String, Object>) session.getAttribute("loginUser");
		String f_email = String.valueOf(loginUser.get("F_EMAIL")); 
		commandMap.put("f_email", f_email);
		
		List<Map<String, Object>> map = orderService.selectOrderList(commandMap);
		for (Map<String, Object> m : map) {
			m.put("O_DATE",String.valueOf(m.get("TO_CHAR(O_DATE,'YYYY-MM-DD')")));
		}
		
		
		System.out.println(map);
		//jsp에서 payList 가 널이라면
		mav.addObject("orderList",map);
		mav.setViewName("order/orderList");
		
		return mav;
	}
	
	@RequestMapping("/order/orderdetail.do")
	public ModelAndView orderDetail(HttpSession session,ModelAndView mav,@RequestParam Map<String,Object> commandMap) {
		Map<String, Object> loginUser= (Map<String, Object>) session.getAttribute("loginUser");
		String f_email = String.valueOf(loginUser.get("F_EMAIL"));
		commandMap.put("f_email", f_email);
		String category = "";
		List<Map<String, Object>> map = orderService.selectOrderDetailList(commandMap);
		Map<String, Object> oneMap = map.get(0);
		for (Map<String, Object> m : map) {
			m.put("O_DATE",String.valueOf(m.get("TO_CHAR(O_DATE,'YYYY-MM-DD')")));
			category = String.valueOf(m.get("py_category"));
		}
		
		mav.addObject("userInfo", oneMap);
		mav.addObject("totalPrice",orderService.selectTotalPrice(commandMap));
		mav.addObject("orderDetailList",map);
		mav.setViewName("order/orderDetail");
		return mav;
	}
	
	
}
