package com.kh.finalpj.map.model.common;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Map;

import javax.net.ssl.HttpsURLConnection;

import org.springframework.stereotype.Component;
@Component
public class ApiConnection {
	
	public ApiConnection() {}
	
	private final String RESTKEY ="c618b7fc9b808f184bdafc0406409848";
	
	public String apiConnect(Map<String, String> commandMap,int flag) throws IOException {
		// flag 0 : 로그인 사용자 최초 접속시 사용(주소지로 좌표 변환)
		String responseBody = "";
		String apiURL = "";
		switch(flag) {
		case 0 :
			apiURL = "https://dapi.kakao.com/v2/local/search/address.json?query=";
			String addr = URLEncoder.encode((String)commandMap.get("addr"), "UTF-8");
			apiURL += addr;
			break;
		case 1 :
			apiURL = "https://8oi9s0nnth.apigw.ntruss.com/"
					+ "corona19-masks/v1/storesByGeo/json?"
					+ "lat="+commandMap.get("lat")
					+ "&lng="+commandMap.get("lon")
					+ "&m="+commandMap.get("radius");
			break;
		
		
		}
		System.out.println(apiURL);
		HttpsURLConnection con = connect(apiURL);
		
		con.setRequestMethod("GET");
		switch(flag) {
		case 0 :con.setRequestProperty("Authorization", "KakaoAK "+RESTKEY);
			break;
		}
		int responseCode = con.getResponseCode();

		if(responseCode == HttpURLConnection.HTTP_OK) {
			responseBody = readBody(con.getInputStream());
		}else {
			responseBody = readBody(con.getErrorStream());
		}
		
		return responseBody;
	}

	private String readBody(InputStream inputStream) throws IOException {
		
		BufferedReader br = 
				new BufferedReader(new InputStreamReader(inputStream,"UTF-8"));
		
		StringBuilder responsebody = new StringBuilder();
		
		String line = "";
		
		while((line = br.readLine()) != null) {
			
			responsebody.append(line);
			
		}
		
		return responsebody.toString();
	}

	private HttpsURLConnection connect(String apiURL) throws IOException {

		URL url = new URL(apiURL);
		return (HttpsURLConnection) url.openConnection();
	}

}
