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
				<img src="assets/img/mini-white-shape.png" alt="mini-white-shape">
			</div>
			<div class="breadcrumb-virus-shape breadcrumb-shape-2">
				<img src="assets/img/mini-white-shape.png" alt="mini-white-shape">
			</div>
			<div class="breadcrumb-virus-shape breadcrumb-shape-3">
				<img src="assets/img/mini-white-shape.png" alt="mini-white-shape">
			</div>
			<div class="breadcrumb-virus-shape breadcrumb-shape-4">
				<img src="assets/img/mini-white-shape.png" alt="mini-white-shape">
			</div>
			<div class="container">
				<div class="row">
					<div class="col-xl-6 col-lg-6 col-md-6 my-auto">
						<div class="breadcrumb-content">
							<h2 class="breadcrumb-main-title">NEWS Details</h2>
							<ul>
								<li><a href="<%= request.getContextPath() %>/index/index.do">Home</a></li>
								<li>- NEWS Details</li>
							</ul>
						</div>
					</div>
					<div
						class="col-xl-6 col-lg-6 col-md-6 text-right breadcrumb-unvisible">
						<div class="breadcrumb-image-wrapper">
							<div class="breadcrumb-image">
								<img src="assets/img/woman-towel.png" alt="woman-towel">
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
							<div class="blog-sample-meta">
								<ul>

									<li><a href="#"><i class="far fa-calendar-check"></i>April
											20, 2020</a></li>

								</ul>
								<div class="blog-sample-bottom-content">
									<h3>Corona virus COVID-19 is affecting 210 countries
										around the world and 2 international conveyances.</h3>
									<p>A wonderful serenity has taken possssion of my entire
										souing like these sweet mornng spring whch enjoy with my whole
										heart I am alone, and feel the charm of existenceths spot whch
										was create For the bliss of souls like mineing am so happy my
										dear frend so absori bed</p>

									<p>A wonderful serenity has taken posseson of my entire
										soung like these sweet mornngs spring whch enjoy with my whole
										heart I am alone and feel the charm of exstenceths spot whch
										was created For the blis of souls like mineing am so happy my
										dear frend so absoribed in the exquste sense of mere tranquil
										existence, that neglect my talentsr I should bye ncapable of
										drawng and single stroke at the A wonderful serenty has taken
										possesson of my entre souing like these sweet mornins sprng
										which present moment; and yet If feel that I never was a
										greater artst.</p>
								</div>
							</div>

							<div class="blog-details-content-2">
								<h3>The novel coronavirus’ case fatality rate has been
									estimated at around 2% in the WHO press conference held on
									January 29, 2020.</h3>

								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
									sed do eiusmoed tempor encididunt uten labore et dolorem magna
									aliqua. Uten enim ad minim veniam, quis nostrud exercitation
									ullameco laboris nisi ut aliquip ex ea commod consequat. Duis
									aute irure dolor in reprehenderit in voluptate velit esse
									cillum and dolore eu fugiat nulla pariatur excepteur sint
									occaecat cupidatat non proident.</p>

								<ul>
									<li>At on the notch everything the no to called he one why
										its as success.</li>
									<li>To even was that are he floundering magicians and
										corona viruses.</li>
									<li>That as a guard as fresh lady careful they are sitting
										at the dround.</li>
								</ul>

								<p>Tone get else be her fur somewhere, the assistant there
									time the of proportion it as endeavours to and to as origin
									unavoidable, a the new trying of a to stopped at literature his
									consider into what palace decided out more were to researches
									luxury. It texts. From expecting be actually.</p>
							</div>

							<div class="single-right-small-blog blog-search-wrap">
								<div class="blog-short-search-wrap">
									<input type="search" name="search" placeholder="Search...">
									<button type="submit" class="search-button">
										<i class="fas fa-search"></i>
									</button>
								</div>
							</div>

							<div class="col-xl-12">
								<div class="blog-pagination shop-pagination">
									<nav aria-label="Page navigation example">
										<ul class="pagination">
											<li class="page-item"><span class="page-link current">1</span></li>
											<li class="page-item"><a class="page-link"
												href="blog.html">2</a></li>
											<li class="page-item"><a class="page-link"
												href="blog.html"><i class="fas fa-angle-double-right"></i></a></li>
										</ul>
									</nav>
								</div>
							</div>
						</div>
					</div>

					<div class="blog-cta-action">
						<div class="cta-widget-wrapper">
							<div class="cta-widget-content td-cover-bg"
								style="background-image: url(./assets/img/cta-button-bg.jpg)">
								<h6 class="cta-subtitle">코로나바이러스 (COVID-19)</h6>
								<h3 class="cta-title">질병관리본부 콜센터</h3>
								<div class="cta-main-button">
									<a href="tel:1339" class="cta-button btn">1339</a>
								</div>
							</div>
						</div>
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
