package com.kh.finalpj.product.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.finalpj.product.model.dao.ProductDao;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	ProductDao productDao;

	@Override
	public List<Map<String, Object>> selectProductList() {
		return productDao.selectProductList();
	}

	@Override
	public List<Map<String, Object>> selectProductSortList(Map<String, Object> commandMap) {
		return productDao.selectProductSortList(commandMap);
	}

	@Override
	public Map<String, Object> selectProductDetail(String p_no) {
		return productDao.selectProductDetail(p_no);
	}

	@Override
	public List<Map<String, Object>> selectReviewList(String p_no) {
		return productDao.selectReviewList(p_no);
	}

	@Override
	public int selectReviewCnt(String p_no) {
		return productDao.selectReviewCnt(p_no);
	}
	
	@Override
	public int updateProductInfo(Map<String, Object> commandMap){
		return productDao.updateProductInfo(commandMap);
	}
	
	public int insertProductInfo(Map<String, Object> commandMap) {
		return productDao.insertProductInfo(commandMap);
	}
}
