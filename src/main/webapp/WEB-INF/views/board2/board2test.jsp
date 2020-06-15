<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!doctype html>
<html class="no-js" lang="en">

<head>
   <meta charset="utf-8">
   <meta http-equiv="x-ua-compatible" content="ie=edge">
   <title>NEWS || Korisna</title>
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
                                    <img src="./assets/img/logo.png" alt="">
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-7 col-lg-7" z-index : 1>
                            <div class="main-menu">
                                <nav id="mobile-menu">
                                    <ul>
                                        <li><a href="index.html">Home</a></li>
                                        <li><a href="about.html">About</a></li>
                                        <li><a href="cases.html">Cases</a> </li>
                                        <li class="active"><a href="prevention.html">Prevention</a>
                                        </li>
                                        <li><a href="team.html">Pages</a>
                                            <ul>
                                                <li><a href="team.html">Team</a></li>
                                                <li><a href="faq.html">Faq's</a></li>
                                                <li><a href="error-page.html">404 Page</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="shop.html">Shop</a></li>
                                        <li><a href="blog.html">Blog</a></li>
                                        <li><a href="contact.html">Contact</a></li>
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
            <!-- Breadcrumb Area Start -->
            <section class="breadcrumb-wrapper purple-bg">
                <div class="breadcrumb-virus-shape breadcrumb-shape-1">
                    <img src="assets/img/mini-white-shape.png" alt="">
                </div>
                <div class="breadcrumb-virus-shape breadcrumb-shape-2">
                    <img src="assets/img/mini-white-shape.png" alt="">
                </div>
                <div class="breadcrumb-virus-shape breadcrumb-shape-3">
                    <img src="assets/img/mini-white-shape.png" alt="">
                </div>
                <div class="breadcrumb-virus-shape breadcrumb-shape-4">
                    <img src="assets/img/mini-white-shape.png" alt="">
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-6 my-auto">
                            <div class="breadcrumb-content">
                                <h2 class="breadcrumb-main-title">병원정보</h2>
                                <ul>
                                    <li><a href="prevention.html#search">병원찾기</a></li>
                                    <li>- Prevention</li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 text-right breadcrumb-unvisible">
                            <div class="breadcrumb-image-wrapper">
                                <div class="breadcrumb-image">
                                    <img src="assets/img/woman-towel.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Breadcrumb Area End -->

            








            <!-- Prevention Area Start -->
            <div class="protective-measures-wrapper">
                <div class="faq-wrapper purple-bg" >
                    <div class="faq-virus-shape faq-virus-shape-1">
                        <img src="assets/img/mini-white-shape.png" alt="">
                    </div>
                    <div class="faq-virus-shape faq-virus-shape-2">
                        <img src="assets/img/mini-white-shape.png" alt="">
                    </div>
                    <div class="faq-virus-shape faq-virus-shape-3">
                        <img src="assets/img/mini-white-shape.png" alt="">
                    </div>
                    <div class="faq-virus-shape faq-virus-shape-4">
                        <img src="assets/img/mini-white-shape.png" alt="">
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-5 col-lg-12">
                                <div class="faq-left-section">
                                    <div class="woman-tea-large">
                                        <img src="assets/img/woman-tea.png" alt="">
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



                
                <span id ="search">
                    <div class="container pt-5">
                    
                    <div class="single-right-small-blog blog-search-wrap">
                        <div class="blog-short-search-wrap">
                            <input type="search" name="search" placeholder="검색어를 입력하세요" z-index : 100>
                            <button type="submit" class="search-button"><i class="fas fa-search"></i></button>
                        </div>
                    </div>
                    </span>

                    <div class="row">
                        <div class="col-xl-4 col-lg-4 col-md-6">
                            <div class="single-protective-measure-item-2 page-mar-30">
                                
                                <h4 class="protective-title">병원이름</h4>
                                <p class="common-short-text"> 20200104
                                    공주시
                                    충남
                                   99
                                    041-855-5244
                                    공주시보건소</p>
                                    <div class="protective-measure-icon-wrap">
                                        <div class="cart-bottom">
                                            <a href="#" class="common-btn btn common">위치 확인</a>
                                        </div>
                                    </div>    
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6">
                            <div class="single-protective-measure-item-2 page-mar-30">
                                
                                <h4 class="protective-title">병원이름</h4>
                                <p class="common-short-text"> 20200104
                                    공주시
                                    충남
                                   99
                                    041-855-5244
                                    공주시보건소</p>
                                    <div class="protective-measure-icon-wrap">
                                        <div class="cart-bottom">
                                            <a href="#" class="common-btn btn common">위치 확인</a>
                                        </div>
                                    </div>    
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6">
                            <div class="single-protective-measure-item-2 page-mar-30">
                                
                                <h4 class="protective-title">병원이름</h4>
                                <p class="common-short-text"> 20200104
                                    공주시
                                    충남
                                   99
                                    041-855-5244
                                    공주시보건소</p>
                                    <div class="protective-measure-icon-wrap">
                                        <div class="cart-bottom">
                                            <a href="#" class="common-btn btn common">위치 확인</a>
                                        </div>
                                    </div>    
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6">
                            <div class="single-protective-measure-item-2 page-mar-30">
                                
                                <h4 class="protective-title">병원이름</h4>
                                <p class="common-short-text"> 20200104
                                    공주시
                                    충남
                                   99
                                    041-855-5244
                                    공주시보건소</p>
                                    <div class="protective-measure-icon-wrap">
                                        <div class="cart-bottom">
                                            <a href="#" class="common-btn btn common">위치 확인</a>
                                        </div>
                                    </div>    
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6">
                            <div class="single-protective-measure-item-2 page-mar-30">
                                
                                <h4 class="protective-title">병원이름</h4>
                                <p class="common-short-text"> 20200104
                                    공주시
                                    충남
                                   99
                                    041-855-5244
                                    공주시보건소</p>
                                    <div class="protective-measure-icon-wrap">
                                        <div class="cart-bottom">
                                            <a href="#" class="common-btn btn common">위치 확인</a>
                                        </div>
                                    </div>    
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6">
                            <div class="single-protective-measure-item-2 page-mar-30">
                                
                                <h4 class="protective-title">병원이름</h4>
                                <p class="common-short-text">
                                    (sidoNm) : 서울 
                                    <br>
                                    (sgguNm) : 강남구 
                                    <br>
                                    (yadmNm) : 강남베드로병원
                                    <br>
                                    (telno) : 041-855-5244
                                    <br>
                                    (spclAdmTyCd)  : A0
                                    <br>
                                    A0: 국민안심병원 97: 코로나 검사 실시기관 99: 코로나선별진료소 운영기관
                                </p>
                                    <div class="protective-measure-icon-wrap">
                                        <div class="cart-bottom">
                                            <a href="#" class="common-btn btn common">위치 확인</a>
                                        </div>
                                    </div>    
                            </div>
                        </div>
                    </div>
                </div>
                <div class="blog-pagination ">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination">
                        <li class="page-item"><span class="page-link current">1</span></li>
                        <li class="page-item"><a class="page-link" href="blog.html">2</a></li>
                        <li class="page-item"><a class="page-link" href="blog.html"><i class="fas fa-angle-double-right"></i></a></li>
                        </ul>
                    </nav>
                </div>
            
            </div>
            <!-- Prevention Area End -->

            <!-- FAQ Area Start -->
            
            <!-- FAQ Area End -->

            <!-- Blog Area Start -->
          
            <!-- Blog Area End -->

            <!-- CTA Area Start -->
            
            <!-- CTA Area End -->
        </main>

        <footer class="footer-area section-padding">
            <div class="footer-virus-shape footer-virus-shape-1">
                <img src="assets/img/purple-virus-shape.png" alt="">
            </div>
            <div class="footer-virus-shape footer-virus-shape-2">
                <img src="assets/img/purple-virus-shape.png" alt="">
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-footer-wrapper footer-1 page-mar-mobile">
                            <div class="footer-title">
                                <img src="assets/img/logo2.png" alt="">
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
                                    <img src="./assets/img/blog-1-150x150.jpg" alt="">
                                    <a href="blog-details.html" class="blog-info">
                                        <h5>Corona virus COVID-19 is affecting 210 countries ...</h5>
                                        <span class="date-footer"><i class="far fa-calendar-check"></i> April 20, 2020</span>
                                    </a>
                                </div>
                                <div class="single-footer-blog">
                                    <img src="./assets/img/blog-2-150x150.jpg" alt="">
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
