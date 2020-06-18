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
			</div>

			<div class="container pt-5">
			
				<form action="<%=request.getContextPath()%>/board2/board2.do">
				<div class="single-right-small-blog blog-search-wrap">

					<div class="single-right-small-blog blog-search-wrap">
						<div class="blog-short-search-wrap">
							<input type="search" name="search" placeholder="Search...">
						
							<button type="button" class="btn btn-success"  onclick="searchinfo()">
							<i class="fas fa-search" ></i>
								
							</button>
						</div>
					</div>

				</div>
				</form>
			</div>

		
		
		<!-- 검색 
		<div id="menu_wrap" class="bg_white">
			<div class="option">

				<input type="text" id="keyword"
					class="keyword" size="15" placeholder="키워드를 입력하세요.">
				<button id="pSearchBnt" onclick="searchPlaces()">검색하기</button>
			</div>
			<ul id="placesList" class="placesList"></ul>
			<div id="pagination" class="pagination"></div>
		</div> -->







		<div class="container pt-4">
				<div class="row">
					<c:forEach items="${noticeData.nlist}" var="board2" begin="1" end="9">
						<div class="col-xl-4 col-lg-4 col-md-6">
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
						</div>
					</c:forEach>
				</div>
			</div>
			
 			
 			<div class="blog-pagination ">
				<nav aria-label="Page navigation example">
					<ul class="pagination">
					<li class="page-item">
					<a class="page-link" href="<%= request.getContextPath() %>/board2/board2.do"><i class="fas fa-angle-double-left"></i></a>
					</li>
						<c:choose>
							<c:when test="${noticeData.paging.blockStart > 1 }">
								<li class="page-item"><a class="page-link"
									href="<%= request.getContextPath() %>/board2/board2.do?cPage=${noticeData.paging.blockStart-1}">
									<i class="fas fa-angle-left"></i></a>
								</li>
							</c:when>
							<c:otherwise>
								<li class="page-item"><a class="page-link"
									href="<%= request.getContextPath() %>/board2/board2.do?cPage=${noticeData.paging.blockStart}"
									><i class="fas fa-angle-left"></i></a></li>
							</c:otherwise>
						</c:choose>
						<c:forEach begin="${noticeData.paging.blockStart}"
							end="${noticeData.paging.blockEnd}" var="page">
							<li class="page-item"><a
								href="<%= request.getContextPath() %>/board2/board2.do?cPage=${page}"
								class="page-link">${page}</a></li>
						</c:forEach>

						
						<c:choose>
							<c:when
								test="${noticeData.paging.blockEnd+1 > noticeData.paging.lastPage }">
								<li class="page-item"><a class="page-link"
									href="<%= request.getContextPath() %>/board2/board2.do?cPage=${noticeData.paging.blockEnd}"
									class="nav next"><i class="fas fa-angle-right"></i></a></li>
							</c:when>
							<c:otherwise>
								<li><a class="page-link"
									href="<%= request.getContextPath() %>/board2/board2.do?cPage=${noticeData.paging.blockEnd+1}"
									class="nav next"><i class="fas fa-angle-right"></i></a></li>
							</c:otherwise>
						</c:choose>
						
					
						<li class="page-item"><a class="page-link"
							href="<%= request.getContextPath() %>/board2/board2.do?cPage=${noticeData.paging.lastPage}"
							class="nav last"><i class="fas fa-angle-double-right"></i></a></li>





					</ul>
				</nav>
			</div>



			<%-- <div class="blog-pagination">
				<nav aria-label="Page navigation example">
					<ul class="pagination">

						<li class="page-item"><a class="page-link current"
								href="<%=request.getContextPath()%>/board2/board2.do"></a></li>
						<c:choose>
							<c:when test="${noticeData.paging.blockStart > 1 }">
								<li class="page-item"><a class="page-link"
									href="<%= request.getContextPath() %>/board2/board2.do?cPage=${noticeData.paging.blockStart-1}"
									class="nav prev"><i class="fas fa-angle-double-right"></i></a>
								</li>
							</c:when>
							<c:otherwise>
								<li class="page-item"><a
									href="<%= request.getContextPath() %>/board2/board2.do?cPage=${noticeData.paging.blockStart}"
									class="nav prev"><i class="fas fa-angle-left"></i></a></li>
							</c:otherwise>
						</c:choose>
						<c:forEach begin="${noticeData.paging.blockStart}"
							end="${noticeData.paging.blockEnd}" var="page">
							<li class="page-item"><a
								href="<%= request.getContextPath() %>/board2/board2.do?cPage=${page}"
								class="num active"><span>${page}</span></a></li>
						</c:forEach>




						<c:choose>
							<c:when
								test="${noticeData.paging.blockEnd+1 > noticeData.paging.lastPage }">
								<li class="page-item"><a
									href="<%= request.getContextPath() %>/board2/board2.do?cPage=${noticeData.paging.blockEnd}"
									class="nav next"><i class="fas fa-angle-left"></i></a></li>
							</c:when>
							<c:otherwise>
								<li><a
									href="<%= request.getContextPath() %>/board2/board2.do?cPage=${noticeData.paging.blockEnd+1}"
									class="nav next"><i class="fas fa-angle-right"></i></a></li>
							</c:otherwise>
						</c:choose>
						<li class="page-item"><a
							href="<%= request.getContextPath() %>/notice/noticelist.do?cPage=${noticeData.paging.lastPage}"
							class="nav last"><i class="fas fa-angle-double-right"></i></a></li>
					</ul>
				</nav>
			</div>
			<!-- // section pagination --> --%>





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
	
	<!-- board2 JS -->						
	<script src="${pageContext.request.contextPath}/resources/map/js/board2.js"></script> 
	
	
	
	
	
</body>
</html>
