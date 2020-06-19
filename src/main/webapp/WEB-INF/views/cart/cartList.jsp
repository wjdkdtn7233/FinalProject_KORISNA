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
                    <img src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png" alt="">
                </div>
                <div class="breadcrumb-virus-shape breadcrumb-shape-2">
                    <img src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png" alt="">
                </div>
                <div class="breadcrumb-virus-shape breadcrumb-shape-3">
                    <img src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png" alt="">
                </div>
                <div class="breadcrumb-virus-shape breadcrumb-shape-4">
                    <img src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png" alt="">
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-6 my-auto">
                            <div class="breadcrumb-content">
                                <h2 class="breadcrumb-main-title">Cart</h2>
                                <ul>
                                	<li><a href="<%=request.getContextPath()%>/index/index.do">Home</a></li>
                                    <li>- Shopping basket</li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 text-right breadcrumb-unvisible">
                            <div class="breadcrumb-image-wrapper">
                                <div class="breadcrumb-image">
                                    <img src="<%=request.getContextPath()%>/resources/assets/img/woman-towel.png" alt="">
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
                    <img src="<%=request.getContextPath()%>/resources/assets/img/grey-virus-shape.png" alt="">
                </div>
                <div class="contact-virus-shape specialist-virus-shape-2">
                    <img src="<%=request.getContextPath()%>/resources/assets/img/grey-virus-shape.png" alt="">
                </div>
                <div class="contact-virus-shape contact-virus-shape-3">
                    <img src="<%=request.getContextPath()%>/resources/assets/img/grey-virus-shape.png" alt="">
                </div>
                <div class="container sunflower">
                    <div class="row justify-content-center">
                        <div class="col-xl-12 col-lg-12">
                            <div class="section-title text-center semi-blue-section-title">
                                <h5 class="section-single-subtitle  sunflower">장바구니에 담은 상품을 확인해주세요.</h5>
                                <h5 class="section-single-subtitle text-warning  sunflower">확인 후 구매를 원할시 구매버튼을 눌러주세요.</h5>
                            </div>
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-xl-12 col-lg-12 col-md-12">
                            <div class="table-responsive">
                                <div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">
                                   
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <table class="table table-bordered table-hover" width="100%"
                                                cellspacing="0" role="grid"
                                                style="width: 100%;">
                                                <thead>
                                                    <tr role="row" class="text-white">
                                                        <th  rowspan="1" colspan="1" style="width: 34px;background:#9536FF;"><input type="checkbox" id="allSelect"> all</th>
                                                        <th rowspan="1" colspan="1" style="width: 88px;background:#9536FF;">Product picture</th>
                                                        <th rowspan="1" colspan="1" style="width: 100px;background:#9536FF;">Product Name</th>
                                                        <th rowspan="1" colspan="1" style="width: 70px;background:#9536FF;">Price</th>
                                                        <th rowspan="1" colspan="1" style="width: 110px;background:#9536FF;">Quantity</th>
                                                        <th rowspan="1" colspan="1" style="width: 73px;background:#9536FF;">SubToTal</th>
                                                    </tr>
                                                </thead>
                                                <tfoot>
                                                    <tr>
                                                       
                                                        <th rowspan="4" colspan="4">총 상품 금액</th>
                                                        <th rowspan="2" colspan="2"><span id="totalPrice1">${totalPrice}</span> 원</th>
                                                    </tr>
                                                </tfoot>
                                                <tbody>
                                                	<c:if test="${cartList == null}">
                                                		<tr role='row' class='text-center'><td  colspan='6' >장바구니에 담긴 상품이 없습니다.</td></tr>
                                                	</c:if>
                                                	<c:if test="${cartList != null}">
                                                	<c:forEach var="cartList" items="${cartList}" varStatus="status">
                                                    	<tr role="row" class="center-block">
                                                        	<td><input type="checkbox" class="select"><input type="hidden" value="${cartList.C_NO}"><input type="hidden" value="${cartList.P_NO}"></td>
                                                        	<td><img style="width:120px;height:120px;" src="<%=request.getContextPath()%>/resources/product/image/${cartList.C_IMAGE}"/></td>
                                                        	<td class="font-weight-bold center-block">${cartList.C_NAME}</td>
                                                        	<td  class="font-weight-bold"><span>${cartList.C_PRICE}</span> 원</td>
                                                        	<td><input type="number" class="yang" maxlength="10" value="${cartList.C_CNT}"/></td>
                                                        	<td>${cartList.C_TOTALPRICE} 원</td>
                                                        	
                                                    	</tr>
                                                    </c:forEach>
                                                	</c:if>
                                                    
                                                </tbody>
                                            </table>
                                            <div class="blog-post-tags">
                                                <ul>
                                                    <li><a id="selectRemove" class="px-3">선택 삭제</a></li>
                                                    <li><a id="allRemove" class="px-3">전체 삭제</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row pt-5  justify-content-center">
                        <div class="col-xl-9 col-lg-9 col-md-9 pt-5 text-center">
							<div class="single-right-small-blog blog-contact-us">
								<h3 class="blog-single-title  sunflower">총 결제해야할 금액</h3>
								
                                <h5 class="section-single-subtitle  sunflower"><span class="pr-3">총 상품 가격
                                <c:if test="${totalPrice == null}">
                                	<c:set var="number" value="${0}"/>
                                	<span id="totalPrice2" style="color:black">${number}</span>원
                                </c:if>
                                <c:if test="${totalPrice != null}">
                                	<c:set var="number" value="${0}"/>
                                	<span id="totalPrice2" style="color:black">${totalPrice}</span>원
                                </c:if>
                                </span><i class="far fa-plus-square" style="color:black"></i><span class="pl-3">총 배송비 <span id="postPrice" style="color:black">0</span>원</span></h5>
                                <h3 class="blog-single-title  sunflower"></h3>
                                <c:if test="${totalPrice != null}">
                                	<c:set var="num" value="${totalPrice + 2500}"/>
                                </c:if>
                                <c:if test="${totalPrice == null}">
                                	<c:set var="num" value="${0}"/>
                                </c:if>
                                <h5 class="section-single-subtitle">총<span class="pl-3  sunflower" id="totalPay" style="color:black">${num}</span>원</h5>
							</div>
						</div>
                        <div class="col-xl-12 text-center pt-5">
							<div class="cta-main-button">
								<a onclick="return order()" class="cta-button btn">구매하기</a>
							</div>
						</div>

                    </div>
                </div>
            </div>
            <!-- Contact Form Area End -->
            
            <!-- Contact Information Area Start -->
            <div class="contact-information-wrapper section-padding purple-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-4 col-lg-4 col-md-4">
                            <div class="single-contact-information-wrap border-right page-mar-mobile">
                                <div class="contact-info-icon-wrapper">
                                    <i class="icofont-phone"></i>
                                </div>
                                <div class="contact-info-content">
                                    <h5 class="contact-info-title">Call Us Now:</h5>
                                    <h4 class="contact-info-bottom"><a href="#">+88 - 012 - 345 - 6789</a></h4>
                                    <h4 class="contact-info-bottom"><a href="#">+88 - 012 - 564 - 1234</a></h4>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-4">
                            <div class="single-contact-information-wrap border-right page-mar-mobile">
                                <div class="contact-info-icon-wrapper">
                                    <i class="icofont-email"></i>
                                </div>
                                <div class="contact-info-content">
                                    <h5 class="contact-info-title">Email Us Now:</h5>
                                    <h4 class="contact-info-bottom"><a href="mailto:korisnaadmin@mail.com">korisnaadmin@mail.com</a></h4>
                                    <h4 class="contact-info-bottom"><a href="mailto:support@gmail.com">support@gmail.com</a></h4>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-4">
                            <div class="single-contact-information-wrap">
                                <div class="contact-info-icon-wrapper">
                                    <i class="icofont-location-pin"></i>
                                </div>
                                <div class="contact-info-content">
                                    <h5 class="contact-info-title">Address:</h5>
                                    <p class="contact-address">79 York Drive</p>
                                    <p class="contact-address">Evanston, IL 60201</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Contact Information Area End -->
        </main>
	<!-- footer -->
	<%@ include file="../include/footer.jsp"%>

	<!-- Modal -->
	<%@ include file="../include/modal.jsp"%>

	<!-- default JS -->
	<%@ include file="../include/defaultJS.jsp"%>
	
	<c:if test="${sessionScope.loginUser != null }">
	</c:if>
        <script>
            $(function(){
                $('#allSelect').on('click',function(){
                   if($('#allSelect').is(':checked')) {
                       $('.select').each(function(index,item){
                            $(item).prop('checked',true);
                       });
                   }else{
                        $('.select').each(function(index,item){
                            $(item).prop('checked',false);
                       });
                   }
                });

            });
            if($('tr').eq(2).children().length != 1){
            	$('#postPrice').text("2500");
            }
            
            

            //선택삭제
            $('#selectRemove').click(function(){
                if($('tr').eq(2).children().length == 1){  //삭제할 항목이 없다면
                        alert('삭제할 항목이 존재하지 않습니다.');
                        return;
                    }
                if (confirm("정말 삭제하시겠습니까??") == true){    //확인
                     
                     var cno = '';
                     
                    $('tr').each(function(index,item){
                      
                        if(index > 1){
                            if($(item).children().first().children().eq(0).is(':checked')){
                                
                            		cno += ','+ $(item).children().first().children().eq(1).val();
                            }
                        }
                    });
                    
                    location.href="<%=request.getContextPath()%>/cart/deletecart.do?f_email="  + '${sessionScope.loginUser.F_EMAIL}' + "&c_no=" + cno;
                    
                    
                }else{   //취소
                	
                return false;
                }
            });
           
          
            $('#allRemove').click(function(){ //전체삭제
                
                if($('tr').eq(2).children().length == 1){ //삭제할 항목이 없다면
                        alert('삭제할 항목이 존재하지 않습니다.');
                        return;
                    }
                if (confirm("정말 삭제하시겠습니까??") == true){  //확인
        				
        			location.href="<%=request.getContextPath()%>/cart/deletecartall.do?f_email=" + '${sessionScope.loginUser.F_EMAIL}';
        			
        		  /*   $('tr').each(function(index,item){
                             if(index > 1){
                                 $(item).remove();
                              }
        					
        					 if($('tr').length == 2){  //모두 삭제시 완료시 채워줄 문구
        						$('#totalPrice2').text("0");
             					$('#totalPrice1').text("0");
             					$('#totalPay').text("0");
             					$('#postPrice').text("0");
                                $('tbody').html("<tr role='row' class='text-center'><td  colspan='6' >장바구니에 담긴 상품이 없습니다.</td></tr>");
                                 
                            }
                	
                    }
                    //모두 삭제시 완료시 채워줄 문구
                    $('tbody').html("<tr role='row' class='text-center'><td  colspan='6' >장바구니에 담긴 상품이 없습니다.</td></tr>"); */
                }else{   //취소
                return false;
                }
            });
        		  
        		  
            $(document).ready(function(){
                
            	
           
                $('.yang').each(function(index,item){
                	
                	$(item).change(function(){
                		
                		if($(item).val() <= 0){
              				alert('수량은 1개 이상만 선택 가능합니다.');
              				$(item).val("1");
              			}
              			
              			if($(item).val() > 10){
              				alert('최대 수량을 초과하였습니다.');
              				$(item).val("10");
              			}
                		
                		var pno = $(item).parent().parent().children().eq(0).children().eq(2).val();
                		var cno = $(item).parent().parent().children().eq(0).children().eq(1).val();
                		var cprice = $(item).parent().parent().children().eq(3).children().eq(0).text();
                		var ccnt = $(item).val();
                		$.ajax({
            				
            				url:"<%=request.getContextPath()%>/cart/updatecart.do",
            				type : "post",
            				data : {c_no : cno,
            					c_price : cprice,
            					c_cnt : ccnt},
            				success : function(data) {
            				if (data == "success") {							
            					
            					$.ajax({
                    				
                    				url:"<%=request.getContextPath()%>/cart/selectcart.do",
                    				type : "post",
                    				dataType : "json",
                    				data : {c_no : cno,
                    					f_email : '${sessionScope.loginUser.F_EMAIL}'},
                    				success : function(data) {
                    				if (data.cart != 'fail') {							
                    					currentList = data.cl;
                    					sum = data.sp;
                    					$(item).parent().parent().children().eq(5).text(data.cart.C_TOTALPRICE+" 원");
                    					$('#totalPrice2').text(data.price);
                    					$('#totalPrice1').text(data.price);
                    					$('#totalPay').text(data.price+2500);
                    					$('#postPrice').text("2500");
                    				} else {																	
                    					alert('수정 실패!');				
                    				}								
                    														
                    				},error : function(data) {										
                    						alert('에러입니다.');				
                    										
                    					}							
                    				});	
            					
            				} else {																	
            					alert('장바구니에 담는데 실패하였습니다.');				
            				}								
            														
            				},error : function(data) {										
            						alert('에러입니다.');				
            										
            					}							
            				});	
                		
                	});
                	
                	
                });
                

            });
            
            
            function order(){
            	
            	
            	
            	if('${cartList}' != '' ){
            		location.href="<%=request.getContextPath()%>/order/orderwriting.do?f_email=" +'${sessionScope.loginUser.F_EMAIL}';
            	}else{
            		alert('구매할 상품이 담기지 않았습니다.');
            	}
            	
            	
            	
            	
            	
            }
            
            

        </script>
    </body>
</html>
