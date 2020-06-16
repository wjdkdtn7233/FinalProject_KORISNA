package com.kh.finalpj.map.model.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ExceptionHandler;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.kh.finalpj.map.model.common.ApiConnection;
import com.kh.finalpj.map.model.dao.MapDao;
@Service
public class MapServiceImple implements MapService{

	@Autowired
	private ApiConnection ac;
	@Autowired
	private MapDao mdao;
	
	
	@Override
	public Map<String,String> getInitCoords(String addr) throws IOException {
		Map<String,String> resMap = new HashMap<String, String>();
		resMap.put("addr", addr);
		String coords = ac.apiConnect(resMap,0);
		
		JsonElement documents = (parseToJson(coords)).getAsJsonObject().get("documents");

		String address = documents.toString().substring(1, documents.toString().lastIndexOf("]"));
		
		JsonElement detail = parseToJson(address);
		
		double lon = detail.getAsJsonObject().get("x").getAsDouble();
		double lat = detail.getAsJsonObject().get("y").getAsDouble();

		resMap.put("lon", ""+lon);
		resMap.put("lat", ""+lat);
		
		return resMap;
	}

	@Override
	public  Map<String,String> getPharmacy(Map<String, String> commandMap) {
		String pharmacy = "";
		Map<String,String> resMap = new HashMap<String, String>();
		try {
			pharmacy = ac.apiConnect(commandMap, 1);
			
			resMap.put("stores", pharmacy);
		
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return resMap;
	}
	
	public JsonElement parseToJson(String str){
		
		JsonParser jsonParser = new JsonParser();
		JsonElement jsonElement = jsonParser.parse(str);
		
		return jsonElement;
	}

	@Override
	public int insertFavorate(Map<String, Object> commandMap) {

		
		return mdao.insertFavorate(commandMap);
	}
	
	@Override
	public List<Map<String,Object>> selectFavorate(String userId){
		
		return mdao.selectFavorate(userId);
	}
	
	@Override
	public int deleteFavor(Map<String,String> commandMap) {
		
		return mdao.deleteFavor(commandMap);
	}

}
