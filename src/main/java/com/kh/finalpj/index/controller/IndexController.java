package com.kh.finalpj.index.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.print.attribute.standard.JobSheets;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.finalpj.index.model.service.IndexService;

import net.sf.json.JSONObject;

@Controller
@RequestMapping("/index")
public class IndexController {

	@Autowired
	private IndexService is;

	@RequestMapping("/index.do")
	public ModelAndView openApi(HttpSession session) {
		ModelAndView mav = new ModelAndView();
//		session에 들어있는지 확인
		if (session.getAttribute("location") == null) {
			List<Map<String, Object>> res = is.Covid19InfState();
//		System.out.println("res 완료");
			List<Map<String, Object>> res2 = is.Covid19InfStateNationwide();

			session.setAttribute("state", res);
			session.setAttribute("location", res2);
			
			mav.addObject("data", res.get(0));
			mav.addObject("data2", res2.get(res2.size() - 1));
		} else {
			List<Map<String, Object>> res = (List<Map<String, Object>>) session.getAttribute("state");
			List<Map<String, Object>> res2 = (List<Map<String, Object>>) session.getAttribute("location");
			mav.addObject("data", res.get(0));
			mav.addObject("data2", res2.get(res2.size() - 1));
		}
		mav.setViewName("index/index");

		return mav;
	}

	@RequestMapping("/selectLocationList.do")
	public void selectLocationList(HttpSession session, HttpServletResponse response,
			@RequestParam Map<String, Object> commandMap) throws IOException {

		PrintWriter out = response.getWriter();
		JSONObject job = new JSONObject();
		List<Map<String, Object>> lList = (List<Map<String, Object>>) session.getAttribute("location");
//		선택한 것 받음
		Map<String, Object> res = is.selectLocationList(lList,
				Integer.parseInt((String) commandMap.get("locationNum")));
		if (!res.isEmpty()) {
//			System.out.println(res.get("defCnt"));
			job.put("gubun", res.get("gubun"));
			job.put("defCnt", res.get("defCnt"));
			job.put("incDec", res.get("incDec"));
			job.put("isolIngCnt", res.get("isolIngCnt"));
			job.put("isolClearCnt", res.get("isolClearCnt"));
			job.put("deathCnt2", res.get("deathCnt"));
			job.put("qurRate", res.get("qurRate"));
		} else {
//			System.out.println("임프티임");
			job.put("data", null);
		}
		out.print(job);
//		System.out.println(res);

	}

}
