<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="en">
<!-- HAED -->
<%@ include file="../include/head.jsp"%>
<style>
     #star_grade i{
        text-decoration: none;
        color: gray;
    }
    #star_grade i.on{
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
                                <h2 class="breadcrumb-main-title">Product Details</h2>
                                <ul>
                                    <li><a href="<%=request.getContextPath()%>/index/index.do">Home</a></li>
                                    <li>- Product Details</li>
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

            <!-- Blog Area Start -->
            <div class="blog-page-wrapper section-padding">
                <div class="container sunflower">
                    <div class="row">
                        <div class="col-xl-8 col-lg-8 col-md-12">
                            <div class="left-side-blog">
                                <div class="single-blog-page-item">
                                    <div class="single-full-blog-wrap">
                                        <div class="row content-items-center">
                                            <div class="col-xl-6 col-lg-6 col-md-6">
                                                <div class="blog-section-bg" style="background-image: url(<%=request.getContextPath()%>/resources/product/image/${productDetail.P_IMAGE}); background-size: 100% 100%;"></div>
                                            </div>
                                            <div class="col-xl-6 col-lg-6 col-md-6">
                                                    <div class="blog-details-content-meta">
                                                    	<c:if test="${productDetail.P_CNT != 0 }">
                                                    		<h3 class="font-weight-bold sunflower" style="color:#7C52CC">${productDetail.P_NAME}</h3>
                                                    	</c:if>
                                                    	<c:if test="${productDetail.P_CNT == 0 }">
                                                    		<del><h3 class="font-weight-bold sunflower" style="color:red;">${productDetail.P_NAME}</h3></del>
                                                    	</c:if>
                                                        <h4 class="pt-3 sunflower"><li><i class="fas fa-star"></i>  ${productDetail.P_STARSCORE}</h4>
                                                        <hr>
                                                        <c:if test="${productDetail.P_CNT != 0 }">
                                                        	<h3 class="pt-1 sunflower"><span>  ${productDetail.P_PRICE} 원</span></h3>
                                                        </c:if>
                                                        <c:if test="${productDetail.P_CNT == 0 }">
                                                        	<del><h3 class="pt-1 sunflower" style="color:red;"><span>  ${productDetail.P_PRICE} 원</span></h3></del>
                                                        </c:if>
                                                        <hr>
                                                        <h5 class="pt-1 sunflower">배송방법 : 택배</h5>
                                                        <h5 class="pt-1 sunflower">배송비 : 2500원</h5>
                                                        <hr>
                                                        <h5 class="pt-1 sunflower" >구매 갯수( 최대 선택가능수량 :10개 )</h5>
                                                        <h6 class="pt-1 sunflower" style="color:red;" >*대량구매시 추가정보에 기재된 번호로 연락요망</h6>
                                                        <input type="number" name="c_cnt" id="c_cnt" value="1"/>
                                                        <c:if test="${productDetail.P_CNT != 0 }">
                                                        <div class="cta-main-button pt-5 text-center">
                                                            <button class="cta-button btn sunflower" onclick="goCart()">장바구니 담기</button>
                                                        </div>   
                                                        </c:if> 
                                                        <c:if test="${productDetail.P_CNT == 0 }">
                                                        <div class="cta-main-button pt-5 text-center">
                                                            <button class="cta-button btn sunflower" onclick="noCart()">상품 품절</button>
                                                        </div>   
                                                        </c:if>
                                                        
                                                    </div>
                                            </div>
                                        </div>
                                        
                                    </div>
                                    <div class="blog-sample-meta">
                                        <ul class="sunflower">
                                            <li><i class="far fa-calendar-check"></i>${productDetail.P_JOINDATE}</li>
                                            <li><i class="far fa-comments"></i> review <span id="reviewCnt1">${reviewCnt}</span> </li>
                                            <li><i class="fas fa-star"></i>  ${productDetail.P_STARSCORE}</li>
                                        </ul>
                                        <div class="blog-sample-bottom-content">
                                            <h3>상품 설명</h3>
                                                <pre class="text-left sunflower" style="color:#626262;">
                                                    ${productDetail.P_CONTENT}
                                                </pre>
                                            
                                        </div>
                                    </div>

                                    
                                </div>

                                <div class="blockquote-text">
                                    <i class="fas fa-quote-left"></i>
                                    <h6>추가 정보</h6>
                                    <pre class="sunflower" style="color:#626262">${productDetail.P_ADDINFO}</pre>
                                   
                                </div>

                                
                                <div id="reviewArea" class="blog-comments-section">
                                    <h4><span id="reviewCnt2">${reviewCnt}</span> Comments</h4>
                                    <c:if test="${reviewList != null }">
                                    <c:forEach var="reviewList" items="${reviewList}" varStatus="status">
                                    <div class="single-comment-wrap">
                                    	<img  src="<%=request.getContextPath()%>/resources/upload/${reviewList.F_USERPICTURE}" alt="">
                                        <div class="comments-content">
                                            <h6>${reviewList.F_NICK} 
                                            <span class="pl-3">
                                            <c:if test="${reviewList.R_STARSCORE == 1}">
                                            	<i class="fas fa-star" style="color:#7C52CC"></i>
                                            	<c:forEach var="i" begin="1" end="4">
                                            		<i class="fas fa-star" style="color:gray"></i>
                                            	</c:forEach>
                                            </c:if>
                                            <c:if test="${reviewList.R_STARSCORE == 2}">
                                            	<c:forEach var="i" begin="1" end="2">
                                            		<i class="fas fa-star" style="color:#7C52CC"></i>
                                            	</c:forEach>
                                            	<c:forEach var="i" begin="1" end="3">
                                            		<i class="fas fa-star" style="color:gray"></i>
                                            	</c:forEach>
                                            </c:if>
                                            <c:if test="${reviewList.R_STARSCORE == 3}">
                                            	<c:forEach var="i" begin="1" end="3">
                                            		<i class="fas fa-star" style="color:#7C52CC"></i>
                                            	</c:forEach>
                                            	<c:forEach var="i" begin="1" end="2">
                                            		<i class="fas fa-star" style="color:gray"></i>
                                            	</c:forEach>
                                            </c:if>
                                            <c:if test="${reviewList.R_STARSCORE == 4}">
                                            	<c:forEach var="i" begin="1" end="4">
                                            		<i class="fas fa-star" style="color:#7C52CC"></i>
                                            	</c:forEach>
                                            	<c:forEach var="i" begin="1" end="1">
                                            		<i class="fas fa-star" style="color:gray"></i>
                                            	</c:forEach>
                                            </c:if>
                                            <c:if test="${reviewList.R_STARSCORE == 5}">
                                            	<c:forEach var="i" begin="1" end="5">
                                            		<i class="fas fa-star" style="color:#7C52CC"></i>
                                            	</c:forEach>
                                            </c:if>
                                            </span>
                                            </h6>
                                            <span class="comment-date">${reviewList.R_REGDATE}</span>
                                            <p>${reviewList.R_CONTENT}</p>
                                            <div class="reply">
                                            	<input type="hidden" class="likeAndHate" value="${reviewList.R_NO}"/>
                                                <a  class="pr-3"><i class="far fa-thumbs-up "></i><span>${reviewList.R_LIKE}</span></a>
                                                <a  class="pr-3"><i class="far fa-thumbs-down"></i><span>${reviewList.R_HATE}</span></a>
                                                <a href="<%=request.getContextPath()%>/review/deletereview.do?r_no=${reviewList.R_NO}&r_email=${reviewList.F_EMAIL}&f_email=${sessionScope.loginUser.F_EMAIL}&p_no=${reviewList.P_NO}" class="deleteReview"><i class="fas fa-times-circle"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    </c:forEach>
                                    </c:if>
                                    
                                </div>
                                <div class="blog-contact-us-wrap">
                                    <h4>Leave A Comment</h4>
                                    <div class="single-service-submisstion-form blog-contact">
                                        <div class="submission-form-inner">
                                                <div class="row">
                                                  	<div class="col-xl-12">
                                                  		<p id="star_grade">
       														<i class="fas fa-star"></i>
        													<i class="fas fa-star"></i>
        													<i class="fas fa-star"></i>
       														<i class="fas fa-star"></i>
       														<i class="fas fa-star"></i>
														</p>
                                                  	</div>
                                                    <div class="col-xl-12">
                                                        <textarea name="recontent" id="recontent" cols="30" rows="10" placeholder="Your Comment*"></textarea>
                                                        <div class="cta-main-button pt-5 text-center">
                                                            <button class="cta-button btn" onclick="return goReview()">리뷰등록</button>
                                                        </div>
                                                    </div>
                                                </div>
                                        </div>
                                    </div>
                                    <form action="<%=request.getContextPath()%>/review/regreview.do" method="post" id="frm">
                                    	<input type="hidden" id="f_email" name="f_email" value="${sessionScope.loginUser.F_EMAIL}"/>
                                    	<input type="hidden" id="p_no" name="p_no" value="${productDetail.P_NO}" />
                                    	<input type="hidden" id="r_content" name="r_content" />
                                    	<input type="hidden" id="r_starscore" name="r_starscore" />
                                    </form>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-xl-4 col-lg-4 col-md-12">
                            <div class="right-side-blog">
                                
                                
                               <div class="single-right-small-blog blog-recent-post">
                                    <h3 class="blog-single-title sunflower">다른 상품 보기</h3>
                                    <div class="single-footer-wrapper" >
                                        <div class="footer-bottom-comtent" id="otherProduct">
                                            <c:forEach var="rProductList" items="${rProductList}" varStatus="status">
                                            <c:if test="${status.index < 3}">
                                            <div class="single-footer-blog">
                                                <img src="<%=request.getContextPath()%>/resources/product/image/${rProductList.P_IMAGE}" alt="">
                                                <a href="<%=request.getContextPath()%>/product/productdetail.do?p_no=${rProductList.P_NO}" class="blog-info sunflower">
                                                    <h5>${rProductList.P_NAME}</h5>
                                                    <span class="date-footer"><i class="fas fa-won-sign"></i> ${rProductList.P_PRICE}</span>
                                                </a>
                                            </div>
                                            </c:if>
                                            </c:forEach>
                                            
                                        </div>
                                    </div>
                                </div>
                                <div class="single-right-small-blog blog-contact-us">
                                    <h3 class="blog-single-title sunflower">상품 평점 순위 top 5</h3>
                                    <div class="single-footer-wrapper" >
                                        <div class="footer-bottom-comtent">
                                        	<c:forEach var="popular" items="${popular}">
                                            <div class="single-footer-blog">
                                                <img src="<%=request.getContextPath()%>/resources/product/image/${popular.P_IMAGE}" alt="">
                                                <a href="<%=request.getContextPath()%>/product/productdetail.do?p_no=${popular.P_NO}" class="blog-info">
                                                    <h5>${popular.P_NAME}</h5>
                                                    <span class="date-footer"> <i class="fas fa-star"></i>${popular.P_STARSCORE}</span>
                                                </a>
                                            </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                                <div class="blog-cta-action">
                                    <div class="cta-widget-wrapper">
                                        <div class="cta-widget-content td-cover-bg"
                                            style="background-image:url(<%=request.getContextPath()%>/resources/assets/img/callme.png)">
                                            <h6 class="cta-subtitle font-weight-bold" style="color:#ED4C00;"> 쇼핑고객센터</h6>
                                            <h3 class="cta-title" style="color:#ED4C00">a call center for shopping</h3>
                                            <div class="cta-main-button">
                                                <a href="tel:01711972593" class="cta-button btn">+820-197-259-30</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Contact Form Area End -->

            <!-- CTA Area Start -->
            <div class="cta-wrapper section-padding purple-bg">
                <div class="cta-virus-shape cta-virus-shape-1">
                    <img src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png" alt="">
                </div>
                <div class="cta-virus-shape cta-virus-shape-2">
                    <img src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png" alt="">
                </div>
                <div class="container">
                    <div class="row d-flex align-items-center">
                        <div class="col-xl-9 col-lg-9 col-md-12">
                            <div class="cta-content">
                                <h5 class="cta-mini-title">Coronavirus (Covid-19)</h5>
                                <h2 class="cta-main-text">Have any question in your mind?
                                    Let us now, we are help you.</h2>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-12">
                            <div class="cta-main-button">
                                <a href="<%=request.getContextPath()%>/member/contact.do" class="cta-button btn">Contact Now <i class="icofont-arrow-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- CTA Area End -->
        </main>
	<!-- footer -->
	<%@ include file="../include/footer.jsp"%>

	<!-- Modal -->
	<%@ include file="../include/modal.jsp"%>

	<!-- default JS -->
	<%@ include file="../include/defaultJS.jsp"%>
	
      	
      	<script>
      	
      	/* {f_email : '${sessionScope.loginUser.F_EMAIL}',
			p_no : '${productDetail.P_NO}',
			r_content : $('#r_content').val() ,
			r_starscore : starscore,
			r_userpicture : '${sessionScope.loginUser.F_USERPICTURE}',
			r_usernick : '${sessionScope.loginUser.F_NAME}'} */
      	
      	
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
        function goReview(){
        					
        	$('#r_content').val($('#recontent').val());
        	$('#r_starscore').val(starscore);
        	
        	if('${sessionScope.loginUser.F_EMAIL}' == ''){
        		alert('로그인 후 이용가능한 서비스입니다.');
        		
        		if (confirm("로그인 창으로 이동하시겠습니까?") == true){ //확인
					
					location.href = "<%=request.getContextPath()%>/member/login.do";
               }else{   //취소
               return false;
               }
        		
        		return false;
        	}
        	if(starscore == 0) {
        		alert('별점을 체크해주세요.');
        		return false;
        	}
        	
        	if($('#recontent').val() == ''){
        		alert('리뷰내용을 입력해주세요.');
        		return false;
        	}
        	
        	$('#frm').submit();
        	
        }
        	
        
      
      		function goCart(){
      			
      			
      			if('${sessionScope.loginUser.F_EMAIL}' == ''){
            		alert('로그인 후 이용가능한 서비스입니다.');
            		
            		if (confirm("로그인 창으로 이동하시겠습니까?") == true){ //확인
    					
    					location.href = "<%=request.getContextPath()%>/member/login.do";
                   }else{   //취소
                   return false;
                   }
            		
            		return false;
            	}
      			
				$.ajax({
    				
    				url:"<%=request.getContextPath()%>/cart/pickupproduct.do",
    				type : "post",
    				dataType : "json",
    				data : {f_email : '${sessionScope.loginUser.F_EMAIL}',
    					c_no : '${productDetail.C_NO}',
    					p_no : '${productDetail.P_NO}',
    					c_price : '${productDetail.P_PRICE}',
    					c_cnt : $('#c_cnt').val(),
    					c_image : '${productDetail.P_IMAGE}',
    					c_name : '${productDetail.P_NAME}'},
    				success : function(data) {
    				if (data.no == 1) {							
    					if (confirm("장바구니에 담겼습니다. 장바구니로 이동하시려면 확인버튼을 눌러주세요.") == true){ //확인
    						
    						
    						 location.href="<%=request.getContextPath()%>/cart/cartlist.do";
    	                }else{   //취소
    	                return false;
    	                }								
    				} else if(data.no == 6) {																	
    					alert('장바구니에 담는데 실패하였습니다.');		
    				}else if(data.no == 2){
    					if(data.result == 0){
    						alert('최대 수량 10개까지만 주문가능 \n장바구니에 최대 수량이 담겼습니다.\n 장바구니를 확인해주세요.');	
    						$('#c_cnt').val("1");
    					}else{
    						alert(data.result+'개 까지만 추가 가능합니다.');
    						$('#c_cnt').val(data.result);
    					}
    						
    				}else if(data.no == 3){
    					alert('현재 잔여 재고량 : ' + data.result +' 개\n' +data.result+'개 까지만 구매 가능합니다.');
    					$('#c_cnt').val(data.result);
    				}else if(data.no == 4){
    					alert('현재 잔여 재고량 : ' + data.result +' 개 \n장바구니에 이미 초과분이 담겨\n   ' + data.result + ' 개로 수정됩니다.');
    					$('#c_cnt').val("1");
    				}else if(data.no == 5){
    					if(data.result == 0){
    						alert('현재 남은 재고량이 전부 회원님 장바구니에 담겼습니다.');
    						$('#c_cnt').val("1");
    					}else{
    						alert('현재 잔여 재고량 : ' + data.result + ' 개\n' + data.result+'개 까지만 추가 가능합니다.');
    						$('#c_cnt').val(data.result);
    					}
    					
    				}							
    														
    				},error : function(data) {										
    						alert('에러입니다.');				
    										
    					}							
    				});	
      			
      		}
      		
      		
      		$('#c_cnt').change(function(){
      			if($('#c_cnt').val() <= 0){
      				alert('수량은 1개 이상만 선택 가능합니다.');
      				$('#c_cnt').val("1");
      			}
      			
      			if($('#c_cnt').val() > 10){
      				alert('최대 수량을 초과하였습니다.');
      				$('#c_cnt').val("10");
      			}
      		});
      		
      		
      		
      		$('.likeAndHate').each(function(index,item){
      			
      			$(item).parent().children().eq(1).click(function(){
      				
      				if('${sessionScope.loginUser.F_EMAIL}' == ''){
                		alert('로그인 후 이용가능한 서비스입니다.');
                		
                		if (confirm("로그인 창으로 이동하시겠습니까?") == true){ //확인
        					
        					location.href = "<%=request.getContextPath()%>/member/login.do";
                       }else{   //취소
                       return false;
                       }
                		
                		return false;
                	}
      				
      				var rno = $(item).parent().children().eq(0).val();
      				console.log(rno);
      				
      				$.ajax({
        				
        				url:"<%=request.getContextPath()%>/review/likereview.do",
        				type : "post",
        				data : {f_email : '${sessionScope.loginUser.F_EMAIL}',
        					r_no : rno,
        					e_type : 'like'},
        				success : function(data) {
        				if (data == 'exist') {							
        					alert('리뷰당  한번만 가능합니다.');	
        				} else if(data != "fail"){																	
        					$(item).parent().children().eq(1).children().eq(1).html(data);		
        				}else{
        					alert('공감 실패!');
        				}						
        														
        				},error : function(data) {										
        						alert('에러입니다.');				
        										
        					}							
        				});
      			});
      			
      			$(item).parent().children().eq(2).click(function(){
      				
      				if('${sessionScope.loginUser.F_EMAIL}' == ''){
                		alert('로그인 후 이용가능한 서비스입니다.');
                		
                		if (confirm("로그인 창으로 이동하시겠습니까?") == true){ //확인
        					
        					location.href = "<%=request.getContextPath()%>/member/login.do";
                       }else{   //취소
                       return false;
                       }
                		
                		return false;
                	}
      				
      				var rno = $(item).parent().children().eq(0).val();
      				$.ajax({
        				
        				url:"<%=request.getContextPath()%>/review/likereview.do",
        				type : "post",
        				data : {f_email : '${sessionScope.loginUser.F_EMAIL}',
        					r_no : rno,
        					e_type : 'hate'},
        				success : function(data) {
        				if (data == 'exist'){							
        					alert('리뷰당  한번만 가능합니다.');
        				}else if(data != "fail"){																	
        					$(item).parent().children().eq(2).children().eq(1).html(data);			
        				}else{
        					alert('공감 실패!');
        				}						
        														
        				},error : function(data) {										
        						alert('에러입니다.');				
        										
        					}							
        				});
      			});
      			
      		});
      		
      		
      		
      		
      		setInterval(function() {
      			$.ajax({
    				
    				url:"<%=request.getContextPath()%>/product/randomproductlist.do",
    				type : "post",
    				dataType: "json",
    				data : {},
    				success : function(data) {
    					$("#otherProduct").html("");
    					if(data != "fail"){
    						for(var i = 0; i < 3; i++){
    							$("#otherProduct").append("<div class='single-footer-blog'>"+
                                "<img src='<%=request.getContextPath()%>/resources/product/image/" + data.randomProductList[i].P_IMAGE + "' alt=''>" +
                                "<a href='<%=request.getContextPath()%>/product/productdetail.do?p_no=" + data.randomProductList[i].P_NO + "' class='blog-info'><h5>" +data.randomProductList[i].P_NAME+ "</h5>" +
                                   "<span class='date-footer'><i class='fas fa-won-sign'></i>" + data.randomProductList[i].P_PRICE + "</span></a></div>");
    						}
    							
    					}else{
    						alert('상품 리스트 불러오는데 실패하였습니다.');
    					}
    													
    				},error : function(data) {										
    						alert('에러입니다.');				
    										
    					}							
    				});
      		}, 2000);
      		
      		
      		/* $('.deleteReview').each(function(index,item){
      			
      			$(item).click(function(){
      				if((item).parent().children().eq(4).val() != '${sessionScope.loginUser.F_EMAIL}'){
      					alert('본인이 작성한 리뷰만 삭제 가능합니다.');
      					return false;
      				}
      			});
      			
      		}); */
      		function noCart(){
      			alert('해당 상품은 품절되었습니다.\n재입고 예정입니다.');
      			$('#c_cnt').val("1");
      		}
      	</script>
      	
    </body>
</html>
