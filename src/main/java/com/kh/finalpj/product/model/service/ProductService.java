package com.kh.finalpj.product.model.service;

import java.util.List;
import java.util.Map;

public interface ProductService {

	public List<Map<String, Object>> selectProductList();
	
	public List<Map<String, Object>> selectProductSortList(Map<String, Object> commandMap);
	
	public Map<String, Object> selectProductDetail(String p_no);
	
	public List<Map<String, Object>> selectReviewList(String p_no);
	
	public int updateProductInfo(Map<String, Object> commandMap);
	
	public int insertProductInfo(Map<String, Object> commandMap);
	
	public int selectReviewCnt(String p_no);
}
