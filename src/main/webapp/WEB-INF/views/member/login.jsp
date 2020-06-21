<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
							<input type="text" id="email" placeholder="Email*" onKeyDown="pressEnter()">
						</div>
						<div class="col-xl-10 col-lg-10 col-md-10 pb-3">
							<input type="password" id="password" placeholder="password*" onKeyDown="pressEnter()">
						</div>
						<div class="col-xl-6 text-right pr-5">
							<div class="cta-main-button">
								<a class="cta-button btn" id="gogo" >Login</a>
							</div>
						</div>
						<div class="col-xl-6 text-left">
							<div class="cta-main-button">
								<a class="cta-button btn" style="background-color:yellow;"  onclick="kakaoLogin()">kakao Login</a>
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
		

    function pressEnter(){
        if(event.keyCode == 13){
        	$('#f_email').val($('#email').val());
			$('#f_password').val($('#password').val());
			$('#frm').submit();
        }
    }


	
		$('#gogo').click(function(){
			
			$('#f_email').val($('#email').val());
			$('#f_password').val($('#password').val());
			$('#frm').submit();
			
		});
		
		
		
		
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
							console.log(res.properties.id);
							console.log(res.properties.nickname);
							console.log(res.kakao_account.email);
							console.log(res.id);
							var kakaoToken = res.id;
							var kakaoNick = res.properties.nickname;
							var kakaoEmail = res.kakao_account.email;
							
							$.ajax({
								
								url:"<%=request.getContextPath()%>/member/idcheck.do",
								type : "post",
								data : {f_email : res.kakao_account.email},
								success : function(data) {
									if (data == "ok") {
										alert("회원가입을 위해 이동합니다.")
										location.href="<%=request.getContextPath()%>/member/kakaoreg.do?f_email=" + kakaoEmail + "&f_kakaotoken=" + kakaoToken + "&f_nick=" + kakaoNick;
										
									} else {
										
										location.href="<%=request.getContextPath()%>/member/kakaologin.do?f_email=" + kakaoEmail + "&f_kakaotoken=" + kakaoToken;
									}

								},error : function(data) {
									alert('아이디 체크 오류');

								}
						    });
							

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
