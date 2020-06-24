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
							<h2 class="breadcrumb-main-title">Product Add</h2>
							<ul>
								<li><a href="<%=request.getContextPath()%>/index/index.do">Home</a></li>
								<li>- Product Add</li>
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
			<div class="container">
				<div class="row">
				<form
				action="<%=request.getContextPath()%>/product/productinsert.do"
				id="frm" method="post" enctype="multipart/form-data">
					<div class="col-xl-12 col-lg-12 col-md-12">
						<div class="left-side-blog">
							<div class="single-blog-page-item">
								<div class="single-full-blog-wrap">
									<div class="row content-items-center">
										<div class="col-xl-6 col-lg-6 col-md-6">
											<div class="blog-section-bg" id="P_IMAGE"
												style="background-size: 100% 100%;">
											</div>
											<input type="hidden" name="P_IMAGE" style="width: 300px"
														value="">
										</div>
										<div class="col-xl-6 col-lg-6 col-md-6">
											<div class="blog-details-content-meta">
												<label for="productPicture" class="btn btn-warning btn-file">사진
													등록 <input type="file" name="file" id="productPicture"
													accept="image/jpg,image/jpeg,image/png,image/gif,image/bmp"
													style="display: none;" />
												</label>
												<h3 class="font-weight-bold sunflower"
													style="color: #7C52CC">
													<input type="text" id="P_NAME" name="P_NAME" style="width: 300px"
														value="" placeholder="제품명을 입력하세요.">
												</h3>
												<hr>
												<h3 class="pt-1 sunflower">
													<input type="text" id="P_PRICE" name="P_PRICE" style="width: 300px"
														value="" placeholder="가격을 입력하세요."> 원
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
									<div class="blog-sample-bottom-content">
										<h3>상품 설명</h3>
										<textarea class="sunflower" id="P_CONTENT" name="P_CONTENT" cols="80" rows="20"></textarea>
									</div>
								</div>


							</div>

							<div class="blockquote-text">
								<i class="fas fa-quote-left"></i>
								<h6>추가 정보</h6>
								<textarea class="sunflower" id="P_ADDINFO"  name="P_ADDINFO" cols="80" rows="20"></textarea>
							</div>

							<div class="cta-main-button pt-5 text-center">
								<button class="cta-button btn sunflower" type="submit">등록하기</button>
							</div>
						</div>
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
		$('#productPicture').on(
				'change',
				function(e) {
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
			
	</script>

</body>
</html>
