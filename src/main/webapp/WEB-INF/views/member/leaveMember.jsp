<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!doctype html>
<html class="no-js" lang="en">
<!-- HAED -->
<%@ include file="../include/head.jsp"%>
<body>
	<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->

	<!-- Preloader -->
	<%@ include file="../include/preloader.jsp"%>
	<!-- Header -->
	<%@ include file="../include/header.jsp"%>

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
                            <h2 class="breadcrumb-main-title">Membership Withdrawal</h2>
                            <ul>
                            	<li><a href="<%=request.getContextPath()%>/index/index.do">Home</a></li>
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
		<!-- Contact Information-->
		<%@ include file="../include/contactinformation.jsp"%>
		<!-- Contact Information Area End -->
    </main>

   	<!-- footer -->
	<%@ include file="../include/footer.jsp"%>

	<!-- Modal -->
	<%@ include file="../include/modal.jsp"%>

	<!-- default JS -->
	<%@ include file="../include/defaultJS.jsp"%>
	
	
  	<script>
  		function leaveMember(){
  			
  			if(!$('#jb-checkbox1').is(":checked")){
  				
  				alert('회원탈퇴에 동의 해주세요.');
  				
  				return;
  			}
  			
  			
  			
  			if($('#inputPassword').val() != '${sessionScope.loginUser.F_PASSWORD}'){
  				
  				alert('비밀번호를 다시 확인해주세요.');
  				return;
  			}
  			
  			
  			if (confirm("정말 회원탈퇴를 하시겠습니까?") == true){ //확인
				
				location.href="<%= request.getContextPath() %>/member/withdrawal.do";
           }else{   //취소
        	   
           		return false;
           }	
  			
  		}
  			
  	
  	
  	</script>
  	
</body>

</html>