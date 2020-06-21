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
							<h2 class="breadcrumb-main-title">회 원 가 입</h2>
							<ul>
								<li>- Sign up for membership</li>
							</ul>
						</div>
					</div>
					<div
						class="col-xl-6 col-lg-6 col-md-6 text-right breadcrumb-unvisible">
						<div class="breadcrumb-image-wrapper">
							<div class="breadcrumb-image">
								<img
									src="<%=request.getContextPath()%>/resources/assets/img/home-slider-man-shape.png"
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

							<h5 class="section-heading-title">
								회원가입을 위해 개인정보를 작성해주세요.<span class="section-blue-text"></span>
							</h5>
						</div>
					</div>
				</div>
				<div class="contact-form-inner">

					<form action="<%=request.getContextPath()%>/member/infoconsent.do"
						method="post" id="frm">
						<div class="row">


							<div
								class="col-xl-12 col-lg-12 col-md-12 align-items-center pb-3">
								<div class="col">
									<h5 class="section-single-subtitle">이메일 및 비밀번호</h5>
								</div>
							</div>

							<div class="col-xl-9 col-lg-9 col-md-9">
								<input type="email" id="f_email" name="f_email"
									placeholder="Email*  해당 이메일로 인증을 위해 정확히 입력해주세요."> <input
									type="hidden" id="f_kakaotoken" name="f_kakaotoken" value="no" />
							</div>
							<div class="col-xl-3 col-lg-3 col-md-3">
								<span id="idcheckInfo"></span>
							</div>
							<div class="col-xl-9 col-lg-9 col-md-9">
								<input type="password" id="f_password" name="f_password"
									placeholder="password*">
							</div>
							<div class="col-xl-9 col-lg-9 col-md-9 pt-4">
								<input type="password" id="f_password2" name="f_password2"
									placeholder="repeat password*">
							</div>
							<div class="col-xl-3 col-lg-3 col-md-3">
								<span id="pwCheckInfo"></span>
							</div>
							<div
								class="col-xl-12 col-lg-12 col-md-12 align-items-center pt-4 pb-3">
								<div class="col">
									<h5 class="section-single-subtitle">이름</h5>
								</div>
							</div>
							<div class="col-xl-9 col-lg-9 col-md-9">
								<input type="text" id="f_name" name="f_name" placeholder="Name*">
							</div>
							<div class="col-xl-3 col-lg-3 col-md-3"></div>
							<div
								class="col-xl-12 col-lg-12 col-md-12 align-items-center pt-3 pb-3">
								<div class="col">
									<h5 class="section-single-subtitle">닉네임</h5>
								</div>
							</div>
							<div class="col-xl-9 col-lg-9 col-md-9">
								<input type="text" id="f_nick" name="f_nick"
									placeholder="NickName*">
							</div>
							<div class="col-xl-3 col-lg-3 col-md-3"></div>
							<div
								class="col-xl-12 col-lg-12 col-md-12 align-items-center pb-3">
								<div class="col">
									<h5 class="section-single-subtitle">생년월일</h5>
								</div>
							</div>

							<div class="col-xl-9 col-lg-9 col-md-9">
								<input type="text" id="f_birth" name="f_birth"
									placeholder="birth* (6자리)">
							</div>


							<div class="col-xl-9 col-lg-9 col-md-9">
								<input type="text" id="f_phone" name="f_phone"
									placeholder="Phone*    '-' 없이 입력해주세요.">
							</div>
							<div class="col-xl-3 col-lg-3 col-md-3"></div>

							<div class="col-xl-12 col-lg-12 col-md-12 align-items-center">
								<div class="col">
									<h5 class="section-single-subtitle">주소</h5>
								</div>
							</div>
							<div class="col-xl-6 col-lg-6 col-md-6  pt-3">
								<input type="text" name="f_postcode" id="sample4_postcode"
									placeholder="우편번호*" readonly>
							</div>
							<div class="col-xl-3 col-lg-3 col-md-3  btn-group-vertical">


								<div class="blog-categories">
									<ul>
										<li><a onclick="execDaumPostcode()">우편번호 찾기</a></li>

									</ul>
								</div>

							</div>
							<div class="col-xl-6 col-lg-6 col-md-6">
								<input type="text" name="f_roadaddress" id="sample4_roadAddress"
									placeholder="도로명주소*" readonly>
							</div>
							<div class="col-xl-6 col-lg-6 col-md-6">
								<input type="text" name="f_jibernaddress"
									id="sample4_jibunAddress" placeholder="지번주소*" readonly>
							</div>
							<div class="col-xl-7 col-lg-7 col-md-7">
								<span id="guide" style="color: #999; display: none"></span>
							</div>
							<div class="col-xl-7 col-lg-7 col-md-7">
								<input type="text" name="f_detailaddress"
									id="sample4_detailAddress" placeholder="상세주소*">
							</div>
							<div class="col-xl-3 col-lg-3 col-md-3 pb-3">
								<input type="text" name="f_otheraddress"
									id="sample4_extraAddress" placeholder="참고항목*" readonly>
							</div>

							<div class="col-xl-12 text-center">
								<div class="cta-main-button">
									<a onclick="return checkReg()" class="cta-button btn">다음
										페이지</a>
								</div>
							</div>

						</div>
					</form>
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

	<script
		src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
		function execDaumPostcode() {
			console.log($('#f_phone').val());
			new daum.Postcode({
				oncomplete: function (data) {
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

					// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var roadAddr = data.roadAddress; // 도로명 주소 변수
					var extraRoadAddr = ''; // 참고 항목 변수

					// 법정동명이 있을 경우 추가한다. (법정리는 제외)
					// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
					if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
						extraRoadAddr += data.bname;
					}
					// 건물명이 있고, 공동주택일 경우 추가한다.
					if (data.buildingName !== '' && data.apartment === 'Y') {
						extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
					}
					// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
					if (extraRoadAddr !== '') {
						extraRoadAddr = ' (' + extraRoadAddr + ')';
					}

					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById('sample4_postcode').value = data.zonecode;
					document.getElementById("sample4_roadAddress").value = roadAddr;
					if(data.jibunAddress == ''){
						document.getElementById("sample4_jibunAddress").value = data.autoJibunAddress;
					}else{
						document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
					}

					// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
					if (roadAddr !== '') {
						document.getElementById("sample4_extraAddress").value = extraRoadAddr;
					} else {
						document.getElementById("sample4_extraAddress").value = '';
					}

					var guideTextBox = document.getElementById("guide");
					// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
					if (data.autoRoadAddress) {
						var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
						guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
						guideTextBox.style.display = 'block';

					} else if (data.autoJibunAddress) {
						var expJibunAddr = data.autoJibunAddress;
						guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
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
	
		var idCheckFlag = false;
		var passwordCheckFlag = false;
		//아이디 중복 체크
		/* $('#f_email').click(function(){
			$('#idcheckInfo').html("");
		}); */
		
		//유효성 검사 함수
		function chk(re, e, msg){

			if (re.test(e.val())){

				return true;
			} else {
				e.value = "";
				e.focus();
				return false;
			}
		}
	
		$('#f_email').keyup(function(){
			
			
			var regExpEmail = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
			
			//이메일 형식인지 검사
			if (!chk(regExpEmail, $('#f_email'), "")) {
				$('#idcheckInfo').html(
				'이메일 형식에<br> 맞게 작성해주세요.').css(
				'color', 'red');
				idCheckFlag = false;
				return;
			}
			
			
			$.ajax({
				
				url:"<%=request.getContextPath()%>/member/idcheck.do",
										type : "post",
										data : {
											f_email : $('#f_email').val()
										},

										success : function(data) {
											if (data == "ok") {
												$('#idcheckInfo').html(
														'사용 가능한<br> 이메일입니다.')
														.css('color', 'green');
												idCheckFlag = true;
											} else {
												$('#idcheckInfo').html(
														'이미 사용중인<br> 이메일입니다.')
														.css('color', 'red');
												idCheckFlag = false;
											}

										},
										error : function(data) {
											$('#idcheckInfo').html('에러 입니다.')
													.css('color', 'red');
											idCheckFlag = false;

										}
									});

						});

		//비밀번호 유효성 검사 / 일치여부
		/* $('#f_password').click(function() {
			$('#pwCheckInfo').html('');
		});
		$('#f_password2').click(function() {
			$('#pwCheckInfo').html('');
		}); */
		$('#f_password')
				.keyup(
						function() {

							var password = $('#f_password');

							//비밀번호 8자리 이상 16자리 미만
							var regExpPw = /(?=.*\d{1,16})(?=.*[~`!@#$%\^&*()-+=]{1,16})(?=.*[a-zA-Z]{1,16}).{8,16}$/;

							if (!chk(regExpPw, password, "")) {
								$('#pwCheckInfo')
										.html(
												'비밀번호는 영문,숫자,특수기호를 포함한 <br>8자리 이상 16자리 내로 입력해주세요.')
										.css('color', 'red');
								passwordCheckFlag = false;
								return;
							}
							if ($('#f_password').val() == $('#f_password2')
									.val()) {
								$('#pwCheckInfo').html('비밀번호 일치').css('color',
										'green');
								passwordCheckFlag = true;
							} else {
								$('#pwCheckInfo').html('비밀번호 불일치').css('color',
										'red');
								passwordCheckFlag = false;
							}
						});

		$('#f_password2').keyup(function() {
			var password2 = $('#f_password2');

			if ($('#f_password').val() == $('#f_password2').val()) {
				$('#pwCheckInfo').html('비밀번호 일치').css('color', 'green');
				passwordCheckFlag = true;
			} else {
				$('#pwCheckInfo').html('비밀번호 불일치').css('color', 'red');
				passwordCheckFlag = false;
			}

		});

		function checkReg() {
			//?=.* 어느자리에 있든? 
			var email = $('#f_email');
			var password = $('#f_password');
			var password2 = $('#f_password2');
			var name = $('#f_name');
			var birth = $('#f_birth');
			var phone = $('#f_phone');
			var postCode = $('#sample4_postcode');
			var detailAddress = $('#sample4_detailAddress');
			var nick = $('#f_nick');
			//생년월일 정규 표현식
			var regExpBirth = /^(?:[0-9]{2}(?:0[1-9]|1[0-2])(?:0[1-9]|[1,2][0-9]|3[0,1]))$/;
			//휴대폰번호 숫자만 가능한 표현식
			var regExpPhone = /^[0-9]+$/;

			//빈칸이 있으면 못넘어가게 설정
			if (!email.val()) {
				alert('이메일을 입력해주세요.');
				return false;
			}
			if (!password.val() || !password2.val()) {
				alert('비밀번호를 입력해주세요.');
				return false;
			}
			if (!name.val()) {
				alert('성함을 입력해주세요.');
				return false;
			}
			if (!nick.val()) {
				alert('닉네임을 입력해주세요.');
				return false;
			}
			if (!birth.val()) {
				alert('생년월일을 입력해주세요.');
				return false;
			}
			if (!chk(regExpBirth, birth, "")) {
				alert('생년월일은 6자리로  올바르게 입력해주세요.');
				return false;
			}
			if (!phone.val()) {
				alert('휴대폰번호를 입력해주세요.');
				return false;
			}
			if (!chk(regExpPhone, phone, "")) {
				alert('휴대폰번호에 숫자만 입력해주세요.');
				return false;
			}
			if (!postCode.val() || !detailAddress.val()) {
				alert('주소를 입력해주세요.');
				return false;
			}
			//비밀번호 검사를 끝냈는지
			if (!passwordCheckFlag) {

				alert('비밀번호 확인!');
				return false;
			}

			//아이디 중복확인검사를 끝냈는지
			if (!idCheckFlag) {

				alert('이메일 중복 확인!');
				return false;
			}

			//모든것이 확인되면 넘어간다.
			$('#frm').submit()
		}
	</script>
</body>

</html>