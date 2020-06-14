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
							<h2 class="breadcrumb-main-title">이메일 찾기</h2>
							<ul>
								<li>- Find User Email</li>
							</ul>
						</div>
					</div>
					<div class="col-xl-6 col-lg-6 col-md-6 text-right breadcrumb-unvisible">

						<div class="breadcrumb-image-wrapper">
							<div class="breadcrumb-image">
								<img src="<%= request.getContextPath() %>/resources/assets/img/woman-tea.png" alt="">
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

				<div class="contact-form-inner">
					<div class="row justify-content-center">

						<div class="col-xl-12 col-lg-12 col-md-12">
							<div class="blog-cta-action">
								<div class="cta-widget-wrapper">
									<div class="cta-widget-content td-cover-bg"
										style="background-image:url(<%= request.getContextPath() %>/resources/assets/img/28283C.png)">
										<h5 class="h4 text-white font-weight-bold" >아래칸에 가입하신 이름, 생년월일, 휴대폰 번호와</h5>
										<h5 class="h4 text-white font-weight-bold" >인증번호를 받을 이메일을 입력해주세요.</h5>
										<h6 class="cta-subtitle">Please enter your name, date of birth, mobile phone number, and email to receive your authentication number.</h6>
										
										<div class="single-service-submisstion-form blog-contact pt-4">
											<div class="submission-form-inner">
												<form action="<%= request.getContextPath() %>/member/findEmail.do" method="post" id="frm">
													<div class="row justify-content-center">
														<div class="col-xl-8 col-lg-8 col-md-8">
															<input type="text" name="f_name" id="f_name" placeholder="name*">
														</div>
														<div class="col-xl-8 col-lg-8 col-md-8">
															<input type="text" id="f_birth" name="f_birth"
																placeholder="birth*   (주민번호 앞 6자리)">
														</div>
														<div class="col-xl-8 col-lg-8 col-md-8">
															<input type="text" name="f_phone" id="f_phone"
																placeholder="Phone*   ''-' 제외하고 입력">
														</div>
														<div class="col-xl-8 col-lg-8 col-md-8">
															<input type="text" id="f_email" name="f_email" placeholder="Email*">
														</div>

													</div>
												</form>
											</div>
										</div>
										<input type="hidden" name="f_type" id="f_type" value="email"/>
										<div class="cta-main-button">
											<a target="_blank" onclick="return findEmail()"
												class="cta-button btn">이메일 찾으러 가기</a>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="col-xl-6 text-center pt-5">
							<div class="cta-main-button">
								<a class="cta-button btn" href="<%= request.getContextPath() %>/member/login.do">로그인하러 가기</a>
							</div>
						</div>
						<div class="col-xl-6 text-center pt-5">
							<div class="cta-main-button">
								<a class="cta-button btn" href="<%= request.getContextPath() %>/member/findpassword.do">비밀번호 찾기</a>
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
	
	function chk(re, e, msg) {

		if (re.test(e.val())) {

			return true;
		} else {
			e.value = "";
			e.focus();
			return false;
		}
	}
	
		

		function findEmail(){
			
			var name = $('#f_name');
			var birth = $('#f_birth');
			var phone = $('#f_phone');
			var email = $('#f_email');
			var type = $('#f_type');
			var emailSplit = email.val().split('@');
			var emailaddress = emailSplit[1];
			var regExpBirth = /^(?:[0-9]{2}(?:0[1-9]|1[0-2])(?:0[1-9]|[1,2][0-9]|3[0,1]))$/;
			var regExpPhone = /^[0-9]+$/;
			
			if(!name.val()){
				alert('성함을 입력해주세요.');
				return false;
			}
			if(!birth.val()){
				alert('생년월일을 입력해주세요.');
				return false;
			}
			if(!chk(regExpBirth, birth, "")){
				alert('생년월일은 6자리로 올바르게 입력해주세요.');
				return false;
			}
			if(!phone.val()){
				alert('휴대폰번호를 입력해주세요.');
				return false;
			}
			if(!chk(regExpPhone, phone, "")){
				alert('휴대폰번호에 숫자만 입력해주세요.');
				return false;
			}
			if(!email.val()){
				alert('메일을 받을 이메일을 입력해주세요.');
				return false;
			}
			
			$.ajax({
				
				url:"<%= request.getContextPath() %>/member/gofindemail.do",
				type : "post",
				data : {f_name : name.val()
					, f_birth : birth.val()
					, f_phone : phone.val()
				},						
				success : function(data) {
					if(data == 1){
						$.ajax({
				
							url:"<%=request.getContextPath()%>/member/findinfoauthentication.do",
							type : "post",
							data : {f_email : email.val()
								, f_name : name.val()
								, f_birth : birth.val()
								, f_phone : phone.val()
								, f_type : type.val()
								},						
							success : function(data) {
								alert('메일이 정상적으로 전송되었습니다.')	;					
														
							},error : function(data) {										
								alert('메일 전송에 실패하였습니다.')	;						
							}
				
						});
						window.open("http://www."+emailaddress);
					}else{
						alert('일치하는 회원 정보가 없습니다.');
					}
										
														
				},error : function(data) {										
					alert('에러다');					
				}
				
			});
			
			
			
			
			
			
		}

	</script>
</body>

</html>