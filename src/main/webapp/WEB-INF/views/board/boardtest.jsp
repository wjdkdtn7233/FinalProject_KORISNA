<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!doctype html>
<html class="no-js" lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>NEWS || Korisna</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="manifest" href="site.webmanifest">

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

</head>

<body>
	<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->

	<!-- Preloader -->
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
							<a href="index.html"> <img src="<%=request.getContextPath()%>/resources/assets/img/logo.png" alt="">
							</a>
						</div>
					</div>
					<div class="col-xl-7 col-lg-7">
						<div class="main-menu">
							<nav id="mobile-menu">
								<ul>
									<li><a href="index.html">Home</a></li>
									<li><a href="about.html">About</a></li>
									<li class="active"><a href="cases.html">NEWS</a></li>
									<li><a href="prevention.html">Prevention</a></li>
									<li><a href="team.html">Pages</a>
										<ul>
											<li><a href="team.html">Team</a></li>
											<li><a href="faq.html">Faq's</a></li>
											<li><a href="error-page.html">404 Page</a></li>
										</ul></li>
									<li><a href="shop.html">Shop</a></li>
									<li><a href="blog.html">NEWS Details</a></li>
									<li><a href="contact.html">Contact</a></li>
								</ul>
							</nav>
						</div>
					</div>
					<div class="col-xl-3 col-lg-3 col-md-6 text-right">
						<div class="header-full-right">
							<div class="header-search">
								<a data-toggle="modal" data-target="#search-modal" href="#"
									class="header-search-anchor common-hover-1"><i
									class="icofont-search-2"></i></a>
							</div>
							<div class="cta-btn">
								<a href="contact.html" class="call-button common-hover-1">Contact
									Us</a>
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
							<h2 class="breadcrumb-main-title">뉴스&이슈</h2>
							<ul>
								<li><a href="index.html">Home</a></li>
								<li>-국가·지역별 최신안전소식</li>
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
		<div class="blog-section-wrapper section-padding">
			<div class="container">
				<div class="row">
					<div class="col-xl-12 col-lg-12">
						<div class="section-title text-center semi-blue-section-title">
							<h5 class="section-single-subtitle">최근 기사</h5>
							<h2 class="section-heading-title">
								Update News Of Coronavirus <span class="section-blue-text">(Covid-19)</span>
							</h2>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="blog-carousel owl-carousel">
						<div class="single-blog-wrap">
							<div class="blog-content">
								<h5 class="blog-date-wrap">
									<span class="date">날짜받아주는 란 </span> <a href="blog-details.html"
										class="blog-tag">상세보기</a>
								</h5>
								<h4 class="blog-title">기사 란</h4>

								<a href="blog-details.html" class="blog-read-more">Read More</a>
								<div class="blog-shape-bottom">
									<img
										src="<%=request.getContextPath()%>/resources/assets/img/grey-virus-shape.png"
										alt="">
								</div>
							</div>
						</div>
						<div class="single-blog-wrap">
							<div class="blog-content">
								<h5 class="blog-date-wrap">
									<span class="date">날짜받아주는 란 </span> <a href="blog-details.html"
										class="blog-tag">상세보기</a>
								</h5>
								<h4 class="blog-title">기사 란</h4>

								<a href="blog-details.html" class="blog-read-more">Read More</a>
								<div class="blog-shape-bottom">
									<img
										src="<%=request.getContextPath()%>/resources/assets/img/grey-virus-shape.png"
										alt="">
								</div>
							</div>
						</div>
						<div class="single-blog-wrap">
							<div class="blog-content">
								<h5 class="blog-date-wrap">
									<span class="date">날짜받아주는 란 </span> <a href="blog-details.html"
										class="blog-tag">상세보기</a>
								</h5>
								<h4 class="blog-title">기사 란.</h4>

								<a href="blog-details.html" class="blog-read-more">Read More</a>
								<div class="blog-shape-bottom">
									<img
										src="<%=request.getContextPath()%>/resources/assets/img/grey-virus-shape.png"
										alt="">
								</div>
							</div>
						</div>
						<div class="single-blog-wrap">
							<div class="blog-content">
								<h5 class="blog-date-wrap">
									<span class="date">날짜받아주는 란 </span> <a href="blog-details.html"
										class="blog-tag">상세보기</a>
								</h5>
								<h4 class="blog-title">기사 란.</h4>

								<a href="blog-details.html" class="blog-read-more">Read More</a>
								<div class="blog-shape-bottom">
									<img
										src="<%=request.getContextPath()%>/resources/assets/img/grey-virus-shape.png"
										alt="">
								</div>
							</div>
						</div>
						<div class="single-blog-wrap">
							<div class="blog-content">
								<h5 class="blog-date-wrap">
									<span class="date">날짜받아주는 란 </span> <a href="blog-details.html"
										class="blog-tag">상세보기</a>
								</h5>
								<h4 class="blog-title">기사 란.</h4>

								<a href="blog-details.html" class="blog-read-more">Read More</a>
								<div class="blog-shape-bottom">
									<img
										src="<%=request.getContextPath()%>/resources/assets/img/grey-virus-shape.png"
										alt="">
								</div>
							</div>
						</div>
						<div class="single-blog-wrap">
							<div class="blog-content">
								<h5 class="blog-date-wrap">
									<span class="date">날짜받아주는 란 </span> <a href="blog-details.html"
										class="blog-tag">상세보기</a>
								</h5>
								<h4 class="blog-title">기사 란.</h4>

								<a href="blog-details.html" class="blog-read-more">Read More</a>
								<div class="blog-shape-bottom">
									<img
										src="<%=request.getContextPath()%>/resources/assets/img/grey-virus-shape.png"
										alt="">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Blog Area End -->

		<!-- Symptoms Area Start -->
		<div class="symptoms-wrapper section-padding purple-bg">
			<div class="symptoms-virus-shape symptoms-virus-shape-1">
				<img
					src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png"
					alt="">
			</div>
			<div class="symptoms-virus-shape symptoms-virus-shape-2">
				<img
					src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png"
					alt="">
			</div>
			<div class="symptoms-virus-shape symptoms-virus-shape-3">
				<img
					src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png"
					alt="">
			</div>
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-xl-12 col-lg-12">
						<div class="section-title text-center">
							<h5 class="section-single-subtitle">증상</h5>
							<h2 class="section-heading-title">코로나 바이러스 신규 증상 (COVID-19)</h2>
							<h6 class="section-small-text">일부 환자들 - 특히 노인들과 다른 만성적인 건강
								상태를 가진 다른 환자들에서는 이러한 증상들이 폐렴으로 발전할 수 있고 가슴이 조여질 수 있다.</h6>
						</div>
					</div>
				</div>

				<div class="row symptoms-round-border">
					<div class="col-xl-6 col-lg-6 col-md-6 col-6">
						<div class="single-symptoms-wrapper">
							<div class="sympotoms-text-wrapper">
								<div class="symptoms-text">
									<h5 class="symptoms-title">콧물</h5>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-6 col-lg-6 col-md-6 col-6">
						<div class="single-symptoms-wrapper">
							<div class="sympotoms-text-wrapper top-circle-right">
								<div class="symptoms-text">
									<h5 class="symptoms-title">두통</h5>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-6 col-lg-6 col-md-6 col-6">
						<div class="single-symptoms-wrapper">
							<div class="sympotoms-text-wrapper middle-circle-left">
								<div class="symptoms-text">
									<h5 class="symptoms-title">오한</h5>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-6 col-lg-6 col-md-6 col-6">
						<div class="single-symptoms-wrapper">
							<div class="sympotoms-text-wrapper middle-circle-right">
								<div class="symptoms-text">
									<h5 class="symptoms-title">인후통</h5>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-6 col-lg-6 col-md-6 col-6">
						<div class="single-symptoms-wrapper">
							<div class="sympotoms-text-wrapper middle-circle-bottom-left">
								<div class="symptoms-text">
									<h5 class="symptoms-title">호흡곤란</h5>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-6 col-lg-6 col-md-6 col-6">
						<div class="single-symptoms-wrapper">
							<div class="sympotoms-text-wrapper middle-circle-bottom-right">
								<div class="symptoms-text">
									<h5 class="symptoms-title">발열</h5>
								</div>
							</div>
						</div>
					</div>
					<div class="woman-towel">
						<img
							src="<%=request.getContextPath()%>/resources/assets/img/woman-towel.png"
							alt="woman-towel">
					</div>
				</div>
			</div>
		</div>
		<!-- Symptoms Area End -->



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
							<h2 class="cta-main-text">위와 같은 증상이 있으시면, 가까운 병원에서 진료를 받으세요</h2>
						</div>
					</div>
					<div class="col-xl-3 col-lg-3 col-md-12">
						<div class="cta-main-button">
							<a href="prevention.html" class="cta-button btn">병원찾기 <i
								class="icofont-arrow-right"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- CTA Area End -->
	</main>

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
</body>
</html>