<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="en">


<%@ include file="../include/head.jsp"%>

<body>

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
							<h2 class="breadcrumb-main-title">주문 상세 현황</h2>
							<ul>
								<li>- Order Detail Status</li>
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

				<h5 class="section-single-subtitle">주문 상세 현황</h5>
				<hr>
				<br> <br>
				<div class="row  justify-content-center">
					<div class="col-xl-12 col-lg-12 col-md-12">
						<table class="table sunflower" width="100%" cellspacing="0"
							role="grid" style="width: 100%;">
							<thead>
								<tr role="row" class="text-white">
									<th rowspan="6" colspan="6"
										style="background-color: #7C52CC; width: 34px;">${userInfo.O_DATE}
										&nbsp; &nbsp;주문 목록</th>
								</tr>
							</thead>

							<tbody>
								<c:forEach var="orderDetailList" items="${orderDetailList}">
									<tr role="row" class="text-center">
										<td>${orderDetailList.O_DATE}<div><h4 class="sunflower">주문번호</h4>100000${orderDetailList.O_DETAILNO}</div></td>
										<td style="width: 130px;"><img
											style="width: 120px; height: 120px;"
											src="<%=request.getContextPath()%>/resources/product/image/${orderDetailList.P_IMAGE}"></td>
										<td class="statusSpace">
											<div>${orderDetailList.P_NAME}</div>
											<div class="orderStatus" style="color: red;">${orderDetailList.O_STATUS}</div>
											<c:if
												test="${orderDetailList.O_STATUS == '주문취소' || orderDetailList.O_STATUS == '반품처리'}">
												<div>
													<button class="btn cancleInfo"
														style="background-color: red; font-size: 20px;"
														data-toggle="modal" data-target="#orderCancleInfo-modal">취소
														정보</button>
												</div>
											</c:if> <c:if test="${orderDetailList.O_STATUS == '배송완료'}">
												<div>
													<button class="confirmation btn"
														style="background-color: #7C52CC; font-size: 20px;">구매확정하기</button>
												</div>
											</c:if>
										</td>
										<td><div>
												<span>${orderDetailList.P_PRICE}</span> 원
											</div>
											<div style="font-size: 16px; background-color: #BDFF12;">결제
												방법 : ${orderDetailList.PY_CATEGORY}</div></td>
										<td><span>${orderDetailList.O_COUNT}</span> 개</td>
										<td><span>${orderDetailList.O_PRICE}</span> 원</td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>
					<div class="col-xl-12 col-lg-12 col-md-12 pt-5">
						<table class="table sunflower" width="100%" cellspacing="0"
							role="grid" style="width: 100%;">
							<thead>
								<tr role="row" class="text-black">
									<th rowspan="2" colspan="2" style="width: 34px;">결제 정보</th>
								</tr>
							</thead>

							<tbody>
								<tr role="row">
									<td
										style="background-color: #EAEAEA; border-right-color: black; width: 150px;">
										총 상품 가격</td>
									<td><span>${totalPrice}</span> 원</td>
								</tr>
								<tr role="row">
									<td
										style="background-color: #EAEAEA; border-right-color: black; width: 150px;">
										배송비</td>
									<td>2500원</td>
								</tr>
								<c:set var="sum" value="${totalPrice  + 2500}" />
								<tr role="row">
									<td
										style="background-color: #EAEAEA; border-right-color: black; width: 150px;">
										총 결제 금액</td>
									<td><span>${sum}</span> 원</td>
								</tr>
								<tr role="row">
									<td
										style="background-color: #EAEAEA; border-right-color: black; width: 150px;">
										결제 날짜</td>
									<td>${userInfo.O_DATE}</td>
								</tr>
								<tr role="row">
									<td
										style="background-color: #EAEAEA; border-right-color: black; width: 150px;">
										결제 방법</td>
									<td>${userInfo.PY_CATEGORY}</td>
								</tr>
							</tbody>
						</table>

					</div>
					<div class="col-xl-12 col-lg-12 col-md-12 pt-5">
						<table class="table sunflower" width="100%" cellspacing="0"
							role="grid" style="width: 100%;">
							<thead>
								<tr role="row" class="text-black">
									<th rowspan="2" colspan="2" style="width: 34px;">배송지 정보</th>
								</tr>
							</thead>

							<tbody>

								<tr role="row">
									<td
										style="background-color: #EAEAEA; border-right-color: black; width: 150px;">
										이름</td>
									<td>${userInfo.O_RECEIVER}</td>
								</tr>
								<tr role="row">
									<td
										style="background-color: #EAEAEA; border-right-color: black; width: 150px;">
										배송주소</td>
									<td>${userInfo.O_ADDRESS}</td>
								</tr>
								<tr role="row">
									<td
										style="background-color: #EAEAEA; border-right-color: black; width: 150px;">
										연락처</td>
									<td>${userInfo.O_PHONE}</td>
								</tr>
								<tr role="row">
									<td
										style="background-color: #EAEAEA; border-right-color: black; width: 150px;">
										배송 시 요청 사항</td>
									<td><textarea rows="5" readonly>${userInfo.O_MSG}</textarea></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="col-xl-6 text-right pt-5 sunflower">
						<div class="cta-main-button">
							<a href="<%=request.getContextPath()%>/order/orderlist.do"
								class="cta-button btn">주문 목록</a>
						</div>
					</div>
					<div class="col-xl-6 text-left pt-5 sunflower">
						<div class="cta-main-button">
							<a class="cta-button btn" id="orderCencle" data-toggle="modal"
								data-target="#orderCancle-modal">주문 취소 및 반품</a>
						</div>
					</div>


				</div>


			</div>
		</div>
		<!-- Contact Form Area End -->

		<div class="modal fade sunflower" id="orderCancle-modal" tabindex="-1"
			role="dialog" aria-labelledby="orderCancle-modal" aria-hidden="true">
			<div class="modal-dialog " role="document">
				<div class="modal-content">
					<div class="modal-header">
						<c:if
							test="${userInfo.O_STATUS == '입금확인중' || userInfo.O_STATUS == '배송준비중'}">
							<h4 class="modal-title section-single-subtitle sunflower"
								style="font-size: 30px;">결제 취소</h4>
						</c:if>
						<c:if
							test="${userInfo.O_STATUS != '입금확인중' && userInfo.O_STATUS != '배송준비중'}">
							<h4 class="modal-title section-single-subtitle sunflower"
								style="font-size: 30px;">반품 및 결제 취소</h4>
						</c:if>
						<button type="button" class="close" data-dismiss="modal">×</button>

					</div>
					<div class="modal-body">
						<c:if
							test="${userInfo.O_STATUS == '입금확인중' || userInfo.O_STATUS == '배송준비중'}">
							<p style="font-size: 20px;">
								결제 취소를 위해 취소 사유를 작성해 주세요.<br>
							</p>
						</c:if>
						<c:if
							test="${userInfo.O_STATUS != '입금확인중' && userInfo.O_STATUS != '배송준비중'}">
							<p style="font-size: 20px;">
								반품을 위해 반품 사유를 작성해 주세요.<br>
							</p>
						</c:if>

						<p style="color: red; font-size: 20px;">취소 시 원상복구는 불가능합니다.</p>
						<textarea id="cancleText">
            					</textarea>


						<div class="row pl-2">
							<c:if test="${userInfo.PY_CATEGORY == '무통장입금'}">
								<div class="col-xl-10 col-lg-10 col-md-10 ">
									<p style="font-size: 20px;">환불 받으실 계좌를 입력해주세요.</p>
								</div>
								<div class="col-xl-10 col-lg-10 col-md-10 ">
									<select id="bankName">
										<option value="1">========은행명을 선택하세요========</option>
										<option value="경남은행">경남은행</option>
										<option value="광주은행">광주은행</option>
										<option value="국민은행">국민은행</option>
										<option value="기업은행">기업은행</option>
										<option value="농협중앙회">농협중앙회</option>
										<option value="농협회원조합">농협회원조합</option>
										<option value="대구은행">대구은행</option>
										<option value="도이치은행">도이치은행</option>
										<option value="부산은행">부산은행</option>
										<option value="산업은행">산업은행</option>
										<option value="상호저축은행">상호저축은행</option>
										<option value="새마을금고">새마을금고</option>
										<option value="수협중앙회">수협중앙회</option>
										<option value="신한금융투자">신한금융투자</option>
										<option value="신한은행">신한은행</option>
										<option value="신협중앙회">신협중앙회</option>
										<option value="외환은행">외환은행</option>
										<option value="우리은행">우리은행</option>
										<option value="우체국">우체국</option>
										<option value="전북은행">전북은행</option>
										<option value="제주은행">제주은행</option>
										<option value="카카오뱅크">카카오뱅크</option>
										<option value="케이뱅크">케이뱅크</option>
										<option value="하나은행">하나은행</option>
										<option value="한국씨티은행">한국씨티은행</option>
										<option value="HSBC은행">HSBC은행</option>
										<option value="SC제일은행">SC제일은행</option>
									</select>
								</div>


								<div class="col-xl-10 col-lg-10 col-md-10 ">
									<input type="text" id="account" />
								</div>
							</c:if>
							<c:if
								test="${userInfo.O_STATUS == '입금확인중' || userInfo.O_STATUS == '배송준비중'}">
								<div class="col-xl-10 col-lg-10 col-md-10 ">
									<p style="color: red;">환불은 24시간 이내로 완료됩니다.</p>

								</div>
							</c:if>
							<c:if
								test="${userInfo.O_STATUS != '입금확인중' && userInfo.O_STATUS != '배송준비중'}">
								<div class="col-xl-10 col-lg-10 col-md-10 ">
									<p style="color: red;">환불은 반품된 상품 확인 후 24시간 이내에 완료됩니다.</p>
								</div>
							</c:if>
						</div>


					</div>


					<div class="modal-footer">
						<div class="row">
							<div class="col-xl-6 col-lg-6 col-md-6 pr-3">
								<div class="cta-main-button">
									<a class="cta-button btn" id="cancleOK" data-dismiss="modal">확인</a>
								</div>
							</div>
							<div class="col-xl-6 col-lg-6 col-md-6">
								<div class="cta-main-button">
									<a class="cta-button btn" id="cancleNO" data-dismiss="modal">취소</a>
								</div>
							</div>
						</div>


					</div>


				</div>
			</div>
		</div>

		<div class="modal fade sunflower" id="orderCancleInfo-modal"
			tabindex="-1" role="dialog" aria-labelledby="orderCancleInfo-modal"
			aria-hidden="true">
			<div class="modal-dialog " role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title section-single-subtitle sunflower"
							style="font-size: 30px;">취소 정보</h4>
						<button type="button" class="close" data-dismiss="modal">×</button>

					</div>

					<div class="modal-body">
						<div class="row">
							<div class="col-xl-12 col-lg-12 col-md-12 pt-5">
								<table class="table sunflower" width="100%" cellspacing="0"
									role="grid" style="width: 100%;">
									<thead>
										<tr role="row" class="text-black">
											<th rowspan="2" colspan="2" style="width: 34px;">주문 취소
												정보를 확인해주세요.</th>
										</tr>
									</thead>

									<tbody>
										<tr role="row">
											<td
												style="background-color: #EAEAEA; border-right-color: black; width: 170px;">
												취소 날짜</td>
											<td><span id="dateHere"></span></td>
										</tr>
										<tr role="row">
											<td
												style="background-color: #EAEAEA; border-right-color: black; width: 170px;">
												취소 사유</td>
											<td><span id="contentHere"></span></td>
										</tr>
										<tr role="row">
											<td
												style="background-color: #EAEAEA; border-right-color: black; width: 170px;">
												취소 금액</td>
											<td>${sum}원</td>
										</tr>
										<c:if test="${userInfo.PY_CATEGORY == '무통장입금'}">
											<tr role="row">
												<td
													style="background-color: #EAEAEA; border-right-color: black; width: 170px;">
													환불 계좌 은행명</td>
												<td><span id="bankHere"></span></td>
											</tr>
											<tr role="row">
												<td
													style="background-color: #EAEAEA; border-right-color: black; width: 170px;">
													환불 계좌 번호</td>
												<td id="accountHere"></td>
											</tr>
										</c:if>
									</tbody>
								</table>

							</div>

						</div>

					</div>


					<div class="modal-footer">
						<div class="row">
							<div class="col-xl-6 col-lg-6 col-md-6 pr-3">
								<div class="cta-main-button">
									<a class="cta-button btn" data-dismiss="modal">확인</a>
								</div>
							</div>
						</div>


					</div>


				</div>
			</div>
		</div>

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


	<script type="text/javascript"
		src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script>
    var status= '';    
	$('#orderCencle').click(function(){
		
		
		
		var os = '';
		console.log(os);
		$('.orderStatus').each(function(index,item){
			if(index == 0){
				os = $(item).text();
			}
			
		});
		
		
		if(os == '주문취소'){
			alert('해당 상품은 이미 취소되었습니다.');
			return false;
		}
		
		if(os == '구매확정' ){
			alert('구매확정 상품은 취소나 반품이 불가합니다.');
			return false;
		}
		
		$('#cancleText').val("");
		
		$('#cancleNO').click(function(){
			$('#cancleText').val("");
		});
		
		$('#cancleOK').click(function(){
			
			var bank = '없음';
			var bankAccount = '없음';
			if(os == '배송준비중' || os == '입금확인중'){
				status = '주문취소';
				if(!$('#cancleText').val()){
					
				alert('주문취소 사유를 작성해주세요.');
				return false;
				}
			}else{
				status = '반품처리';
				if(!$('#cancleText').val()){
					
					alert('반품 사유를 작성해주세요.');
					return false;
					}
			}
			
			
			
			if('${userInfo.PY_CATEGORY}' == '무통장입금'){
				if(!$('#bankName').val()){
					
					alert('은행명을 선택해주세요.');
					return false;
				}
				
				if(!$('#account').val()){
					
					alert('계좌번호를 작성해주세요.');
					return false;
				}
				
				bank = $('#bankName').val();
				bankAccount = $('#account').val();
				
			}
			
			
				$.ajax({
				
				url:"<%=request.getContextPath()%>/order/ordercancle.do",
				type : "post",
				data : {O_DETAILNO : '${userInfo.O_DETAILNO}', F_EMAIL : '${userInfo.F_EMAIL}', O_CANCLEREASON : $('#cancleText').val()
							,O_BANKNAME :bank, O_BANKACCOUNT : bankAccount , O_STATUS : status},
				success : function(data) {
					
					if(data == 'fail'){
						alert(status+' 실패');
					}else{
						alert(status + ' 완료');
						/* $('.orderStatus').each(function(index,item){
							$(item).html(status);
						});
						
						$('.statusSpace').each(function(index,item){
							if(os == '배송완료'){
								$(item).children().eq(2).remove();
							}
							$(item).append("<div><button class='btn cancleInfo' style='background-color:red; font-size:20px;' data-toggle='modal' data-target='#orderCancleInfo-modal'>취소 정보</button></div>");
						}); */
						
						location.href="<%=request.getContextPath()%>/order/orderdetail.do?o_detailno=" + '${userInfo.O_DETAILNO}' + "&f_email=" + '${sessionScope.loginUser.F_EMAIL}';
					}
					
					
				},error : function(data) {										
					alert('에러입니다.');				
					
				}
				
				
				});
			
			
			
			
		});
		
		
	});
	
	$('.confirmation').each(function(index,item){
		
		$(item).click(function(){
			if (confirm("구매확정 하시겠습니까?\n\n*구매확정시 취소는 불가합니다.") == true){ //확인
			$.ajax({
			
				url:"<%=request.getContextPath()%>/order/orderconfirmation.do",
				type : "post",
				data : {O_DETAILNO : '${userInfo.O_DETAILNO}', F_EMAIL : '${userInfo.F_EMAIL}', O_STATUS : '구매확정'},
				success : function(data) {
					
					if(data == 'fail'){
						alert('구매 확정 실패');
					}else{
						$('.confirmation').each(function(index,item2){
							$(item2).parent().parent().children().eq(1).html("구매확정");
						});
						
						$('.confirmation').each(function(index,item){
							$(item).remove();
						});
					}
					
					
					
				},error : function(data) {										
					alert('에러입니다.');				
					
				}
				
				
			});
			}else{   //취소
        	   
           		return false;
           }
			
			
			
		});
		
	});
	
	
	
	$('.cancleInfo').each(function(index,item){
		
		var cs = '';
		
		$('.orderStatus').each(function(index,item){
			if(index == 0){
				cs = $(item).text();
			}
			
		});
		
		console.log(cs);
		$(item).click(function(){
			
			$.ajax({
				
				url:"<%=request.getContextPath()%>/order/ordercancleinfo.do",
															type : "post",
															dataType : "json",
															data : {
																O_DETAILNO : '${userInfo.O_DETAILNO}',
																F_EMAIL : '${userInfo.F_EMAIL}',
																O_STATUS : cs
															},
															success : function(
																	data) {

																if (data.cancleInfo == 'fail') {
																	alert('주문 정보 불러오기 실패');
																} else {
																	$(
																			'#dateHere')
																			.html(
																					data.cancleInfo.O_CANCLEDATE)
																	$(
																			'#contentHere')
																			.html(
																					data.cancleInfo.O_CANCLEREASON);
																	$(
																			'#bankHere')
																			.html(
																					data.cancleInfo.O_BANKNAME);
																	$(
																			'#accountHere')
																			.html(
																					data.cancleInfo.O_BANKACCOUNT);
																}

															},
															error : function(
																	data) {
																alert('에러입니다.');

															}

														});

											});

						});
	</script>
</body>

</html>