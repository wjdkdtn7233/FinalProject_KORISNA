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
                            <h2 class="breadcrumb-main-title">주문 상세 현황</h2>
                            <ul>
                                <li>- Order Detail Status</li>
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
                
                <h5 class="section-single-subtitle">주문 상세 현황</h5>
                <hr>
                <br>
                <br>
                <div class="row  justify-content-center">
                    <div class="col-xl-12 col-lg-12 col-md-12">
                        <table class="table" width="100%" cellspacing="0" role="grid"
                            style="width: 100%;">
                            <thead>
                                <tr role="row" class="text-white">
                                    <th rowspan="6" colspan="6" style="background-color:#9536FF;width: 34px;">2020-06-18 주문 목록</th>
                                </tr>
                            </thead>

                            <tbody>
								<c:forEach var="orderDetailList" items="${orderDetailList}">
									<tr role="row" class="text-center">
                                    	<td>${orderDetailList.O_DATE}</td>
                                    	<td style=" width:130px;"><img style="width:120px;height:120px;" src="<%=request.getContextPath()%>/resources/product/image/${orderDetailList.P_IMAGE}"></td>
                                    	<td><div>${orderDetailList.P_NAME}</div><div>${orderDetailList.O_STATUS}</div></td>
                                    	<td><div><span>${orderDetailList.P_PRICE}</span> 원</div><div>${orderDetailList.PY_CATEGORY}</div></td>
                                    	<td><span>${orderDetailList.O_COUNT}</span> 개</td>
                                    	<td><span>${orderDetailList.O_PRICE}</span> 원</td>
                                	</tr>
								</c:forEach>
                                
                            </tbody>
                        </table>
                    </div>
                    <div class="col-xl-12 col-lg-12 col-md-12 pt-5">
                        <table class="table" width="100%" cellspacing="0" role="grid"
                            style="width: 100%;">
                            <thead>
                                <tr role="row" class="text-black">
                                    <th rowspan="2" colspan="2" style="width: 34px;">결제 정보</th>
                                </tr>
                            </thead>

                            <tbody>
                                <tr role="row">
                                    <td
                                        style="background-color:#EAEAEA ;border-right-color: black; width:150px;">
                                        총 상품 가격</td>
                                    <td><span>${totalPrice}</span> 원</td>
                                </tr>
                                <tr role="row">
                                    <td
                                        style="background-color:#EAEAEA ;border-right-color: black; width:150px;">
                                        배송비</td>
                                    <td>2500원</td>
                                </tr>
                                <c:set var="sum" value="${totalPrice  + 2500}"/>
                                <tr role="row">
                                    <td
                                        style="background-color:#EAEAEA ;border-right-color: black; width:150px;">
                                        총 결제 금액</td>
                                    <td><span>${sum}</span> 원</td>
                                </tr>
                                <tr role="row">
                                    <td
                                        style="background-color:#EAEAEA ;border-right-color: black; width:150px;">
                                        결제 날짜</td>
                                    <td>${userInfo.O_DATE}</td>
                                </tr>
                                <tr role="row">
                                    <td
                                        style="background-color:#EAEAEA ;border-right-color: black; width:150px;">
                                        결제 방법</td>
                                    <td>${userInfo.PY_CATEGORY}</td>
                                </tr>
                            </tbody>
                        </table>
                    
                    </div> 
                    <div class="col-xl-12 col-lg-12 col-md-12 pt-5">
                        <table class="table" width="100%" cellspacing="0" role="grid"
                            style="width: 100%;">
                            <thead>
                                <tr role="row" class="text-black">
                                    <th rowspan="2" colspan="2" style="width: 34px;">배송지 정보</th>
                                </tr>
                            </thead>

                            <tbody>

                                <tr role="row">
                                    <td
                                        style="background-color:#EAEAEA ;border-right-color: black; width:150px;">
                                        이름</td>
                                    <td>${userInfo.O_RECEIVER}</td>
                                </tr>
                                <tr role="row">
                                    <td
                                        style="background-color:#EAEAEA ;border-right-color: black; width:150px;">
                                        배송주소</td>
                                    <td>${userInfo.O_ADDRESS}</td>
                                </tr>
                                <tr role="row">
                                    <td
                                        style="background-color:#EAEAEA ;border-right-color: black; width:150px;">
                                        연락처</td>
                                    <td>${userInfo.O_PHONE}</td>
                                </tr>
                                <tr role="row">
                                    <td
                                        style="background-color:#EAEAEA ;border-right-color: black; width:150px;">
                                        배송 시 요청 사항</td>
                                    <td><textarea rows="5px" readonly>${userInfo.O_MSG}</textarea></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="col-xl-6 text-right pt-5">
                        <div class="cta-main-button" >
                            <a href="<%= request.getContextPath() %>/order/orderlist.do" class="cta-button btn">주문 목록</a>
                        </div>
                    </div>
                    <div class="col-xl-6 text-left pt-5">
                        <div class="cta-main-button" >
                            <a class="cta-button btn">주문 취소</a>
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
        



    </script>
</body>

</html>