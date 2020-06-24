package com.kh.finalpj.product.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
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
	
	//상품 목록을 가져온다
		@RequestMapping("/product/productlistadmin.do")
		public ModelAndView productListAdmin(ModelAndView mav){
			
			mav.addObject("productList",productService.selectProductList());
			mav.setViewName("product/productListAdmin");
			
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
		
		@RequestMapping("/product/productdetailadmin.do")
		public ModelAndView productDetailAdmin(ModelAndView mav, String p_no) {

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
			mav.setViewName("product/productDetailAdmin");

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
		
		@RequestMapping("/product/productinformationmodify.do")
		public ModelAndView productinformationmodify(ModelAndView mav,@RequestParam Map<String,Object> commandMap
				,@RequestParam(name="file",required = false) MultipartFile file, HttpServletRequest request) throws IllegalStateException, IOException {
			//update문의 결과값 표시
			int result = 0;
			
			List<Map<String, Object>> projectList = productService.selectProductList();
			System.out.println(String.valueOf(commandMap.get("P_NAME")));
			Map<String, Object>currentMap = null;
			for(int i = 0; i < projectList.size(); i++) {
				if(String.valueOf(projectList.get(i).get("P_NO")).equals(String.valueOf(commandMap.get("P_NO")))){
					System.out.println("1됐냐");
					currentMap = projectList.get(i);
					i = projectList.size();
				}
			}
			
			//관리자가 프로필 사진을 바꿀껀지/안바꾸고 그대로할껀지 정해주는 타입
			String profileType = String.valueOf(commandMap.get("imgModifyCheck"));
			
			//파일이 저장될 경로
			String root = request.getServletContext().getRealPath("/resources");
			String savePath = root + "/product/image/";
			
			//현재 제품의 사진
			String currentPicture =  String.valueOf(currentMap.get("P_IMAGE"));
			
			//현재 제품 사진 저장경로가 담긴 파일 객체 
			File currentProfile = new File(savePath+currentPicture);
			System.out.println(currentProfile + "2됐냐");
			//제품 사진을 바꿀때
			if (file.getSize() > 0 && commandMap.get("imgModifyCheck").equals("modifyPhoto")) {
				
				String originFileName = file.getOriginalFilename();
				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
				
				String renameFileName = sdf.format(new Date()) + "."
						+ originFileName.substring(originFileName.lastIndexOf(".") + 1);

				savePath += renameFileName;
				File profile = new File(savePath);
				
				//rename된 프로필사진 이름을 DB에 저장한다.
				commandMap.put("P_IMAGE", renameFileName);
				
				System.out.println(commandMap);
				result = productService.updateProductInfo(commandMap);
				
				//정상적으로 회원정보가 수정되었을때 파일을 해당 폴더에 넣어준다.
				if(result > 0) {
					file.transferTo(profile);
				}
			}else if(!profileType.equals("modifyPhoto")){
				commandMap.put("P_IMAGE", profileType);
				System.out.println(commandMap);
				result = productService.updateProductInfo(commandMap);
			}
			
			if(result > 0) {
				//이미지 파일 쌓이는거 방지
				if(profileType.equals("modifyPhoto")) {
					currentProfile.delete();
				}
				mav.addObject("alertMsg", "제품수정을 완료하였습니다.");
			}else {
				mav.addObject("alertMsg", "제품수정에 실패하였습니다.");
			}
			
			mav.addObject("url", request.getContextPath() +"/product/productlistadmin.do");
			mav.setViewName("common/result");
			
			return mav;
		}
		
		@RequestMapping("/product/productadd.do")
		public ModelAndView productadd(ModelAndView mav) {
			mav.setViewName("product/productAdd");
			return mav;
		}
		
		@RequestMapping("/product/productinsert.do")
		public ModelAndView productInsert(ModelAndView mav,@RequestParam Map<String,Object> commandMap
				,@RequestParam(name="file",required = false) MultipartFile file, HttpServletRequest request) throws IllegalStateException, IOException {
			//update문의 결과값 표시
			int result = 0;
			
			//파일이 저장될 경로
			String root = request.getServletContext().getRealPath("/resources");
			String savePath = root + "/product/image/";
			
			//제품 사진을 바꿀때
			if (file.getSize() > 0) {
				
				String originFileName = file.getOriginalFilename();
				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
				
				String renameFileName = sdf.format(new Date()) + "."
						+ originFileName.substring(originFileName.lastIndexOf(".") + 1);

				savePath += renameFileName;
				File profile = new File(savePath);
				
				//rename된 프로필사진 이름을 DB에 저장한다.
				commandMap.put("P_IMAGE", renameFileName);
				
				System.out.println(commandMap);
				result = productService.insertProductInfo(commandMap);
				
				//정상적으로 회원정보가 등록되었을때 파일을 해당 폴더에 넣어준다.
				if(result > 0) {
					file.transferTo(profile);
				}
			}
			
			if(result > 0) {
				mav.addObject("alertMsg", "제품등록을 완료하였습니다.");
			}else {
				mav.addObject("alertMsg", "제품등록에 실패하였습니다.");
			}
			
			mav.addObject("url", request.getContextPath() +"/product/productlistadmin.do");
			mav.setViewName("common/result");
			
			return mav;
		}
		
}
