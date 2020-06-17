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
							<h2 class="breadcrumb-main-title">병원정보</h2>
							<ul>
								<li><a href="prevention.html#search">병원찾기</a></li>
								<li>- Prevention</li>
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

		<!-- Prevention Area Start -->
		<div class="protective-measures-wrapper">
			<div class="faq-wrapper purple-bg">
				<div class="faq-virus-shape faq-virus-shape-1">
					<img
						src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png"
						alt="mini-white-shape">
				</div>
				<div class="faq-virus-shape faq-virus-shape-2">
					<img
						src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png"
						alt="mini-white-shape">
				</div>
				<div class="faq-virus-shape faq-virus-shape-3">
					<img
						src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png"
						alt="mini-white-shape">
				</div>
				<div class="faq-virus-shape faq-virus-shape-4">
					<img
						src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png"
						alt="mini-white-shape">
				</div>
				<div class="container">
					<div class="row">
						<div class="col-xl-5 col-lg-12">
							<div class="faq-left-section">
								<div class="woman-tea-large">
									<img
										src="<%=request.getContextPath()%>/resources/assets/img/woman-tea.png"
										alt="woman-tea">
								</div>
							</div>
						</div>
						<div class="col-xl-7 col-lg-12">
							<div class="section-title">
								<h5 class="section-single-subtitle">Ask Question</h5>
								<h2 class="section-heading-title">Some Question And Answer
									Of Coronavirus (Covid-19)</h2>
							</div>
							<div class="faq-right-section">
								<div class="question-wrapper">
									<div class="single-question-wrap">
										<h4 class="question-title">01. How does COVID-19 spread?</h4>
										<p class="ans-of-question">Data has shown that it spreads
											from person to person among those in close contact (within
											about 6 feet, or 2 meters). The virus spreads by respiratory
											droplets released when someone infected with the virus
											coughs, sneezes or talks.</p>
									</div>
									<div class="single-question-wrap">
										<h4 class="question-title">02. What are the symptoms of
											COVID-19?</h4>
										<p class="ans-of-question">Data has shown that it spreads
											from person to person among those in close contact (within
											about 6 feet, or 2 meters). The virus spreads by respiratory
											droplets released when someone infected with the virus
											coughs, sneezes or talks.</p>
									</div>
									<div class="single-question-wrap">
										<h4 class="question-title">03. Should I wear mask?</h4>
										<p class="ans-of-question">Data has shown that it spreads
											from person to person among those in close contact (within
											about 6 feet, or 2 meters). The virus spreads by respiratory
											droplets released when someone infected with the virus
											coughs, sneezes or talks.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>





			<div class="container pt-5">
				<div class="single-right-small-blog blog-search-wrap">

					<div class="col-xl-3 col-lg-3 col-md-3">
						<div class="selct-products">
							<select name="localwhole" class="orderby" aria-label="Shop order">

								<option value="local" selected="selected">지역을 선택하세요</option>
								<option value="강남구">강남구</option>
								<option value="강동구">강동구</option>
								<option value="강북구">강북구</option>
								<option value="강서구">강서구</option>
								<option value="관악구">관악구</option>
								<option value="광진구">광진구</option>
								<option value="구로구">구로구</option>
								<option value="금천구">금천구</option>
								<option value="노원구">노원구</option>
								<option value="도봉구">도봉구</option>
								<option value="동대문구">동대문구</option>
								<option value="동작구">동작구</option>
								<option value="마포구">마포구</option>
								<option value="서대문구">서대문구</option>
								<option value="서초구">서초구</option>
								<option value="성동구">성동구</option>
								<option value="성북구">성북구</option>
								<option value="송파구">송파구</option>
								<option value="양천구">양천구</option>
								<option value="영등포구">영등포구</option>
								<option value="용산구">용산구</option>
								<option value="은평구">은평구</option>
								<option value="종로구">종로구</option>
								<option value="중구">중구</option>
								<option value="중랑구">중랑구</option>

							</select>
						</div>
					</div>



				</div>
			</div>

			 <div class="container pt-4">
				<div class="row">
					<div class="col-xl-4 col-lg-4 col-md-6">
						<c:forEach items="${data}" var="board2" begin="1" end="6">
							<div class="single-protective-measure-item-2 page-mar-30">
								<h4 class="protective-title">${board2.b2_yadmNm }</h4>
								<p class="common-short-text">${board2.b2_sidocdNm }</p>
								<p class="common-short-text">${board2.b2_sggucdNm }</p>
								<p class="common-short-text">${board2.b2_addr }</p>
								<p class="common-short-text">${board2.b2_telno }</p>
								<div class="protective-measure-icon-wrap">
									<div class="cart-bottom">
										<a href="#" class="common-btn btn common">위치 확인</a>
									</div>
								</div>

							</div>
						</c:forEach>
					</div>
				</div>
			 </div>
			<div class="blog-pagination ">
				<nav aria-label="Page navigation example">
					<ul class="pagination">
						<li class="page-item"><span class="page-link current">1</span></li>
						<li class="page-item"><a class="page-link" href="blog.html">2</a></li>
						<li class="page-item"><a class="page-link" href="blog.html"><i
								class="fas fa-angle-double-right"></i></a></li>
					</ul>
				</nav>
			</div>


			<!-- Prevention Area End -->

			<!-- FAQ Area Start -->

			<!-- FAQ Area End -->

			<!-- Blog Area Start -->

			<!-- Blog Area End -->

			<!-- CTA Area Start -->

			<!-- CTA Area End -->
	</main>

	<!-- footer -->
	<%@ include file="../include/footer.jsp"%>

	<!-- Modal -->
	<%@ include file="../include/modal.jsp"%>

	<!-- default JS -->
	<%@ include file="../include/defaultJS.jsp"%>
</body>
</html>
