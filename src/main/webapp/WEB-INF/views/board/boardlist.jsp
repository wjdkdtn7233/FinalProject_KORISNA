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
							<h2 class="breadcrumb-main-title">NEWS LIVE UPDATES</h2>
							<ul>
								<li><a href="<%=request.getContextPath()%>/board/board.do">Previous</a></li>
								<li>- NEWS List</li>
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
		<div class="blog-page-wrapper section-padding">
			<div class="container">
				<div class="row">
					<div class="left-side-blog">
						<div class="single-blog-page-item">
							<c:forEach items="${noticeData.nlist}" var="board" varStatus="status">
								<div class="blog-sample-meta">
									<ul>
										<li><i class="far fa-calendar-check"></i>${board.wrtDt }</li>
									</ul>
									<div class="blog-sample-bottom-content">
										<h3>${board.title }</h3>
										<p>${board.content }</p>
									</div>
								</div>
							</c:forEach>
							<div class="blog-pagination ">
								<nav aria-label="Page navigation example">
									<ul class="pagination">
										<li class="page-item"><a class="page-link"
											href="<%=request.getContextPath()%>/board/boardlist.do"><i
												class="fas fa-angle-double-left"></i></a></li>
										<c:choose>
											<c:when test="${noticeData.paging.blockStart > 1 }">
												<li class="page-item"><a class="page-link"
													href="<%= request.getContextPath() %>/board/boardlist.do?cPage=${noticeData.paging.blockStart-1}">
														<i class="fas fa-angle-left"></i>
												
												</a></li>
											</c:when>
											<c:otherwise>
												<li class="page-item"><a class="page-link"
													href="<%= request.getContextPath() %>/board/boardlist.do?cPage=${noticeData.paging.blockStart}"><i
														class="fas fa-angle-left"></i></a></li>
											</c:otherwise>
										</c:choose>
										<c:forEach begin="${noticeData.paging.blockStart}"
											end="${noticeData.paging.blockEnd}" var="page">
											<li class="page-item"><a
												href="<%= request.getContextPath() %>/board/boardlist.do?cPage=${page}"
												class="page-link">${page}</a></li>
										</c:forEach>

										<c:choose>
											<c:when
												test="${noticeData.paging.blockEnd+1 > noticeData.paging.lastPage }">
												<li class="page-item"><a class="page-link"
													href="<%= request.getContextPath() %>/board/boardlist.do?cPage=${noticeData.paging.blockEnd}"
													class="nav next"><i class="fas fa-angle-right"></i></a></li>
											</c:when>
											<c:otherwise>
												<li><a class="page-link"
													href="<%= request.getContextPath() %>/board/boardlist.do?cPage=${noticeData.paging.blockEnd+1}"
													class="nav next"><i class="fas fa-angle-right"></i></a></li>
											</c:otherwise>
										</c:choose>
										<li class="page-item"><a class="page-link"
											href="<%= request.getContextPath() %>/board/boardlist.do?cPage=${noticeData.paging.lastPage}"
											class="nav last"><i class="fas fa-angle-double-right"></i></a></li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
		<!-- Contact Form Area End -->

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
