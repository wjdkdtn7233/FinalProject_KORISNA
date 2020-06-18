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
}
