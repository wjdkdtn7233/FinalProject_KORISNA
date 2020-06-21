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
            <!-- 404 Banner Area Start -->
            <section class="page-not-found purple-bg section-padding">
                <div class="error-virus-shape error-shape-1">
                    <img src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png" alt="">
                </div>
                <div class="error-virus-shape error-shape-2">
                    <img src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png" alt="">
                </div>
                <div class="error-virus-shape error-shape-3">
                    <img src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png" alt="">
                </div>
                <div class="error-virus-shape error-shape-4">
                    <img src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png" alt="">
                </div>
                <div class="container">
                    <div class="row d-flex align-items-center">
                        <div class="col-xl-6 col-lg-6">
                            <div class="error-img-woman">
                                <img src="<%=request.getContextPath()%>/resources/assets/img/error-page-image.png" alt="">
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6">
                            <div class="error-content">
                                <div class="error-main-title">
                                    <h2>404</h2>
                                </div>
                                <div class="error-meta-content">
                                    <h2>Oops! That page can’t be found.</h2>
                                    <p>We are really sorry but the page you requested is missing.</p>
                                    <a href="<%=request.getContextPath()%>/index/index.do" class="common-btn btn common-hover-3">Go Back Home</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- 404 Banner Area End -->
        </main>

	<!-- footer -->
	<%@ include file="../include/footer.jsp"%>

	<!-- Modal -->
	<%@ include file="../include/modal.jsp"%>

	<!-- default JS -->
	<%@ include file="../include/defaultJS.jsp"%>
</body>

</html>
