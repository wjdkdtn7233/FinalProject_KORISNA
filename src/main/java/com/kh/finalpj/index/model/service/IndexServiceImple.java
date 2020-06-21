package com.kh.finalpj.index.model.service;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.eclipse.jdt.internal.compiler.ast.ReferenceExpression;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.kh.finalpj.board.common.OpenApi;
import com.kh.finalpj.index.model.dao.IndexDao;

@Service
public class IndexServiceImple implements IndexService {

	@Autowired
	private IndexDao idao;

	@Autowired
	private OpenApi oa;

	@Override
	public List<Map<String, Object>> Covid19InfState() {

		List<Map<String, Object>> listResult = new ArrayList<Map<String, Object>>();
		String data = "";
		// System.out.println("service");

		try {
//			코로나 현황을 조회한다
			data = oa.openApi(0, 2);
			JsonElement maxDatas = parseToJson(data);
			JsonElement response = maxDatas.getAsJsonObject().get("response");
			JsonElement body = response.getAsJsonObject().get("body");
			int maxValue = body.getAsJsonObject().get("totalCount").getAsInt();
			String aa = oa.openApi(maxValue, 2);// 전체 개수만큼의 JSON String을 반환

			System.out.println(aa);

			JsonElement bb = parseToJson(aa);
			JsonElement cc = bb.getAsJsonObject().get("response");
			JsonElement dd = cc.getAsJsonObject().get("body");
			JsonElement ff = dd.getAsJsonObject().get("items");
			JsonElement gg = ff.getAsJsonObject().get("item");
			System.out.println(gg);

				Map<String, Object> res = new HashMap<String, Object>();

				// System.out.println(i + "번째" + data);

				// System.out.println("ja.get(i)" +
				// ja.get(i).getAsJsonObject().get("countryEnName"));
//				치료중
				int careCnt = gg.getAsJsonObject().get("careCnt").getAsInt();
//				완치
				int clearCnt = gg.getAsJsonObject().get("clearCnt").getAsInt();
//				날짜부분만 자르기
				String createDt = gg.getAsJsonObject().get("createDt").getAsString().substring(0, 10);
				System.out.println(createDt);
//				사망
				int deathCnt = gg.getAsJsonObject().get("deathCnt").getAsInt();
//				확진환자
				int decideCnt = gg.getAsJsonObject().get("decideCnt").getAsInt();
				System.out.println(decideCnt);

				res.put("createDt", createDt);
				res.put("decideCnt", decideCnt);
				res.put("clearCnt", clearCnt);
				res.put("careCnt", careCnt);
				res.put("deathCnt", deathCnt);
				listResult.add(res);
			// System.out.println("service for end");

		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return listResult;

	}

	@Override
	public List<Map<String, Object>> Covid19InfStateNationwide() {

		List<Map<String, Object>> listResult = new ArrayList<Map<String, Object>>();
		String data = "";
		// System.out.println("service");

		try {

			data = oa.openApi(0, 3);
			JsonElement maxDatas = parseToJson(data);
			JsonElement response = maxDatas.getAsJsonObject().get("response");
			JsonElement body = response.getAsJsonObject().get("body");
			int maxValue = body.getAsJsonObject().get("totalCount").getAsInt();
			String aa = oa.openApi(maxValue, 3);// 전체 개수만큼의 JSON String을 반환

			System.out.println(aa);

			JsonElement bb = parseToJson(aa);
			JsonElement cc = bb.getAsJsonObject().get("response");
			JsonElement dd = cc.getAsJsonObject().get("body");
			JsonElement ff = dd.getAsJsonObject().get("items");
			JsonElement gg = ff.getAsJsonObject().get("item");

			// JsonArray 를 gg에 넣어주고
			JsonArray ja = gg.getAsJsonArray();
			System.out.println(ja);
			for (int i = 0; i < ja.size(); i++) {
				Map<String, Object> res = new HashMap<String, Object>();

				// System.out.println(i + "번째" + data);

				// System.out.println("ja.get(i)" +
				// ja.get(i).getAsJsonObject().get("countryEnName"));
//				지역
				String gubun = ja.get(i).getAsJsonObject().get("gubun").getAsString();
//				누적 확진환자
				String defCnt = ja.get(i).getAsJsonObject().get("defCnt").getAsString();
//				전일 대비 증감
				String incDec = ja.get(i).getAsJsonObject().get("incDec").getAsString();
//				격리중
				String isolIngCnt = ja.get(i).getAsJsonObject().get("isolIngCnt").getAsString();
//				누적 격리해제
				String isolClearCnt = ja.get(i).getAsJsonObject().get("isolClearCnt").getAsString();
//				사망자
				String deathCnt = ja.get(i).getAsJsonObject().get("deathCnt").getAsString();
//				10만명당 발생률
				String qurRate = ja.get(i).getAsJsonObject().get("qurRate").getAsString();
				res.put("gubun", gubun);
				res.put("defCnt", defCnt);
				res.put("incDec", incDec);
				res.put("isolIngCnt", isolIngCnt);
				res.put("isolClearCnt", isolClearCnt);
				res.put("deathCnt", deathCnt);
				res.put("qurRate", qurRate);

				listResult.add(res);
			}
			// System.out.println("service for end");

		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return listResult;

	}
	
	@Override
	public Map<String, Object> selectLocationList(List<Map<String, Object>> lList, int num){
		Map<String, Object> res = null;
		String location = searchLocation(num);
//		System.out.println(location + "인것이다");
//		System.out.println(lList);
		for (int i = 0; i < lList.size(); i++) {
			
			if(((String)lList.get(i).get("gubun")).equals(location)) {
				res = lList.get(i);
				i = lList.size()-1;
			}
		}
		
		return res;
	}
	
	public String searchLocation(int num) {
		String res;
		switch (num) {
		case 11:
			res = "서울";
			break;
		case 28:
			res = "인천";
			break;
		case 41:
			res = "경기";
			break;
		case 42:
			res = "강원";
			break;
		case 44:
			res = "충남";
			break;
		case 36:
			res = "세종";
			break;
		case 30:
			res = "대전";
			break;
		case 43:
			res = "충북";
			break;
		case 47:
			res = "경북";
			break;
		case 27:
			res = "대구";
			break;
		case 31:
			res = "울산";
			break;
		case 26:
			res = "부산";
			break;
		case 48:
			res = "경남";
			break;
		case 45:
			res = "전북";
			break;
		case 29:
			res = "광주";
			break;
		case 46:
			res = "전남";
			break;
		case 50:
			res = "제주";
			break;
		case 99:
			res = "검역";
			break;
		default:
			res = "합계";
			break;
		}
		return res;
	}
	
	public JsonElement parseToJson(String str) {

		JsonParser jsonParser = new JsonParser();
		JsonElement jsonElement = jsonParser.parse(str);

		return jsonElement;
	}

}
