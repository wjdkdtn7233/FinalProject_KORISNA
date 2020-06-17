package com.kh.finalpj.product.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	@RequestMapping("/product/productsortlist.do")
	public void productSortList(@RequestParam Map<String, Object> commandMap,HttpServletResponse response) throws IOException {
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		JSONObject job = new JSONObject();
		
		if(productService.selectProductSortList(commandMap) != null) {
			job.put("sortList", productService.selectProductSortList(commandMap));
		}else {
			job.put("sortList","fail");
		}
		
		
		out.print(job);
	}
	
	// 상품 디테일 이동
		@RequestMapping("/product/productdetail.do")
		public ModelAndView productDetail(ModelAndView mav, String p_no) {

			List<Map<String, Object>> map = productService.selectProductList();
			List<Map<String, Object>> map2 = new ArrayList<Map<String, Object>>();
			List<Integer> random1 = new ArrayList();
			boolean tf = true;
			if (map != null) {
				for (int i = 0; i < map.size(); i++) {
					int random2 = (int) (Math.random() * (map.size())) + 1;
					if (random1 != null) {
						for (Integer num : random1) {
							if (num == random2) {
								tf = false;
								break;
							}
						}

						if (tf) {
							map2.add(map.get(random2 - 1));
							random1.add(random2);
						} else {
							tf = true;
							i = i - 1;
						}

					} else {
						map2.add(map.get(random2 - 1));
						random1.add(random2);
					}

				}
			}
			Map<String, Object> commandMap = new HashMap<String, Object>();
			commandMap.put("orderby", "p_starscore desc");
			List<Map<String, Object>> popularList1 = productService.selectProductSortList(commandMap);
			List<Map<String, Object>> popularList2 = new ArrayList<Map<String,Object>>();
			for (int i = 0; i < 5; i++) {
				popularList2.add(popularList1.get(i)); 
			}
			mav.addObject("popular", popularList2);
			mav.addObject("rProductList", map2);
			mav.addObject("reviewCnt", productService.selectReviewCnt(p_no));
			mav.addObject("reviewList", productService.selectReviewList(p_no));
			mav.addObject("productDetail", productService.selectProductDetail(p_no));
			mav.setViewName("product/productDetail");

			return mav;
		}
		
		
		@RequestMapping("/product/randomproductlist.do")
		public void randomProductList(HttpServletResponse response) throws IOException {

			PrintWriter out = response.getWriter();

			JSONObject job = new JSONObject();

			List<Map<String, Object>> map = productService.selectProductList();
			List<Map<String, Object>> map2 = new ArrayList<Map<String, Object>>();
			List<Integer> random1 = new ArrayList();
			boolean tf = true;
			if (map != null) {
				for (int i = 0; i < map.size(); i++) {
					int random2 = (int) (Math.random() * (map.size())) + 1;
					if (random1 != null) {
						for (Integer num : random1) {
							if (num == random2) {
								tf = false;
								break;
							}
						}

						if (tf) {
							map2.add(map.get(random2 - 1));
							random1.add(random2);
						} else {
							tf = true;
							i = i - 1;
						}

					} else {
						map2.add(map.get(random2 - 1));
						random1.add(random2);
					}

				}
			}

			if(map2 != null) {
				job.put("randomProductList", map2);
			}else {
				job.put("randomProductList", "fail");
			}
			
			out.print(job);

		}
		
		
		
		
		
		
		
		
		
}
