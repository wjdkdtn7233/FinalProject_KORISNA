<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html class="no-js" lang="en">
<%@ include file="../include/head.jsp"%>
<!-- map CSS -->
<link rel="stylesheet" href="<%= request.getContextPath()%>/resources/map/css/Map.css"/>  

<body>
	<!--  cdn -->
<script
  src="https://code.jquery.com/jquery-3.5.1.js"
  integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
  crossorigin="anonymous"></script>

	<!-- Preloader -->
	<%@ include file="../include/preloader.jsp"%>

	<!-- Header -->
	<%@ include file="../include/header.jsp"%>
	<main>

		<!-- Breadcrumb Area Start -->
		<section class="breadcrumb-wrapper purple-bg">
			<div class="breadcrumb-virus-shape breadcrumb-shape-1">
				<img src="<%= request.getContextPath() %>/resources/assets/img/mini-white-shape.png" alt="">
			</div>
			<div class="breadcrumb-virus-shape breadcrumb-shape-2">
				<img src="<%= request.getContextPath() %>/resources/assets/img/mini-white-shape.png" alt="">
			</div>
			<div class="breadcrumb-virus-shape breadcrumb-shape-3">
				<img src="<%= request.getContextPath() %>/resources/assets/img/mini-white-shape.png" alt="">
			</div>
			<div class="breadcrumb-virus-shape breadcrumb-shape-4">
				<img src="<%= request.getContextPath() %>/resources/assets/img/mini-white-shape.png" alt="">
			</div>
			<div class="container">
				<div class="row justify-content-center text-center h-50">
					<div class="col-xl-6 col-lg-6 col-md-6">
						<div class="breadcrumb-content">
							<h2 class="breadcrumb-main-title"></h2>
							<ul>
								<li>- 마스크맵 - </li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Breadcrumb Area End -->


		<!-- Contact Form Area Start -->
		<div class="contact-form-wrapper section-padding">
			<div class="container">
				<!-- <div class="row justify-content-center">
					<div class="col-xl-12 col-lg-12">
						<div class="section-title text-center semi-blue-section-title">

							<h2 class="section-heading-title">
								마스크맵 <span class="section-blue-text"></span>
							</h2>
							<h5 class="section-single-subtitle">select your address.</h5>
						</div>
					</div>
				</div> -->
				<div class="contact-form-inner">
					<div class="row justify-content-center">
						
						
						<!-- map start -->
						
						
						<label class="switch" id="mapSwitch">
						  <input type="checkbox" id="mapSelector" onchange="switchTest()">
						  <span class="slider round"></span>
						</label>
						<br>
						<div id="map" class="kakaoMap"></div>
						<div id="favorate" class="favorate"></div>
						
						<div id="menu_wrap" class="bg_white">
					        <div class="option">
					
					               <span><b>주소 검색</b></span><br>
					               <input type="text" id="keyword" class="keyword" size="15" placeholder="키워드를 입력하세요."> 
					               <button id="pSearchBnt" onclick="searchPlaces()">검색하기</button> 
					        </div>
					        <ul id="placesList" class="placesList"></ul>
				 	   		<div id="pagination" class="pagination"></div>
				   		</div>
				   		
						<!-- map end -->	
						
						
						<!-- <div class="col-xl-10 col-lg-10 col-md-10 pb-3">

						</div>
						<div class="col-xl-10 col-lg-10 col-md-10 pb-3">

						</div>
						<div class="col-xl-6 text-right pr-5">
							<div class="cta-main-button">

							</div>
						</div>
						<div class="col-xl-6 text-left">
							<div class="cta-main-button">

							</div>
						</div> -->

						<!-- <div class="col-xl-9 col-lg-9 col-md-9 pt-5 text-center">
						
						</div> -->
					<!-- 	<div class="col-xl-9 col-lg-9 col-md-9 pt-5 text-center">
							<div class="single-right-small-blog blog-contact-us">
								<h3 class="blog-single-title">Have you forgotten your email
									or password..?</h3>
								<div class="blog-post-tags d-flex justify-content-center">
							
								</div>
							</div>
						</div> -->
					</div>
				</div>
			</div>
		</div>
		<!-- Contact Form Area End -->

		<!-- Contact Information Area Start -->
		<div class="contact-information-wrapper section-padding purple-bg">
			<div class="container">
				<div class="row">
					<div class="col-xl-4 col-lg-4 col-md-4">
						<div
							class="single-contact-information-wrap border-right page-mar-mobile">
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-4">
						<div
							class="single-contact-information-wrap border-right page-mar-mobile">
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-4">
						<div class="single-contact-information-wrap">
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Contact Information Area End -->
	</main>

	<!-- footer -->
	<%@ include file="../include/footer.jsp"%>

	<!-- Modal -->
	<%@ include file="../include/modal.jsp"%>

	<!-- default JS -->
	<%@ include file="../include/defaultJS.jsp"%>



	<!-- jQuery JS -->
	<script src="<%= request.getContextPath() %>/resources/assets/js/jquery-1.12.4.min.js"></script>

	<!-- Popper JS -->
	<script src="<%= request.getContextPath() %>/resources/assets/js/popper.min.js"></script>

	<!-- Boostrap JS -->
	<script src="<%= request.getContextPath() %>/resources/assets/js/bootstrap.min.js"></script>

	<!-- Owl-Carousel JS -->
	<script src="<%= request.getContextPath() %>/resources/assets/js/owl.carousel.min.js"></script>

	<!-- Meanmenu JS -->
	<script src="<%= request.getContextPath() %>/resources/assets/js/jquery.meanmenu.js"></script>

	<!-- Wow JS -->
	<script src="<%= request.getContextPath() %>/resources/assets/js/wow.min.js"></script>

	<!-- ScrollUp JS -->
	<script src="<%= request.getContextPath() %>/resources/assets/js/jquery.scrollUp.min.js"></script>

	<!-- Magnific-Popup JS -->
	<script src="<%= request.getContextPath() %>/resources/assets/js/jquery.magnific-popup.min.js"></script>

	<!-- Theme-Main JS -->
	<script src="<%= request.getContextPath() %>/resources/assets/js/main.js"></script>
	
	<script>
		var contextPath = '<%=request.getContextPath()%>/';
		sessionStorage.setItem("userId", "${loginUser.f_email}");
		sessionStorage.setItem("userAddr", "${loginUser.f_jibernaddress}");
	</script>

	<!-- kakao map apiCDN -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ac955fe2801d2050db1a02ed1fe41b64&libraries=services"></script>

	<!-- map JS -->						
	<script src="${pageContext.request.contextPath}/resources/map/js/map.js"></script>    
					

</body>
</html>
