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
							<h2 class="breadcrumb-main-title">이메일 찾기</h2>
							<ul>
								<li>- Find User Email</li>
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
			<div class="container">

				<div class="contact-form-inner">
					<div class="row justify-content-center">

						<div class="col-xl-12 col-lg-12 col-md-12">
							<div class="blog-cta-action">
								<div class="cta-widget-wrapper">
									<div class="cta-widget-content td-cover-bg"
										style="background-image:url(<%=request.getContextPath()%>/resources/assets/img/28283C.png)">
										<h5 class="h4 text-white font-weight-bold">아래칸에 가입하신 이름,
											생년월일, 휴대폰 번호와</h5>
										<h5 class="h4 text-white font-weight-bold">인증번호를 받을 이메일을
											입력해주세요.</h5>
										<h6 class="cta-subtitle">Please enter your name, date of
											birth, mobile phone number, and email to receive your
											authentication number.</h6>

										<div class="single-service-submisstion-form blog-contact pt-4">
											<div class="submission-form-inner">
												<form
													action="<%=request.getContextPath()%>/member/findEmail.do"
													method="post" id="frm">
													<div class="row justify-content-center">
														<div class="col-xl-8 col-lg-8 col-md-8">
															<input type="text" name="f_name" id="f_name"
																placeholder="name*">
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
															<input type="text" id="f_email" name="f_email"
																placeholder="Email*">
														</div>

													</div>
												</form>
											</div>
										</div>
										<input type="hidden" name="f_type" id="f_type" value="email" />
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
								<a class="cta-button btn"
									href="<%=request.getContextPath()%>/member/login.do">로그인하러
									가기</a>
							</div>
						</div>
						<div class="col-xl-6 text-center pt-5">
							<div class="cta-main-button">
								<a class="cta-button btn"
									href="<%=request.getContextPath()%>/member/findpassword.do">비밀번호
									찾기</a>
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
				
				url:"<%=request.getContextPath()%>/member/gofindemail.do",
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
											data : {
												f_email : email.val(),
												f_name : name.val(),
												f_birth : birth.val(),
												f_phone : phone.val(),
												f_type : type.val()
											},
											success : function(data) {
												alert('메일이 정상적으로 전송되었습니다.');

											},
											error : function(data) {
												alert('메일 전송에 실패하였습니다.');
											}

										});
								window.open("http://www." + emailaddress);
							} else {
								alert('일치하는 회원 정보가 없습니다.');
							}

						},
						error : function(data) {
							alert('에러다');
						}

					});

		}
	</script>
</body>

</html>