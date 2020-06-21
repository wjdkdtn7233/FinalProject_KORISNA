package com.kh.finalpj.board.common;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.springframework.stereotype.Component;
import org.w3c.dom.Document;

@Component
public class OpenApi {

	public String openApi(int i, int flag) throws UnsupportedEncodingException, IOException {

		BufferedReader br = null;
		// DocumentBuilderFactory 생성
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		factory.setNamespaceAware(true);
		DocumentBuilder builder;
		Document doc = null;
		String urlstr = "";
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyyMMdd");
		Calendar calendar = Calendar.getInstance();
		calendar.add(Calendar.DATE, -1);
		String to = transFormat.format(calendar.getTime());
		System.out.println(to);
		// OpenApi호출
		switch (flag) {
		case 0:
			urlstr = "http://apis.data.go.kr/1262000/SafetyNewsList/getCountrySafetyNewsList?serviceKey=CILjRWvffzSX3AWlx1rsarRcpvz5zb%2BYWdw6Gmx7w1b9nqLGzi8DHVnyWZfM6kJ5ql20mIStfUoUWR94Tg%2B%2BeQ%3D%3D&_type=json&numOfRows=1&pageNo="
					+ i;
			break;
		case 1:
			urlstr = "http://apis.data.go.kr/1262000/SafetyNewsList/getCountrySafetyNewsList?serviceKey=CILjRWvffzSX3AWlx1rsarRcpvz5zb%2BYWdw6Gmx7w1b9nqLGzi8DHVnyWZfM6kJ5ql20mIStfUoUWR94Tg%2B%2BeQ%3D%3D&_type=json&numOfRows="
					+ i + "&pageNo=1";
			break;
		case 2:
			urlstr = "http://openapi.data.go.kr/openapi/service/rest/Covid19/getCovid19InfStateJson?serviceKey=HFU3E1vPkAq4%2FTZY10vE%2BzjmovoV%2BiewKHpnjrrulrcRW25%2BcbPBDcLbpIN9AOPaLGWTvD%2F3YN5alICpSceFlA%3D%3D&pageNo=1&numOfRows=10&_type=json&startCreateDt="+to+"&endCreateDt="+to;
			break;
		case 3:
			urlstr = "http://openapi.data.go.kr/openapi/service/rest/Covid19/getCovid19SidoInfStateJson?serviceKey=HFU3E1vPkAq4%2FTZY10vE%2BzjmovoV%2BiewKHpnjrrulrcRW25%2BcbPBDcLbpIN9AOPaLGWTvD%2F3YN5alICpSceFlA%3D%3D&pageNo=1&numOfRows=10&_type=json&startCreateDt="+to+"&endCreateDt="+to;
			break;
		}

		URL url = new URL(urlstr);
		HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();

		// 응답 읽기
		br = new BufferedReader(new InputStreamReader(urlconnection.getInputStream(), "utf-8"));

		StringBuilder sb = new StringBuilder();
		String line;
		while ((line = br.readLine()) != null) {

			sb.append(line);
		}
		br.close();
		urlconnection.disconnect();
		line = sb.toString();
		return line;

	}
}
