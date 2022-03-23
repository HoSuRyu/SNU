<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html lang="en">




<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>사범대</title>
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/side_btn.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/footer.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mobile_header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mobile_footer.css">
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-pen.css" rel="stylesheet">
	<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-gothic.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/introduce.css">
</head>

<style>
@import url(//fonts.googleapis.com/earlyaccess/nanumgothic.css);
</style>




<body>
    <div class="main_box">

        <!--pc fix bar-->
        <div class="header">
			<%@ include file="../../include/WEB/header.jsp"%>
			<%@ include file="../../include/WEB/side_bar.jsp"%>
		</div>

        <!--pc 메인 박스 시작-->
        <div class="snu_main_box">
            <div class="snu_main_header">
                <span>집행위원회 소개</span>
                <img src="${pageContext.request.contextPath}/assets/img/snu_logo.png"/>
            </div>

            <div class="cons_intro_text">제41대 사범대 학생회 집행위원회는 교육국, 문화국, 사무국, 소통기획국, 인권사회국으로 구성되어 있습니다.</div>
            <div class="cons_intro_pt">
                <img src="${pageContext.request.contextPath}/assets/img/introduce_img.png">
            </div>

            <div class="cons_intro_title">
                <div class="cons_intro_name">국별 배너</div>
            </div>
            <div class="small_box">
                <a href="${pageContext.request.contextPath}/introduce/business_introduce.do?cnum=1">교육국</a>
                <a href="${pageContext.request.contextPath}/introduce/business_introduce.do?cnum=2">문화국</a>
                <a href="${pageContext.request.contextPath}/introduce/business_introduce.do?cnum=3">사무국</a>
                <a href="${pageContext.request.contextPath}/introduce/business_introduce.do?cnum=4">소통기획국</a>
                <a href="${pageContext.request.contextPath}/introduce/business_introduce.do?cnum=5">인권사회국</a>
            </div>

        </div>



        <!--pc 메인박스 끝-->


        <!--pc footer-->
        <%@ include file="../../include/WEB/footer.jsp"%>






    </div>



    <!--모바일 -->
    <div class="snu_mobile_box">

        <!-- 모바일 헤더-->
        <%@ include file="../../include/WEB/header.jsp"%>
			<%@ include file="../../include/WEB/side_bar.jsp"%>
        <!--모바일 메인 박스 시작-->

        
        <div class="snu_mobile_main_box">

            <div class="snu_main_header">
               <div>집행위원회 소개</div>
               <div class="small_title">제41대 사범대 학생회 집행위원회는<br> 교육국, 문화국, 사무국, 소통기획국, 인권사회국으로 구성되어 있습니다.</div>
            </div>
            <div class="cons_intro_pt">
                <img src="${pageContext.request.contextPath}/assets/img/introduce_img.png">
            </div>

            <div class="snu_main_header">
                <div>국별배너</div>
             </div>
             <div class="small_box_m">
                <div><a class="a" href="${pageContext.request.contextPath}/introduce/business_introduce.do?cnum=1">교육국</a></div>
                <div><a class="a" href="${pageContext.request.contextPath}/introduce/business_introduce.do?cnum=2">문화국</a></div>
                <div><a class="a" href="${pageContext.request.contextPath}/introduce/business_introduce.do?cnum=3">사무국</a></div>
                <div><a class="a" href="${pageContext.request.contextPath}/introduce/business_introduce.do?cnum=4">소통기획국</a></div>
                <div><a class="a" href="${pageContext.request.contextPath}/introduce/business_introduce.do?cnum=5">인권사회국</a></div>
            </div>

            
            <!--모바일 메인 이너-->
           
            <!--모바일 메인 이너 끝-->

        </div>

        <!--모바일 메인 박스 끝-->
       


        <!--모바일 footer-->
         <%@ include file="../../include/WEB/footer.jsp"%>


    </div>

    <script src="https://kit.fontawesome.com/6478f529f2.js" crossorigin="anonymous"></script>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/style.js"> </script>
   

</body>




</html>