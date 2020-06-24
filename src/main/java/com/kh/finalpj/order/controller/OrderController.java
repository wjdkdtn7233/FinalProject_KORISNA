package com.kh.finalpj.order.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.finalpj.member.model.vo.Member;
import com.kh.finalpj.order.model.service.OrderService;

import net.sf.json.JSONObject;

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
	
	@RequestMapping("/order/stockcheck.do")
	public void stockCheck(HttpServletResponse response,@RequestParam Map<String,Object> commandMap) throws IOException {
		
		PrintWriter out = response.getWriter();
		
		
		String[] pno = String.valueOf(commandMap.get("p_no")).split(",");
		String[] pcnt = String.valueOf(commandMap.get("c_cnt")).split(",");
		String[] ptprice = String.valueOf(commandMap.get("c_price")).split(",");
		String[] cno = String.valueOf(commandMap.get("c_no")).split(",");
		List<String> updateList = new ArrayList<String>();
		
		
		for(int i = 1; i < pno.length; i++) {
			
			commandMap.put("p_no",pno[i]);
			commandMap.put("o_count",pcnt[i]);
			commandMap.put("o_price",ptprice[i]);
			commandMap.put("c_no",cno[i]);
			int price = Integer.parseInt(ptprice[i])/Integer.parseInt(pcnt[i]);
			int productStock = orderService.selectProductCnt(commandMap);
			
			if(Integer.parseInt(pcnt[i]) > productStock) {
				
				if(productStock == 0) {
					orderService.deleteCart(commandMap);
					updateList.add("updateCart");
				}else {
					commandMap.put("c_cnt", productStock);
					commandMap.put("c_totalprice", price*productStock);
					orderService.updateCart(commandMap);
					updateList.add("updateCart");
				}
				
					
			}
			
		}
		
		if(updateList.size() > 0) {
			out.print("fail");
		}else {
			out.print("success");
		}
		
		
		
		
		
	}
	
	
	@RequestMapping("/order/ordercomplete.do")
	public ModelAndView orderComplete(HttpServletRequest request,ModelAndView mav,@RequestParam Map<String,Object> commandMap) {
		
		String[] pno = String.valueOf(commandMap.get("p_no")).split(",");
		String[] pcnt = String.valueOf(commandMap.get("o_count")).split(",");
		String[] ptprice = String.valueOf(commandMap.get("o_price")).split(",");
		String[] cno = String.valueOf(commandMap.get("c_no")).split(",");
		
		int result = 0;
		String result1 = "";
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
			int price = Integer.parseInt(ptprice[i])/Integer.parseInt(pcnt[i]);
			int productStock = orderService.selectProductCnt(commandMap);
			
			
				result += orderService.insertOrderList(commandMap);
				result += orderService.insertPayList(commandMap);
				result += orderService.updateOrderYN(commandMap);
				result += orderService.updateProductCnt(commandMap);
				System.out.println("주문이 insert 되었따");
		
			
			
		}
		
		
		
		if(result > 3 ) {
			mav.addObject("alertMsg","주문을 완료하였습니다. 무통장입금은 문자로 계좌번호가 전송됩니다.");
			mav.addObject("url",request.getContextPath() +"/order/orderlist.do");
			mav.setViewName("common/result");
		}else {
			mav.addObject("alertMsg","결제에 실패하였습니다.");
			mav.addObject("url",request.getContextPath() +"/cart/cartlist.do");
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
			m.remove("TO_CHAR(O_DATE,'YYYY-MM-DD')");
		}
		
		
		//jsp에서 payList 가 널이라면
		mav.addObject("productList",orderService.selectProductList());
		mav.addObject("orderList",map);
		mav.setViewName("order/orderList");
		
		return mav;
	}
	
	@RequestMapping("/order/orderlistadmin.do")
	public ModelAndView orderListAdmin(HttpSession session,ModelAndView mav,@RequestParam Map<String,Object> commandMap) {
		
		Map<String, Object> loginUser = (Map<String, Object>) session.getAttribute("loginUser");
		
		if(String.valueOf(loginUser.get("F_EMAIL")).equals("korisnaCustomerContact@gmail.com")) {
			List<Map<String, Object>> map = orderService.selectAllOrderList();
			for (Map<String, Object> m : map) {
				m.put("O_DATE",String.valueOf(m.get("TO_CHAR(O_DATE,'YYYY-MM-DD')")));
				m.remove("TO_CHAR(O_DATE,'YYYY-MM-DD')");
			}
			
			//jsp에서 payList 가 널이라면
			mav.addObject("productList",orderService.selectProductList());
			mav.addObject("orderList",map);
			mav.setViewName("order/orderListAdmin");
		} else {
			mav.addObject("back","back");
			mav.addObject("alertMsg","관리자가 아닙니다.");
			mav.setViewName("common/result");
		}
		
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
	
	@RequestMapping("/order/orderdetailadmin.do")
	public ModelAndView orderDetailAdmin(HttpSession session,ModelAndView mav,@RequestParam Map<String,Object> commandMap) {
		List<Map<String, Object>> map = orderService.selectOrderDetailListAdmin(commandMap);
		System.out.println(map);
		Map<String, Object> oneMap = map.get(0);
		for (Map<String, Object> m : map) {
			m.put("O_DATE",String.valueOf(m.get("TO_CHAR(O_DATE,'YYYY-MM-DD')")));
		}
		mav.addObject("userInfo", oneMap);
		mav.addObject("totalPrice",orderService.selectTotalPriceAdmin(commandMap));
		mav.addObject("orderDetailList",map);
		mav.setViewName("order/orderDetailAdmin");
		return mav;
	}
	
	
	@RequestMapping("/order/orderconfirmation.do")
	public void orderConfirmation(@RequestParam Map<String,Object> commandMap,HttpServletResponse response) throws IOException {
		
		PrintWriter out = response.getWriter();
		
		int result = 0;
		
		result = orderService.updateOrderStatus(commandMap);
		
		if(result > 0) {
			out.print("success");
		}else {
			out.print("fail");
		}
		
	}
	
	
	@RequestMapping("/order/ordercancle.do")
	public void orderCancle(@RequestParam Map<String,Object> commandMap,HttpServletResponse response) throws IOException {
		
		PrintWriter out = response.getWriter();
		JSONObject job = new JSONObject();
		int result = 0;
		
		String content = String.valueOf(commandMap.get("O_CANCLEREASON")).trim();
		
		commandMap.put("O_CANCLEREASON", content);
		
		result = orderService.updateOrderCancle(commandMap);
		//O_DETAILNO F_EMAIL
		commandMap.put("o_detailno", String.valueOf(commandMap.get("O_DETAILNO")));
		commandMap.put("f_email", String.valueOf(commandMap.get("F_EMAIL")));
		
		
		List<Map<String, Object>> map = orderService.selectOrderDetailList(commandMap);
		
		for (Map<String, Object> m : map) {
			
			m.put("p_no",m.get("P_NO"));
			m.put("o_no",m.get("O_NO"));
			m.put("o_count",m.get("O_COUNT"));
			m.put("f_email",m.get("F_EMAIL"));
			orderService.updateProductCntPlus(m);
			orderService.updatePayCancle(m);
			
		}
		
		
		if(result > 0) {
			out.print("success");
		}else {
			out.print("fail");
		}
		
	}
	
	@RequestMapping("/order/reviewreg.do")
	public void	reviewReg(@RequestParam Map<String,Object> commandMap,HttpServletResponse response) throws IOException {
		
		PrintWriter out = response.getWriter();
		
		int result = 0;
		
		String content = String.valueOf(commandMap.get("r_content")).trim();
		
		commandMap.put("r_content",content);
		result = orderService.insertReview(commandMap);
		
		commandMap.put("p_starscore",orderService.selectAvgStarScore(commandMap));
		
		result += orderService.updateProductStarScore(commandMap);
		
		if(result > 1) {
			out.print("success");
		}else {
			out.print("fail");
		}
	}
	
	
	@RequestMapping("/order/ordercancleinfo.do")
	public void	orderCancleInfo(@RequestParam Map<String,Object> commandMap,HttpServletResponse response) throws IOException {
		
		
		PrintWriter out = response.getWriter();
		
		Map<String, Object> resultMap = orderService.selectCancleInfo(commandMap);
		
		String cancleDate = String.valueOf(resultMap.get("TO_CHAR(O_CANCLEDATE,'YYYY-MM-DD')"));
		
		resultMap.put("O_CANCLEDATE", cancleDate);
		resultMap.remove("TO_CHAR(O_CANCLEDATE,'YYYY-MM-DD')");
		
		JSONObject job = new JSONObject();
		

		if(resultMap.size() > 0) {
			job.put("cancleInfo",resultMap);
		}else {
			job.put("cancleInfo", "fail");
		}
		
		out.print(job);
		
	}
	
//	주문변경
	@RequestMapping("/order/orderchange.do")
	public void orderchange(HttpSession session,ModelAndView mav,@RequestParam Map<String,Object> commandMap, HttpServletResponse response) throws IOException {
		
		String O_STATUS = (String) commandMap.get("O_STATUS");
		
		int result = orderService.selectOrderChange(commandMap);
		PrintWriter out = response.getWriter();
		
		System.out.println("되라"+commandMap);
		String order = "입금확인중";
		if(result > 0) {
			commandMap.put("O_STATUS", O_STATUS);
			System.out.println("1실행되야함");
			order = orderService.getOrder(commandMap);
		}
		System.out.println(order);
		out.print(order);
	}
	
}
