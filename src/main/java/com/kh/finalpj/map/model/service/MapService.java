package com.kh.finalpj.map.model.service;

import java.io.IOException;
import java.util.List;
import java.util.Map;

public interface MapService {
	
	//초기 userData가 입력될 경우 사용자 db에 저장되어 있는 주소로 coords를 얻기 위한 메서드 
	public Map<String,String> getInitCoords(String addr) throws IOException; // 에상 return 값 lon : / lat : 지도 초기 설정은 level 2
	
	// map level이나 드래그 되었을 때 
	public  Map<String,String> getPharmacy(Map<String,String> commandMap);

	public List<Map<String,Object>> selectFavorate(String userId);

	public int deleteFavor(Map<String, String> commandMap);

	public int insertFavorate(Map<String, Object> commandMap);
	
	
}
