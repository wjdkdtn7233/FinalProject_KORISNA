package com.kh.finalpj.cart.model.service;

import java.util.List;
import java.util.Map;


public interface CartService {

	public int insertCart(Map<String, Object> commandMap);
	public List<Map<String, Object>> selectCartList(String f_email);
	public int updateCart(Map<String, Object> commandMap);
	public Map<String, Object> selectCart(Map<String, Object> commandMap);
	public int selectSumPrice(String f_email);
	public int deleteCart(Map<String,Object> commandMap);
	public int deleteCartAll(Map<String,Object> commandMap);
	public Map<String, Object> selectCartYN(Map<String, Object> commandMap);
}
