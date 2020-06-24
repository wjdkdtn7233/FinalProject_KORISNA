<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="en">
<!-- HAED -->
<%@ include file="../include/head.jsp"%>
<style>
#star_grade i {
	text-decoration: none;
	color: gray;
}

#star_grade i.on {
	color: #7C52CC;
}
</style>
<body>

	<!-- Preloader -->
	<%@ include file="../include/preloader.jsp"%>

	<!-- Header -->
	<%@ include file="../include/header.jsp"%>



	<main>
		<!-- Breadcrumb Area Start -->
		<section class="breadcrumb-wrapper purple-bg">
			<div class="breadcrumb-virus-shape breadcrumb-shape-1">
				<img
					src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png"
					alt="">
			</div>
			<div class="breadcrumb-virus-shape breadcrumb-shape-2">
				<img
					src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png"
					alt="">
			</div>
			<div class="breadcrumb-virus-shape breadcrumb-shape-3">
				<img
					src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png"
					alt="">
			</div>
			<div class="breadcrumb-virus-shape breadcrumb-shape-4">
				<img
					src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png"
					alt="">
			</div>
			<div class="container">
				<div class="row">
					<div class="col-xl-6 col-lg-6 col-md-6 my-auto">
						<div class="breadcrumb-content">
							<h2 class="breadcrumb-main-title">Product Modify</h2>
							<ul>
								<li><a href="<%=request.getContextPath()%>/index/index.do">Home</a></li>
								<li>- Product Modify</li>
							</ul>
						</div>
					</div>
					<div
						class="col-xl-6 col-lg-6 col-md-6 text-right breadcrumb-unvisible">
						<div class="breadcrumb-image-wrapper">
							<div class="breadcrumb-image">
								<img
									src="<%=request.getContextPath()%>/resources/assets/img/woman-towel.png"
									alt="">
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Breadcrumb Area End -->

		<!-- Blog Area Start -->
		<div class="blog-page-wrapper section-padding">
			<div class="container sunflower">
				<div class="row">

				<form
				action="<%=request.getContextPath()%>/product/productinformationmodify.do"
				id="frm" method="post" enctype="multipart/form-data">
					<div class="col-xl-12 col-lg-12 col-md-12">
						<div class="left-side-blog">
							<div class="single-blog-page-item">
								<div class="single-full-blog-wrap">
									<div class="row content-items-center">
										<div class="col-xl-6 col-lg-6 col-md-6">
											<div class="blog-section-bg" id="P_IMAGE"
												style="background-size: 100% 100%;">
												<img class="h-100"
												src="<%=request.getContextPath()%>/resources/product/image/${productDetail.P_IMAGE}" />
											</div>
											<input type="hidden" name="P_IMAGE" style="width: 300px"
														value="${productDetail.P_IMAGE}">
										</div>
										<div class="col-xl-6 col-lg-6 col-md-6">
											<div class="blog-details-content-meta">
												<label for="productPicture" class="btn btn-warning btn-file">사진
													변경<input type="file" name="file" id="productPicture"
													accept="image/jpg,image/jpeg,image/png,image/gif,image/bmp"
													style="display: none;" />
												</label>
												<h3 class="font-weight-bold sunflower"
													style="color: #7C52CC">
													<input type="text" id="P_NAME" name="P_NAME" style="width: 300px"
														value="${productDetail.P_NAME}">
												</h3>
												<h4 class="pt-3 sunflower">
													<i class="fas fa-star"></i>${productDetail.P_STARSCORE}</h4>
												<hr>
												<h3 class="pt-1 sunflower">
													<input type="text" id="P_PRICE" name="P_PRICE" style="width: 300px"
														value="${productDetail.P_PRICE}"> 원
												</h3>
												<hr>
												<h5 class="pt-1 sunflower">배송방법 : 택배</h5>
												<h5 class="pt-1 sunflower">배송비 : 2500원</h5>
												<hr>
												<h5 class="pt-1 sunflower">재고 갯수</h5>
												<input type="number" name="P_CNT" id="P_CNT" value="1" />
											</div>
										</div>
									</div>

								</div>
								<div class="blog-sample-meta">
									<ul class="sunflower">
										<li><i class="far fa-calendar-check"></i>${productDetail.P_JOINDATE}</li>
										<li><i class="far fa-comments"></i> review <span
											id="reviewCnt1">${reviewCnt}</span></li>
										<li><i class="fas fa-star"></i>
											${productDetail.P_STARSCORE}</li>
									</ul>
									<div class="blog-sample-bottom-content">
										<h3>상품 설명</h3>
										<textarea class="sunflower" id="P_CONTENT" name="P_CONTENT" cols="30" rows="20"> ${productDetail.P_CONTENT} </textarea>
									</div>
								</div>


							</div>

							<div class="blockquote-text">
								<i class="fas fa-quote-left"></i>
								<h6>추가 정보</h6>
								<textarea class="sunflower" id="P_ADDINFO"  name="P_ADDINFO" cols="30" rows="20"> ${productDetail.P_ADDINFO} </textarea>
							</div>

							<div class="cta-main-button pt-5 text-center">
								<button class="cta-button btn sunflower" type="submit">수정하기</button>
							</div>
						</div>
						<input type="hidden" id="imgModifyCheck" name="imgModifyCheck"
						value=""/>
						<input type="hidden" id="P_NO" name="P_NO"
						value="${productDetail.P_NO}"/>
					</div>
				</form>
				</div>
			</div>
		</div>
		<!-- Contact Form Area End -->

		<!-- CTA Area Start -->
		<div class="cta-wrapper section-padding purple-bg">
			<div class="cta-virus-shape cta-virus-shape-1">
				<img
					src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png"
					alt="">
			</div>
			<div class="cta-virus-shape cta-virus-shape-2">
				<img
					src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png"
					alt="">
			</div>
			<div class="container">
				<div class="row d-flex align-items-center">
					<div class="col-xl-9 col-lg-9 col-md-12">
						<div class="cta-content">
							<h5 class="cta-mini-title">Coronavirus (Covid-19)</h5>
							<h2 class="cta-main-text">Have any question in your mind?
								Let us now, we are help you.</h2>
						</div>
					</div>
					<div class="col-xl-3 col-lg-3 col-md-12">
						<div class="cta-main-button">
							<a href="<%=request.getContextPath()%>/member/contact.do"
								class="cta-button btn">Contact Now <i
								class="icofont-arrow-right"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- CTA Area End -->
	</main>
	<!-- footer -->
	<%@ include file="../include/footer.jsp"%>

	<!-- Modal -->
	<%@ include file="../include/modal.jsp"%>

	<!-- default JS -->
	<%@ include file="../include/defaultJS.jsp"%>


	<script>
      //이미지사진 건들지 않았을때 
		$('#imgModifyCheck').val("<%=request.getContextPath()%>/resources/product/image/${productDetail.P_IMAGE}");
		$('#productPicture').on(
				'change',
				function(e) {
					$('#imgModifyCheck').val("modifyPhoto");
					//유저가 프로필 버튼을 눌러 사진으로 바꿔주면 프로필 타입에 userphoto 라는 값을 넣어서 url로 보내준다.
					var get_file = e.target.files;

					var pathpoint = get_file[0].name.lastIndexOf('.');

					var filepoint = get_file[0].name.substring(pathpoint + 1,
							get_file[0].name.length);

					var filetype = filepoint.toLowerCase();

					console.log(filetype);

					if (filetype == 'jpg' || filetype == 'gif'
							|| filetype == 'png' || filetype == 'jpeg'
							|| filetype == 'bmp') {

						// 정상적인 이미지 확장자 파일인 경우
						console.log("true");
					} else {
						alert('이미지파일만 첨부가능합니다.')
					}

					var image = document.createElement('img');

					var reader = new FileReader();

					/* reader 시작시 함수 구현 */
					reader.onload = (function(aImg) {
						console.log(1);

						return function(e) {
							console.log(3);
							/* base64 인코딩 된 스트링 데이터 */
							aImg.src = e.target.result
							console.log($('productPicture').val());
						}
					})(image)
					
					if (get_file) {
						/* 
						    get_file[0] 을 읽어서 read 행위가 종료되면 loadend 이벤트가 트리거 되고 
						    onload 에 설정했던 return 으로 넘어간다.
						    이와 함게 base64 인코딩 된 스트링 데이터가 result 속성에 담겨진다.
						 */
						reader.readAsDataURL(get_file[0]);
						console.log(2);
					}
					
					$('#P_IMAGE').children().eq(0).remove();
					//이미지 모양 클래스 추가

					image.setAttribute('class', 'h-100');
					//이미지 보여지는 공간에 업로드한 이미지 넣기

					$('#P_IMAGE').prepend(image);
					
				});
      	
      	
      	
      	
      	/* {f_email : '${sessionScope.loginUser.F_EMAIL}',
			p_no : '${productDetail.P_NO}',
			r_content : $('#r_content').val() ,
			r_starscore : starscore,
			r_userpicture : '${sessionScope.loginUser.F_USERPICTURE}',
			r_usernick : '${sessionScope.loginUser.F_NAME}'} */
      	
			$('#P_CNT').change(function(){
      			if($('#P_CNT').val() <= 0){
      				alert('수량은 1개 이상만 선택 가능합니다.');
      				$('#P_CNT').val("1");
      			}
      		});
			
      		setInterval(function() {
      			$.ajax({
    				
    				url:"<%=request.getContextPath()%>/product/randomproductlist.do",
    				type : "post",
    				dataType: "json",
    				data : {},
    				success : function(data) {
    					$("#otherProduct").html("");
    					if(data != "fail"){
    						for(var i = 0; i < 3; i++){
    							$("#otherProduct").append("<div class='single-footer-blog'>"+
                                "<img src='<%=request.getContextPath()%>/resources/product/image/" + data.randomProductList[i].P_IMAGE + "' alt=''>" +
                                "<a href='<%=request.getContextPath()%>/product/productdetail.do?p_no="
																	+ data.randomProductList[i].P_NO
																	+ "' class='blog-info'><h5>"
																	+ data.randomProductList[i].P_NAME
																	+ "</h5>"
																	+ "<span class='date-footer'><i class='fas fa-won-sign'></i>"
																	+ data.randomProductList[i].P_PRICE
																	+ "</span></a></div>");
										}

									} else {
										alert('상품 리스트 불러오는데 실패하였습니다.');
									}

								},
								error : function(data) {
									alert('에러입니다.');

								}
							});
				}, 2000);
	</script>

</body>
</html>
