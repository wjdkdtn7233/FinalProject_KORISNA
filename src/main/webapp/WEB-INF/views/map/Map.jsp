<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Contact || Korisna</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- <link rel="manifest" href="site.webmanifest"> -->

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/assets/css/bootstrap.min.css">

<!-- Owl-Carousel CSS -->
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/assets/css/owl.carousel.min.css">

<!-- Animate CSS -->
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/assets/css/animate.min.css">

<!-- Magnific-Popup CSS -->
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/assets/css/magnific-popup.css">

<!-- Flaticon CSS -->
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/assets/css/icofont.min.css">

<!-- Fontawesome CSS -->
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/assets/css/fontawesome.min.css">

<!-- Meanmenu CSS -->
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/assets/css/meanmenu.css">

<!-- Theme Main CSS -->
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/style.css">

<!-- Responsive CSS -->
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/assets/css/responsive.css">

<!-- map CSS -->
<link rel="stylesheet" href="<%= request.getContextPath()%>/resources/map/css/Map.css"/>  

</head>
<body>
<script
  src="https://code.jquery.com/jquery-3.5.1.js"
  integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
  crossorigin="anonymous"></script>
	
	<div id="preloader-body" class="no-scroll-y">
		<div>
			<div id="preloader">
				<div id="ctn-preloader" class="ctn-preloader">
					<div class="animation-preloader">

						<div class="spinner"></div>

						<div class="txt-loading">
							<span data-text-preloader="K" class="letters-loading">K</span> <span
								data-text-preloader="O" class="letters-loading">O</span> <span
								data-text-preloader="R" class="letters-loading">R</span> <span
								data-text-preloader="I" class="letters-loading">I</span> <span
								data-text-preloader="S" class="letters-loading">S</span> <span
								data-text-preloader="N" class="letters-loading">N</span> <span
								data-text-preloader="A" class="letters-loading">A</span>
						</div>

					</div>

					<!-- Preloader sides - Model 1 -->
					<div class="loader-section section-left"></div>
					<div class="loader-section section-right"></div>

				</div>
			</div>
		</div>
	</div>

	<!-- Header Area Start -->
	<header class="header-area-wrapper">
		  <div class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-xl-2 col-lg-2 col-md-4">
                    <div class="header-logo">
                        <a href="index.html">
                            <img src="<%= request.getContextPath() %>/resources/assets/img/logo.png" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-xl-7 col-lg-7">
                    <div class="main-menu">
                        <nav id="mobile-menu">
                            <ul>
                                <li class="active"><a href="index.html">Home</a></li>
                                <li><a href="about.html">About</a></li>
                                <li><a href="cases.html">Cases</a> </li>
                                <li><a href="prevention.html">Prevention</a>
                                </li>
                                <li><a href="team.html">Pages</a>
                                    <ul>
                                        <li><a href="team.html">Team</a></li>
                                        <li><a href="faq.html">Faq's</a></li>
                                        <li><a href="error-page.html">404 Page</a></li>
                                    </ul>
                                </li>
                                <li><a href="shop.html">Shop</a></li>
                                <li><a href="<%=request.getContextPath() %>/map/map.do">마스크맵</a></li>
                                <c:if test="${sessionScope.loginUser != null }">
                                <li><a href="<%= request.getContextPath() %>/member/infomodify.do">마이페이지</a>
                                    <ul>
                                        <li><a href="<%= request.getContextPath() %>/member/infomodify.do">내 정보 및 수정</a></li>
                                        <li><a href="<%= request.getContextPath() %>/member/leavemember.do">회원 탈퇴</a></li>
                                        <li><a href="error-page.html">주문 목록</a></li>
                                    </ul>
                                </li>
                                <li><a href="<%= request.getContextPath() %>/member/logout.do">로그아웃</a></li>
                                 </c:if>
                                 <c:if test="${sessionScope.loginUser == null }">
                                 <li><a href="<%= request.getContextPath() %>/member/login.do">로그인</a></li>
                                 </c:if>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-6 text-right">
                    <div class="header-full-right">
                        <div class="header-search">
                            <a data-toggle="modal" data-target="#search-modal"  href="#" class="header-search-anchor common-hover-1"><i class="icofont-search-2"></i></a>
                        </div>
                        <div class="cta-btn">
                            <a href="contact.html" class="call-button common-hover-1">Contact Us</a>
                        </div>
                    </div>
                </div>
                <div class="col-12">
                    <div class="mobile-menu"></div>
                </div>
            </div>
        </div>
    </div>
	</header>
	<!-- Header Area End -->
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
								<li>- 마스크맵 -${loginUser }</li>
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

	<%-- <footer class="footer-area section-padding">
		<div class="footer-virus-shape footer-virus-shape-1">
			<img src="<%= request.getContextPath() %>/resources/assets/img/purple-virus-shape.png" alt="">
		</div>
		<div class="footer-virus-shape footer-virus-shape-2">
			<img src="<%= request.getContextPath() %>/resources/assets/img/purple-virus-shape.png" alt="">
		</div>
		<div class="container">
			<div class="row">
				<div class="col-xl-4 col-lg-4 col-md-6">
					<div class="single-footer-wrapper footer-1 page-mar-mobile">
						<div class="footer-title">
							<img src="<%= request.getContextPath() %>/resources/assets/img/logo2.png" alt="">
						</div>
						<div class="footer-text">
							<p>It is a long established fact that a reader will bee
								distracted by there readable content of the page when looking at
								its layout. It is a long established fact that a reader.</p>
						</div>
						<div class="footer-social-tabs">
							<ul>
								<li><a href="#"><i class="icofont-skype"></i></a></li>
								<li><a href="#"><i class="icofont-youtube"></i></a></li>
								<li><a href="#"><i class="icofont-facebook"></i> </a></li>
								<li><a href="#"><i class="icofont-linkedin"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-xl-4 col-lg-4 col-md-6">
					<div class="single-footer-wrapper page-mar-mobile common-footer">
						<h3 class="footer-title">Recent Post</h3>
						<div class="footer-bottom-comtent">
							<div class="single-footer-blog">
								<img src="<%= request.getContextPath() %>/resources/assets/img/blog-1-150x150.jpg" alt=""> <a
									href="blog-details.html" class="blog-info">
									<h5>Corona virus COVID-19 is affecting 210 countries ...</h5> <span
									class="date-footer"><i class="far fa-calendar-check"></i>
										April 20, 2020</span>
								</a>
							</div>
							<div class="single-footer-blog">
								<img src="<%= request.getContextPath() %>/resources/assets/img/blog-2-150x150.jpg" alt=""> <a
									href="blog-details.html" class="blog-info">
									<h5>Corona virus COVID-19 is affecting 210 countries ...</h5> <span
									class="date-footer"><i class="far fa-calendar-check"></i>
										April 20, 2020</span>
								</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-4 col-lg-4 col-md-6">
					<div class="single-footer-wrapper mar-top">
						<h3 class="footer-title">Contact Info</h3>

						<p>It is a long established fact that a reader will bee
							distracted by there readable content.</p>
						<ul class="footer-info">
							<li class="footer-list-address"><i
								class="fas fa-map-marker-alt"></i>
								<div class="footer-addr-dsc">
									<p>99 S.t Seoul Park Pekanbaru Avenue 28292. South Korea</p>
								</div></li>
							<li class="footer-list-mobile"><i class="fas fa-mobile-alt"></i>
								<a href="tel:+820123456789">+820123456789</a></li>
							<li class="footer-mail"><i class="fas fa-paper-plane"></i>
								<p class="footer-mail-addr">
									<a href="mailto:korisna-admin@gmail.com">korisna-admin@gmail.com</a>
								</p></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer> --%>

	<div class="site-copyright-wrapper">
		<div class="container">
			<div class="row">
				<div class="col-xl-6 col-lg-6 col-md-6">
					<div class="copyright-text">
						<h6>
							Korisna | Developed by: <a target="_blank"
								href="http://themedraft.com" class="copyright-anchor">Themedraft</a>
						</h6>
					</div>
				</div>
				<div class="col-xl-6 col-lg-6 col-md-6">
					<div class="site-copyright-text text-right">
						<h6>&copy; Korisna 2020 | All Right Reserved</h6>
					</div>
				</div>
			</div>
		</div>
	</div> 

	<!-- Modal -->
	<div class="modal fade" id="search-modal" tabindex="-1" role="dialog"
		aria-labelledby="search-modal" aria-hidden="true">
		<div class="modal-dialog " role="document">
			<div class="modal-content">
				<div class="modal-body">
					<div class="modal-search">
						<form action="index.html">
							<input type="text" name="text" placeholder="Search here...">
							<button>
								<i class="fas fa-search" aria-hidden="true"></i>
							</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


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
	</script>

	<!-- kakao map apiCDN -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ac955fe2801d2050db1a02ed1fe41b64&libraries=services"></script>

	<!-- map JS -->						
	<script src="${pageContext.request.contextPath}/resources/map/js/map.js"></script>    
					

</body>
</html>
