package com.kh.finalpj.index.model.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

public interface IndexService {

	
	public List<Map<String, Object>> Covid19InfState();
	public List<Map<String, Object>> Covid19InfStateNationwide();
	public Map<String, Object> selectLocationList(List<Map<String, Object>> lList, int num);
	
}
