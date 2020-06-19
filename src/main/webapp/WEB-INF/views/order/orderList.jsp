<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
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
                            <h2 class="breadcrumb-main-title">주문 현황</h2>
                            <ul>
                                <li>- Order List</li>
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
            <div class="container">
                
                <h5 class="section-single-subtitle">주문 현황 목록</h5>
                <hr>
                <br>
                <br>
                <div class="row  justify-content-center">
                    <div class="col-xl-12 col-lg-12 col-md-12">
                        <table class="table table-hover sunflower" width="100%" cellspacing="0" role="grid"
                            style="width: 100%;">
                            <thead>
                                <tr role="row" class="text-white">
                                    <th rowspan="6" colspan="6" style="background-color:#9536FF;width: 34px;">주문 목록</th>
                                </tr>
                            </thead>

                            <tbody>
                            <c:if test="${orderList == null}">
                            	<tr role='row' class='text-center'><td  colspan='6' >장바구니에 담긴 상품이 없습니다.</td></tr>
                            </c:if>
                            <c:if test="${orderList != null}">
                            <c:forEach var="orderList" items="${orderList}">
                            	<tr role="row" class="text-center goOrderDetail" >
                                    <td>${orderList.O_DATE}<input type="hidden" value="<%=request.getContextPath()%>/order/orderdetail.do?o_detailno=${orderList.O_DETAILNO}"/></td>
                                    <td style=" width:130px;"><img style="width:120px;height:120px;" src="<%=request.getContextPath()%>/resources/product/image/${orderList.P_IMAGE}"></td>
                                    <td><div>${orderList.P_NAME}</div><div style="color:red">${orderList.O_STATUS}</div></td>
                                    <td><div><span>${orderList.P_PRICE}</span> 원</div><div style="font-size:16px;background-color:#BDFF12;">결제방법 : ${orderList.PY_CATEGORY}</div></td>
                                    <td><span>${orderList.O_COUNT}</span> 개</td>
                                    <td>
                                        <div><span>${orderList.O_PRICE}</span> 원</div>
                                        <div class="blog-post-tags">
                                        <ul>
                                            <li><a href="<%=request.getContextPath()%>/product/productdetail.do?p_no=${orderList.P_NO}" class="px-3">재구매</a></li>
                                        </ul>
                                        <ul>
                                            <li><a href="<%=request.getContextPath()%>/product/productdetail.do?p_no=${orderList.P_NO}" class="px-3">리뷰쓰기</a></li>
                                        </ul>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                            	
                            </c:if>

                                
                            </tbody>
                        </table>
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
                                <h4 class="contact-info-bottom"><a
                                        href="mailto:korisnaadmin@mail.com">korisnaadmin@mail.com</a></h4>
                                <h4 class="contact-info-bottom"><a href="mailto:support@gmail.com">support@gmail.com</a>
                                </h4>
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
	

    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
    <script>
        $('.goOrderDetail').each(function(index,item){
        	$(item).click(function(){
        		location.href= $(item).children().eq(0).children().eq(0).val();
        	});
        	
        	
        });



    </script>
</body>

</html>