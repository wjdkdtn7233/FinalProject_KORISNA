package com.kh.finalpj.cart.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.finalpj.cart.model.service.CartService;

import net.sf.json.JSONObject;

@Controller
public class CartController {

	@Autowired
	private CartService cartService;
	
	
	//장바구니에 담기 ajax
	@RequestMapping("/cart/pickupproduct.do")
	public void pickUpProduct(HttpServletResponse response,@RequestParam Map<String,Object> commandMap) throws IOException{
		
		PrintWriter out = response.getWriter();
		
		Map<String, Object> map = cartService.selectCartYN(commandMap);
		System.out.println(map);
		int result = 0;
		int price = Integer.parseInt((String) commandMap.get("c_price")) ;
		System.out.println(price);
		int cnt = Integer.parseInt((String) commandMap.get("c_cnt")) ;
		System.out.println(cnt);
		int total = price * cnt;
		int pCnt = 0;
		if(map != null) { //같은 상품이 이미 카트에 담겨있다면
			String a = String.valueOf(map.get("C_TOTALPRICE"));
			String b = String.valueOf(map.get("C_CNT"));
			String c = String.valueOf(map.get("C_NO"));
			int addTotal = Integer.parseInt(a);
			int addCnt = Integer.parseInt(b);
			int cno = Integer.parseInt(c);
			
			int sumcnt = addCnt + cnt;
			pCnt = 10 - addCnt;
			if(sumcnt <= 10) {
				map.put("c_no", cno);
				map.put("c_totalprice", addTotal + total);
				map.put("c_cnt", sumcnt);
				result = cartService.updateCart(map);
			}else {
				result = -1;
			}
			
			
		}else { 
			
			commandMap.put("c_totalprice", total);
			result = cartService.insertCart(commandMap);
		}
	
		
		if(result > 0) {
			out.print("success");
		}else if( result == -1) {
			out.print(pCnt);
		}else {
			out.print("fail");
		}
		
		
	}
	
	//장바구니 리스트 불러오기 
	@RequestMapping("/cart/cartlist.do")
	public ModelAndView cartList(ModelAndView mav,HttpSession session) {
		
		Map<String, Object> loginUser = (Map<String, Object>) session.getAttribute("loginUser");
		
		String userEmail  = (String) loginUser.get("F_EMAIL");
		
		//장바구니에 담긴게 1개이상이라면 
		if(cartService.selectCartList(userEmail).size() > 0) {
			mav.addObject("cartList", cartService.selectCartList(userEmail));
			mav.addObject("totalPrice", cartService.selectSumPrice(userEmail));
			mav.setViewName("cart/cartList");
		}else {
			mav.setViewName("cart/cartList");
		}
		
		///cart/updatecart.do
		
		return mav;
	}
	
	@RequestMapping("/cart/updatecart.do")
	public void updateCart(HttpServletResponse response,@RequestParam Map<String,Object> commandMap) throws IOException {
		
		PrintWriter out = response.getWriter();
		
		int price = Integer.parseInt((String) commandMap.get("c_price")) ;
		System.out.println(price);
		int cnt = Integer.parseInt((String) commandMap.get("c_cnt")) ;
		System.out.println(cnt);
		int total = price * cnt;
		
		commandMap.put("c_totalprice", total);
		int result = cartService.updateCart(commandMap);
		
		if(result > 0) {
			out.print("success");
		}else {
			out.print("fail");
		}
		
	}
	
	
	@RequestMapping("/cart/selectcart.do")
	public void selectCart(HttpServletResponse response,@RequestParam Map<String,Object> commandMap) throws IOException {
		
		PrintWriter out = response.getWriter();
		
		JSONObject job = new JSONObject();
		if(cartService.selectCart(commandMap) != null) {
			job.put("cart", cartService.selectCart(commandMap));
			job.put("price",cartService.selectSumPrice((String)commandMap.get("f_email")));
		}else {
			job.put("cart", "fail");
		}
		
		out.print(job);
	}
	
	@RequestMapping("/cart/deletecart.do")
	public void deleteCart(HttpServletResponse response,HttpSession session,@RequestParam Map<String,Object> commandMap) throws IOException {
		
		PrintWriter out = response.getWriter();
		int price = cartService.selectSumPrice((String)commandMap.get("f_email"));
		int result = cartService.deleteCart(commandMap);
		
		if(result > 0 ) {
			out.print(price);
		}else {
			out.print("fail");
		}
		
	}
	
	@RequestMapping("/cart/deletecartall.do")
	public void deleteCartAll(HttpServletResponse response,@RequestParam Map<String,Object> commandMap) throws IOException {
		
		PrintWriter out = response.getWriter();
		int result = cartService.deleteCartAll(commandMap);
		
		if(result > 0 ) {
			out.print("success");
		}else {
			out.print("fail");
		}
		
	}
	
}
