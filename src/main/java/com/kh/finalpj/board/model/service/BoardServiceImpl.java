package com.kh.finalpj.board.model.service;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.kh.finalpj.board.common.OpenApi;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private OpenApi oa;

	@Override
	public List<Map<String, Object>> openApi() {

		List<Map<String, Object>> listResult = new ArrayList<Map<String, Object>>();
		String data = "";
		System.out.println("service");

		try {

			data = oa.openApi(1, 0);
			JsonElement maxDatas = parseToJson(data);
			JsonElement response = maxDatas.getAsJsonObject().get("response");
			JsonElement body = response.getAsJsonObject().get("body");
			int maxValue = body.getAsJsonObject().get("totalCount").getAsInt();
			String aa = oa.openApi(maxValue, 1);// 전체 개수만큼의 JSON String을 반환

			for (int j = 1; j < 2; j++) {
				System.out.println(aa);

				JsonElement bb = parseToJson(aa);
				JsonElement cc = bb.getAsJsonObject().get("response");
				JsonElement dd = cc.getAsJsonObject().get("body");
				JsonElement ff = dd.getAsJsonObject().get("items");
				JsonElement gg = ff.getAsJsonObject().get("item");

				// JsonArray 를 gg에 넣어주고
				JsonArray ja = gg.getAsJsonArray();

				for (int i = 0; i < ja.size(); i++) {
					Map<String, Object> res = new HashMap<String, Object>();

					System.out.println("ja.get(i)" + ja.get(i).getAsJsonObject().get("countryEnName"));

					String content = ja.get(i).getAsJsonObject().get("content").getAsString();
					String countryEnName = ja.get(i).getAsJsonObject().get("countryEnName").getAsString();
					String countryName = ja.get(i).getAsJsonObject().get("countryName").getAsString();
					String id = ja.get(i).getAsJsonObject().get("id").getAsString();
					String title = ja.get(i).getAsJsonObject().get("title").getAsString();
					String wrtDt = ja.get(i).getAsJsonObject().get("wrtDt").getAsString();

					// vo로 변경
					res.put("content", content);
					res.put("countryEnName", countryEnName);
					res.put("countryName", countryName);
					res.put("id", id);
					res.put("title", title);
					res.put("wrtDt", wrtDt);

					listResult.add(res);
				}
			}
			System.out.println("service for end");

		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return listResult;

	}

	public JsonElement parseToJson(String str) {

		JsonParser jsonParser = new JsonParser();
		JsonElement jsonElement = jsonParser.parse(str);

		return jsonElement;
	}

}
