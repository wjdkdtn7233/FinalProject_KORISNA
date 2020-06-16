package com.kh.finalpj.board2.common;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;

import org.springframework.stereotype.Component;

@Component
public class OpenApi2 {
			public String openApi(int flag, int i) throws UnsupportedEncodingException, IOException {
				BufferedReader br = null;
				// try{            
	            // 서비스임플에서 받아온  매개변수로 요청 url을 변경    if()
				String urlstr = "";
				if(flag==0) {
					urlstr = "http://apis.data.go.kr/B551182/hospInfoService/getHospBasisList?pageNo=1&numOfRows=100&_type=json&ServiceKey=bY0vDc9Lsd8Y210gsUbzkaPEulp2DSKvc%2BgKbNRW5Ccp%2FGOU6IHLJ1l4CtIyQ6a1jPkta58ibPxHCpPjQ2ZkAg%3D%3D&sidoCd=110000&zipCd=2030&clCd=21";
				}
				if(flag==1) {
					urlstr ="http://apis.data.go.kr/B551182/hospInfoService/getHospBasisList?pageNo="+i+"&numOfRows=1&_type=json&ServiceKey=bY0vDc9Lsd8Y210gsUbzkaPEulp2DSKvc%2BgKbNRW5Ccp%2FGOU6IHLJ1l4CtIyQ6a1jPkta58ibPxHCpPjQ2ZkAg%3D%3D&sidoCd=110000&zipCd=2030&clCd=21";
				}
				
	            URL url = new URL(urlstr);
                HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();
	            urlconnection.setRequestMethod("GET");
	            
	            // 응답 읽기
	            br = new BufferedReader(new InputStreamReader(urlconnection.getInputStream(),"UTF-8"));
	            StringBuilder sb = new StringBuilder();
	            //String result = "";
	            String line;
	            while((line = br.readLine()) != null) {
	            	sb.append(line);
	            }
	            line = sb.toString();
	            br.close();
	            urlconnection.disconnect();
				return line;
	            
	            
				/*
				 * System.out.println(result); }catch(Exception e){
				 * System.out.println(e.getMessage()); }
				 */
			}
}	
	
	
	









//public class OpenApi {
//    public static void main(String[] args) throws IOException {
//        StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/B551182/pubReliefHospService/getpubReliefHospList"); /*URL*/
//        urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + "=bY0vDc9Lsd8Y210gsUbzkaPEulp2DSKvc%2BgKbNRW5Ccp%2FGOU6IHLJ1l4CtIyQ6a1jPkta58ibPxHCpPjQ2ZkAg%3D%3D"); /*Service Key*/
//        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*한 페이지 결과 수*/
//        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지 번호*/
//
//        
//       URL url = new URL(urlBuilder.toString());
//        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
//        conn.setRequestMethod("GET");
//       conn.setRequestProperty("Content-type", "application/json");
//       System.out.println("Response code: " + conn.getResponseCode());
//        BufferedReader rd;
//        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
//            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
//        } else {
//            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
//        }
//       StringBuilder sb = new StringBuilder();
//        String line;
//        while ((line = rd.readLine()) != null) {
//           sb.append(line);
//        }
//        rd.close();
//        conn.disconnect();
//        System.out.println(sb.toString());
//   }
//}


