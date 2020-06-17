<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header class="header-area-wrapper">
    <div class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-xl-2 col-lg-2 col-md-4">
                    <div class="header-logo">
                        <a href="<%= request.getContextPath() %>/index/index.do">
                            <img src="<%= request.getContextPath() %>/resources/assets/img/logo.png" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-xl-7 col-lg-7">
                    <div class="main-menu">
                        <nav id="mobile-menu">
                            <ul>
                                <li class="active"><a href="<%= request.getContextPath() %>/index/index.do">Home</a></li>
                                <li><a href="<%=request.getContextPath()%>/map/map.do">마스크맵</a></li>
                                <li><a href="<%= request.getContextPath() %>/board/board.do">NEWS</a> </li>
                                <li><a href="<%= request.getContextPath() %>/board2/board2.do">병원정보</a>
                                </li>
                               <!--  <li><a href="team.html">Pages</a>
                                    <ul>
                                        <li><a href="team.html">Team</a></li>
                                        <li><a href="faq.html">Faq's</a></li>
                                        <li><a href="error-page.html">404 Page</a></li>
                                    </ul>
                                </li> -->
                                <li><a href="shop.html">Shop</a></li>
                                </li>
                                <li><a href="<%= request.getContextPath() %>/product/productlist.do">쇼핑</a></li>
                                <c:if test="${sessionScope.loginUser != null }">
                                <li><a href="<%= request.getContextPath() %>/member/infomodify.do">마이페이지</a>
                                    <ul>
                                        <li><a href="<%= request.getContextPath() %>/member/infomodify.do">내 정보 및 수정</a></li>
                                        <li><a href="<%= request.getContextPath() %>/member/leavemember.do">회원 탈퇴</a></li>
                                        <li><a href="<%= request.getContextPath() %>/cart/cartlist.do">장바구니</a></li>
                                        <li><a href="error-page.html">주문 목록</a></li>
                                    </ul>
                                </li>
                                <li><a href="<%= request.getContextPath() %>/member/logout.do">로그아웃</a></li>
                                 </c:if>
                                 <c:if test="${sessionScope.loginUser == null }">
                                 <li><a href="<%= request.getContextPath() %>/member/login.do">로그인</a></li>
                                 </c:if>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-6 text-right">
                    <div class="header-full-right">
                        <div class="header-search">
                            <a data-toggle="modal" data-target="#search-modal"  href="#" class="header-search-anchor common-hover-1"><i class="icofont-search-2"></i></a>
                        </div>
                        <div class="cta-btn">
                            <a href="contact.html" class="call-button common-hover-1">Contact Us</a>
                        </div>
                    </div>
                </div>
                <div class="col-12">
                    <div class="mobile-menu"></div>
                </div>
            </div>
        </div>
    </div>
</header>