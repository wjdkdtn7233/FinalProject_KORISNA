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
							<h2 class="breadcrumb-main-title">Contact</h2>
							<ul>
								<li><a href="index.html">Home</a></li>
								<li>- Contact</li>
							</ul>
						</div>
					</div>
					<div
						class="col-xl-6 col-lg-6 col-md-6 text-right breadcrumb-unvisible">
						<div class="breadcrumb-image-wrapper">
							<div class="breadcrumb-image">
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
				<div class="row justify-content-center">
					<div class="col-xl-12 col-lg-12">
						<div class="section-title text-center semi-blue-section-title">
							<h5 class="section-single-subtitle">Get In Touch</h5>
							<h2 class="section-heading-title">
								Have Any Question In Your Mind? <span class="section-blue-text">Let
									Us Now, We Are Help You.</span>
							</h2>
						</div>
					</div>
				</div>
				<div class="contact-form-inner">
					<div class="row">
						<div class="col-xl-12 col-lg-12 col-md-12">
							<table class="table" width="100%" cellspacing="0" role="grid"
								style="width: 100%;">
								<thead>
									<tr role="row" class="text-white">
										<th rowspan="2" colspan="2"
											style="background-color: #7C52CC; width: 34px;">Contact</th>
									</tr>
								</thead>

								<tbody>

									<tr role="row" class="text-center">
										<td>제목</td>
										<td><input type="text" id="q_subject"
											placeholder="Subject*" onKeyDown="pressEnter()" /></td>

									</tr>
									<tr role="row" class="text-center">
										<td>내용</td>
										<td><textarea id="q_content" cols="30" rows="10"
												placeholder="Message*" onKeyDown="pressEnter()"></textarea></td>

									</tr>
								</tbody>
							</table>
						</div>
						<div class="col-xl-12 text-center">
							<div class="cta-main-button">
								<a class="cta-button btn" id="sendMessage"
									onclick="sendMessage()">Send Message</a>
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
        	sendMessage();
        }
    }
	
	
	
		function sendMessage(){
			
			if('${sessionScope.loginUser.F_EMAIL}' == ''){
				alert('로그인 후 이용가능한 서비스입니다.');
        		
        		if (confirm("로그인 창으로 이동하시겠습니까?") == true){ //확인
					
					location.href = "<%=request.getContextPath()%>/member/login.do";
               }else{   //취소
               return false;
               }
        		
        		return false;
			}
			
			if(!$('#q_subject').val()){
				alert('제목을 입력해주세요.');
				return false;
			}
			
			if(!$('#q_content').val()){
				alert('문의 내용을 입력해주세요.');
				return false;
			}
			
			if (confirm("위 내용으로 보내시겠습니까?") == true){ //확인
				
				$.ajax({
				
				url: "<%=request.getContextPath()%>/member/contactMember.do",
							type : "post",
							data : {
								f_email : '${sessionScope.loginUser.F_EMAIL}',
								f_name : '${sessionScope.loginUser.F_NAME}',
								q_subject : $('#q_subject').val(),
								q_content : $('#q_content').val()
							},
							success : function(data) {
								if (data == 'success') {
									$('#q_subject').val("");
									$('#q_content').val("");
									alert('QnA 답변은 회원님 이메일로 전송됩니다.');
								}
							},
							error : function(data) {
								alert('QnA 에러 ');
							}

						});

			} else { //취소

				return false;
			}

		}
	</script>
</body>
</html>
