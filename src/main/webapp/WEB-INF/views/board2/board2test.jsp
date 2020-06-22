<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="en">
<!-- HAED -->
<%@ include file="../include/head.jsp"%>

<body>

   <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>

   <!-- Preloader -->
   <%@ include file="../include/preloader.jsp"%>

   <!-- Header -->
   <%@ include file="../include/header.jsp"%>

   <main>
      <!-- Breadcrumb Area Start -->
      <section class="breadcrumb-wrapper purple-bg">
         <div class="breadcrumb-virus-shape breadcrumb-shape-1">
            <img
               src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png"
               alt="">
         </div>
         <div class="breadcrumb-virus-shape breadcrumb-shape-2">
            <img
               src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png"
               alt="">
         </div>
         <div class="breadcrumb-virus-shape breadcrumb-shape-3">
            <img
               src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png"
               alt="">
         </div>
         <div class="breadcrumb-virus-shape breadcrumb-shape-4">
            <img
               src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png"
               alt="">
         </div>
         <div class="container">
            <div class="row">
               <div class="col-xl-6 col-lg-6 col-md-6 my-auto">
                  <div class="breadcrumb-content">
                     <h2 class="breadcrumb-main-title">병원정보</h2>
                     <ul>
                        <li><a href="<%=request.getContextPath()%>/board2/board2.do#ss">병원찾기</a></li>
                        <li>- Prevention</li>
                     </ul>
                  </div>
               </div>
               <div
                  class="col-xl-6 col-lg-6 col-md-6 text-right breadcrumb-unvisible">
                  <div class="breadcrumb-image-wrapper">
                     <div class="breadcrumb-image">
                        <img
                           src="<%=request.getContextPath()%>/resources/assets/img/woman-towel.png"
                           alt="">
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- Breadcrumb Area End -->

      <!-- Prevention Area Start -->
      <div class="protective-measures-wrapper section-padding">
            <div class="faq-virus-shape faq-virus-shape-1">
               <img
                  src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png"
                  alt="mini-white-shape">
            </div>
            <div class="faq-virus-shape faq-virus-shape-2">
               <img
                  src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png"
                  alt="mini-white-shape">
            </div>
            <div class="faq-virus-shape faq-virus-shape-3">
               <img
                  src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png"
                  alt="mini-white-shape">
            </div>
            <div class="faq-virus-shape faq-virus-shape-4">
               <img
                  src="<%=request.getContextPath()%>/resources/assets/img/mini-white-shape.png"
                  alt="mini-white-shape">
            </div>

            <!-- Protective Measures Area Start -->
            <div class="protective-measures-wrapper" >
               <div class="protective-measures-shape protective-measures-shape-1">
                  <img src="<%=request.getContextPath()%>/resources/assets/img/purple-virus-shape.png" alt="">
               </div>
               <div class="protective-measures-shape protective-measures-shape-2">
                  <img src="<%=request.getContextPath()%>/resources/assets/img/purple-virus-shape.png" alt="">
               </div>
               <div class="protective-measures-shape protective-measures-shape-3">
                  <img src="<%=request.getContextPath()%>/resources/assets/img/purple-virus-shape.png" alt="">
               </div>
               <div class="container">
                  <div class="row justify-content-center">
                     <div class="col-xl-12 col-lg-12">
                        <div class="section-title text-center semi-blue-section-title">
                           <h5 class="section-single-subtitle">Protection</h5>
                           <h2 class="section-heading-title">
                              Basic Protective Measures Against <span
                                 class="section-blue-text"> Coronavirus (Covid-19)</span>
                           </h2>
                        </div>
                     </div>
                  </div>
                  <div class="row protective-measure-all">
                     <div
                        class="col-xl-6 col-lg-6 col-md-6 protection-little-border-1">
                        <div
                           class="single-protective-measure-item page-margin-desktop page-margin-all page-mar-small left-angle">
                           <div class="protection-measure-section">
                              <div class="protective-measure-icon-wrap">
                                 <div class="protective-icon">
                                    <img src="<%=request.getContextPath()%>/resources/assets/img/protection-1.png" alt="">
                                 </div>
                              </div>
                              <div class="protective-text">
                                 <h4 class="protective-title">Avoid Gathering & Close
                                    Contact</h4>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-xl-6 col-lg-6 col-md-6">
                        <div
                           class="single-protective-measure-item page-margin-desktop page-margin-all page-mar-small protection-all-left right-angle">
                           <div class="protection-measure-section">
                              <div class="protective-measure-icon-wrap">
                                 <div class="protective-icon">
                                    <img src="<%=request.getContextPath()%>/resources/assets/img/protection-2.png" alt="">
                                 </div>
                              </div>
                              <div class="protective-text">
                                 <h4 class="protective-title">Stay At Your Home Don't Go
                                    Outside</h4>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div
                        class="col-xl-6 col-lg-6 col-md-6 protection-little-border-2">
                        <div
                           class="single-protective-measure-item page-margin-desktop page-margin-all page-mar-small left-angle">
                           <div class="protection-measure-section">
                              <div class="protective-measure-icon-wrap">
                                 <div class="protective-icon">
                                    <img src="<%=request.getContextPath()%>/resources/assets/img/protection-3.png" alt="">
                                 </div>
                              </div>
                              <div class="protective-text">
                                 <h4 class="protective-title">Clean Your Hands For 20
                                    Seconds</h4>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-xl-6 col-lg-6 col-md-6">
                        <div
                           class="single-protective-measure-item page-margin-desktop page-margin-all page-mar-small protection-all-left right-angle">
                           <div class="protection-measure-section">
                              <div class="protective-measure-icon-wrap">
                                 <div class="protective-icon">
                                    <img src="<%=request.getContextPath()%>/resources/assets/img/protection-4.png" alt="">
                                 </div>
                              </div>
                              <div class="protective-text">
                                 <h4 class="protective-title">Cover While Coughing And
                                    Sneezes</h4>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div
                        class="col-xl-6 col-lg-6 col-md-6 protection-little-border-3">
                        <div
                           class="single-protective-measure-item left-angle page-mar-mobile">
                           <div class="protection-measure-section">
                              <div class="protective-measure-icon-wrap">
                                 <div class="protective-icon">
                                    <img src="<%=request.getContextPath()%>/resources/assets/img/protection-5.png" alt="">
                                 </div>
                              </div>
                              <div class="protective-text">
                                 <h4 class="protective-title">Always Use Face Mask If You
                                    Infected</h4>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-xl-6 col-lg-6 col-md-6">
                        <div
                           class="single-protective-measure-item protection-all-left right-angle">
                           <div class="protection-measure-section">
                              <div class="protective-measure-icon-wrap">
                                 <div class="protective-icon">
                                    <img src="<%=request.getContextPath()%>/resources/assets/img/protection-6.png" alt="">
                                 </div>
                              </div>
                              <div class="protective-text">
                                 <h4 class="protective-title">Clean And Disinfect Objects
                                    Near You</h4>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <!-- Protective Measures Area End -->

         <!-- </div> -->

      <!-- Prevention Area Start -->
      <!-- <div class="protective-measures-wrapper section-padding"> -->
         <div class="container pt-5">
            <form action="<%=request.getContextPath()%>/board2/board2search.do">
               <div class="single-right-small-blog blog-search-wrap" id="ss">
                  <div class="blog-short-search-wrap">
                     <input type="search" name="b2_yadmnm" placeholder="Search...">
                    <!--  <input type="hidden" id="searchKey" name="b2_yadmnm"/> -->
                     <button type="submit" class="btn btn-success">
                        <i class="fas fa-search"></i>
                     </button>
                  </div>
               </div>
            </form>
         </div>

         <div class="container pt-4">
            <div class="row">
               <c:forEach items="${noticeData.nlist}" var="board2" begin="0"
                  end="5">
                  <div class="col-xl-4 col-lg-4 col-md-6">
                     <div class="single-protective-measure-item-2 page-mar-30"
                        id="searchCnt">
                        <h4 class="protective-title" id="b2_yadmNm">${board2.b2_yadmNm }</h4>
                        <p class="common-short-text">${board2.b2_sidocdNm }</p>
                        <p class="common-short-text">${board2.b2_sggucdNm }</p>
                        <p class="common-short-text">${board2.b2_addr }</p>
                        <p class="common-short-text">${board2.b2_telno }</p>
                        <input type="hidden" id="name" value="${board2.b2_yadmNm }"/>
                        <input type="hidden" id="addr" value="${board2.b2_addr }"/>
                        <input type="hidden" id="telno" value="${board2.b2_telno }"/>
                        <input type="hidden" id="xpos" value="${board2.b2_XPos }"/>
                        <input type="hidden" id="ypos" value="${board2.b2_YPos }"/>
                        <div class="protective-measure-icon-wrap">
                           <div class="cart-bottom">
                              <a href="<%=request.getContextPath()%>/board2/board2map.do?name=${board2.b2_yadmNm}&addr=${board2.b2_addr}
                              &telno=${board2.b2_telno}&xpos=${board2.b2_XPos}&ypos=${board2.b2_YPos}" 
                              onclick="window.open(this.href, '_blank', 'width=1000px,height=1000px,toolbars=no,scrollbars=no'); return false;" 
                              class="common-btn btn common">위치 확인</a>
                           </div>
                        </div>

                     </div>
                  </div>
               </c:forEach>

            </div>
         </div>


         <div class="blog-pagination ">
            <nav aria-label="Page navigation example">
               <ul class="pagination">
                  <c:if test="${board2 eq 'board2'}">
                     <li class="page-item"><a class="page-link"
                        href="<%=request.getContextPath()%>/board2/board2.do#ss"><i
                           class="fas fa-angle-double-left"></i></a></li>
                     <c:choose>
                        <c:when test="${noticeData.paging.blockStart > 1 }">
                           <li class="page-item"><a class="page-link"
                              href="<%= request.getContextPath() %>/board2/board2.do?cPage=${noticeData.paging.blockStart-1}#ss">
                                 <i class="fas fa-angle-left"></i>
                           </a></li>
                        </c:when>
                        <c:otherwise>
                           <li class="page-item"><a class="page-link"
                              href="<%= request.getContextPath() %>/board2/board2.do?cPage=${noticeData.paging.blockStart}#ss"><i
                                 class="fas fa-angle-left"></i></a></li>
                        </c:otherwise>
                     </c:choose>
                     <c:forEach begin="${noticeData.paging.blockStart}"
                        end="${noticeData.paging.blockEnd}" var="page">
                        <li class="page-item"><a
                           href="<%= request.getContextPath() %>/board2/board2.do?cPage=${page}#ss"
                           class="page-link">${page}</a></li>
                     </c:forEach>


                     <c:choose>
                        <c:when
                           test="${noticeData.paging.blockEnd+1 > noticeData.paging.lastPage }">
                           <li class="page-item"><a class="page-link"
                              href="<%= request.getContextPath() %>/board2/board2.do?cPage=${noticeData.paging.blockEnd}#ss"
                              class="nav next"><i class="fas fa-angle-right"></i></a></li>
                        </c:when>
                        <c:otherwise>
                           <li><a class="page-link"
                              href="<%= request.getContextPath() %>/board2/board2.do?cPage=${noticeData.paging.blockEnd+1}#ss"
                              class="nav next"><i class="fas fa-angle-right"></i></a></li>
                        </c:otherwise>
                     </c:choose>


                     <li class="page-item"><a class="page-link"
                        href="<%= request.getContextPath() %>/board2/board2.do?cPage=${noticeData.paging.lastPage}#ss"
                        class="nav last"><i class="fas fa-angle-double-right"></i></a></li>
                  </c:if>


                  <!-- 검색했을때 페이징 처리  -->
                  <c:if test="${board2 eq 'board2search'}">
                     <li class="page-item"><a class="page-link"
                        href="<%= request.getContextPath() %>/board2/board2search.do?b2_yadmnm=${b2_yadmnm}#ss"><i
                           class="fas fa-angle-double-left"></i></a></li>
                     <c:choose>
                        <c:when test="${noticeData.paging.blockStart > 1 }">
                           <li class="page-item"><a class="page-link"
                              href="<%= request.getContextPath() %>/board2/board2search.do?cPage=${noticeData.paging.blockStart-1}&b2_yadmnm=${b2_yadmnm}#ss">
                                 <i class="fas fa-angle-left"></i>
                           </a></li>
                        </c:when>
                        <c:otherwise>
                           <li class="page-item"><a class="page-link"
                              href="<%= request.getContextPath() %>/board2/board2search.do?cPage=${noticeData.paging.blockStart}&b2_yadmnm=${b2_yadmnm}#ss"><i
                                 class="fas fa-angle-left"></i></a></li>
                        </c:otherwise>
                     </c:choose>
                     <c:forEach begin="${noticeData.paging.blockStart}"
                        end="${noticeData.paging.blockEnd}" var="page">
                        <li class="page-item"><a
                           href="<%= request.getContextPath() %>/board2/board2search.do?cPage=${page}&b2_yadmnm=${b2_yadmnm}#ss"
                           class="page-link">${page}</a></li>
                     </c:forEach>

                     <c:choose>
                        <c:when
                           test="${noticeData.paging.blockEnd+1 > noticeData.paging.lastPage }">
                           <li class="page-item"><a class="page-link"
                              href="<%= request.getContextPath() %>/board2/board2search.do?cPage=${noticeData.paging.blockEnd}&b2_yadmnm=${b2_yadmnm}#ss"
                              class="nav next"><i class="fas fa-angle-right"></i></a></li>
                        </c:when>
                        <c:otherwise>
                           <li><a class="page-link"
                              href="<%= request.getContextPath() %>/board2/board2search.do?cPage=${noticeData.paging.blockEnd+1}&b2_yadmnm=${b2_yadmnm}#ss"
                              class="nav next"><i class="fas fa-angle-right"></i></a></li>
                        </c:otherwise>
                     </c:choose>

                     <li class="page-item"><a class="page-link"
                        href="<%= request.getContextPath() %>/board2/board2search.do?cPage=${noticeData.paging.lastPage}&b2_yadmnm=${b2_yadmnm}#ss"
                        class="nav last"><i class="fas fa-angle-double-right"></i></a></li>
                  </c:if>

               </ul>
            </nav>
         </div>
         </div>
     <!--  </div> -->
      <!-- Prevention Area End -->

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


    <script type="text/javascript">
   

   var serarchKeyword = '${noticeData.b2_yadmnm}';
   if(serarchKeyword != ''){
      document.querySelectorAll('.page-link').forEach(function(v){
         v.href = v.href+'&b2_yadmnm=' + serarchKeyword;
      });
   }
   
   
   function searchbtn(){
      $("#searchKey").val("");
      var key = $("#b2_yadmnm").val();
      $("#searchKey").val(key);   
   }
   
</script>
</body>
</html>