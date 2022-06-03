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
<meta NAME="ROBOTS"CONTENT="NOINDEX,NOFOLLOW">
<title>제41대 사범대학 학생회 늘품</title>
<link rel="icon" 
	href="${pageContext.request.contextPath}/assets/img/basic_logo.png" />
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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/FAQ.css">




<style type="text/css">

</style>

</head>

<body>
	<!-- pc부분 -->
	<div class="main_box">
		<div class="header">
			<%@ include file="../../include/WEB/header.jsp"%>
			<%@ include file="../../include/WEB/side_bar.jsp"%>

		</div>
		
		
		<div class="faq_main">
                
                <div class="snu_main_header">
                    <span>FAQs</span>
                    <img src="${pageContext.request.contextPath}/assets/img/snu_logo.png"/>
                </div>
    
                <div class="faq_body">
                    <div class="faq_body_main">사범대 어떤가요 어떤가요 어떤가요</div>
                </div>
                <div class="faq_body">
                    <div class="faq_body_main">사범대 어떤가요 어떤가요 어떤가요</div>
                </div> <div class="faq_body">
                    <div class="faq_body_main">사범대 어떤가요 어떤가요 어떤가요</div>
                </div>

                <div class="faq_add">
                    <div class="faq_add_btn">추가하기</div>
                </div>

            </div>

		<%@ include file="../../include/WEB/footer.jsp"%>


	</div>

	<!--모바일 -->

	<!-- 모바일 헤더-->
	<div class="snu_mobile_box">
		<%@ include file="../../include/MOBILE/header.jsp"%>
		<%@ include file="../../include/MOBILE/tab.jsp"%>
		<!--모바일 컨텐츠 박스-->
		
	 <div class="snu_mobile_main_box">

            <div class="snu_main_header">
               FAQs
            </div>
            
            <!--모바일 메인 이너-->
       
            <div>
                <div class="faq_main">
                    
                    <div class="faq_body">
                        <div class="faq_body_main">사범대 어떤가요 어떤가요 어떤가요</div>
                    </div>
                    <div class="faq_body">
                        <div class="faq_body_main">사범대 어떤가요 어떤가요 어떤가요</div>
                    </div>
                    <div class="faq_body">
                        <div class="faq_body_main">사범대 어떤가요 어떤가요 어떤가요</div>
                    </div>

                    <div class="faq_add">
                        <div class="faq_add_btn">추가하기</div>
                    </div>
                </div>
                
             

            </div>
            <!--모바일 메인 이너 끝-->

        </div>


		<!--모바일 footer-->
		<%@ include file="../../include/MOBILE/footer.jsp"%>


	</div>




	<script src="https://kit.fontawesome.com/695be3a17b.js"
		crossorigin="anonymous"></script>
	<script
		src="${pageContext.request.contextPath }/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath }/assets/js/style.js">
		
	</script>


</body>
</html>