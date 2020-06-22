package com.kh.finalpj.cart.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
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
		
		JSONObject job = new JSONObject();
		Map<String, Object> map = cartService.selectCartYN(commandMap);
		
		int productStock = cartService.selectProductCnt(commandMap);
		System.out.println(map);
		int result = 0;
		int price = Integer.parseInt((String) commandMap.get("c_price")) ;
		System.out.println(price);
		//현재 유저가 담길 원하는 갯수
		int cnt = Integer.parseInt((String) commandMap.get("c_cnt")) ;
		System.out.println(cnt);
		int total = price * cnt;
		//장바구니에 있는 갯수와 현재 담을 갯수를 합친 갯수
		int pCnt = 0;
		//장바구니에 이미 있을때 가능한 재고 수량
		int posCnt = 0;
		
		if(map != null) { //같은 상품이 이미 카트에 담겨있다면
			String a = String.valueOf(map.get("C_TOTALPRICE"));
			String b = String.valueOf(map.get("C_CNT"));
			String c = String.valueOf(map.get("C_NO"));
			int addTotal = Integer.parseInt(a);
			//현재 장바구니에 담겨있는 갯수
			int addCnt = Integer.parseInt(b);
			int cno = Integer.parseInt(c);
			
			int sumcnt = addCnt + cnt;
			pCnt = 10 - addCnt;
			if(addCnt > productStock) {
				if(productStock == 0) {
					map.put("c_no", cno);
					cartService.deleteCart(commandMap);
					result = -3;//장바구니에 이미 재고 초과분이 담겨있을때 / 재고가 없다면
				}else {
					map.put("c_no", cno);
					map.put("c_cnt", productStock);
					map.put("c_totalprice", price*productStock);
					cartService.updateCart(map);
					result = -3;//장바구니에 이미 재고 초과분이 담겨있을때 / 재고가 없다면
				}
				
			}else if(sumcnt > productStock){
				posCnt = productStock - addCnt;
				result = -4;//장바구니에 담긴것과 추가분합친 갯수가 현재 상품재고보다 초과할때
			}else {
				if(sumcnt <= 10) {
					map.put("c_no", cno);
					map.put("c_totalprice", addTotal + total);
					map.put("c_cnt", sumcnt);
					result = cartService.updateCart(map);
				}else {
					result = -1;
				}
			}
			
		}else { 
			if(cnt > productStock) {
				result = -2;
			}else {
				commandMap.put("c_totalprice", total);
				result = cartService.insertCart(commandMap);	
			}
			
		}
	
		
		if(result > 0) {
			job.put("no", 1);
			job.put("result", "success");
		}else if( result == -1) {
			job.put("no", 2);
			job.put("result", pCnt);
		}else if(result == -2){//장바구니에 담으려는 갯수가 재고분보다 초과할때 
			job.put("no", 3);
			job.put("result", productStock);
		}else if(result == -3){//장바구니에 이미 초과분이 담겨있을때
			job.put("no", 4);
			job.put("result", productStock);
		}else if(result == -4){//장바구니에 담긴것과 추가분합친 갯수가 현재 상품재고보다 초과할때
			job.put("no", 5);
			job.put("result", posCnt);
		}else {
			job.put("no", 6);
			job.put("result", "fail");
		}
		
		out.print(job);
		
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
		int result =  0;
		int productStock = cartService.selectProductCnt(commandMap);
		
		if(productStock == 0) {
			cartService.deleteCart(commandMap);
		}else {
			if(cnt <= productStock) {
			commandMap.put("c_totalprice", total);
			result = cartService.updateCart(commandMap);
			}
		}
		
		
		
		
		
		if(result > 0) {
			out.print("success");
		}else {
			out.print(productStock);
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
	public ModelAndView deleteCart(HttpServletRequest request,HttpSession session,@RequestParam Map<String,Object> commandMap,ModelAndView mav) throws IOException {
		
		System.out.println("이거 딜리트셀렉트 : " + commandMap );
		List<String> pnoList = new ArrayList<String>();
		String[] str = String.valueOf(commandMap.get("c_no")).split(",");
		int result = 0;
		
		for(int i = 1; i < str.length; i++) {
			System.out.println(str[i]);
			commandMap.put("c_no",str[i]);
			result += cartService.deleteCart(commandMap);
		}
		
		
		if(result > 0 ) {
			mav.addObject("alertMsg","삭제를 완료하였습니다.");
			mav.addObject("url",request.getContextPath() + "/cart/cartlist.do");
			mav.setViewName("common/result");
		}else {
			mav.addObject("alertMsg","삭제를 실패하였습니다.");
			mav.addObject("back","back");
			mav.setViewName("common/result");
		}
		
		return mav;
		
	}
	
	@RequestMapping("/cart/deletecartall.do")
	public ModelAndView deleteCartAll(HttpServletRequest request,ModelAndView mav,@RequestParam Map<String,Object> commandMap) throws IOException {
		
		int result = cartService.deleteCartAll(commandMap);
		
		if(result > 0 ) {
			mav.addObject("alertMsg","삭제를 완료하였습니다.");
			mav.addObject("url",request.getContextPath() + "/cart/cartlist.do");
			mav.setViewName("common/result");
		}else {
			mav.addObject("alertMsg","삭제를 실패하였습니다.");
			mav.addObject("back","back");
			mav.setViewName("common/result");
		}
		
		
		return mav;
	}
	
	
	
	@RequestMapping("/cart/stockcheck.do")
	public void stockCheck(HttpServletResponse response,@RequestParam Map<String,Object> commandMap) throws IOException {
		
		JSONObject job = new JSONObject();
		PrintWriter out = response.getWriter();
		String userEmail = String.valueOf(commandMap.get("f_email"));
		List<Map<String, Object>> map =  cartService.selectCartList(userEmail);
		int total = cartService.selectSumPrice(userEmail);
		List<String> updateList = new ArrayList<String>();
		for (Map<String, Object> m : map) {
			
			int cnt = Integer.parseInt(String.valueOf(m.get("C_CNT")));
			int pno = Integer.parseInt(String.valueOf(m.get("P_NO")));
			int cno = Integer.parseInt(String.valueOf(m.get("C_NO")));
			int price = Integer.parseInt(String.valueOf(m.get("C_PRICE")));
			m.put("p_no", pno);
			m.put("c_no", cno);
			int productStock = cartService.selectProductCnt(m);
			if(cnt > productStock) {
				if(productStock == 0) {
					cartService.deleteCart(m);
					updateList.add("updateSuccess");
					job.put("update", updateList);
				}else {
					m.put("c_totalprice", price*productStock);
					m.put("c_cnt", productStock);
					cartService.updateCart(m);
					updateList.add("updateSuccess");
					job.put("update", updateList);
				}
				
			}else {
				job.put("update", null);
			}
		}
		
		out.print(job);
		
		
		
	}
}
