package com.kh.finalpj.product.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.finalpj.product.model.service.ProductService;

import net.sf.json.JSONObject;

@Controller
public class ProductController {
	@Autowired
	ProductService productService;
	
	
	//상품 목록을 가져온다
	@RequestMapping("/product/productlist.do")
	public ModelAndView productList(ModelAndView mav){
		
		mav.addObject("productList",productService.selectProductList());
		mav.setViewName("product/productList");
		
		return mav;
	}
	
	//상품목록 최신순,가격순,인기순
	@RequestMapping("/product/productlistsort.do")
	public void productListSort(String orderby,HttpServletResponse response) throws IOException {
		
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		JSONObject job = new JSONObject();
		job.put("sortList", productService.selectProductSortList());
		
		out.print(job);
	}
	
	//상품 디테일 이동
	@RequestMapping("/product/productdetail.do")
	public ModelAndView productDetail(ModelAndView mav,String p_no) {
		
		mav.addObject("reviewCnt", productService.selectReviewCnt(p_no));
		mav.addObject("reviewList",productService.selectReviewList(p_no));
		mav.addObject("productDetail", productService.selectProductDetail(p_no));
		mav.setViewName("product/productDetail");
		
		return mav;
	}
}
