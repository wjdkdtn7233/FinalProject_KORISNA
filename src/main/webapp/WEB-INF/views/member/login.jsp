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
	<header class="header-area-wrapper"> </header>
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
								<li>- Welcome to our site -</li>
							</ul>
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
				<div class="row justify-content-center">
					<div class="col-xl-12 col-lg-12">
						<div class="section-title text-center semi-blue-section-title">

							<h2 class="section-heading-title">
								로그인 <span class="section-blue-text"></span>
							</h2>
							<h5 class="section-single-subtitle">Please enter your email
								and password.</h5>
						</div>
					</div>
				</div>
				<div class="contact-form-inner">
					<div class="row justify-content-center">
					<form action="<%= request.getContextPath() %>/member/loginCheck.do" method="post" id="frm">
						<input type="hidden" id="f_email" name="f_email">
						<input type="hidden" id="f_password" name="f_password">
					</form>
						<div class="col-xl-10 col-lg-10 col-md-10 pb-3">
							<input type="text" id="email" placeholder="Email*">
						</div>
						<div class="col-xl-10 col-lg-10 col-md-10 pb-3">
							<input type="password" id="password" placeholder="password*">
						</div>
						<div class="col-xl-6 text-right pr-5">
							<div class="cta-main-button">
								<a class="cta-button btn" onclick="return loginCheck()">Login</a>
							</div>
						</div>
						<div class="col-xl-6 text-left">
							<div class="cta-main-button">
								<a class="cta-button btn" onclick="kakaoLogin()">kakao Login</a>
							</div>
						</div>

						<div class="col-xl-9 col-lg-9 col-md-9 pt-5 text-center">
							<a href="<%= request.getContextPath() %>/member/memberjoin.do"><h5 class="section-single-subtitle">회원가입이 필요하시다면?</h5></a>
						</div>
						<div class="col-xl-9 col-lg-9 col-md-9 pt-5 text-center">
							<div class="single-right-small-blog blog-contact-us">
								<h3 class="blog-single-title">Have you forgotten your email
									or password..?</h3>
								<div class="blog-post-tags d-flex justify-content-center">
									<ul>
										<li><a href="<%= request.getContextPath() %>/member/findemail.do" class="px-3">이메일 찾기</a></li>
										<li><a href="<%= request.getContextPath() %>/member/findpassword.do" class="px-3">비밀번호 찾기</a></li>
									</ul>
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
	</footer>

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
	
		function loginCheck(){
			
			$('#f_email').val($('#email').val());
			$('#f_password').val($('#password').val());
			$('#frm').submit();
			
		}
		
		
		
		
	</script>
	<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
	<script>
        // SDK를 초기화 합니다. 사용할 앱의 JavaScript 키를 설정해 주세요.
        Kakao.init('0c9edf466f7bbe30526c019836615624');

        // SDK 초기화 여부를 판단합니다.
        console.log(Kakao.isInitialized());
        
        function kakaoLogin(){
        	

        	Kakao.Auth.login({
				success : function(v) {
					/* alert("데이터 획득 성공"); */
					Kakao.API.request({
						url : '/v2/user/me',
						success : function(res) {
							//access_token : 사용자 토큰
							//refresh_token : 새로고침 토큰
							//properties.nickname : 사용자 이름
							//properties.id : 고유 아이디
							//kakao_account.profile.nickname : 사용자 이름
							//kakao_account.profile.profile_image_url : 프로필 이미지
							//kakao_account.email : 사용자 이메일
							//connected_at : 로그인 시간
							
							console.log(res.id);

						},
						fail : function(error) {
							console.log(error);
						}
					});
				},
				fail : function(err) {
					alert(JSON.stringify(err));
					alert("카카오톡 로그인 실패");
				}
			});

              

        }
        
        
    </script>
</body>
</html>
