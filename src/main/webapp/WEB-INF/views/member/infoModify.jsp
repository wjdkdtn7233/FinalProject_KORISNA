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
							<h2 class="breadcrumb-main-title">Profile</h2>
							<ul>
								<li><a href="<%=request.getContextPath()%>/index/index.do">Home</a></li>
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
			<form
				action="<%=request.getContextPath()%>/member/personalinformationmodify.do"
				id="frm" method="post" enctype="multipart/form-data">
				<div class="container">
					<div class="row justify-content-center">

						<div class="col-xl-6 col-lg-6 col-md-6">
							<div class="single-specialist-doctor-wrap page-mar-30">
								<div class="specialist-doctor-image" id="pictureHere">
									<img class="h-100"
										src="<%=request.getContextPath()%>/resources/upload/${sessionScope.loginUser.F_USERPICTURE}" />
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

									<h4 class="doctor-name">[ ${sessionScope.loginUser.F_NAME}
										] 님</h4>
									<h6 class="doctor-desg">환영합니다</h6>
								</div>
							</div>
						</div>
						<input type="hidden" id="profileType" name="profileType" value="" />
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
													<input type="password" id="f_password" name="f_password"
														class="w-50" placeholder="password*"
														value="${sessionScope.loginUser.F_PASSWORD}">
													<h3 class="cases-title pt-3">비밀번호 확인</h3>
													<input type="password" id="f_password2" name="f_password2"
														class="w-50" placeholder="repeat password*"
														value="${sessionScope.loginUser.F_PASSWORD}">
													<h5 class="pt-3" id="pwCheckInfo"></h5>
												</div>
												<div class="single-case-item">
													<h3 class="cases-title">이름</h3>
													<h2 class="cases-number">${sessionScope.loginUser.F_NAME}</h2>
												</div>
												<div class="single-case-item">
													<p style="color: red;">*닉네임 변경을 원할 시 입력해주세요.</p>
													<h3 class="cases-title">닉네임</h3>
													<input type="text" id="f_nick" name="f_nick" class="w-50"
														placeholder="NickName* "
														value="${sessionScope.loginUser.F_NICK}">
												</div>
												<div class="single-case-item">
													<h3 class="cases-title">생년월일</h3>
													<h2 class="cases-number">${sessionScope.loginUser.F_BIRTH}</h2>
												</div>
												<div class="single-case-item">
													<p style="color: red;">*전화번호 변경을 원할 시 입력해주세요.</p>
													<h3 class="cases-title">휴대폰 번호</h3>
													<input type="text" id="f_phone" name="f_phone" class="w-50"
														placeholder="Phone*   '-' 없이 입력해주세요.'"
														value="${sessionScope.loginUser.F_PHONE}">
												</div>


												<div class="single-case-item">
													<p style="color: red;">*주소 변경을 원할 시 입력해주세요.</p>
													<h3 class="cases-title">주소</h3>
													<div class="row">
														<div class="col-xl-6 col-lg-6 col-md-6  pt-3">
															<input type="text" name="f_postcode"
																id="sample4_postcode"
																value="${sessionScope.loginUser.F_POSTCODE}"
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
															<input type="text" name="f_roadaddress"
																id="sample4_roadAddress"
																value="${sessionScope.loginUser.F_ROADADDRESS}"
																placeholder="도로명주소*">
														</div>
														<div class="col-xl-6 col-lg-6 col-md-6">
															<input type="text" name="f_jibernaddress"
																id="sample4_jibunAddress"
																value="${sessionScope.loginUser.F_JIBERNADDRESS}"
																placeholder="지번주소*">
														</div>
														<div class="col-xl-7 col-lg-7 col-md-7">
															<span id="guide" style="color: #999; display: none"></span>
														</div>
														<div class="col-xl-7 col-lg-7 col-md-7">
															<input type="text" name="f_detailaddress"
																id="sample4_detailAddress" placeholder="상세주소*"
																value="${sessionScope.loginUser.F_DETAILADDRESS}">
														</div>
														<div class="col-xl-3 col-lg-3 col-md-3 pb-3">
															<input type="text" name="f_otheraddress"
																id="sample4_extraAddress"
																value="${sessionScope.loginUser.F_OTHERADDRESS}"
																placeholder="참고항목*">
														</div>
													</div>
												</div>

											</div>

											<div class="col-xl-12">

												<p class="blog-contact-button">
													<input type="button" onclick="return modify()"
														value="수정 완료">
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
		$('#basicPicture').on('click',function() {
							//기본이미지 버튼을 누르면 프로필 타입에 basicphoto 라는 값을 넣어서 url로 보내준다.
							$('#profileType').val("basicphoto");
							//첨부파일에 있는 파일 리스트 초기화 - 이거 안하면 기본이미지 버튼 눌렀다가 원래박혔던 사진 넣을라해도 안넣어짐 
							$('#userPicture').val("");
							//이미지가 보여지는 곳에 원래 사진 삭제
							$('#pictureHere').html("");
							//기본이미지 넣기
							$('#pictureHere').html('<img class="h-100" src="<%=request.getContextPath()%>/resources/upload/basicphoto.png"/>');
							//유저가 기본이미지로 정했다는 값 서블릿으로 넘겨주기
							$('#basicInput').val("default-image");

						});
	</script>

	<script>
		var passwordCheckFlag = true;
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

		$('#f_password')
				.keyup(
						function() {
							var regExpPw = /(?=.*\d{1,16})(?=.*[~`!@#$%\^&*()-+=]{1,16})(?=.*[a-zA-Z]{1,16}).{8,16}$/;
							var password = $('#f_password');
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
			if ($('#f_password').val() == $('#f_password2').val()) {
				$('#pwCheckInfo').html('비밀번호 일치').css('color', 'green');
				passwordCheckFlag = true;
			} else {
				$('#pwCheckInfo').html('비밀번호 불일치').css('color', 'red');
				passwordCheckFlag = false;
			}
		});

		function modify() {

			var password = $('#f_password');
			var password2 = $('#f_password2');
			var phone = $('#f_phone');
			var postCode = $('#sample4_postcode');
			var detailAddress = $('#sample4_detailAddress');
			var nickName = $('#f_nick');
			//휴대폰번호 숫자만 가능한 표현식
			var regExpPhone = /^[0-9]+$/;
			//비밀번호 8자리 이상 16자리 미만
			var regExpPw = /(?=.*\d{1,16})(?=.*[~`!@#$%\^&*()-+=]{1,16})(?=.*[a-zA-Z]{1,16}).{8,16}$/;

			if (!password.val() || !password2.val()) {
				alert('비밀번호를 입력해주세요.');
				return false;
			}
			if (!passwordCheckFlag) {
				alert('비밀번호를 확인해주세요.');
				return false;
			}
			if (!passwordCheckFlag) {
				alert('비밀번호를 확인해주세요.');
				return false;
			}
			if (!password.val() != !password2.val()) {
				alert('비밀번호가 일치하지않습니다.');
				return false;
			}
			if (!nickName.val()) {
				alert('닉네임을 입력해주세요.');
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

			$('#frm').submit();
		}
	</script>

</body>
</html>
