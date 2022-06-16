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
    <meta NAME="ROBOTS"CONTENT="NOINDEX,NOFOLLOW">
    <title>사범대</title>
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/side_btn.css">
<link rel="icon" 
	href="${pageContext.request.contextPath}/assets/img/basic_logo.png" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/footer.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mobile_header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mobile_footer.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/edu.css">
    <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-gothic.css" rel="stylesheet">
</head>

<style>
.main_box{
	font-family: 'NanumGothic';
}
</style>




<body>
    <div class="main_box">
    		<div class="header">
			<%@ include file="../../include/WEB/header.jsp"%>
			<%@ include file="../../include/WEB/side_bar.jsp"%>
		</div>

        

        <!--pc 메인 박스 시작-->
        
        <div><img class="back" src="${pageContext.request.contextPath}/assets/img/${output[0].img}"/></div>
        <div class="snu_main_box">
            <div class="snu_main_header">
                <div class="edu_intro_left">
                <div class="edu_intro_name">${output[0].cname}</div>
                <div class="edu_intro_capt">국장 ${output[0].ccapt}(${output[0].cdept}${output[0].stunum})</div>
                <img src="${pageContext.request.contextPath}/assets/img/snu_logo.png"/>
            </div>

            </div>
            <div class="edu_intro_pt">
               ${output[0].cintro}
            </div>
            
            <div class="snu_main_header">
                <div class="edu_intro_doing_name">주요사업</div>
                
            </div>
		<c:forEach var="busin" items="${output}" varStatus="status">

            <div class="edu_intro_detail">
                <div class="edu_intro_detail_1">
                    <div style="display:flex; justify-content:space-between;"><div class="detail_title">${status.count}. ${busin.bname}</div> <a style="display:flex; align-items:center; justify-content:center; margin-bottom:20px;" href="${busin.link}">${busin.linkname}</a></div>
                    <div class="detail_body">${busin.busin}</div>
                </div>
            </div>
            </c:forEach>
        </div>



        <!--pc 메인박스 끝-->


        <!--pc footer-->
        <%@ include file="../../include/WEB/footer.jsp"%>






    </div>



    <!--모바일 -->
    <div class="snu_mobile_box" style="font-family: 'NanumGothic';">

        <!-- 모바일 헤더-->
        <%@ include file="../../include/MOBILE/header.jsp"%>
          <%@ include file="../../include/MOBILE/tab.jsp"%>

        <!--모바일 메인 박스 시작-->

     
     <!-- <div><img class="back_m" src="${pageContext.request.contextPath}/assets/img/${output[0].img}"/></div>-->
        <div class="snu_mobile_main_box">

            <div class="snu_main_header">
               <span>${output[0].cname}</span>
               <span class="sub_title">국장 ${output[0].ccapt}(${output[0].cdept}${output[0].stunum})</span>
            </div>
            
            <!--모바일 메인 이너-->
            
            <div>
                <div class="edu_intro_pt">
                    ${output[0].cintro}
                </div>

<div class="snu_main_header">
                <div class="edu_intro_doing_name">주요사업</div>
                
            </div>
                <c:forEach var="busin" items="${output}" varStatus="status">

            <div class="edu_intro_detail">
                <div class="edu_intro_detail_1">
                    <div class="detail_title">${status.count}. ${busin.bname}</div>
                    <a style="margin-bottom:15px;" href="${busin.link}">${busin.linkname }</a>
                    <div style="margin-top:15px;" class="detail_body">${status.count}. ${busin.busin}</div>
                </div>
            </div>
            </c:forEach>

            </div>
            <!--모바일 메인 이너 끝-->

        </div>

        <!--모바일 메인 박스 끝-->
       


        <!--모바일 footer-->
        <%@ include file="../../include/MOBILE/footer.jsp"%>



    </div>

    <script src="https://kit.fontawesome.com/6478f529f2.js" crossorigin="anonymous"></script>
    <script
		src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/style.js">
		
	</script>
   

</body>




</html>