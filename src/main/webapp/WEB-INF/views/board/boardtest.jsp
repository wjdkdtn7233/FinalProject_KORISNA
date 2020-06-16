<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!doctype html>
<html class="no-js" lang="en">
<!-- HAED -->
<%@ include file="../include/head.jsp"%>

<body>
    <!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->

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
							<h2 class="breadcrumb-main-title">뉴스&이슈</h2>
							<ul>
								<li><a href="<%= request.getContextPath() %>/index/index.do">Home</a></li>
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
					alt="mini-white-shape">
			</div>
			<div class="cta-virus-shape cta-virus-shape-2">
				<img
					src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png"
					alt="mini-white-shape">
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
							<a href="<%= request.getContextPath() %>/board2/board2.do" class="cta-button btn">병원찾기 <i
								class="icofont-arrow-right"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- CTA Area End -->
		
		<!-- Contact Information Area Start -->
		<div class="contact-information-wrapper section-padding purple-bg">
			<div class="container">
				<div class="row">
					<div class="col-xl-4 col-lg-4 col-md-4">
						<div
							class="single-contact-information-wrap border-right page-mar-mobile">
							<div class="contact-info-icon-wrapper">
								<i class="icofont-phone"></i>
							</div>
							<div class="contact-info-content">
								<h5 class="contact-info-title">Call Us Now:</h5>
								<h4 class="contact-info-bottom">
									<a href="#">+88 - 012 - 345 - 6789</a>
								</h4>
								<h4 class="contact-info-bottom">
									<a href="#">+88 - 012 - 564 - 1234</a>
								</h4>
							</div>
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-4">
						<div
							class="single-contact-information-wrap border-right page-mar-mobile">
							<div class="contact-info-icon-wrapper">
								<i class="icofont-email"></i>
							</div>
							<div class="contact-info-content">
								<h5 class="contact-info-title">Email Us Now:</h5>
								<h4 class="contact-info-bottom">
									<a href="mailto:korisnaadmin@mail.com">korisnaadmin@mail.com</a>
								</h4>
								<h4 class="contact-info-bottom">
									<a href="mailto:support@gmail.com">support@gmail.com</a>
								</h4>
							</div>
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-4">
						<div class="single-contact-information-wrap">
							<div class="contact-info-icon-wrapper">
								<i class="icofont-location-pin"></i>
							</div>
							<div class="contact-info-content">
								<h5 class="contact-info-title">Address:</h5>
								<p class="contact-address">79 York Drive</p>
								<p class="contact-address">Evanston, IL 60201</p>
							</div>
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
</body>
</html>