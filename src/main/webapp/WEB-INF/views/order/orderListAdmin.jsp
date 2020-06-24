<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="en">


<%@ include file="../include/head.jsp"%>
<style>
#star_grade i {
	text-decoration: none;
	color: gray;
}

#star_grade i.on {
	color: #7C52CC;
}
</style>

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
							<h2 class="breadcrumb-main-title">주문 현황</h2>
							<ul>
								<li>- Order List</li>
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

				<h5 class="section-single-subtitle">주문 현황 목록</h5>
				<hr>
				<br> <br>
				<div class="row  justify-content-center">
					<div class="col-xl-12 col-lg-12 col-md-12">
						<table class="table table-hover sunflower" width="100%"
							cellspacing="0" role="grid" style="width: 100%;">
							<thead>
								<tr role="row" class="text-white">
									<th rowspan="6" colspan="6"
										style="background-color: #7C52CC; width: 34px;">주문 목록</th>
								</tr>
							</thead>

							<tbody>
								<c:if test="${orderList == '[]'}">
									<tr role='row' class='text-center'>
										<td colspan='6'>주문하신 상품이 없습니다.</td>
									</tr>
								</c:if>
								<c:if test="${orderList != '[]'}">
									<c:forEach var="orderList" items="${orderList}" varStatus="st">
										<tr role="row" class="text-center">
											<td>${orderList.O_DATE}<input type="hidden" class="detailUrl"
												value="<%=request.getContextPath()%>/order/orderdetailadmin.do?o_detailno=${orderList.O_DETAILNO}" /><div><h4 class="sunflower">주문번호</h4>100000${orderList.O_DETAILNO}<br>${orderList.F_EMAIL}
												</div>
												</td>
											<td style="width: 130px;"><img
												style="width: 120px; height: 120px;"
												src="<%=request.getContextPath()%>/resources/product/image/${orderList.P_IMAGE}"></td>
											<td><div>${orderList.P_NAME}</div>
												<div class="orderStatus"style="color: red">${orderList.O_STATUS}</div></td>
											<td><div>
													<span>${orderList.P_PRICE}</span> 원
												</div>
												<div style="font-size: 16px; background-color: #BDFF12;">결제방법
													: ${orderList.PY_CATEGORY}</div></td>
											<td><span>${orderList.O_COUNT}</span> 개</td>
											<td>
												<div>
													<span>${orderList.O_PRICE}</span> 원
												</div>
												<div class="blog-post-tags">
													<ul>
														<li class="liIndex">
															<c:if test="${orderList.O_STATUS == '구매확정'}">
																<input type="hidden" class=" btn btn-default px-3 beforeOrder" value="이전">
															</c:if>
															<c:if test="${orderList.O_STATUS == '구매확정'}">
																<input type="hidden" class=" btn btn-default px-3 afterOrder" value="다음">
															</c:if>
															<c:if test="${orderList.O_STATUS != '구매확정'}">
																<input type="button" class=" btn btn-default px-3 beforeOrder" value="이전">
															</c:if>
															<c:if test="${orderList.O_STATUS != '구매확정'}">
																<input type="button" class=" btn btn-default px-3 afterOrder" value="다음">
															</c:if>
															</li>
													</ul>
												</div>
												<input type="button" class=" btn btn-default px-3 goOrderDetail" value="상세보기">
											</td>
										</tr>
										<input type="hidden" class="O_NO" value="${orderList.O_NO}">
									</c:forEach>

								</c:if>


							</tbody>
						</table>
					</div>
<!-- 					<div class="col-xl-12 col-lg-12 col-md-12 text-center">
						<div class="cta-main-button">
							<a class="cta-button btn" id="reviewReg" data-toggle="modal"
								data-target="#reviewReg-modal">리뷰 쓰기</a>
						</div>
					</div> -->


				</div>
				<br>
				<br>
				<br>
				<br>


			</div>
		</div>
		<!-- Contact Form Area End -->

<%-- 		<div class="modal fade sunflower" id="reviewReg-modal" tabindex="-1"
			role="dialog" aria-labelledby="reviewReg-modal" aria-hidden="true">
			<div class="modal-dialog " role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title section-single-subtitle sunflower"
							style="font-size: 30px;">리뷰 작성</h4>
						<button type="button" class="close" data-dismiss="modal">×</button>

					</div>

					<div class="modal-body">
						<p style="font-size: 20px;">
							리뷰를 작성해 주세요.<br>
						</p>

						<div class="row pl-2">
							<div class="col-xl-10 col-lg-10 col-md-10 ">
								<select id="pno">
									<option value="1">===리뷰등록 할 상품을 선택해주세요.===</option>
									<c:forEach var="productList" items="${productList}">
										<option value="${productList.P_NO}">${productList.P_NAME}</option>
									</c:forEach>
								</select>
							</div>
							<div class="col-xl-10 col-lg-10 col-md-10 ">
								<p id="star_grade">
									<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i>
								</p>
							</div>

							<div class="col-xl-10 col-lg-10 col-md-10 ">
								<textarea id="reviewText">
            					</textarea>
							</div>

							<div class="col-xl-10 col-lg-10 col-md-10 ">
								<p style="color: red;">리뷰작성에 참여해주셔서 감사합니다.</p>
							</div>
						</div>

					</div>


					<div class="modal-footer">
						<div class="row">
							<div class="col-xl-6 col-lg-6 col-md-6 pr-3">
								<div class="cta-main-button">
									<a class="cta-button btn" id="reviewOK" data-dismiss="modal">확인</a>
								</div>
							</div>
							<div class="col-xl-6 col-lg-6 col-md-6">
								<div class="cta-main-button">
									<a class="cta-button btn" id="reviewNO" data-dismiss="modal">취소</a>
								</div>
							</div>
						</div>


					</div>


				</div>
			</div>
		</div> --%>

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
	
		
        $('.goOrderDetail').each(function(index,item){
        	$(item).click(function(){
        		$('.detailUrl').each(function(index1,item1){
        			if(index == index1){
        				location.href= $(item1).val();
        			}
        		})
        	});
        });
        var starscore = 0;
        
        $('#star_grade i').click(function(){
            $(this).parent().children("i").removeClass("on");  /* 별점의 on 클래스 전부 제거 */ 
            $(this).addClass("on").prevAll("i").addClass("on");/* 클릭한 별과, 그 앞 까지 별점에 on 클래스 추가 */
            
           	
            return false;
        });
        
		$('#star_grade').children().each(function(index,item){
        	
        	$(item).click(function(){
        		starscore = index + 1;
        	});
        	
        });
        
        if('${orderList}' == '[]'){
        	$('#reviewReg').hide();
        } 
        
        
        
        $('#reviewText').val("");
        
        $('#reviewNO').click(function(){
        	$('#reviewText').val("");
        });
        
        $('#reviewOK').click(function(){
        	
        	if($('#pno').val() == '1'){
        		alert('리뷰할 상품을 선택해주세요.');
        		return false;
        	}
        	
        	if(starscore == 0) {
        		alert('별점을 체크해주세요.');
        		return false;
        	}
        	
        	if(!$('#reviewText').val()){
        		alert('리뷰 내용을 적어주세요.');
        		return false;
        	}
        	
			$.ajax({
				
				url:"<%=request.getContextPath()%>/order/reviewreg.do",
				type : "post",
				data : {p_no : $('#pno').val(), f_email : '${sessionScope.loginUser.F_EMAIL}', r_starscore : starscore
							,r_content : $('#reviewText').val()},
				success : function(data) {
					
					if(data == 'fail'){
						alert('리뷰 등록 실패!');
					}else{
						if (confirm("리뷰 등록 완료! 해당 리뷰로 이동하시려면 확인버튼을 눌러주세요.") == true){ //확인
							
							location.href = "<%=request.getContextPath()%>/product/productdetail.do?p_no="
															+ $('#pno').val();
												} else { //취소
													return false;
												}
											}

										},
				error : function(data) {
											alert('에러입니다.');

										}

									});

						});

        /*orderStatus  */
	        $('.beforeOrder').each(function(index, item){
	        	$(item).click(function(){
	        		var ono = '';
	        		var status = '';
	        		$('.O_NO').each(function(index1, item1){
	        			if(index == index1){
	        				console.log($(item1).val());
	        				ono = $(item1).val();
	    				}
	        		})
	        		$('.orderStatus').each(function(index1, item1){
						if(index == index1){
							console.log($(item1).text());
							status = $(item1).text()
						}
					})
	        		$.ajax({
	        			url:"<%=request.getContextPath()%>/order/orderchange.do",
	    				type : "post",
	    				data : {O_NO : ono, O_STATUS : status, flag : false},
	    				success : function(data) {
	    					$('.orderStatus').each(function(index2, item2){
	        					if(index == index2){
	        						$(item2).html(data);
	        					}
	        				})
	    				},
	    				error : function(data){
	    					alert("에러");
	    				}
	        		})
	        		
	        	})
        })
	       $('.afterOrder').each(function(index, item){
        		$(item).click(function(){
	        		var ono = '';
	        		var status = '';
	        		$('.O_NO').each(function(index1, item1){
	        			if(index == index1){
	        				ono = $(item1).val();
	    				}
	        		})
	        		$('.orderStatus').each(function(index1, item1){
						if(index == index1){
							status = $(item1).text()
						}
					})
	        		$.ajax({
	        			url:"<%=request.getContextPath()%>/order/orderchange.do",
	    				type : "post",
	    				data : {O_NO : ono, O_STATUS : status, flag : true},
	    				success : function(data) {
	    					$('.orderStatus').each(function(index2, item2){
	        					if(index == index2){
	        						$(item2).html(data);
	        					}
	        				})
	    				},
	    				error : function(data){
	    					alert("에러");
	    				}
	        		})
	        		
	        	})
        })
	</script>
</body>

</html>