<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html lang="ko">

<head>

<meta charset="utf-8" />
<meta name="viewport"
   content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>제41대 사범대학 학생회 늘품</title>

<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/assets/css/snu_main.css" />
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/assets/css/side_btn.css" />
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/assets/css/header.css" />
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/assets/css/footer.css" />
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/assets/css/mobile_header.css" />
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/assets/css/mobile_footer.css" />
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/assets/css/style.css" />
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/assets/css/main/pagination.css" />



<style type="text/css">
.snu_main_box {
   margin-bottom: 200px;
}

.festive_list_inner_box {
   display: inline-block;
   width: 33%;
   text-align: center;
   margin-top: 30px;
}

.festive_list_inner_box  img {
   width: 80%;
}

.festive_list_inner_img {
   width: 100%;
}

.festive_list_inner_state {
   font-weight: bold;
   font-size: 18px;
   padding: 10px 0px;
}

.festive_list_inner_state span {
   color: #0f0f70;
}

.write {
   background-color: #0f0f70;
   color: white;
   width: 5%;
   height: 32px;
   display: flex;
   justify-content: center;
   align-items: center;
   font-weight: 600;
   margin-top: 20px;
   border-radius: 5px;
}

.festive_wrap {
   margin: 30px 0px;
}


</style>

</head>

<body>
   <!-- pc부분 -->
   <div class="main_box">
      <div class="header">
         <%@ include file="../../include/WEB/header.jsp"%>
         <%@ include file="../../include/WEB/side_bar.jsp"%>
      </div>


      <div class="snu_main_box">

         <div class="snu_main_header">홍보게시판</div>


         <fmt:parseDate value="${today}" var="strPlanDate"
            pattern="yyyy-MM-dd" />
         <fmt:parseNumber value="${strPlanDate.time / (1000*60*60*24)}"
            integerOnly="true" var="strDate"></fmt:parseNumber>

         <div class="festive_wrap">

            <c:forEach var="item" items="${output}" varStatus="status">

               <c:set var="title" value="${item.title}" />
               <c:set var="img" value="${item.img}" />
               <c:set var="no" value="${item.festiveno}" />
               <c:set var="end_date" value="${item.end_date}" />

               <fmt:parseDate value="${end_date }" var="endPlanDate"
                  pattern="yyyy-MM-dd" />
               <fmt:parseNumber value="${endPlanDate.time / (1000*60*60*24)}"
                  integerOnly="true" var="endDate"></fmt:parseNumber>
               <c:set var="DATE" value="${endDate -strDate } " />
               <fmt:parseNumber var="i" integerOnly="true" type="number"
                  value="${DATE}" />
               <c:choose>
                  <c:when test="${i<0}">
                     <c:set var="status" value="<span style='color:gray'>[마감]</span>" />
                  </c:when>
                  <c:otherwise>
                     <c:set var="status" value="[진행중]" />
                  </c:otherwise>

               </c:choose>

               <div class="festive_list_inner_box">
                  <a
                     href="${pageContext.request.contextPath}/festive/festive_detail.do?festiveno=${no}">
                     <div class="festive_list_inner_img">
                        <img src="http://3.138.48.22:8080/upload/${img}">
                     </div>
                     <div class="festive_list_inner_state">
                        <span>${status}</span> ${title}
                     </div>
                  </a>
               </div>

            </c:forEach>
         </div>

                  <div class="paging_box">
            <ul class="pagination">
               <c:choose>
                  <c:when test="${pageData.prevPage >0 }">
                     <c:url value="/festive/festive.do" var="prevPageUrl">
                        <c:param name="page" value="${pageData.prevPage }" />
                     </c:url>
                     <li><a href="${prevPageUrl }"><i
                           class="fas fa-angle-left"></i></a></li>

                  </c:when>
                  <c:otherwise>
                     <li class="disabled"><a href="#"><i
                           class="fas fa-angle-left"></i></a></li>
                  </c:otherwise>


               </c:choose>

               <c:forEach var="i" begin="${pageData.startPage}"
                  end="${pageData.endPage}" varStatus="status">
                  <c:url value="/festive/festive.do" var="pageUrl">
                     <c:param name="page" value="${i}" />
                  </c:url>
                  <c:choose>
                     <c:when test="${pageData.nowPage ==i }">
                        <li class="active"><span style="color:white;">${i}</span></li>
                     </c:when>
                     <c:otherwise>
                        <li><a href="${pageUrl}">${i}</a></li>

                     </c:otherwise>
                  </c:choose>

               </c:forEach>


               <c:choose>
                  <c:when test="${pageData.nextPage >0 }">
                     <c:url value="/festive/festive.do" var="nextPageUrl">
                        <c:param name="page" value="${pageData.nextPage }" />
                     </c:url>
                     <li><a href="${nextPageUrl }"><i
                           class="fas fa-angle-right"></i></a></li>

                  </c:when>

                  <c:otherwise>

                  </c:otherwise>



               </c:choose>
            </ul>
         </div>





         <div>
            <a
               href="${pageContext.request.contextPath}/festive/festive_write.do?festiveno=${festiveno}">
               관리자 게시글 작성 </a>
         </div>
      </div>



      <%@ include file="../../include/WEB/footer.jsp"%>


   </div>

   <!--모바일 -->
   <div class="snu_mobile_box">

      <!-- 모바일 헤더-->

      <%@ include file="../../include/MOBILE/header.jsp"%>
      <%@ include file="../../include/MOBILE/tab.jsp"%>
      <!--모바일 컨텐츠 박스-->

      <div class="snu_mobile_main_box">

         <div class="snu_main_header">홍보게시판</div>


         <!--모바일 메인 이너-->

         <div class="festive_wrap">

            <c:forEach var="item" items="${output}" varStatus="status">
               <c:set var="title" value="${item.title}" />
               <c:set var="img" value="${item.img}" />
               <c:set var="no" value="${item.festiveno}" />
               <c:set var="end_date" value="${item.end_date}" />

               <fmt:parseDate value="${end_date }" var="endPlanDate"
                  pattern="yyyy-MM-dd" />
               <fmt:parseNumber value="${endPlanDate.time / (1000*60*60*24)}"
                  integerOnly="true" var="endDate"></fmt:parseNumber>
               <c:set var="DATE" value="${endDate -strDate } " />
               <fmt:parseNumber var="i" integerOnly="true" type="number"
                  value="${DATE}" />
               <c:choose>
                  <c:when test="${i<0}">
                     <c:set var="status" value="<span style='color:gray'>[마감]</span>" />
                  </c:when>
                  <c:otherwise>
                     <c:set var="status" value="[진행중]" />
                  </c:otherwise>

               </c:choose>

               <div class="festive_list_inner_box" style="width: 100%;">
                  <a
                     href="${pageContext.request.contextPath}/festive/festive_detail.do?festiveno=${no}">
                     <div class="festive_list_inner_img">
                        <img src="http://3.138.48.22:8080/upload/${img}">
                     </div>
                     <div class="festive_list_inner_state">
                        <span>${status}</span><br> ${title}
                     </div>
                  </a>
               </div>

            </c:forEach>
         </div>

         <div class="paging_box ">
            <ul class="pagination">
               <c:choose>
                  <c:when test="${pageData.prevPage >0 }">
                     <c:url value="/festive/festive.do" var="prevPageUrl">
                        <c:param name="page" value="${pageData.prevPage }" />
                     </c:url>
                     <li><a href="${prevPageUrl }"><i
                           class="fas fa-angle-left"></i></a></li>

                  </c:when>
                  <c:otherwise>
                     <li class="disabled"><a href="#"><i
                           class="fas fa-angle-left"></i></a></li>
                  </c:otherwise>


               </c:choose>

               <c:forEach var="i" begin="${pageData.startPage}"
                  end="${pageData.endPage}" varStatus="status">
                  <c:url value="/festive/festive.do" var="pageUrl">
                     <c:param name="page" value="${i}" />
                  </c:url>
                  <c:choose>
                     <c:when test="${pageData.nowPage ==i }">
                        <li class="active"><span style="color:white;">${i}</span></li>
                     </c:when>
                     <c:otherwise>
                        <li><a href="${pageUrl}">${i}</a></li>

                     </c:otherwise>
                  </c:choose>

               </c:forEach>


               <c:choose>
                  <c:when test="${pageData.nextPage >0 }">
                     <c:url value="/festive/festive.do" var="nextPageUrl">
                        <c:param name="page" value="${pageData.nextPage }" />
                     </c:url>
                     <li><a href="${nextPageUrl }"><i
                           class="fas fa-angle-right"></i></a></li>

                  </c:when>

                  <c:otherwise>

                  </c:otherwise>



               </c:choose>
            </ul>
         </div>


         <!--모바일 메인 이너 끝-->

      </div>



      <!--모바일 footer-->
      <%@ include file="../../include/MOBILE/footer.jsp"%>


   </div>




   <script src="https://kit.fontawesome.com/695be3a17b.js"
      crossorigin="anonymous"></script>
   <script
      src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
   <script src="${pageContext.request.contextPath}/assets/js/style.js">
      
   </script>


</body>
</html>