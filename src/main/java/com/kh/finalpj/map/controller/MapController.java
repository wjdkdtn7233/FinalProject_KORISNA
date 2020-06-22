package com.kh.finalpj.map.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.finalpj.map.model.service.MapService;


@Controller
@RequestMapping("/map")
public class MapController {

	
	@Autowired
	private MapService ms;
	
	@RequestMapping("/map.do")
	public ModelAndView doMap(ModelAndView mav,HttpSession session) {
	
		mav.setViewName("map/Map");
		
		return mav;
		
	}
	
	
	
	@RequestMapping("/getcoords.do")
	@ResponseBody
	public Map<String,String> getInitCoords(String addr) {
		
		Map<String, String> resMap = null;
		try {
			resMap = ms.getInitCoords(addr);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return resMap;
	}
	
	@RequestMapping("/getpharmacy.do")
	@ResponseBody
	public Map<String,String> getPharmacy(@RequestParam Map<String,String> commandMap){
		System.out.println("controller");
		for(Map.Entry<String, String> entry : commandMap.entrySet()) {
			
			System.out.println(entry.getKey());
			System.out.println(entry.getValue());
			
		}
		
		switch(commandMap.get("level")) {
		case "1" : commandMap.put("radius", "300");
			break;
		case "2" :commandMap.put("radius", "1000");
			break;
		case "3" : commandMap.put("radius", "3000");
			break;
		case "4" : commandMap.put("radius","3000");
			default:
		}
		
		Map<String, String> resMap = null;
		
		resMap = ms.getPharmacy(commandMap);
		
		return resMap;
	}
	
	
	@RequestMapping("/insertfavorate.do")
	@ResponseBody
	public String insertFavorate(@RequestParam Map<String,Object> commandMap) {
		
		String res = "";
		
		if(ms.insertFavorate(commandMap) > 0) {
			res = "true";
		}else {
			res = "false";
		}

		return res;
	}
	
	@RequestMapping("/getfavorate.do")
	@ResponseBody
	public List<Map<String,Object>> getFavorate(String userId){
		System.out.println("hello");
		System.out.println(userId);
		List<Map<String,Object>> resList = ms.selectFavorate(userId);
				
		return resList;
	}
	
	@RequestMapping("/deletefavor.do")
	@ResponseBody
	public String deleteFavor(@RequestParam Map<String,String> commandMap) {
		
		String response = "";
		if( ms.deleteFavor(commandMap) > 0) {
			response = "true";
		}else {
			response = "false";
		}
		
		return response;
	}
}
