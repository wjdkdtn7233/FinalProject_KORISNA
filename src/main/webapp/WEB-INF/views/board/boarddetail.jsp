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
                    <div class="col-xl-7 col-lg-7">
                        <div class="main-menu">
                            <nav id="mobile-menu">
                                <ul>
                                    <li><a href="index.html">Home</a></li>
                                    <li><a href="about.html">About</a></li>
                                    <li><a href="cases.html">NEWS</a> </li>
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
                                    <li class="active"><a href="blog.html">NEWS Details</a></li>
                                    <li><a href="contact.html">Contact</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-6 text-right">
                        <div class="header-full-right">
                            <div class="header-search">
                                <a data-toggle="modal" data-target="#search-modal" href="#"
                                    class="header-search-anchor common-hover-1"><i class="icofont-search-2"></i></a>
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
                <img src="assets/img/mini-white-shape.png" alt="mini-white-shape">
            </div>
            <div class="breadcrumb-virus-shape breadcrumb-shape-2">
                <img src="assets/img/mini-white-shape.png" alt="mini-white-shape">
            </div>
            <div class="breadcrumb-virus-shape breadcrumb-shape-3">
                <img src="assets/img/mini-white-shape.png" alt="mini-white-shape">
            </div>
            <div class="breadcrumb-virus-shape breadcrumb-shape-4">
                <img src="assets/img/mini-white-shape.png" alt="mini-white-shape">
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-lg-6 col-md-6 my-auto">
                        <div class="breadcrumb-content">
                            <h2 class="breadcrumb-main-title">NEWS Details</h2>
                            <ul>
                                <li><a href="index.html">Home</a></li>
                                <li>- NEWS Details</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-6 text-right breadcrumb-unvisible">
                        <div class="breadcrumb-image-wrapper">
                            <div class="breadcrumb-image">
                                <img src="assets/img/woman-towel.png" alt="woman-towel">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb Area End -->

        <!-- Blog Area Start -->


        <div class="blog-page-wrapper section-padding">
            <div class="container">
                <div class="row">
                   
                        <div class="left-side-blog">
                            <div class="single-blog-page-item">
                                <div class="blog-sample-meta">
                                    <ul>
                                        
                                        <li><a href="#"><i class="far fa-calendar-check"></i>April 20, 2020</a></li>
                                       
                                    </ul>
                                    <div class="blog-sample-bottom-content">
                                        <h3>Corona virus COVID-19 is affecting 210 countries
                                                around the world and 2 international conveyances.</h3>
                                        <p>A wonderful serenity has taken possssion of my entire souing like these sweet
                                            mornng spring whch enjoy with my whole heart I am alone, and feel the charm
                                            of existenceths spot whch was create For the bliss of souls like mineing am
                                            so happy my dear frend so absori bed</p>

                                        <p>A wonderful serenity has taken posseson of my entire soung like these sweet
                                            mornngs spring whch enjoy with my whole heart I am alone and feel the charm
                                            of exstenceths spot whch was created For the blis of souls like mineing am
                                            so happy my dear frend so absoribed in the exquste sense of mere tranquil
                                            existence, that neglect my talentsr I should bye ncapable of drawng and
                                            single stroke at the A wonderful serenty has taken possesson of my entre
                                            souing like these sweet mornins sprng which present moment; and yet If feel
                                            that I never was a greater artst.</p>
                                    </div>
                                </div>

                                <div class="blog-details-content-2">
                                    <h3>The novel coronavirus’ case fatality rate has been estimated at around 2% in the
                                        WHO press conference held on January 29, 2020.</h3>

                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmoed tempor
                                        encididunt uten labore et dolorem magna aliqua. Uten enim ad minim veniam, quis
                                        nostrud exercitation ullameco laboris nisi ut aliquip ex ea commod consequat.
                                        Duis aute irure dolor in reprehenderit in voluptate velit esse cillum and dolore
                                        eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident.</p>

                                    <ul>
                                        <li>At on the notch everything the no to called he one why its as success.</li>
                                        <li>To even was that are he floundering magicians and corona viruses.</li>
                                        <li>That as a guard as fresh lady careful they are sitting at the dround.</li>
                                    </ul>

                                    <p>Tone get else be her fur somewhere, the assistant there time the of proportion it
                                        as endeavours to and to as origin unavoidable, a the new trying of a to stopped
                                        at literature his consider into what palace decided out more were to researches
                                        luxury. It texts. From expecting be actually.</p>
                                </div>

                                <div class="single-right-small-blog blog-search-wrap">
                                    <div class="blog-short-search-wrap">
                                        <input type="search" name="search" placeholder="Search...">
                                        <button type="submit" class="search-button"><i
                                                class="fas fa-search"></i></button>
                                    </div>
                                </div>

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
                            
                                <div class="blog-cta-action">
                                    <div class="cta-widget-wrapper">
                                        <div class="cta-widget-content td-cover-bg"
                                            style="background-image:url(./assets/img/cta-button-bg.jpg)">
                                            <h6 class="cta-subtitle"> 코로나바이러스 (COVID-19)</h6>
                                            <h3 class="cta-title"> 질병관리본부 콜센터</h3>
                                            <div class="cta-main-button">
                                                <a href="tel:1339" class="cta-button btn">1339</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                    </div>
                
            </div>
            <!-- Contact Form Area End -->

    </main>

    <div class="site-copyright-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-xl-6 col-lg-6 col-md-6">
                    <div class="copyright-text">
                        <h6>Korisna | Developed by: <a target="_blank" href="http://themedraft.com"
                                class="copyright-anchor">Themedraft</a></h6>
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
