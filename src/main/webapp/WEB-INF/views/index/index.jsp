<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Korisna Corona Virus Prevention HTML Website</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="manifest" href="site.webmanifest">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/assets/css/bootstrap.min.css">

    <!-- Owl-Carousel CSS -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/assets/css/owl.carousel.min.css">

    <!-- Animate CSS -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/assets/css/animate.min.css">

    <!-- Magnific-Popup CSS -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/assets/css/magnific-popup.css">

    <!-- Flaticon CSS -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/assets/css/icofont.min.css">

    <!-- Fontawesome CSS -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/assets/css/fontawesome.min.css">

    <!-- Meanmenu CSS -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/assets/css/meanmenu.css">

    <!-- Theme Main CSS -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/style.css">

    <!-- Responsive CSS -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/assets/css/responsive.css">
</head>
<body>
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->

<!-- Preloader -->
<div id="preloader-body" class="no-scroll-y">
    <div>
        <div id="preloader">
            <div id="ctn-preloader" class="ctn-preloader">
                <div class="animation-preloader">

                    <div class="spinner"></div>

                    <div class="txt-loading">
                        <span data-text-preloader="K" class="letters-loading">K</span>
                        <span data-text-preloader="O" class="letters-loading">O</span>
                        <span data-text-preloader="R" class="letters-loading">R</span>
                        <span data-text-preloader="I" class="letters-loading">I</span>
                        <span data-text-preloader="S" class="letters-loading">S</span>
                        <span data-text-preloader="N" class="letters-loading">N</span>
                        <span data-text-preloader="A" class="letters-loading">A</span>
                    </div>

                </div>

                <!-- Preloader sides - Model 1 -->
                <div class="loader-section section-left"></div>
                <div class="loader-section section-right"></div>

            </div>
        </div>
    </div>
</div>

<!-- Header Area Start -->
<header class="header-area-wrapper">
    <div class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-xl-2 col-lg-2 col-md-4">
                    <div class="header-logo">
                        <a href="index.html">
                            <img src="<%= request.getContextPath() %>/resources/assets/img/logo.png" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-xl-7 col-lg-7">
                    <div class="main-menu">
                        <nav id="mobile-menu">
                            <ul>
                                <li class="active"><a href="index.html">Home</a></li>
                                <li><a href="about.html">About</a></li>
                                <li><a href="cases.html">Cases</a> </li>
                                <li><a href="prevention.html">Prevention</a>
                                </li>
                                <li><a href="team.html">Pages</a>
                                    <ul>
                                        <li><a href="team.html">Team</a></li>
                                        <li><a href="faq.html">Faq's</a></li>
                                        <li><a href="error-page.html">404 Page</a></li>
                                    </ul>
                                </li>
                                <li><a href="shop.html">Shop</a></li>
                                <li><a href="<%=request.getContextPath() %>/map/map.do">마스크맵</a></li>
                                <c:if test="${sessionScope.loginUser != null }">
                                <li><a href="<%= request.getContextPath() %>/member/infomodify.do">마이페이지</a>
                                    <ul>
                                        <li><a href="<%= request.getContextPath() %>/member/infomodify.do">내 정보 및 수정</a></li>
                                        <li><a href="<%= request.getContextPath() %>/member/leavemember.do">회원 탈퇴</a></li>
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
<!-- Header Area End -->

<main>
    <!-- Home Banner Area Start -->
    <section class="home-banner-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-xl-6 col-lg-6 col-md-12 my-auto">
                    <div class="small-virus-shape">
                        <div class="small-virus-shape small-shape-1">
                            <img src="<%= request.getContextPath() %>/resources/assets/img/mini-shape-1.png" alt="">
                        </div>
                        <div class="small-virus-shape small-shape-2">
                            <img src="<%= request.getContextPath() %>/resources/assets/img/mini-shape-1.png" alt="">
                        </div>
                        <div class="small-virus-shape small-shape-3">
                            <img src="<%= request.getContextPath() %>/resources/assets/img/mini-shape-1.png" alt="">
                        </div>
                    </div>
                    <div class="home-banner-content">
                        <h4 class="banner-subtitle">Novel Coronavirus <span class="purple-text">(Covid-19)</span></h4>
                        <h1 class="banner-main-title">Stay Home, And
                            <span class="semiblue-text">Prayer For Victim</span>
                            <span class="purple-text">Of Coronavirus.</span></h1>
                        <p class="banner-short-text">The coronavirus COVID-19 is affecting 210 countries & territories around the world and 2 international conveyances.</p>
                        <div class="banner-btn-wrappper">
                            <a href="about.html" class="common-btn btn common-hover-3">More Info <i class="icofont-arrow-right"></i></a>
                            <a href="http://www.youtube.com/watch?v=ctvlUvN6wSE" class="play-btn popup-video common-hover-1"><i class="icofont-ui-play"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-12">
                    <div class="home-banner-right-content">
                        <div class="large-man-shape">
                            <img src="<%= request.getContextPath() %>/resources/assets/img/home-slider-man-shape.png" alt="">
                        </div>
                    </div>
                    <div class="small-virus-shape">
                        <div class="small-virus-shape small-shape-4">
                            <img src="<%= request.getContextPath() %>/resources/assets/img/mini-shape-1.png" alt="">
                        </div>
                        <div class="small-virus-shape small-shape-5">
                            <img src="<%= request.getContextPath() %>/resources/assets/img/mini-shape-1.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Home Banner Area End -->

    <!-- About Area Start -->
    <section class="about-area-wrapper section-padding">
        <div class="container">
            <div class="about-section-one">
                <div class="row d-flex align-items-center">
                    <div class="col-xl-6 col-lg-12 col-md-12">
                        <div class="about-demo-image">
                            <div class="about-demo-home">
                                <img src="<%= request.getContextPath() %>/resources/assets/img/girl-image.png" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-12 col-md-12">
                        <div class="about-meta-text">
                            <div class="section-title semi-blue-section-title">
                                <h5 class="section-single-subtitle">About Covid-19</h5>
                                <h2 class="section-heading-title">Coronavirus shows the
                                    disease within 14 days
                                    of entering the body.</h2>
                            </div>
                            <div class="about-content">
                                <p class="common-short-text">Nostrud exercitation ullamco laboris nisi ut aliquip ex commodo
                                    consequat. Duis aute irure dolor in reprehenderit in voluptate
                                    esse cillum dolore eugiat nulla pariatur.</p>

                                <p class="common-short-text">Nostrud exercitation ullamco laboris nisi ut aliquip ex commodo
                                    consequat. Duis aute irure dolor in reprehenderit.</p>

                                <a href="about.html" class="common-btn btn common-hover-3">About Covid - 19<i class="icofont-arrow-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- About Area End -->

    <!-- Spread Virus Area Start -->
    <div class="spread-virus-wrapper section-padding purple-bg">
        <div class="spread-shape spread-shape-1">
            <img src="<%= request.getContextPath() %>/resources/assets/img/mini-white-shape.png" alt="">
        </div>
        <div class="spread-shape spread-shape-2">
            <img src="<%= request.getContextPath() %>/resources/assets/img/mini-white-shape.png" alt="">
        </div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-12 col-lg-12">
                    <div class="section-title text-center">
                        <h5 class="section-single-subtitle">Spreads</h5>
                        <h2 class="section-heading-title">How Can Spreads Coronavirus?</h2>
                        <span class="bottom-border"></span>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-4 col-lg-4 col-md-6">
                    <div class="single-spread-wrapper page-mar-small">
                        <div class="spread-icon-wrapper">
                            <div class="spread-icon">
                                <img src="<%= request.getContextPath() %>/resources/assets/img/spread-icon-1.png" alt="">
                            </div>
                        </div>
                        <div class="spread-content">
                            <h3 class="spread-content-title">Human Contact</h3>
                            <p class="spread-meta-content">Tight-bound mesh increases capture
                                efficiency, reducing exhaust maintenance
                                and cleaning costs</p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4 col-md-6">
                    <div class="single-spread-wrapper page-mar-mobile">
                        <div class="spread-icon-wrapper">
                            <div class="spread-icon">
                                <img src="<%= request.getContextPath() %>/resources/assets/img/spread-icon-2.png" alt="">
                            </div>
                        </div>
                        <div class="spread-content">
                            <h3 class="spread-content-title">Air Transmission</h3>
                            <p class="spread-meta-content">Tight-bound mesh increases capture
                                efficiency, reducing exhaust maintenance
                                and cleaning costs</p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4 col-md-6">
                    <div class="single-spread-wrapper">
                        <div class="spread-icon-wrapper">
                            <div class="spread-icon">
                                <img src="<%= request.getContextPath() %>/resources/assets/img/spread-icon-3.png" alt="">
                            </div>
                        </div>
                        <div class="spread-content">
                            <h3 class="spread-content-title">Contaminated Object</h3>
                            <p class="spread-meta-content">Tight-bound mesh increases capture
                                efficiency, reducing exhaust maintenance
                                and cleaning costs</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Spread Virus Area End -->

    <!-- Current Cases Area Start -->
    <div class="current-cases-wrapper section-padding">
        <div class="current-cases-shape current-cases-shape-1">
            <img src="<%= request.getContextPath() %>/resources/assets/img/purple-virus-shape.png" alt="">
        </div>
        <div class="current-cases-shape current-cases-shape-2">
            <img src="<%= request.getContextPath() %>/resources/assets/img/purple-virus-shape.png" alt="">
        </div>
        <div class="current-cases-shape current-cases-shape-3">
            <img src="<%= request.getContextPath() %>/resources/assets/img/purple-virus-shape.png" alt="">
        </div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-12 col-lg-12">
                    <div class="section-title text-center semi-blue-section-title">
                        <h5 class="section-single-subtitle">Case Details</h5>
                        <h2 class="section-heading-title">Current Number Of Cases</h2>
                        <span class="bottom-border"></span>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-xl-3 col-lg-4 col-md-6">
                    <div class="single-case-item">
                        <h3 class="cases-title">Cases</h3>
                        <h2 class="cases-number">2,994,960</h2>
                    </div>
                </div>

                <div class="col-xl-3 col-lg-4 col-md-6">
                    <div class="single-case-item">
                        <h3 class="cases-title">Deaths</h3>
                        <h2 class="cases-number">206,997</h2>
                    </div>
                </div>

                <div class="col-xl-3 col-lg-4 col-md-6">
                    <div class="single-case-item">
                        <h3 class="cases-title">Recovered</h3>
                        <h2 class="cases-number">2,994,960</h2>
                    </div>
                </div>

                <div class="col-xl-3 col-lg-4 col-md-6">
                    <div class="single-case-item">
                        <h3 class="cases-title">Active</h3>
                        <h2 class="cases-number">1,909,008</h2>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="map-img">
                        <img src="<%= request.getContextPath() %>/resources/assets/img/map.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Current Cases Area End -->

    <!-- Symptoms Area Start -->
    <div class="symptoms-wrapper section-padding purple-bg">
        <div class="symptoms-virus-shape symptoms-virus-shape-1">
            <img src="<%= request.getContextPath() %>/resources/assets/img/mini-white-shape.png" alt="">
        </div>
        <div class="symptoms-virus-shape symptoms-virus-shape-2">
            <img src="<%= request.getContextPath() %>/resources/assets/img/mini-white-shape.png" alt="">
        </div>
        <div class="symptoms-virus-shape symptoms-virus-shape-3">
            <img src="<%= request.getContextPath() %>/resources/assets/img/mini-white-shape.png" alt="">
        </div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-12 col-lg-12">
                    <div class="section-title text-center">
                        <h5 class="section-single-subtitle">Symptoms</h5>
                        <h2 class="section-heading-title">Symptoms Of Novel Coronavirus
                            (COVID-19)</h2>
                        <h6 class="section-small-text">In some patients - particularly the elderly and others with other chronic health conditions
                            these symptoms can develop into pneumonia, with chest tightness. </h6>
                    </div>
                </div>
            </div>

            <div class="row symptoms-round-border">
                <div class="col-xl-6 col-lg-6 col-md-6 col-6">
                    <div class="single-symptoms-wrapper">
                        <div class="sympotoms-text-wrapper">
                            <div class="symptoms-text">
                                <h5 class="symptoms-title">Runny
                                    Nose</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-6">
                    <div class="single-symptoms-wrapper">
                        <div class="sympotoms-text-wrapper top-circle-right">
                            <div class="symptoms-text">
                                <h5 class="symptoms-title">Headche</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-6">
                    <div class="single-symptoms-wrapper">
                        <div class="sympotoms-text-wrapper middle-circle-left">
                            <div class="symptoms-text">
                                <h5 class="symptoms-title">shaking
                                    chills</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-6">
                    <div class="single-symptoms-wrapper">
                        <div class="sympotoms-text-wrapper middle-circle-right">
                            <div class="symptoms-text">
                                <h5 class="symptoms-title">throat
                                    pain</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-6">
                    <div class="single-symptoms-wrapper">
                        <div class="sympotoms-text-wrapper middle-circle-bottom-left">
                            <div class="symptoms-text">
                                <h5 class="symptoms-title">Dypsnoea</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-6">
                    <div class="single-symptoms-wrapper">
                        <div class="sympotoms-text-wrapper middle-circle-bottom-right">
                            <div class="symptoms-text">
                                <h5 class="symptoms-title">Fever</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="woman-towel">
                    <img src="<%= request.getContextPath() %>/resources/assets/img/woman-towel.png" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- Symptoms Area End -->

    <!-- Protective Measures Area Start -->
    <div class="protective-measures-wrapper section-padding">
        <div class="protective-measures-shape protective-measures-shape-1">
            <img src="<%= request.getContextPath() %>/resources/assets/img/purple-virus-shape.png" alt="">
        </div>
        <div class="protective-measures-shape protective-measures-shape-2">
            <img src="<%= request.getContextPath() %>/resources/assets/img/purple-virus-shape.png" alt="">
        </div>
        <div class="protective-measures-shape protective-measures-shape-3">
            <img src="<%= request.getContextPath() %>/resources/assets/img/purple-virus-shape.png" alt="">
        </div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-12 col-lg-12">
                    <div class="section-title text-center semi-blue-section-title">
                        <h5 class="section-single-subtitle">Protection</h5>
                        <h2 class="section-heading-title">Basic Protective Measures Against
                            <span class="section-blue-text"> Coronavirus (Covid-19)</span></h2>
                    </div>
                </div>
            </div>
            <div class="row protective-measure-all">
                <div class="col-xl-6 col-lg-6 col-md-6 protection-little-border-1">
                    <div class="single-protective-measure-item page-margin-desktop page-margin-all page-mar-small left-angle">
                        <div class="protection-measure-section">
                            <div class="protective-measure-icon-wrap">
                                <div class="protective-icon">
                                    <img src="<%= request.getContextPath() %>/resources/assets/img/protection-1.png" alt="">
                                </div>
                            </div>
                            <div class="protective-text">
                                <h4 class="protective-title">Avoid Gathering & Close Contact</h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6">
                    <div class="single-protective-measure-item page-margin-desktop page-margin-all page-mar-small protection-all-left right-angle">
                        <div class="protection-measure-section">
                            <div class="protective-measure-icon-wrap">
                                <div class="protective-icon">
                                    <img src="<%= request.getContextPath() %>/resources/assets/img/protection-2.png" alt="">
                                </div>
                            </div>
                            <div class="protective-text">
                                <h4 class="protective-title">Stay At Your Home Don't Go Outside</h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 protection-little-border-2">
                    <div class="single-protective-measure-item page-margin-desktop page-margin-all page-mar-small left-angle">
                        <div class="protection-measure-section">
                            <div class="protective-measure-icon-wrap">
                                <div class="protective-icon">
                                    <img src="<%= request.getContextPath() %>/resources/assets/img/protection-3.png" alt="">
                                </div>
                            </div>
                            <div class="protective-text">
                                <h4 class="protective-title">Clean Your Hands For 20 Seconds</h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6">
                    <div class="single-protective-measure-item page-margin-desktop page-margin-all page-mar-small protection-all-left right-angle">
                        <div class="protection-measure-section">
                            <div class="protective-measure-icon-wrap">
                                <div class="protective-icon">
                                    <img src="<%= request.getContextPath() %>/resources/assets/img/protection-4.png" alt="">
                                </div>
                            </div>
                            <div class="protective-text">
                                <h4 class="protective-title">Cover While Coughing And Sneezes</h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 protection-little-border-3">
                    <div class="single-protective-measure-item left-angle page-mar-mobile">
                        <div class="protection-measure-section">
                            <div class="protective-measure-icon-wrap">
                                <div class="protective-icon">
                                    <img src="<%= request.getContextPath() %>/resources/assets/img/protection-5.png" alt="">
                                </div>
                            </div>
                            <div class="protective-text">
                                <h4 class="protective-title">Always Use Face Mask If You Infected</h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6">
                    <div class="single-protective-measure-item protection-all-left right-angle">
                        <div class="protection-measure-section">
                            <div class="protective-measure-icon-wrap">
                                <div class="protective-icon">
                                    <img src="<%= request.getContextPath() %>/resources/assets/img/protection-6.png" alt="">
                                </div>
                            </div>
                            <div class="protective-text">
                                <h4 class="protective-title">Clean And Disinfect Objects Near You</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Protective Measures Area End -->

    <!-- FAQ Area Start -->
    <div class="faq-wrapper section-padding purple-bg">
        <div class="faq-virus-shape faq-virus-shape-1">
            <img src="<%= request.getContextPath() %>/resources/assets/img/mini-white-shape.png" alt="">
        </div>
        <div class="faq-virus-shape faq-virus-shape-2">
            <img src="<%= request.getContextPath() %>/resources/assets/img/mini-white-shape.png" alt="">
        </div>
        <div class="faq-virus-shape faq-virus-shape-3">
            <img src="<%= request.getContextPath() %>/resources/assets/img/mini-white-shape.png" alt="">
        </div>
        <div class="faq-virus-shape faq-virus-shape-4">
            <img src="<%= request.getContextPath() %>/resources/assets/img/mini-white-shape.png" alt="">
        </div>
        <div class="container">
            <div class="row">
                <div class="col-xl-5 col-lg-12">
                    <div class="faq-left-section">
                        <div class="woman-tea-large">
                            <img src="<%= request.getContextPath() %>/resources/assets/img/woman-tea.png" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-xl-7 col-lg-12">
                    <div class="section-title">
                        <h5 class="section-single-subtitle">Ask Question</h5>
                        <h2 class="section-heading-title">Some Question And Answer
                            Of Coronavirus (Covid-19)</h2>
                    </div>
                    <div class="faq-right-section">
                        <div class="question-wrapper">
                            <div class="single-question-wrap">
                                <h4 class="question-title">01. How does COVID-19 spread?</h4>
                                <p class="ans-of-question">Data has shown that it spreads from person to person among those in close contact
                                    (within about 6 feet, or 2 meters). The virus spreads by respiratory droplets released when
                                    someone infected with the virus coughs, sneezes or talks.</p>
                            </div>
                            <div class="single-question-wrap">
                                <h4 class="question-title">02. What are the symptoms of COVID-19?</h4>
                                <p class="ans-of-question">Data has shown that it spreads from person to person among those in close contact
                                    (within about 6 feet, or 2 meters). The virus spreads by respiratory droplets released when
                                    someone infected with the virus coughs, sneezes or talks.</p>
                            </div>
                            <div class="single-question-wrap">
                                <h4 class="question-title">03. Should I wear mask?</h4>
                                <p class="ans-of-question">Data has shown that it spreads from person to person among those in close contact
                                    (within about 6 feet, or 2 meters). The virus spreads by respiratory droplets released when
                                    someone infected with the virus coughs, sneezes or talks.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- FAQ Area End -->

    <!-- Blog Area Start -->
    <div class="blog-section-wrapper section-padding">
        <div class="container">
            <div class="row">
                <div class="col-xl-12 col-lg-12">
                    <div class="section-title text-center semi-blue-section-title">
                        <h5 class="section-single-subtitle">Recent Post</h5>
                        <h2 class="section-heading-title">Update News Of Coronavirus
                            <span class="section-blue-text">(Covid-19)</span></h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="blog-carousel owl-carousel">
                    <div class="single-blog-wrap">
                        <div class="blog-single-bg" style="background-image: url(<%= request.getContextPath() %>/resources/assets/img/about-video-bg.jpg);"></div>
                        <div class="blog-content">
                            <h5 class="blog-date-wrap">
                                <span class="date">22.04.2020 </span>
                                <a href="blog.html" class="blog-tag">COVID-19</a>
                            </h5>
                            <h4 class="blog-title">Incubation Period (how long it
                                takes symptoms to appear.</h4>

                            <a href="blog.html" class="blog-read-more">Read More</a>
                            <div class="blog-shape-bottom">
                                <img src="<%= request.getContextPath() %>/resources/assets/img/grey-virus-shape.png" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="single-blog-wrap">
                        <div class="blog-single-bg" style="background-image: url(<%= request.getContextPath() %>/resources/assets/img/blog-1.jpg);"></div>

                        <div class="blog-content">
                            <h5 class="blog-date-wrap">
                                <span class="date">22.04.2020 </span>
                                <a href="blog.html" class="blog-tag">COVID-19</a>
                            </h5>
                            <h4 class="blog-title">Incubation Period (how long it
                                takes symptoms to appear.</h4>

                            <a href="blog.html" class="blog-read-more">Read More</a>
                            <div class="blog-shape-bottom">
                                <img src="<%= request.getContextPath() %>/resources/assets/img/grey-virus-shape.png" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="single-blog-wrap">
                        <div class="blog-single-bg" style="background-image: url(<%= request.getContextPath() %>/resources/assets/img/blog-2.jpg);"></div>

                        <div class="blog-content">
                            <h5 class="blog-date-wrap">
                                <span class="date">22.04.2020 </span>
                                <a href="blog.html" class="blog-tag">COVID-19</a>
                            </h5>
                            <h4 class="blog-title">Incubation Period (how long it
                                takes symptoms to appear.</h4>

                            <a href="blog.html" class="blog-read-more">Read More</a>
                            <div class="blog-shape-bottom">
                                <img src="<%= request.getContextPath() %>/resources/assets/img/grey-virus-shape.png" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="single-blog-wrap">
                        <div class="blog-single-bg" style="background-image: url(<%= request.getContextPath() %>/resources/assets/img/about-video-bg.jpg);"></div>

                        <div class="blog-content">
                            <h5 class="blog-date-wrap">
                                <span class="date">22.04.2020 </span>
                                <a href="blog.html" class="blog-tag">COVID-19</a>
                            </h5>
                            <h4 class="blog-title">Incubation Period (how long it
                                takes symptoms to appear.</h4>

                            <a href="blog-details.html" class="blog-read-more">Read More</a>
                            <div class="blog-shape-bottom">
                                <img src="<%= request.getContextPath() %>/resources/assets/img/grey-virus-shape.png" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="single-blog-wrap">
                        <div class="blog-single-bg" style="background-image: url(<%= request.getContextPath() %>/resources/assets/img/blog-1.jpg);"></div>

                        <div class="blog-content">
                            <h5 class="blog-date-wrap">
                                <span class="date">22.04.2020 </span>
                                <a href="blog.html" class="blog-tag">COVID-19</a>
                            </h5>
                            <h4 class="blog-title">Incubation Period (how long it
                                takes symptoms to appear.</h4>

                            <a href="blog-details.html" class="blog-read-more">Read More</a>
                            <div class="blog-shape-bottom">
                                <img src="<%= request.getContextPath() %>/resources/assets/img/grey-virus-shape.png" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="single-blog-wrap">
                        <div class="blog-single-bg" style="background-image: url(<%= request.getContextPath() %>/resources/assets/img/blog-2.jpg);"></div>

                        <div class="blog-content">
                            <h5 class="blog-date-wrap">
                                <span class="date">22.04.2020 </span>
                                <a href="blog.html" class="blog-tag">COVID-19</a>
                            </h5>
                            <h4 class="blog-title">Incubation Period (how long it
                                takes symptoms to appear.</h4>

                            <a href="blog-details.html" class="blog-read-more">Read More</a>
                            <div class="blog-shape-bottom">
                                <img src="<%= request.getContextPath() %>/resources/assets/img/grey-virus-shape.png" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Blog Area End -->

    <!-- CTA Area Start -->
    <div class="cta-wrapper section-padding purple-bg">
        <div class="cta-virus-shape cta-virus-shape-1">
            <img src="<%= request.getContextPath() %>/resources/assets/img/mini-white-shape.png" alt="">
        </div>
        <div class="cta-virus-shape cta-virus-shape-2">
            <img src="<%= request.getContextPath() %>/resources/assets/img/mini-white-shape.png" alt="">
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

<footer class="footer-area section-padding">
    <div class="footer-virus-shape footer-virus-shape-1">
        <img src="<%= request.getContextPath() %>/resources/assets/img/purple-virus-shape.png" alt="">
    </div>
    <div class="footer-virus-shape footer-virus-shape-2">
        <img src="<%= request.getContextPath() %>/resources/assets/img/purple-virus-shape.png" alt="">
    </div>
    <div class="container">
        <div class="row">
            <div class="col-xl-4 col-lg-4 col-md-6">
                <div class="single-footer-wrapper footer-1 page-mar-mobile">
                    <div class="footer-title">
                        <img src="<%= request.getContextPath() %>/resources/assets/img/logo2.png" alt="">
                    </div>
                    <div class="footer-text">
                        <p>It is a long established fact that a reader will bee distracted by there readable content of the page when looking at its layout. It is a long established fact that a reader.</p>
                    </div>
                    <div class="footer-social-tabs">
                        <ul>
                            <li><a href="#"><i class="icofont-skype"></i></a></li>
                            <li><a href="#"><i class="icofont-youtube"></i></a></li>
                            <li><a href="#"><i class="icofont-facebook"></i>
                            </a></li>
                            <li><a href="#"><i class="icofont-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-lg-4 col-md-6">
                <div class="single-footer-wrapper page-mar-mobile common-footer">
                    <h3 class="footer-title">Recent Post</h3>
                    <div class="footer-bottom-comtent">
                        <div class="single-footer-blog">
                            <img src="<%= request.getContextPath() %>/resources/assets/img/blog-1-150x150.jpg" alt="">
                            <a href="blog-details.html" class="blog-info">
                                <h5>Corona virus COVID-19 is affecting 210 countries ...</h5>
                                <span class="date-footer"><i class="far fa-calendar-check"></i> April 20, 2020</span>
                            </a>
                        </div>
                        <div class="single-footer-blog">
                            <img src="<%= request.getContextPath() %>/resources/assets/img/blog-2-150x150.jpg" alt="">
                            <a href="blog-details.html" class="blog-info">
                                <h5>Corona virus COVID-19 is affecting 210 countries ...</h5>
                                <span class="date-footer"><i class="far fa-calendar-check"></i> April 20, 2020</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-lg-4 col-md-6">
                <div class="single-footer-wrapper mar-top">
                    <h3 class="footer-title">Contact Info</h3>

                    <p>It is a long established fact that a reader will bee distracted by there readable content.</p>
                    <ul class="footer-info">
                        <li class="footer-list-address"> <i class="fas fa-map-marker-alt"></i>
                            <div class="footer-addr-dsc">
                                <p>99 S.t Seoul Park Pekanbaru Avenue 28292. South Korea</p>
                            </div>
                        </li>
                        <li class="footer-list-mobile"> <i class="fas fa-mobile-alt"></i> <a
                                href="tel:+820123456789">+820123456789</a></li>
                        <li class="footer-mail"> <i class="fas fa-paper-plane"></i>
                            <p class="footer-mail-addr"><a
                                    href="mailto:korisna-admin@gmail.com">korisna-admin@gmail.com</a></p>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>

<div class="site-copyright-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-xl-6 col-lg-6 col-md-6">
                <div class="copyright-text">
                    <h6>Korisna | Developed by: <a target="_blank" href="http://themedraft.com" class="copyright-anchor">Themedraft</a></h6>
                </div>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-6">
                <div class="site-copyright-text text-right">
                    <h6> &copy; Korisna 2020 | All Right Reserved</h6>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- Modal -->
<div class="modal fade" id="search-modal" tabindex="-1" role="dialog" aria-labelledby="search-modal"
     aria-hidden="true">
    <div class="modal-dialog " role="document">
        <div class="modal-content">
            <div class="modal-body">
                <div class="modal-search">
                    <form action="index.html">
                        <input type="text" name="text" placeholder="Search here...">
                        <button><i class="fas fa-search" aria-hidden="true"></i></button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- jQuery JS -->
<script src="<%= request.getContextPath() %>/resources/assets/js/jquery-1.12.4.min.js"></script>

<!-- Popper JS -->
<script src="<%= request.getContextPath() %>/resources/assets/js/popper.min.js"></script>

<!-- Boostrap JS -->
<script src="<%= request.getContextPath() %>/resources/assets/js/bootstrap.min.js"></script>

<!-- Owl-Carousel JS -->
<script src="<%= request.getContextPath() %>/resources/assets/js/owl.carousel.min.js"></script>

<!-- Meanmenu JS -->
<script src="<%= request.getContextPath() %>/resources/assets/js/jquery.meanmenu.js"></script>

<!-- Wow JS -->
<script src="<%= request.getContextPath() %>/resources/assets/js/wow.min.js"></script>

<!-- ScrollUp JS -->
<script src="<%= request.getContextPath() %>/resources/assets/js/jquery.scrollUp.min.js"></script>

<!-- Magnific-Popup JS -->
<script src="<%= request.getContextPath() %>/resources/assets/js/jquery.magnific-popup.min.js"></script>

<!-- Theme-Main JS -->
<script src="<%= request.getContextPath() %>/resources/assets/js/main.js"></script>
</body>
</html>
