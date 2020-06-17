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
                                <h2 class="breadcrumb-main-title">Shop</h2>
                                <ul>
                                    <li><a href="index.html">Home</a></li>
                                    <li>- Shop</li>
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

            <!-- Product Area Start -->
            <div class="product-area-wrapper section-padding ">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="top-shop-bar">
                                <div class="row d-flex align-items-center">
                                    
                                    <div class="col-xl-6 col-lg-6 col-md-5">
                                        <div class="product-showing-results sunflower">
                                            <p>정렬 도구</p>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-lg-4 col-md-4">
                                        <div class="selct-products">
                                            <select id="sortList" name="orderby" class="orderby sunflower" aria-label="Shop order">
                                                <option value="p_no desc" selected="selected">상품등록 순서</option>
                                                <option value="p_name">이름 순서</option>
                                                <option value="p_starscore desc">인기 순서</option>
                                                <option value="p_price desc">높은 가격 순서</option>
                                                <option value="p_price">낮은 가격 순서</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="page-all-products">
                                <div class="row" id="productSort">
                                    <c:forEach var="productList" items="${productList}" varStatus="status">
                                     <div class="col-xl-4 col-lg-4 col-md-6">
                                        <div class="single-products-item page-margin-desktop">
                                            <div class="product-bg-wrap" style="background-image: url(<%=request.getContextPath()%>/resources/product/image/${productList.P_IMAGE});">
                                                <div class="product-bg-hover">
                                                    <span>Sale!</span>
                                                    <ul>
                                                        <li><a class="popup-image" href="<%=request.getContextPath()%>/resources/product/image/${productList.P_IMAGE}"><i class="fa fa-search"></i></a></li>
                                                        <li><a href="<%=request.getContextPath()%>/product/productdetail.do?p_no=${productList.P_NO}" ><i class="fas fa-shopping-cart"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product-info-wrap">
                                                <h4><a href="<%=request.getContextPath()%>/product/productdetail.do?p_no=${productList.P_NO}" class="sunflower">${productList.P_NAME}</a></h4>
                                                <div class="review-star">
                                                    <i class="fas fa-star"></i><span class="pl-3 sunflower">${productList.P_STARSCORE} 점</span>
                                                </div>
                                                <div class="product-price-text sunflower">
                                                    <span><i class="fas fa-won-sign"></i>${productList.P_PRICE} 원</span>
                                                </div>
                                                <div class="cart-bottom sunflower">
                                                    <a href="<%=request.getContextPath()%>/product/productdetail.do?p_no=${productList.P_NO}" class="common-btn btn common-hover-3">상세보기</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    </c:forEach>
                                    
                                    <div class="col-xl-12">
                                        <div class="blog-pagination shop-pagination">
                                            <nav aria-label="Page navigation example">
                                                <ul class="pagination">
                                                <li class="page-item"><span class="page-link current">1</span></li>
                                                <li class="page-item"><a class="page-link" href="blog.html" >2</a></li>
                                                <li class="page-item"><a class="page-link" href="blog.html" ><i class="fas fa-angle-double-right"></i></a></li>
                                                </ul>
                                            </nav>
                                        </div>
                                    </div>
                                </div>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
            <!-- Product Area End -->

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
                                <a href="contact.html" class="cta-button btn">Contact Now <i class="icofont-arrow-right"></i></a>
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
	
	<c:if test="${sessionScope.loginUser != null }">
	<!-- chatting JS -->
	<%@ include file="../include/chatting.jsp"%>
	</c:if>
	
	
	<script>
		$('#sortList').change(function(){
			
			$.ajax({
				
				url:"<%=request.getContextPath()%>/product/productsortlist.do",
				type : "post",
				dataType : "json",
				data : {orderby : $('#sortList').val()},
				success : function(data) {
					if(data != 'fail'){
						
						$('#productSort').html("");
						
						for(var i=0; i<data.sortList.length; i++){
							 $('#productSort').append("<div class='col-xl-4 col-lg-4 col-md-6'>"+
										"<div class='single-products-item page-margin-desktop'>"+
										"<div class='product-bg-wrap' style='background-image: url(<%=request.getContextPath()%>/resources/product/image/"+data.sortList[i].P_IMAGE+");'>"+
										"<div class='product-bg-hover'><span>Sale!</span><ul>"+
										"<li><a class='popup-image' href='<%=request.getContextPath()%>/resources/product/image/"+ data.sortList[i].P_IMAGE + "'><i class='fa fa-search'></i></a></li><li><a href='<%=request.getContextPath()%>/product/productdetail.do?p_no=" + data.sortList[i].P_NO + "' ><i class='fas fa-shopping-cart'></i></a></li></ul></div></div>"+
										"<div class='product-info-wrap'><h4><a href='<%=request.getContextPath()%>/product/productdetail.do?p_no=" + data.sortList[i].P_NO + "' class='sunflower'>"+data.sortList[i].P_NAME+"</a></h4>"+
										"<div class='review-star sunflower'><i class='fas fa-star'></i><span class='pl-3'>"+data.sortList[i].P_STARSCORE+" 점</span></div><div class='product-price-text sunflower'><span><i class='fas fa-won-sign'></i>"+ data.sortList[i].P_PRICE +" 원</span></div>"+	
										"<div class='cart-bottom'><a href='<%=request.getContextPath()%>/product/productdetail.do?p_no="+data.sortList[i].P_NO+"' class='common-btn btn common-hover-3 sunflower'>상세보기</a></div></div></div></div>");
						}
						
					}							
				},error : function(data) {										
						alert('에러입니다.');				
										
					}							
				});
			
		});
	</script>
    </body>
</html>
