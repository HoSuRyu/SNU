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

<link rel="icon"
	href="${pageContext.request.contextPath}/assets/img/basic_logo.png" />
<style type="text/css">
.rule_pdf {
	margin: 50px 0px;
}

.rule_btn {
	margin-top: 50px;
	text-align: center;
}

.rule_btn button {
	display: inline-block;
	padding: 8px 16px;
	border: 2px solid #ddd;
	margin-bottom: 5px;
	margin-right: 5px;
	color: #333;
	font-weight: 500;
	background-color: white;
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
			<div class="snu_main_header">
				<span>학생회칙 / 세칙</span> <img
					src="${pageContext.request.contextPath}/assets/img/snu_logo.png" />
			</div>
			<div class="rule_btn">
				<button style="color: #005BA6; border-color: #005BA6" id="1_btn">학생회칙</button>
				<button id="2_btn">세칙</button>
			</div>
			<div>
				<iframe id="first_pdf" class="rule_pdf" width="100%" height="700"
					src="${pageContext.request.contextPath}/assets/file/pdf/education_college_rule_2021082.pdf"></iframe>

				<iframe id="second_pdf" style="display: none;" class="rule_pdf"
					width="100%" height="700"
					src="${pageContext.request.contextPath}/assets/file/pdf/선거시행세칙(2019.09.10. 개정).pdf"></iframe>
			</div>

		</div>

		<%@ include file="../../include/WEB/footer.jsp"%>


	</div>

	<!--모바일 -->
	<div class="snu_mobile_box" style="font-family: 'NanumGothic';">

		<!-- 모바일 헤더-->

		<%@ include file="../../include/MOBILE/header.jsp"%>
		<%@ include file="../../include/MOBILE/tab.jsp"%>
		<!--모바일 컨텐츠 박스-->
		<div class="snu_mobile_main_box">
			<div class="snu_main_header">
				<span>학생회칙 / 세칙</span>
			</div>
			<div>
			모바일에서는 지원되지 않습니다! pc에서 확인해주세요!
			</div>
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
	<script>
		$("#1_btn").click(function() {
			$("#1_btn").css("border-color", "#005BA6")
			$("#1_btn").css("color", "#005BA6")

			$("#2_btn").css("border-color", "#ddd")
			$("#2_btn").css("color", "black")

			$("#second_pdf").css("display", "none");
			$("#first_pdf").css("display", "block");

		})
		$("#2_btn").click(function() {

			$("#2_btn").css("border-color", "#005BA6")
			$("#2_btn").css("color", "#005BA6")

			$("#1_btn").css("border-color", "#ddd")
			$("#1_btn").css("color", "black")

			$("#first_pdf").css("display", "none");
			$("#second_pdf").css("display", "block");

		})
	</script>


</body>
</html>