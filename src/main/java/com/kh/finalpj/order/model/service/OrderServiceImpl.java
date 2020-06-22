package com.kh.finalpj.order.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.finalpj.order.model.dao.OrderDao;

@Service
public class OrderServiceImpl implements OrderService{

	@Autowired
	OrderDao orderDao;

	@Override
	public List<Map<String, Object>> selectCartList(Map<String, Object> commandMap) {
		return orderDao.selectCartList(commandMap);
	}

	@Override
	public int selectSumPrice(Map<String, Object> commandMap) {
		return orderDao.selectSumPrice(commandMap);
	}

	@Override
	public int insertOrderList(Map<String, Object> commandMap) {
		return orderDao.insertOrderList(commandMap);
	}

	@Override
	public int insertPayList(Map<String, Object> commandMap) {
		return orderDao.insertPayList(commandMap);
	}

	@Override
	public int updateOrderYN(Map<String, Object> commandMap) {
		return orderDao.updateOrderYN(commandMap);
	}

	@Override
	public int updateProductCnt(Map<String, Object> commandMap) {
		return orderDao.updateProductCnt(commandMap);
	}

	@Override
	public List<Map<String, Object>> selectOrderList(Map<String, Object> commandMap) {
		return orderDao.selectOrderList(commandMap);
	}
	
	@Override
	public List<Map<String, Object>> selectAllOrderList() {
		return orderDao.selectAllOrderList();
	}
	

	@Override
	public List<Map<String, Object>> selectOrderDetailList(Map<String, Object> commandMap) {
		return orderDao.selectOrderDetailList(commandMap);
	}
	
	@Override
	public List<Map<String, Object>> selectOrderDetailListAdmin(Map<String, Object> commandMap) {
		return orderDao.selectOrderDetailList(commandMap);
	}
	
	
	@Override
	public int updateOrderStatus(Map<String, Object> commandMap) {
		return orderDao.updateOrderStatus(commandMap);
	}
	
	@Override
	public int selectTotalPrice(Map<String, Object> commandMap) {
		return orderDao.selectTotalPrice(commandMap);
	}

	@Override
	public int updateOrderCancle(Map<String, Object> commandMap) {
		return orderDao.updateOrderCancle(commandMap);
	}

	@Override
	public List<Map<String, Object>> selectProductList() {
		return orderDao.selectProductList();
	}

	@Override
	public int insertReview(Map<String, Object> commandMap) {
		return orderDao.insertReview(commandMap);
	}

	@Override
	public Map<String, Object> selectCancleInfo(Map<String, Object> commandMap) {
		return orderDao.selectCancleInfo(commandMap);
	}

	@Override
	public double selectAvgStarScore(Map<String, Object> commandMap) {
		return orderDao.selectAvgStarScore(commandMap);
	}

	@Override
	public int updateProductStarScore(Map<String, Object> commandMap) {
		return orderDao.updateProductStarScore(commandMap);
	}

	@Override
	public int selectProductCnt(Map<String, Object> commandMap) {
		return orderDao.selectProductCnt(commandMap);
	}

	@Override
	public int deleteCart(Map<String, Object> commandMap) {
		return orderDao.deleteCart(commandMap);
	}

	@Override
	public int updateCart(Map<String, Object> commandMap) {
		return orderDao.updateCart(commandMap);
	}

	@Override
	public int updateProductCntPlus(Map<String, Object> commandMap) {
		return orderDao.updateProductCntPlus(commandMap);
	}


	@Override
	public int updatePayCancle(Map<String, Object> commandMap) {
		return orderDao.updatePayCancle(commandMap);
	}
	
	


	
	
	
}
