package com.kh.finalpj.cart.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.finalpj.cart.model.dao.CartDao;

@Service
public class CartServiceImpl implements CartService{
	
	@Autowired
	private CartDao cartDao;

	
	@Override
	public int insertCart(Map<String, Object> commandMap) {
		System.out.println(commandMap.get("c_name"));
		return cartDao.insertCart(commandMap);
	}
	
	@Override
	public List<Map<String, Object>> selectCartList(String f_email) {
		return cartDao.selectCartList(f_email);
	}

	@Override
	public int updateCart(Map<String, Object> commandMap) {
		return cartDao.updateCart(commandMap);
	}

	@Override
	public Map<String, Object> selectCart(Map<String, Object> commandMap) {
		return cartDao.selectCart(commandMap);
	}

	@Override
	public int selectSumPrice(String f_email) {
		return cartDao.selectSumPrice(f_email);
	}

	@Override
	public int deleteCart(Map<String,Object> commandMap) {
		return cartDao.deleteCart(commandMap);
	}

	@Override
	public int deleteCartAll(Map<String, Object> commandMap) {
		return cartDao.deleteCartAll(commandMap);
	}

	@Override
	public Map<String, Object> selectCartYN(Map<String, Object> commandMap) {
		return cartDao.selectCartYN(commandMap);
	}

	@Override
	public int selectProductCnt(Map<String, Object> commandMap) {
		return cartDao.selectProductCnt(commandMap);
	}

	@Override
	public int updateProductCnt(Map<String, Object> commandMap) {
		return cartDao.updateProductCnt(commandMap);
	}


	
	
}
