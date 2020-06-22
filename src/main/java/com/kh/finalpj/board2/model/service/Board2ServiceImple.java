package com.kh.finalpj.board2.model.service;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.kh.finalpj.board2.common.OpenApi2;
import com.kh.finalpj.board2.model.dao.Board2Dao;
import com.kh.finalpj.board2.model.vo.Board2;

import common.util.Paging;

@Service
public class Board2ServiceImple implements Board2Service{

	@Autowired
	private OpenApi2 oa;
	
	@Autowired
	private Board2Dao bd2Dao;
	
	@Override 
	public void openApi(){
			
				
		 List<Map<String, Object>> listResult = new ArrayList<Map<String, Object>>();
		 
		//ArrayList<JSONObject> arrayJson = new ArrayList<JSONObject>();
		String sb;
		try {
			sb = oa.openApi(0,1);
			JsonParser jp = new JsonParser();
			JsonElement je = jp.parse(sb);
			System.out.println(je);
			JsonElement pp = je.getAsJsonObject().get("response");
			JsonElement ss = pp.getAsJsonObject().get("body");
			JsonElement ee = ss.getAsJsonObject().get("items");
			JsonElement qq = ee.getAsJsonObject().get("item");
		
			//String addr = qq.getAsJsonObject().get("addr").getAsString();
//			item부터 JsonArray형태니까 for 조건을 totalCnt이 i보다 클 때 까지 for문 돌려서			
//			item Array 인덱스로 꺼낼 수 있고, 
//			각각 추출해서 for문안에서 어떠한 형태에 담는다 
//			vo에 담고 밖에있는 리스트에 넣은 후 DB저장 하면 끝			

			// String content = gg.getAsJsonObject().get("content").getAsString();
            // System.out.println("content" + content);
            // String countryEnName =
            // gg.getAsJsonObject().get("countryEnName").getAsString();
            // String countryName = gg.getAsJsonObject().get("countryName").getAsString();
            // String id = gg.getAsJsonObject().get("id").getAsString();
            // String title = gg.getAsJsonObject().get("title").getAsString();
            // String wrtDt = gg.getAsJsonObject().get("wrtDt").getAsString();
					
			JsonArray ja = qq.getAsJsonArray();
					
			int totalCnt = ss.getAsJsonObject().get("totalCount").getAsInt();
			
			
			
			for(int i=0; i < totalCnt; i++) {
				
				Board2 bd2 = new Board2();
			
				sb = oa.openApi(1,i);
							
				
				//System.out.println(i+"번째"+sb);
				
				String yadmNm = ja.get(i).getAsJsonObject().get("yadmNm").getAsString();
				//System.out.println(yadmNm);
				String sidoCdNm = ja.get(i).getAsJsonObject().get("sidoCdNm").getAsString();
				//System.out.println(sidoCdNm);
				String sgguCdNm = ja.get(i).getAsJsonObject().get("sgguCdNm").getAsString();
				//System.out.println(sgguCdNm);
				String addr = ja.get(i).getAsJsonObject().get("addr").getAsString();
				//System.out.println(addr);
				String telno = ja.get(i).getAsJsonObject().get("telno").getAsString();
				//System.out.println(telno);
				String XPos = ja.get(i).getAsJsonObject().get("XPos").getAsString();
				//System.out.println(XPos);
				String YPos = ja.get(i).getAsJsonObject().get("YPos").getAsString();
				//System.out.println(YPos);
				
				bd2.setB2_yadmNm(yadmNm);
				bd2.setB2_sidocdNm(sidoCdNm);
				bd2.setB2_sggucdNm(sgguCdNm);
				bd2.setB2_addr(addr);
				bd2.setB2_telno(telno);
				bd2.setB2_XPos(XPos);
				bd2.setB2_YPos(YPos);
				
				bd2Dao.openApi(bd2);
			}
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}catch (NumberFormatException e) {
			e.printStackTrace();
		}
	
		
	}
	
	
	public JsonElement parseToJson(String str) {

	      JsonParser jsonParser = new JsonParser();
	      JsonElement jsonElement = jsonParser.parse(str);

	      return jsonElement;
	   }


	@Override
	public List<Board2> boardList2() {
		
		return bd2Dao.boardList2();
	}
	
	
	@Override
	public Map<String, Object> selectNoticeList(String orderby, int currentPage, int cntPerPage) {

		Map<String, Object> res = new HashMap<String, Object>();
		Paging page = new Paging(bd2Dao.contentCnt(), currentPage, cntPerPage);
		
		
		List<Board2> nlist = bd2Dao.selectNoticList(page, orderby);
		for(Board2 l : nlist) {
			System.out.println("service 셀렉트노티스");
			System.out.println(l);
		}
		res.put("paging", page);
		res.put("nlist", nlist);

		return res;
	}


	@Override
	public Map<String, Object> searchinfo(String b2_yadmnm, int currentPage, int cntPerPage) {

		Map<String, Object> res = new HashMap<String, Object>();
		
	
		
		Paging page = new Paging(bd2Dao.searchPaging(b2_yadmnm), currentPage, cntPerPage);
		System.out.println("서비스 임플" + page);
		
		List<Board2> nlist = bd2Dao.searchinfo(b2_yadmnm, page);
		System.out.println("서비스 임플" + nlist);
		/*
		 * for(Board2 l : nlist) { System.out.println("service 서치인포");
		 * System.out.println(l); }
		 */
		
		res.put("paging", page);
		res.put("nlist", nlist);

		return res;
	}


	

	
	
	

	
}
