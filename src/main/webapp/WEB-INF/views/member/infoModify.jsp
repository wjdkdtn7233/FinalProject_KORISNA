<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/assets/css/bootstrap.min.css">

<!-- Owl-Carousel CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/assets/css/owl.carousel.min.css">

<!-- Animate CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/assets/css/animate.min.css">

<!-- Magnific-Popup CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/assets/css/magnific-popup.css">

<!-- Flaticon CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/assets/css/icofont.min.css">

<!-- Fontawesome CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/assets/css/fontawesome.min.css">

<!-- Meanmenu CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/assets/css/meanmenu.css">

<!-- Theme Main CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/style.css">

<!-- Responsive CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/assets/css/responsive.css">

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
	<header class="header-area-wrapper">
		<div class="header-area header-sticky">
			<div class="container">
				<div class="row">
					<div class="col-xl-2 col-lg-2 col-md-4">
						<div class="header-logo">
							<a href="index.html"> <img
								src="<%=request.getContextPath()%>/resources/assets/img/logo.png"
								alt="">
							</a>
						</div>
					</div>
					<div class="col-xl-7 col-lg-7">
						<div class="main-menu">
							<nav id="mobile-menu">
								<ul>
									<li><a href="index.html">Home</a></li>
									<li><a href="about.html">About</a></li>
									<li><a href="cases.html">Cases</a></li>
									<li><a href="prevention.html">Prevention</a></li>
									<li><a href="team.html">Pages</a>
										<ul>
											<li><a href="team.html">Team</a></li>
											<li><a href="faq.html">Faq's</a></li>
											<li><a href="error-page.html">404 Page</a></li>
										</ul></li>
									<li><a href="shop.html">Shop</a></li>
									<li><a href="blog.html">Blog</a></li>
									<li class="active"><a href="contact.html">Contact</a></li>
								</ul>
							</nav>
						</div>
					</div>
					<div class="col-xl-3 col-lg-3 col-md-6 text-right">
						<div class="header-full-right">
							<div class="header-search">
								<a data-toggle="modal" data-target="#search-modal" href="#"
									class="header-search-anchor common-hover-1"><i
									class="icofont-search-2"></i></a>
							</div>
							<div class="cta-btn">
								<a href="contact.html" class="call-button common-hover-1">Contact
									Us</a>
							</div>
						</div>
					</div>
					<div class="col-12">
						<div class="mobile-menu"></div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- Header Area End -->

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
							<h2 class="breadcrumb-main-title">내 정보 및 수정</h2>
							<ul>
								<li>- My Info and Modify</li>
							</ul>
						</div>
					</div>
					<div
						class="col-xl-6 col-lg-6 col-md-6 text-right breadcrumb-unvisible">
						<div class="breadcrumb-image-wrapper">

							<div class="breadcrumb-image">
								<img
									src="<%=request.getContextPath()%>/resources/assets/img/woman-tea.png"
									alt="">
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
				<img
					src="<%=request.getContextPath()%>/resources/assets/img/grey-virus-shape.png"
					alt="">
			</div>
			<div class="contact-virus-shape specialist-virus-shape-2">
				<img
					src="<%=request.getContextPath()%>/resources/assets/img/grey-virus-shape.png"
					alt="">
			</div>
			<div class="contact-virus-shape contact-virus-shape-3">
				<img
					src="<%=request.getContextPath()%>/resources/assets/img/grey-virus-shape.png"
					alt="">
			</div>
			<form action="<%=request.getContextPath()%>/member/personalinformationmodify.do" id="frm" method="post" enctype="multipart/form-data">
			<div class="container">
				<div class="row justify-content-center">

					<div class="col-xl-6 col-lg-6 col-md-6">
						<div class="single-specialist-doctor-wrap page-mar-30">
							<div class="specialist-doctor-image" id="pictureHere">
								<c:if test="${sessionScope.loginUser.F_USERPICTURE == 'basicphoto'}">
								<i class="fas fa-user-circle pt-5" style="font-size: 9rem;"></i>
								</c:if>
								<c:if test="${sessionScope.loginUser.F_USERPICTURE != 'basicphoto'}">
								<img class="h-100" src="<%=request.getContextPath()%>/resources/upload/${sessionScope.loginUser.F_USERPICTURE}"/>
								</c:if>
							</div>
							<label for="userPicture" class="btn btn-warning btn-file">프로필사진
								변경 <input type="file" name="file" id="userPicture"
								accept="image/jpg,image/jpeg,image/png,image/gif,image/bmp"
								style="display: none;" />
							</label>
							<button class="btn btn-warning" type="button" id="basicPicture">기본이미지로
								변경</button>
							<input type="hidden" name="basicPicture" id="basicInput" />
							<div class="specialist-doctor-info">

								<h4 class="doctor-name">[ ${sessionScope.loginUser.F_NAME} ] 님</h4>
								<h6 class="doctor-desg">환영합니다</h6>
							</div>
						</div>
					</div>
					<input type="hidden" id="profileType" name="profileType" value=""/>
					<div class="col-xl-12 col-lg-12">
						<div class="blog-contact-us-wrap">
							<h4>[${sessionScope.loginUser.F_NAME}] 님의 회원 정보</h4>
							<p>Member information</p>
							<div class="single-service-submisstion-form blog-contact">
								<div class="submission-form-inner">
										<div class="row">
											<div class="col-xl-12 col-lg-12 col-md-12">

												<div class="single-case-item">
													<h3 class="cases-title">이메일</h3>
													<h2 class="cases-number">${sessionScope.loginUser.F_EMAIL}</h2>
												</div>
												<div class="single-case-item">
													<p style="color: red;">*비밀번호 변경을 원할 시 입력해주세요.</p>
													<h3 class="cases-title">비밀번호</h3>
													<input type="password" id="f_password" name="f_password" class="w-50"
														placeholder="password*" value="${sessionScope.loginUser.F_PASSWORD}">
													<h3 class="cases-title pt-3">비밀번호 확인</h3>
													<input type="password" id="f_password2" name="f_password2" class="w-50"
														placeholder="repeat password*" value="${sessionScope.loginUser.F_PASSWORD}">
												</div>
												<div class="single-case-item">
													<h3 class="cases-title">이름</h3>
													<h2 class="cases-number">${sessionScope.loginUser.F_NAME}</h2>
												</div>
												<div class="single-case-item">
													<h3 class="cases-title">생년월일</h3>
													<h2 class="cases-number">${sessionScope.loginUser.F_BIRTH}</h2>
												</div>
												<div class="single-case-item">
													<p style="color: red;">*전화번호 변경을 원할 시 입력해주세요.</p>
													<h3 class="cases-title">휴대폰 번호</h3>
													<input type="text"  id="f_phone" name="f_phone" class="w-50"
														placeholder="Phone*   '-' 없이 입력해주세요.'" value="${sessionScope.loginUser.F_PHONE}">
												</div>

												<div class="single-case-item">
													<p style="color: red;">*주소 변경을 원할 시 입력해주세요.</p>
													<h3 class="cases-title">주소</h3>
													<div class="row">
														<div class="col-xl-6 col-lg-6 col-md-6  pt-3">
															<input type="text" name="f_postcode" id="sample4_postcode" value="${sessionScope.loginUser.F_POSTCODE}"
																placeholder="우편번호*">
														</div>
														<div
															class="col-xl-3 col-lg-3 col-md-3  btn-group-vertical">


															<div class="blog-categories">
																<ul>
																	<li><a onclick="execDaumPostcode()">우편번호 찾기</a></li>

																</ul>
															</div>

														</div>
														<div class="col-xl-6 col-lg-6 col-md-6">
															<input type="text" name="f_roadaddress" id="sample4_roadAddress" value="${sessionScope.loginUser.F_ROADADDRESS}"
																placeholder="도로명주소*">
														</div>
														<div class="col-xl-6 col-lg-6 col-md-6">
															<input type="text" name="f_jibernaddress" id="sample4_jibunAddress" value="${sessionScope.loginUser.F_JIBERNADDRESS}"
																placeholder="지번주소*">
														</div>
														<div class="col-xl-7 col-lg-7 col-md-7">
															<span id="guide" style="color: #999; display: none"></span>
														</div>
														<div class="col-xl-7 col-lg-7 col-md-7">
															<input type="text" name="f_detailaddress" id="sample4_detailAddress" placeholder="상세주소*" value="${sessionScope.loginUser.F_DETAILADDRESS}">
														</div>
														<div class="col-xl-3 col-lg-3 col-md-3 pb-3">
															<input type="text" name="f_otheraddress" id="sample4_extraAddress" value="${sessionScope.loginUser.F_OTHERADDRESS}"
																placeholder="참고항목*">
														</div>
													</div>
												</div>

											</div>

											<div class="col-xl-12">

												<p class="blog-contact-button">
													<input type="button" onclick="return modify()" value="수정 완료">
												</p>
											</div>
										</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
			</form>
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
			<img
				src="<%=request.getContextPath()%>/resources/assets/img/purple-virus-shape.png"
				alt="">
		</div>
		<div class="footer-virus-shape footer-virus-shape-2">
			<img
				src="<%=request.getContextPath()%>/resources/assets/img/purple-virus-shape.png"
				alt="">
		</div>
		<div class="container">
			<div class="row">
				<div class="col-xl-4 col-lg-4 col-md-6">
					<div class="single-footer-wrapper footer-1 page-mar-mobile">
						<div class="footer-title">
							<img
								src="<%=request.getContextPath()%>/resources/assets/img/logo2.png"
								alt="">
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
								<img
									src="<%=request.getContextPath()%>/resources/assets/img/blog-1-150x150.jpg"
									alt=""> <a href="blog-details.html" class="blog-info">
									<h5>Corona virus COVID-19 is affecting 210 countries ...</h5> <span
									class="date-footer"><i class="far fa-calendar-check"></i>
										April 20, 2020</span>
								</a>
							</div>
							<div class="single-footer-blog">
								<img
									src="<%=request.getContextPath()%>/resources/assets/img/blog-2-150x150.jpg"
									alt=""> <a href="blog-details.html" class="blog-info">
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

	<di v class="site-copyright-wrapper">
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
	<script
		src="<%=request.getContextPath()%>/resources/assets/js/jquery-1.12.4.min.js"></script>

	<!-- Popper JS -->
	<script
		src="<%=request.getContextPath()%>/resources/assets/js/popper.min.js"></script>

	<!-- Boostrap JS -->
	<script
		src="<%=request.getContextPath()%>/resources/assets/js/bootstrap.min.js"></script>

	<!-- Owl-Carousel JS -->
	<script
		src="<%=request.getContextPath()%>/resources/assets/js/owl.carousel.min.js"></script>

	<!-- Meanmenu JS -->
	<script
		src="<%=request.getContextPath()%>/resources/assets/js/jquery.meanmenu.js"></script>

	<!-- Wow JS -->
	<script
		src="<%=request.getContextPath()%>/resources/assets/js/wow.min.js"></script>

	<!-- ScrollUp JS -->
	<script
		src="<%=request.getContextPath()%>/resources/assets/js/jquery.scrollUp.min.js"></script>

	<!-- Magnific-Popup JS -->
	<script
		src="<%=request.getContextPath()%>/resources/assets/js/jquery.magnific-popup.min.js"></script>

	<!-- Theme-Main JS -->
	<script
		src="<%=request.getContextPath()%>/resources/assets/js/main.js"></script>
	<script
		src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
		function execDaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

							// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var roadAddr = data.roadAddress; // 도로명 주소 변수
							var extraRoadAddr = ''; // 참고 항목 변수

							// 법정동명이 있을 경우 추가한다. (법정리는 제외)
							// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							if (data.bname !== ''
									&& /[동|로|가]$/g.test(data.bname)) {
								extraRoadAddr += data.bname;
							}
							// 건물명이 있고, 공동주택일 경우 추가한다.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								extraRoadAddr += (extraRoadAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
							if (extraRoadAddr !== '') {
								extraRoadAddr = ' (' + extraRoadAddr + ')';
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('sample4_postcode').value = data.zonecode;
							document.getElementById("sample4_roadAddress").value = roadAddr;
							document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

							// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
							if (roadAddr !== '') {
								document.getElementById("sample4_extraAddress").value = extraRoadAddr;
							} else {
								document.getElementById("sample4_extraAddress").value = '';
							}

							var guideTextBox = document.getElementById("guide");
							// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
							if (data.autoRoadAddress) {
								var expRoadAddr = data.autoRoadAddress
										+ extraRoadAddr;
								guideTextBox.innerHTML = '(예상 도로명 주소 : '
										+ expRoadAddr + ')';
								guideTextBox.style.display = 'block';

							} else if (data.autoJibunAddress) {
								var expJibunAddr = data.autoJibunAddress;
								guideTextBox.innerHTML = '(예상 지번 주소 : '
										+ expJibunAddr + ')';
								guideTextBox.style.display = 'block';
							} else {
								guideTextBox.innerHTML = '';
								guideTextBox.style.display = 'none';
							}
							
							$('#sample4_detailAddress').val("");
						}
					}).open();
		}
	</script>

	<script>
		//프로필사진 건들지 않았을때 
		$('#profileType').val("${sessionScope.loginUser.F_USERPICTURE}");
		console.log("${sessionScope.loginUser.F_USERPICTURE}");
		$('#userPicture').on(
				'change',
				function(e) {
					$('#profileType').val("userphoto");
					//유저가 프로필 버튼을 눌러 사진으로 바꿔주면 프로필 타입에 userphoto 라는 값을 넣어서 url로 보내준다.
					var get_file = e.target.files;

					var pathpoint = get_file[0].name.lastIndexOf('.');

					var filepoint = get_file[0].name.substring(pathpoint + 1,
							get_file[0].name.length);

					var filetype = filepoint.toLowerCase();

					console.log(filetype);

					if (filetype == 'jpg' || filetype == 'gif'
							|| filetype == 'png' || filetype == 'jpeg'
							|| filetype == 'bmp') {

						// 정상적인 이미지 확장자 파일인 경우
						console.log("true");
					} else {
						alert('이미지파일만 첨부가능합니다.')
					}

					var image = document.createElement('img');

					var reader = new FileReader();

					/* reader 시작시 함수 구현 */
					reader.onload = (function(aImg) {
						console.log(1);

						return function(e) {
							console.log(3);
							/* base64 인코딩 된 스트링 데이터 */
							aImg.src = e.target.result
							console.log($('userPicture').val());
						}
					})(image)

					if (get_file) {
						/* 
						    get_file[0] 을 읽어서 read 행위가 종료되면 loadend 이벤트가 트리거 되고 
						    onload 에 설정했던 return 으로 넘어간다.
						    이와 함게 base64 인코딩 된 스트링 데이터가 result 속성에 담겨진다.
						 */
						reader.readAsDataURL(get_file[0]);
						console.log(2);
					}
					//이미지를 넣어주면 기본이미지의 value값은 초기화
					$('#basicInput').val("");
					//이미지가 보여지는 곳에 원래 사진 삭제
					$('#pictureHere').children().eq(0).remove();
					//이미지 모양 클래스 추가

					image.setAttribute('class', 'h-100');
					//이미지 보여지는 공간에 업로드한 이미지 넣기

					$('#pictureHere').prepend(image);
					//$('#pictureHere').append("<div class='specialist-doctor-social-link'  onclick='onclick=document.all.file.click()'><input type='file' name='file'  accept='image/jpg,image/jpeg,image/png,image/gif,image/bmp' id='file' style='display:none'/></div>");

				});

		//기본이미지 변경 버튼 눌렀을떄
		$('#basicPicture')
				.on(
						'click',
						function() {
							//기본이미지 버튼을 누르면 프로필 타입에 basicphoto 라는 값을 넣어서 url로 보내준다.
							$('#profileType').val("basicphoto");
							//첨부파일에 있는 파일 리스트 초기화 - 이거 안하면 기본이미지 버튼 눌렀다가 원래박혔던 사진 넣을라해도 안넣어짐 
							$('#userPicture').val("");
							//이미지가 보여지는 곳에 원래 사진 삭제
							$('#pictureHere').html("");
							//기본이미지 넣기
							$('#pictureHere')
									.html(
											'<i class="fas fa-user-circle pt-5" style="font-size:9rem;"  ></i>');
							//유저가 기본이미지로 정했다는 값 서블릿으로 넘겨주기
							$('#basicInput').val("default-image");

						});
		
		
	</script>
	
	<script>
	
	//유효성 검사 함수
		function chk(re, e, msg) {

				if (re.test(e.val())) {

					return true;
				} else {
					e.value = "";
					e.focus();
					return false;
				}
		}
		
	
		function modify(){
			
			
			var password = $('#f_password');
			var password2 = $('#f_password2');
			var phone = $('#f_phone');
			var postCode = $('#sample4_postcode');
			var detailAddress = $('#sample4_detailAddress');
			
			//휴대폰번호 숫자만 가능한 표현식
			var regExpPhone = /^[0-9]+$/;
			//비밀번호 8자리 이상 16자리 미만
			var regExpPw = /(?=.*\d{1,16})(?=.*[~`!@#$%\^&*()-+=]{1,16})(?=.*[a-zA-Z]{1,16}).{8,16}$/;
			
			
			if(!password.val() || !password2.val()){
				alert('비밀번호를 입력해주세요.');
				return false;
			}
			if(!chk(regExpPw, password, "")){
				alert('비밀번호는 숫자,영문,특수문자 포함 8자리 이상 16자리 미만으로 입력해주세요.');
				return false;
			}
			if(!chk(regExpPw, password2, "")){
				alert('비밀번호는 숫자,영문,특수문자 포함 8자리 이상 16자리 미만으로 입력해주세요.');
				return false;
			}
			if(!password.val() != !password2.val()){
				alert('비밀번호가 일치하지않습니다.');
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
			if(!postCode.val() || !detailAddress.val()){
				alert('주소를 입력해주세요.');
				return false;
			}
			
			
			
			$('#frm').submit();
		}
	
	</script>
</body>
</html>
