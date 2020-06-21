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
							<h2 class="breadcrumb-main-title">비밀번호 찾기</h2>
							<ul>
								<li>- Find User Password</li>
							</ul>
						</div>
					</div>
					<div
						class="col-xl-6 col-lg-6 col-md-6 text-right breadcrumb-unvisible">

						<div class="breadcrumb-image-wrapper">
							<div class="breadcrumb-image ">
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
										<h5 class="h4 text-white font-weight-bold">아래칸에 가입하신
											이메일주소, 이름, 생년월일을 입력해주세요.</h5>
										<h6 class="cta-subtitle">Please enter your email, name,
											and date of birth.</h6>
										<div
											class="single-service-submisstion-form blog-contact  pt-4">
											<div class="submission-form-inner">
												<div class="row justify-content-center">
													<div class="col-xl-8 col-lg-8 col-md-8">
														<input type="text" id="f_email" name="f_email"
															placeholder="Email*">
													</div>
													<div class="col-xl-8 col-lg-8 col-md-8">
														<input type="text" id="f_name" name="f_name"
															placeholder="name*">
													</div>
													<div class="col-xl-8 col-lg-8 col-md-8">
														<input type="text" name="f_birth" id="f_birth"
															placeholder="birth*   (주민번호 앞 6자리)">
													</div>

												</div>
											</div>
										</div>
										<div class="cta-main-button">
											<a onclick="return findPassword()" class="cta-button btn">이메일
												인증</a>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="col-xl-12 col-lg-12 col-md-12 text-center pt-3">
							<div class="single-case-item">
								<h5 class="cases-number pb-3">인증번호를 입력해주세요.</h5>
								<p>Please enter the authentication number.</p>
								<div class="submission-form-inner">

									<div class="row justify-content-center">
										<div class="col-xl-6 col-lg-6 col-md-6">
											<input type="text" id="number" placeholder="인증번호">
										</div>

									</div>

								</div>
							</div>

						</div>
						<input type="hidden" name="f_type" id="f_type" value="password" />
						<div class="col-xl-12 text-center pt-5">
							<div class="cta-main-button">
								<a class="cta-button btn" onclick="return realFindPassword()">비밀번호
									찾기 완료</a>
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
	
	
		var number = "";
	
		function chk(re, e, msg) {

			if (re.test(e.val())) {

				return true;
			} else {
				e.value = "";
				e.focus();
				return false;
			}
		}
	

		function findPassword(){
			
			
			var email = $('#f_email');
			var name = $('#f_name');
			var birth = $('#f_birth');
			var emailSplit = email.val().split('@');
			var emailaddress = emailSplit[1];
			var regExpBirth = /^(?:[0-9]{2}(?:0[1-9]|1[0-2])(?:0[1-9]|[1,2][0-9]|3[0,1]))$/;
			
			
			if(!email.val()){
				alert('가입하신 이메일을 입력해주세요.');
				return false;
			}
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
			
			
			$.ajax({
				
				url:"<%=request.getContextPath()%>/member/gofindpassword.do",
				type : "post",
				data : {
					f_email : email.val()
					, f_name : name.val()
					, f_birth : birth.val()
					
				},						
				success : function(data) {
					if(data == 1){
						$.ajax({
				
							url:"<%=request.getContextPath()%>/member/emailauthentication.do",
							type : "post",
							data : {f_email : email.val() },						
							success : function(data) {
								alert('인증메일이 정상적으로 전송되었습니다.')	;					
								number = data;				
							},error : function(data) {										
								alert('인증메일 전송에 실패하였습니다.')	;						
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
		
		function realFindPassword(){
			
			var email = $('#f_email');
			var name = $('#f_name');
			var birth = $('#f_birth');
			var type = $('#f_type');
			var regExpBirth = /^(?:[0-9]{2}(?:0[1-9]|1[0-2])(?:0[1-9]|[1,2][0-9]|3[0,1]))$/;
			
			
			if(!email.val()){
				alert('가입하신 이메일을 입력해주세요.');
				return false;
			}
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
			if(!$('#number').val()){
				
				alert('인증번호를 입력해주세요.');
				return false;
			}
			
			
			if($('#number').val() == number){
				
				$.ajax({
					
					url:"<%=request.getContextPath()%>/member/findinfoauthentication.do",
					type : "post",
					data : {f_email : email.val()
						, f_name : name.val()
						, f_birth : birth.val()
						, f_type : type.val() },						
					success : function(data) {
						number = data;			
						alert('고객님의 이메일로 비밀번호를 전송하였습니다.');
						location.href="<%=request.getContextPath()%>/member/login.do"
							},
							error : function(data) {
								alert('인증메일 전송에 실패하였습니다.');
							}
						});
			} else {

				alert('인증번호가 일치하지 않습니다.');
			}

		}
	</script>
</body>

</html>