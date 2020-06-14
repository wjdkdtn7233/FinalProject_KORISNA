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
							<span data-text-preloader="K" class="letters-loading">K</span> <span data-text-preloader="O"
								class="letters-loading">O</span> <span data-text-preloader="R"
								class="letters-loading">R</span> <span data-text-preloader="I"
								class="letters-loading">I</span> <span data-text-preloader="S"
								class="letters-loading">S</span> <span data-text-preloader="N"
								class="letters-loading">N</span> <span data-text-preloader="A"
								class="letters-loading">A</span>
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
			<div class="container"></div>
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
				<div class="row">
					<div class="col-xl-6 col-lg-6 col-md-6 my-auto">
						<div class="breadcrumb-content">
							<h2 class="breadcrumb-main-title">개인 정보 동의</h2>
							<ul>
								<li>- Personal information consent</li>
							</ul>
						</div>
					</div>
					<div class="col-xl-6 col-lg-6 col-md-6 text-right breadcrumb-unvisible">
						<div class="breadcrumb-image-wrapper">
							<div class="breadcrumb-image">
								<img src="<%= request.getContextPath() %>/resources/assets/img/woman-towel.png" alt="">
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Breadcrumb Area End -->


		<!-- Contact Form Area Start -->
		<div class="contact-form-wrapper section-padding">
			<div class="contact-virus-shape contact-virus-shape-1">
				<img src="<%= request.getContextPath() %>/resources/assets/img/grey-virus-shape.png" alt="">
			</div>
			<div class="contact-virus-shape specialist-virus-shape-2">
				<img src="<%= request.getContextPath() %>/resources/assets/img/grey-virus-shape.png" alt="">
			</div>
			<div class="contact-virus-shape contact-virus-shape-3">
				<img src="<%= request.getContextPath() %>/resources/assets/img/grey-virus-shape.png" alt="">
			</div>
			<div class="container">
				<div class="row justify-content-center align-middle">

					<div class="col-xl-12 col-lg-12">
						<div class="section-title text-center semi-blue-section-title">

							<h5 class="section-single-subtitle">
								회원가입을 위하여 개인정보활용에 동의해주세요.
							</h5>
						</div>
					</div>

				</div>
				<div class="contact-form-inner">
					<div class="row justify-content-center">
						<div class="col-xl-5 col-lg-5 col-md-5 pb-3">
							<div class="blog-categories">
								<ul>
									<li>
										<a class="text-primary text-center"  target="_blank" href="http://www.law.go.kr/lsInfoP.do?lsiSeq=167388&efYd=20150421#0000">'정보통신망법' 바로가기</a>
									</li>
								</ul>
							</div>
						</div>
						<div class="col-xl-5 col-lg-5 col-md-5 pb-3">
							<div class="blog-categories">
								<ul>
									<li>
										<a class="text-primary text-center"  target="_blank" href="http://www.law.go.kr/lsInfoP.do?lsiSeq=173223&efYd=20150724#0000">'개인정보보호법' 바로가기</a>
									</li>
								</ul>
							</div>
						</div>
						<form action="<%= request.getContextPath() %>/member/sendemail.do" method="post" id="frm">
						<input type="hidden" name="f_email" value="${member.f_email}"/>
						<input type="hidden" name="f_password" value="${member.f_password}"/>
						<input type="hidden" name="f_name" value="${member.f_name}"/>
						<input type="hidden" name="f_birth" value="${member.f_birth}"/>
						<input type="hidden" name="f_phone" value="${member.f_phone}"/>
						<input type="hidden" name="f_postcode" value="${member.f_postcode}"/>
						<input type="hidden" name="f_roadaddress" value="${member.f_roadaddress}"/>
						<input type="hidden" name="f_jibernaddress" value="${member.f_jibernaddress}"/>
						<input type="hidden" name="f_detailaddress" value="${member.f_detailaddress}"/>
						<input type="hidden" name="f_otheraddress" value="${member.f_otheraddress}"/>
						<div class="row">
							<div class="col-xl-12 col-lg-12 col-md-10 text-left">
								<div class="single-protective-measure-item-2 page-mar-30">
									<h4 class="protective-title">개인정보 수집 ‧ 이용 ‧ 제공 동의서</h4>
									<p class="text-left">본인은 귀사에 회원가입서를 제출함에 따라 [개인정보 보호법] 제15조 및 제17조에 따라
										아래의 내용으로 개인정보를 수집, 이용 및 제공하는데 동의합니다.
									</p>
									<p class="text-left"> □ 개인정보의 수집 및 이용에 관한 사항</p>
									<p class="text-left">- 수집하는 개인정보 항목 (회원가입 양식 내용 일체) : 성명, 생년월일, 전화번호, 주소, 이메일
										등 일체 </p>
									<p class="text-left"> □ 개인정보의 보관 및 이용 기간</p>
									<p class="text-left">- 귀하의 개인정보를 다음과 같이 보관하며, 수집, 이용 및 제공목적이 달성된 경우
										[개인정보 보호법] 제21조에 따라 처리합니다.</p>
								</div>
							</div>

							<div class="col-xl-6 col-lg-6 col-md-6 pb-5">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" id="jb-checkbox1" class="custom-control-input">
									<label class="custom-control-label" for="jb-checkbox1">동의</label>
								</div>

							</div>

							<div class="col-xl-12 col-lg-12 col-md-10">
								<div class="single-protective-measure-item-2 page-mar-30">
									<h4 class="protective-title">이용 목적 ‧ 거부할 권리 및 동의</h4>
									<p class="text-left">□ 수집․이용목적</p>
									<p class="text-left">- KORISNA 사이트를 원활히 이용하기 위한 목적</p>
									<p class="text-left">□ 동의를 거부할 권리 및 동의를 거부할 경우의 불이익</p>
									<p class="text-left">- 귀하는 위 사항에 대하여 동의를 거부할 수 있습니다. 다만, 위 개인정보의 수집·이용에
										관한 동의는 귀사의 사이트 이용을 위하여 필수적이므로, 위 사항에
										동의하여야만 귀사의 회원이 될 수 있음.</p>
									<p class="text-left"></p>
									<p class="text-left"></p>
								</div>
							</div>
							<div class="col-xl-6 col-lg-6 col-md-6">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" id="jb-checkbox2" class="custom-control-input">
									<label class="custom-control-label" for="jb-checkbox2">동의</label>
								</div>

							</div>

						</div>
						</form>
						<div class="col-xl-12 col-lg-12 col-md-12  text-center py-5">
							<div class="blog-categories" id="allPass">
								<ul>
									<li>
										<a>전체 동의 하기</a>
									</li>
								</ul>
							</div>
						</div>

						<div class="col-xl-12 text-center">
							<div class="cta-main-button">
								<a onclick="return boxCheck()" class="cta-button btn">다음 페이지</a>
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
						<div class="single-contact-information-wrap border-right page-mar-mobile">
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
						<div class="single-contact-information-wrap border-right page-mar-mobile">
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

	<footer class="footer-area section-padding">
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
								<img src="<%= request.getContextPath() %>/resources/assets/img/blog-1-150x150.jpg" alt=""> <a href="blog-details.html"
									class="blog-info">
									<h5>Corona virus COVID-19 is affecting 210 countries ...</h5> <span
										class="date-footer"><i class="far fa-calendar-check"></i>
										April 20, 2020</span>
								</a>
							</div>
							<div class="single-footer-blog">
								<img src="<%= request.getContextPath() %>/resources/assets/img/blog-2-150x150.jpg" alt=""> <a href="blog-details.html"
									class="blog-info">
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
							<li class="footer-list-address"><i class="fas fa-map-marker-alt"></i>
								<div class="footer-addr-dsc">
									<p>99 S.t Seoul Park Pekanbaru Avenue 28292. South Korea</p>
								</div>
							</li>
							<li class="footer-list-mobile"><i class="fas fa-mobile-alt"></i>
								<a href="tel:+820123456789">+820123456789</a></li>
							<li class="footer-mail"><i class="fas fa-paper-plane"></i>
								<p class="footer-mail-addr">
									<a href="mailto:korisna-admin@gmail.com">korisna-admin@gmail.com</a>
								</p>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer>

	<div class="site-copyright-wrapper">
		<div class="container">
			<div class="row">
				<div class="col-xl-6 col-lg-6 col-md-6">
					<div class="copyright-text">
						<h6>
							Korisna | Developed by: <a target="_blank" href="http://themedraft.com"
								class="copyright-anchor">Themedraft</a>
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
	<div class="modal fade" id="search-modal" tabindex="-1" role="dialog" aria-labelledby="search-modal"
		aria-hidden="true">
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


		document.getElementById('allPass').addEventListener('click', function () {
			if (!($('#jb-checkbox1').is(':checked')) || !($('#jb-checkbox2').is(':checked'))) {
				$('#jb-checkbox1').prop('checked', true);
				$('#jb-checkbox2').prop('checked', true);
			} else {
				$('#jb-checkbox1').prop('checked', false);
				$('#jb-checkbox2').prop('checked', false);
			}

		})
		
		function boxCheck(){
			if (($('#jb-checkbox1').is(':checked')) && ($('#jb-checkbox2').is(':checked'))){
				$('#frm').submit();
			}else{
				alert('동의에 체크해주세요.')
			}
		}


		//check 안됬을때 안넘어가게끔 로직 짜야됨
	</script>
</body>

</html>