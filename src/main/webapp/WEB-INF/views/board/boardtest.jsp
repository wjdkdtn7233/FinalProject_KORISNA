<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
					alt="mini-white-shape">
			</div>
			<div class="breadcrumb-virus-shape breadcrumb-shape-2">
				<img
					src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png"
					alt="mini-white-shape">
			</div>
			<div class="breadcrumb-virus-shape breadcrumb-shape-3">
				<img
					src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png"
					alt="mini-white-shape">
			</div>
			<div class="breadcrumb-virus-shape breadcrumb-shape-4">
				<img
					src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png"
					alt="mini-white-shape">
			</div>
			<div class="container">
				<div class="row">
					<div class="col-xl-6 col-lg-6 col-md-6 my-auto">
						<div class="breadcrumb-content">
							<h2 class="breadcrumb-main-title">NEWS & Issue</h2>
							<ul>
								<li>Coronavirus pandemic : Updates from around the world</li>
							</ul>
						</div>
					</div>
					<div
						class="col-xl-6 col-lg-6 col-md-6 text-right breadcrumb-unvisible">
						<div class="breadcrumb-image-wrapper">
							<div class="breadcrumb-image">
								<img
									src="<%=request.getContextPath()%>/resources/assets/img/woman-towel.png"
									alt="woman-towel">
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
							<h5 class="section-single-subtitle">LIVE UPDATES</h5>
							<h2 class="section-heading-title">
								Update News Of Coronavirus <span class="section-blue-text">(Covid-19)</span>
							</h2>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="blog-carousel owl-carousel">
						<c:forEach items="${data }" var="board" begin="0" end="5">
							<div class="single-blog-wrap">
								<div class="blog-content">
									<h5 class="blog-date-wrap">
										<span class="date">${board.wrtDt } </span> <a
											href="<%=request.getContextPath()%>/board/boarddetail.do?id=${board.id}"
											class="blog-tag">Read More</a>
									</h5>
									<h4 class="blog-title">${board.title }</h4>

									<a href="<%=request.getContextPath()%>/board/boardlist.do"
										class="blog-read-more">NEWS Home</a>
									<div class="blog-shape-bottom">
										<img
											src="<%=request.getContextPath()%>/resources/assets/img/grey-virus-shape.png"
											alt="grey-virus-shape">
									</div>
								</div>
							</div>
						</c:forEach>
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
					alt="mini-white-shape">
			</div>
			<div class="symptoms-virus-shape symptoms-virus-shape-2">
				<img
					src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png"
					alt="mini-white-shape">
			</div>
			<div class="symptoms-virus-shape symptoms-virus-shape-3">
				<img
					src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png"
					alt="mini-white-shape">
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
							<h2 class="cta-main-text">
								위와 같은 증상이 있으시면, 가까운 병원에서 진료를 <br>받으세요
							</h2>
						</div>
					</div>
					<div class="col-xl-3 col-lg-3 col-md-12">
						<div class="cta-main-button">
							<a href="<%=request.getContextPath()%>/board2/board2.do"
								class="cta-button btn">병원찾기 <i class="icofont-arrow-right"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- CTA Area End -->

		<!-- Contact Information Area Start -->
		<!-- Contact Information-->
		<%@ include file="../include/contactinformation.jsp"%>
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