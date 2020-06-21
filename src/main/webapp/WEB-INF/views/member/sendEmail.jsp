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
							<h2 class="breadcrumb-main-title">이메일 인증</h2>
							<ul>
								<li>- Email authentication</li>
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
										<h6 class="cta-subtitle">${member.f_email}로인증메일이 전송됩니다.</h6>
										<h6 class="cta-subtitle">인증번호 확인하러 가기</h6>
										<h3 class="cta-title">↓ press the button ↓</h3>
										<div class="cta-main-button">
											<a href="http://www.${mail}" target="_blank" id="send-Email"
												class="cta-button btn">Let's go</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<form
							action="<%=request.getContextPath()%>/member/joincomplete.do"
							method="post" id="frm">
							<input type="hidden" name="f_email" value="${member.f_email}" />
							<input type="hidden" name="f_password" value="${member.f_password}" /> 
							<input type="hidden" name="f_name" value="${member.f_name}" />
							<input type="hidden" name="f_nick" value="${member.f_nick}"/> 
							<input type="hidden" name="f_birth" value="${member.f_birth}" /> 
							<input type="hidden" name="f_phone" value="${member.f_phone}" /> 
							<input type="hidden" name="f_postcode" value="${member.f_postcode}" /> 
							<input type="hidden" name="f_roadaddress" value="${member.f_roadaddress}" /> 
							<input type="hidden" name="f_jibernaddress" value="${member.f_jibernaddress}" /> 
							<input type="hidden" name="f_detailaddress" value="${member.f_detailaddress}" /> 
							<input type="hidden" name="f_otheraddress" value="${member.f_otheraddress}" />
							<input type="hidden" name="f_kakaotoken" value="${member.f_kakaotoken}" />
						</form>
						<div class="col-xl-12 col-lg-12 col-md-12 text-center">
							<div class="blog-contact-us-wrap">
								<h4>인증번호를 입력해주세요.</h4>
								<p>Please enter the authentication number.</p>
								<div class="single-service-submisstion-form blog-contact">
									<div class="submission-form-inner">

										<div class="row justify-content-center">
											<div class="col-xl-6 col-lg-6 col-md-6">
												<input id="number" type="text" name="name"
													placeholder="인증번호">
											</div>

										</div>

									</div>
								</div>
							</div>
						</div>

						<div class="col-xl-12 text-center pt-5">
							<div class="cta-main-button">
								<a onclick="return joinComplete()" class="cta-button btn">회원가입
									완료</a>
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
	
		
		var emailNumber = '';
		var numberFlag = false;
		//보낸 인증메일의 인증번호가 사용자가 입력한 번호와 일치하는지 검사
		$('#send-Email').click(function(){
			
			$.ajax({
				
				url:"<%=request.getContextPath()%>/member/emailauthentication.do",
				type : "post",
				data : {f_email : '${member.f_email}'},

				success : function(data) {
					console.log(data);
					emailNumber = data;

				},error : function(data) {

				}

					});

				});

		function joinComplete() {
			console.log($('#number').val());
			console.log(emailNumber);
			if ($('#number').val() == emailNumber) {
				$('#frm').submit();
			} else {
				alert('인증번호를 확인해주세요.');
			}

		}
	</script>
</body>

</html>