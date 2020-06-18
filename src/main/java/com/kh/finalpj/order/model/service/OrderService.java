package com.kh.finalpj.order.model.service;

import java.util.List;
import java.util.Map;

public interface OrderService {

	
	public List<Map<String, Object>> selectCartList(Map<String, Object> commandMap);
	
	public int selectSumPrice(Map<String, Object> commandMap);
	
}
