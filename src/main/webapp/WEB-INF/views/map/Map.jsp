<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html class="no-js" lang="en">
<%@ include file="../include/head.jsp"%>
<!-- map CSS -->
<link rel="stylesheet" href="<%= request.getContextPath()%>/resources/map/css/Maps.css"/>  

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
							<h2 class="breadcrumb-main-title">Mask Map</h2>
							<ul>
								<li><a href="<%=request.getContextPath()%>/product/productlist.do">Online-Shop</a></li>
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


		<!-- Contact Form Area Start -->
		<div class="contact-form-wrapper section-padding">
			<div class="container">
				<div class="contact-form-inner">
					<div class="row justify-content-center">
						<!-- map start -->
						<div id="menu_wrap" class="bg_white">
					        <div class="option">
					               <span><b>주소 검색</b></span><br>
					               <input type="text" id="keyword" class="keyword" size="15" placeholder="키워드를 입력하세요."> 
					               <button id="pSearchBnt" onclick="searchPlaces()">검색하기</button> 
					        </div>
					        <ul id="placesList" class="placesList"></ul>
				 	   		<div id="pagination" class="pagination"></div>
				   		</div>
						
						<label class="switch" id="mapSwitch">
						  <input type="checkbox" id="mapSelector" onchange="switchTest()">
						  <span class="slider round"></span>
						</label>
						<br>
						<div id="map" class="kakaoMap"></div>
						<div id="favorate" class="favorate"></div>
						
						
				   		
						<!-- map end -->	

					</div>
				</div>
			</div>
		</div>
		<!-- Contact Form Area End -->
		
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
		sessionStorage.setItem("userId", "${loginUser.F_EMAIL}");
		sessionStorage.setItem("userAddr", "${loginUser.F_ROADADDRESS}");
		var contextPath = '<%=request.getContextPath()%>';
	</script>

	<!-- kakao map apiCDN -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ac955fe2801d2050db1a02ed1fe41b64&libraries=services"></script>

 	<!-- map JS -->						
	<script src="${pageContext.request.contextPath}/resources/map/js/maps.js"></script>
					

</body>
</html>
