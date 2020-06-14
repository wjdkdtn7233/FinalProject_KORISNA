<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Contact || Korisna</title>
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
                            <a href="<%= request.getContextPath() %>/index/index.do">
                                <img src="<%= request.getContextPath() %>/resources/assets/img/logo.png" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="col-xl-7 col-lg-7">
                        <div class="main-menu">
                            <nav id="mobile-menu">
                                <ul>
                                    <li><a href="index.html">Home</a></li>
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
                                    <li><a href="blog.html">Blog</a></li>
                                    <li class="active"><a href="contact.html">Contact</a></li>
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
                <img src="<%= request.getContextPath() %>/resources/assets/img/mini-white-shape.png" alt="">
            </div>
            <div class="breadcrumb-virus-shape breadcrumb-shape-2">
                <img src="<%= request.getContextPath() %>/resources/assets/img/mini-white-shape.png" alt="">
            </div>
            <div class="breadcrumb-virus-shape breadcrumb-shape-3">
                <img src="<%= request.getContextPath() %>/resources/assets/img/mini-white-shape.png" alt="">
            </div>
            <div class="breadcrumb-virus-shape breadcrumb-shape-4">
                <img src="<%= request.getContextPath() %>/resources/assets/img/mini-white-shape.png" alt="">
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-lg-6 col-md-6 my-auto">
                        <div class="breadcrumb-content">
                            <h2 class="breadcrumb-main-title">회원 탈퇴</h2>
                            <ul>
                                <li>- Membership Withdrawal</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-6 text-right breadcrumb-unvisible">
                        <div class="breadcrumb-image-wrapper">

                            <div class="breadcrumb-image">
                                <img src="<%= request.getContextPath() %>/resources/assets/img/woman-tea.png" alt="">
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
                <img src="<%= request.getContextPath() %>/resources/assets/img/grey-virus-shape.png" alt="">
            </div>
            <div class="contact-virus-shape specialist-virus-shape-2">
                <img src="<%= request.getContextPath() %>/resources/assets/img/grey-virus-shape.png" alt="">
            </div>
            <div class="contact-virus-shape contact-virus-shape-3">
                <img src="<%= request.getContextPath() %>/resources/assets/img/grey-virus-shape.png" alt="">
            </div>
            <div class="container">
                <div class="row justify-content-center">
                  
                   
                    <div class="col-xl-12 col-lg-12">
                        <div class="blog-contact-us-wrap">
                            <h4>탈퇴 안내</h4>
                            <p>회원탈퇴를 신청하기 전에 안내 사항을 꼭 확인해주세요.</p>
                            <hr>
                            <div class="single-service-submisstion-form blog-contact">
                                <div class="submission-form-inner">

                                    <div class="row">

                                        <div class="col-xl-12 col-lg-12 py-5">
                                            <h5 class="section-single-subtitle">* 사용하고 계신 이메일  ${sessionScope.loginUser.F_EMAIL} 는 탈퇴할 경우 재사용 및 복구가 불가능합니다.</h5>
                                            <p class="pl-5" style="color:#FF8224">탈퇴한 아이디는 본인과 타인 모두 재사용 및 복구가 불가하오니 신중하게 선택하시기 바랍니다.</p>
                                        </div>  
                                       
                                        <div class="col-xl-12 col-lg-12 py-5">
                                            <h5 class="section-single-subtitle">* 탈퇴 후 회원정보 및 개인형 서비스 이용기록은 모두 삭제됩니다.</h5>
                                            <p class="pl-5" style="color:#FF8224">회원정보 개인형 서비스 이용기록은 모두 삭제되며, 삭제된 데이터는 복구되지 않습니다.<br>
                                                 삭제되는 내용을 확인하시고 필요한 데이터는 미리 백업을 해주세요.</p>
                                        </div>
                                       
                                        <div class="col-xl-12 col-lg-12 py-5">
                                            <h5 class="section-single-subtitle">* 탈퇴 후에도 게시물,채팅기록,댓글은 그대로 남아 있습니다.</h5>
                                            <p class="pl-5" style="color:#FF8224">삭제를 원하는 게시글,댓글이 있다면 반드시 탈퇴 전 삭제하시기 바랍니다.<br>
                                                탈퇴 후에는 회원정보가 삭제되어 본인 여부를 확인할 수 있는 방법이 없어, 게시글을 임의로 삭제해드릴 수 없습니다.</p>
                                        </div>
                                        
                                        <div class="col-xl-12 col-lg-12 pl-5 pt-5 pb-2">
                                            <hr>
                                            <h5 class="font-weight-bold pt-3" style="color:#FF8224">탈퇴 후에는 이메일 ${sessionScope.loginUser.F_EMAIL} 로 다시 가입할 수 없으며 아이디와 데이터는 복구할 수 없습니다.<br><br>
                                            게시판형 서비스에 남아 있는 게시글 및 채팅기록,댓글은 탈퇴 후 삭제할 수 없습니다.<br>
                                            </h5>

                                        </div>
                                        
                                            <div class="col-xl-6 col-lg-6 col-md-6 pl-5 pb-5">
                                             
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" id="jb-checkbox1" class="custom-control-input">
                                                    <label class="custom-control-label" for="jb-checkbox1">안내 사항을 모두 확인하였으며, 이에 동의합니다.</label>
                                                </div>
                                                
                                            </div>    
											<div class="col-xl-6  col-lg-6  col-md-6">
                                            </div>
                                            <div class="col-xl-2  col-lg-2  col-md-2  pl-5 ">
                                         
                                                <h5 class="font-weight-bold pt-3 text-primary" >
                                                   			 비밀번호 입력
                                                </h5>
    
                                            </div>
                                               
                                            <div class="col-xl-4 col-lg-4 col-md-4">
                                                 <input type="password" name="password" id="inputPassword" placeholder="password*">
                                             </div>
                                        <div class="col-xl-12 pt-5">

                                            <p class="blog-contact-button">
                                                <input type="button" onclick="leaveMember()"  value="회원 탈퇴">
                                            </p>
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
                            <p>It is a long established fact that a reader will bee distracted by there readable content
                                of the page when looking at its layout. It is a long established fact that a reader.</p>
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
                                    <span class="date-footer"><i class="far fa-calendar-check"></i> April 20,
                                        2020</span>
                                </a>
                            </div>
                            <div class="single-footer-blog">
                                <img src="<%= request.getContextPath() %>/resources/assets/img/blog-2-150x150.jpg" alt="">
                                <a href="blog-details.html" class="blog-info">
                                    <h5>Corona virus COVID-19 is affecting 210 countries ...</h5>
                                    <span class="date-footer"><i class="far fa-calendar-check"></i> April 20,
                                        2020</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4 col-md-6">
                    <div class="single-footer-wrapper mar-top">
                        <h3 class="footer-title">Contact Info</h3>

                        <p>It is a long established fact that a reader will bee distracted by there readable content.
                        </p>
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
  	<script>
  		function leaveMember(){
  			
  			if(!$('#jb-checkbox1').is(":checked")){
  				
  				alert('회원탈퇴에 동의 해주세요.');
  				
  				return;
  			}
  			
  			
  			
  			if($('#inputPassword').val() == '${sessionScope.loginUser.F_PASSWORD}'){
  				
  				location.href="<%= request.getContextPath() %>/member/withdrawal.do";
  				
  			}else{
  				
  				alert('비밀번호를 다시 확인해주세요.');
  			}
  			
  		}
  			
  	
  	
  	</script>
</body>

</html>