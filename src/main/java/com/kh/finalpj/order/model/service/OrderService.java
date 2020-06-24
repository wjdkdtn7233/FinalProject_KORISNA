package com.kh.finalpj.order.model.service;

import java.util.List;
import java.util.Map;

public interface OrderService {

	
	public List<Map<String, Object>> selectCartList(Map<String, Object> commandMap);
	
	public int selectSumPrice(Map<String, Object> commandMap);
	
	public int insertOrderList(Map<String, Object> commandMap);
	
	public int insertPayList(Map<String, Object> commandMap);
	
	public int updateOrderYN(Map<String, Object> commandMap);
	
	public int updateProductCnt(Map<String, Object> commandMap);
	
	public List<Map<String, Object>> selectOrderList(Map<String, Object> commandMap);
	
	public List<Map<String, Object>> selectAllOrderList();
	
	public List<Map<String, Object>> selectOrderDetailList(Map<String, Object> commandMap);
	
	public List<Map<String, Object>> selectOrderDetailListAdmin(Map<String, Object> commandMap);
	
	public int updateOrderStatus(Map<String, Object> commandMap);
	
	public int selectTotalPrice(Map<String, Object> commandMap);
	
	public int selectTotalPriceAdmin(Map<String, Object> commandMap);
	
	public int updateOrderCancle(Map<String, Object> commandMap);
	
	public List<Map<String, Object>> selectProductList();
	
	public int insertReview(Map<String, Object> commandMap);
	
	public Map<String, Object> selectCancleInfo(Map<String, Object> commandMap);
	
	public double selectAvgStarScore(Map<String, Object> commandMap);
	
	public int updateProductStarScore(Map<String, Object> commandMap);
	
	public int selectProductCnt(Map<String, Object> commandMap);
	
	public int deleteCart(Map<String, Object> commandMap);
	
	public int updateCart(Map<String, Object> commandMap);
	
	public int updateProductCntPlus(Map<String, Object> commandMap);
	
	public int updatePayCancle(Map<String, Object> commandMap);
	
	public int selectOrderChange(Map<String, Object> commandMap);
	
	public String getOrder(Map<String, Object> commandMap);
}
