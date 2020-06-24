package com.kh.finalpj.review.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.annotation.JsonTypeInfo.Id;
import com.kh.finalpj.review.model.service.ReviewService;

import net.sf.json.JSONObject;

@Controller
public class ReviewController {

	@Autowired
	ReviewService reviewService;
	
	@RequestMapping("/review/regreview.do")
	public ModelAndView regReview(ModelAndView mav,HttpServletRequest request,@RequestParam Map<String,Object> commandMap) throws IOException {
		
		
		int result = reviewService.insertReview(commandMap);
		String pno = String.valueOf(commandMap.get("p_no"));
		JSONObject job = new JSONObject();
		
		
		
		
		if(result > 0) {
			if(reviewService.selectReviewList(commandMap) != null) {
				
				mav.addObject("alertMsg","리뷰등록 성공!");
				mav.addObject("url",request.getContextPath()+"/product/productdetail.do?p_no="+pno);
				mav.setViewName("common/result");
				double starScore = reviewService.selectReviewStarScoreAvg(commandMap);
				commandMap.put("p_starscore",starScore);
				reviewService.updateProductStarScore(commandMap);
			}
		}else {
			mav.addObject("alertMsg","리뷰등록 실패!");
			mav.addObject("back","back");
			mav.setViewName("common/result");
		}
		
		return mav;
	}
	
	@RequestMapping("/review/likereview.do")
	public void likeAndHateReview(HttpServletResponse response,@RequestParam Map<String,Object> commandMap) throws IOException{
		
		PrintWriter out = response.getWriter();
		
		String type = String.valueOf(commandMap.get("e_type"));
		
		int result1 = reviewService.selectEmpathyYN(commandMap);
		
		if(result1 >= 1) {
			out.print("exist");
			return;
		}
		
		int result2 = reviewService.insertLikeOrHate(commandMap);
		
		String a = String.valueOf(reviewService.selectLikeAndHateCnt(commandMap).get("R_LIKE"));
		String b = String.valueOf(reviewService.selectLikeAndHateCnt(commandMap).get("R_HATE"));
		int like = Integer.parseInt(a) +1;
		int hate = 	Integer.parseInt(b) +1;
		commandMap.put("r_like", like);
		commandMap.put("r_hate", hate);
		
		int result3 =reviewService.updateLikeOrHateCnt(commandMap);
				
		if(result2 > 0 && result3 > 0) {
			if(type.equals("like")) {
				out.print(like);
			}else {
				out.print(hate);
			}
			
		}else {
			out.print("fail");
		}
	}
	
	
	@RequestMapping("/review/deletereview.do")
	public ModelAndView deleteReview(ModelAndView mav,HttpServletRequest request,@RequestParam Map<String,Object> commandMap) throws IOException {
		int result = 0;
		System.out.println(commandMap);
		
		String pno = String.valueOf(commandMap.get("p_no"));
		String loginUser = String.valueOf(commandMap.get("f_email"));
		String reviewUser = String.valueOf(commandMap.get("r_email"));
		
		if(loginUser.equals(reviewUser)) {
			if(reviewService.selectEmpathyCnt(commandMap) > 0) {
			result = reviewService.deleteEmpathy(commandMap);
			}
			result += reviewService.deleteReview(commandMap);
			if(reviewService.selectReviewCnt(commandMap) == 0 ) {
				commandMap.put("p_starscore", 0);
				result += reviewService.updateProductStarScore(commandMap);
			}else {
				commandMap.put("p_starscore", reviewService.selectReviewStarScoreAvg(commandMap));
				result += reviewService.updateProductStarScore(commandMap);
			}
			
		}else {
			mav.addObject("alertMsg","본인리뷰만 삭제가능합니다.");
			mav.addObject("back","back");
			mav.setViewName("common/result");
			return mav;
			
		}
		
		
		if(result > 1) {
			
			mav.addObject("alertMsg", "리뷰가 성공적으로 삭제되었습니다.");
			mav.addObject("url",request.getContextPath()+"/product/productdetail.do?p_no="+pno);
			mav.setViewName("common/result");
		}else {
			mav.addObject("alertMsg","리뷰삭제실패!");
			mav.addObject("back","back");
			mav.setViewName("common/result");
			
		}
		
		return mav;
	}
	
	
}
