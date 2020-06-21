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
							<h2 class="breadcrumb-main-title">개인 정보 동의</h2>
							<ul>
								<li>- Personal information consent</li>
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
				<div class="row justify-content-center align-middle">

					<div class="col-xl-12 col-lg-12">
						<div class="section-title text-center semi-blue-section-title">

							<h5 class="section-single-subtitle">회원가입을 위하여 개인정보활용에
								동의해주세요.</h5>
						</div>
					</div>

				</div>
				<div class="contact-form-inner">
					<div class="row justify-content-center">
						<div class="col-xl-5 col-lg-5 col-md-5 pb-3">
							<div class="blog-categories">
								<ul>
									<li><a class="text-primary text-center" target="_blank"
										href="http://www.law.go.kr/lsInfoP.do?lsiSeq=167388&efYd=20150421#0000">'정보통신망법'
											바로가기</a></li>
								</ul>
							</div>
						</div>
						<div class="col-xl-5 col-lg-5 col-md-5 pb-3">
							<div class="blog-categories">
								<ul>
									<li><a class="text-primary text-center" target="_blank"
										href="http://www.law.go.kr/lsInfoP.do?lsiSeq=173223&efYd=20150724#0000">'개인정보보호법'
											바로가기</a></li>
								</ul>
							</div>
						</div>
						<form action="<%=request.getContextPath()%>/member/sendemail.do"
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
							<div class="row">
								<div class="col-xl-12 col-lg-12 col-md-10 text-left">
									<div class="single-protective-measure-item-2 page-mar-30">
										<h4 class="protective-title">개인정보 수집 ‧ 이용 ‧ 제공 동의서</h4>
										<p class="text-left">본인은 귀사에 회원가입서를 제출함에 따라 [개인정보 보호법]
											제15조 및 제17조에 따라 아래의 내용으로 개인정보를 수집, 이용 및 제공하는데 동의합니다.</p>
										<p class="text-left">□ 개인정보의 수집 및 이용에 관한 사항</p>
										<p class="text-left">- 수집하는 개인정보 항목 (회원가입 양식 내용 일체) : 성명,
											생년월일, 전화번호, 주소, 이메일 등 일체</p>
										<p class="text-left">□ 개인정보의 보관 및 이용 기간</p>
										<p class="text-left">- 귀하의 개인정보를 다음과 같이 보관하며, 수집, 이용 및
											제공목적이 달성된 경우 [개인정보 보호법] 제21조에 따라 처리합니다.</p>
									</div>
								</div>

								<div class="col-xl-6 col-lg-6 col-md-6 pb-5">
									<div class="custom-control custom-checkbox">
										<input type="checkbox" id="jb-checkbox1"
											class="custom-control-input"> <label
											class="custom-control-label" for="jb-checkbox1">동의</label>
									</div>

								</div>

								<div class="col-xl-12 col-lg-12 col-md-10">
									<div class="single-protective-measure-item-2 page-mar-30">
										<h4 class="protective-title">이용 목적 ‧ 거부할 권리 및 동의</h4>
										<p class="text-left">□ 수집․이용목적</p>
										<p class="text-left">- KORISNA 사이트를 원활히 이용하기 위한 목적</p>
										<p class="text-left">□ 동의를 거부할 권리 및 동의를 거부할 경우의 불이익</p>
										<p class="text-left">- 귀하는 위 사항에 대하여 동의를 거부할 수 있습니다. 다만, 위
											개인정보의 수집·이용에 관한 동의는 귀사의 사이트 이용을 위하여 필수적이므로, 위 사항에 동의하여야만 귀사의
											회원이 될 수 있음.</p>
										<p class="text-left"></p>
										<p class="text-left"></p>
									</div>
								</div>
								<div class="col-xl-6 col-lg-6 col-md-6">
									<div class="custom-control custom-checkbox">
										<input type="checkbox" id="jb-checkbox2"
											class="custom-control-input"> <label
											class="custom-control-label" for="jb-checkbox2">동의</label>
									</div>

								</div>

							</div>
						</form>
						<div class="col-xl-12 col-lg-12 col-md-12  text-center py-5">
							<div class="blog-categories" id="allPass">
								<ul>
									<li><a>전체 동의 하기</a></li>
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
		document.getElementById('allPass').addEventListener('click',function() {
					if (!($('#jb-checkbox1').is(':checked'))
							|| !($('#jb-checkbox2').is(':checked'))) {
						$('#jb-checkbox1').prop('checked', true);
						$('#jb-checkbox2').prop('checked', true);
					} else {
						$('#jb-checkbox1').prop('checked', false);
						$('#jb-checkbox2').prop('checked', false);
					}

				})

		function boxCheck() {
			if (($('#jb-checkbox1').is(':checked'))
					&& ($('#jb-checkbox2').is(':checked'))) {
				$('#frm').submit();
			} else {
				alert('동의에 체크해주세요.')
			}
		}

		//check 안됬을때 안넘어가게끔 로직 짜야됨
	</script>
</body>

</html>