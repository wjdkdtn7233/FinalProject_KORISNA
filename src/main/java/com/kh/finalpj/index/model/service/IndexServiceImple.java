package com.kh.finalpj.index.model.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.finalpj.index.model.dao.IndexDao;
@Service
public class IndexServiceImple implements IndexService{

	@Autowired
	private IndexDao idao;
	
	@Override
	public Map<String,Object> testt(){
		
		return idao.testt();
	}
	
}
