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
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-gothic.css" rel="stylesheet">
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
	href="${pageContext.request.contextPath}/assets/css/counsel.css" />	
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/style.css" />
<link rel="icon" 
	href="${pageContext.request.contextPath}/assets/img/basic_logo.png" />

<style type="text/css">
.main_box{
	font-family: 'NanumGothic';
}
.rule_pdf {
	margin: 50px 0px;
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
            <div class="cons_intro">
                <div class="snu_main_header">
                    <span>학생회 소개</span>
                    <img src="${pageContext.request.contextPath}/assets/img/snu_logo.jpg"/>
                
                </div>
                <div class="cons_intro_pt">
                    <img src="${pageContext.request.contextPath}/assets/img/council_intro.png">
                </div>
                
            </div>
    
            <div class="sunbon_intro">
                <div class="snu_main_header">
                    <span>41대 학생회 늘품</span>
                </div>
                <div class="sunbon_explain">
                    <div class="sunbon_explain_photo"><img src="${pageContext.request.contextPath}/assets/img/ne.png"></div>
                    <div class="sunbon_explain_text">
                        <div class="sunbon_explain_text1"><i class="fas fa-circle"></i> 학생회 소개</div>
                        <div class="sunbon_explain_text2">‘늘’은 ‘계속하여 언제나’라는 의미입니다. 제41대 사범대 학생회 ‘늘품’은 늘 사범대 학우들의 곁에 머물며 안정적인 지지대의 역할을 하겠습니다. 언제나 학우들의 목소리에 귀 기울이며, 계속되는 학생회를 만들고자 하는 저희의 비전이 ‘늘’에 담겨있습니다.
                            한자 ‘품(品)’은 ‘입구(口)’ 자가 세 개 모여서 형성됩니다. ‘늘품’은 더 나은 사범대의 미래를 학우들의 목소리를 모아서 실현하고자 합니다. 단순히 선출된 학생회로서 학우들과 괴리되어 가는 것이 아니라 사범대 학우들 자체로서의 학생회가 되고자 합니다. 사범대 학생이 바라는 것이 있다면 그의 목소리에 힘을 실어 유의미한 변화를 만들어낼 수 있는 학생회를 꿈꿉니다.
                            ‘품(品)’이라는 단어에는 이러한 저희의 비전이 담겨있습니다.
                            그들만의 학생회에서, 학우들에게 스며드는, 장벽 없는 학생회로의 탈피를 적극적으로 시도하기 위해 제41대 사범대 학생회 늘품은 끊임없이 노력합니다.
                        </div>
                    </div>
                </div>
            </div>

        </div>

		<%@ include file="../../include/WEB/footer.jsp"%>


	</div>

	<!--모바일 -->
	<div class="snu_mobile_box" style="font-family: 'NanumGothic';">

		<!-- 모바일 헤더-->

		<%@ include file="../../include/MOBILE/header.jsp"%>
		 <%@ include file="../../include/MOBILE/tab.jsp"%>
		<!--모바일 메인 박스 시작-->

        
        <div class="snu_mobile_main_box">

            <div class="snu_main_header">
               학생회 소개
            </div>
            <div class="cons_intro_pt">
                <img src="${pageContext.request.contextPath}/assets/img/council_intro.png">
            </div>
           

            <div class="snu_main_header">
                41대 학생회 늘품
             </div>

             <div class="sunbon_intro">
                <div class="sunbon_explain">
                    <div class="sunbon_explain_photo"><img src="${pageContext.request.contextPath}/assets/img/ne.png"></div>
                
                </div>
                <div class="sunbon_explain_text" style="margin-left:3px">
                    <div class="sunbon_explain_text1" style="margin-bottom:10px; text-align:center"><i class="fas fa-circle"></i> 학생회 소개</div>
                    <div class="sunbon_explain_text2" style="width:100%">‘늘’은 ‘계속하여 언제나’라는 의미입니다. 제41대 사범대 학생회 ‘늘품’은 늘 사범대 학우들의 곁에 머물며 안정적인 지지대의 역할을 하겠습니다. 언제나 학우들의 목소리에 귀 기울이며, 계속되는 학생회를 만들고자 하는 저희의 비전이 ‘늘’에 담겨있습니다.
                        한자 ‘품(品)’은 ‘입구(口)’ 자가 세 개 모여서 형성됩니다. ‘늘품’은 더 나은 사범대의 미래를 학우들의 목소리를 모아서 실현하고자 합니다. 단순히 선출된 학생회로서 학우들과 괴리되어 가는 것이 아니라 사범대 학우들 자체로서의 학생회가 되고자 합니다. 사범대 학생이 바라는 것이 있다면 그의 목소리에 힘을 실어 유의미한 변화를 만들어낼 수 있는 학생회를 꿈꿉니다.
                        ‘품(品)’이라는 단어에는 이러한 저희의 비전이 담겨있습니다.
                        그들만의 학생회에서, 학우들에게 스며드는, 장벽 없는 학생회로의 탈피를 적극적으로 시도하기 위해 제41대 사범대 학생회 늘품은 끊임없이 노력합니다.
                    </div>
                </div>

                
            </div>

            
            
            <!--모바일 메인 이너-->
            
            <div>


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