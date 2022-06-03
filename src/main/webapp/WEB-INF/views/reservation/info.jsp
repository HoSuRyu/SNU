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
<meta NAME="ROBOTS" CONTENT="NOINDEX,NOFOLLOW">
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




<style type="text/css">
.reservation_info_box {
	
}

.reservation_info_header {
	background-color: #0f0f70;
	color: white;
	font-weight: bold;
	padding: 5px;
	font-size: 20px;
	display: flex;
	align-items: center;
}

.reservation_info_detail {
	padding: 10px 5px;
}

.reservation_info_detail span {
	font-weight: bold;
	display: block;
	padding: 5px 10px;
	font-size: 18px;
}

.reservation_info_box {
	width: 95%;
	margin: auto;
}

.reservation_cancel_btn_box {
	text-align: right;
	border-top: 3px solid #0f0f70;
}

.reservation_cancel_btn_box a {
	padding: 10px 5px;
	display: inline-block;
	background: #0f0f70;
	color: white;
	width: 10%;
	margin-top: 20px;
	text-align: center;
}

.date_box {
	padding: 5px 0px;
	font-size: 14px;
	font-weight: bold;
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
				<span>나의 예약 내역</span> <img
					src="${pageContext.request.contextPath}/assets/img/snu_logo.png" />
			</div>

			<div class="reservation_info_box">
				<br> <br>
				<div class="date_box">신청일 | 2022.05.28</div>
				<div class="reservation_info_header">신청자 정보</div>
				<div class="reservation_info_detail">
					<span>학번 |</span><span>이름 |</span><span>연락처 |</span>
				</div>
				<br>
				<div class="reservation_info_header">신청 정보</div>
				<div class="reservation_info_detail">
					<span>학번 |</span><span>이름 |</span><span>연락처 |</span>
				</div>
				<br>
				<div class="reservation_cancel_btn_box">
					<a href="">예약 취소</a>
				</div>

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

			<div class="snu_main_header">
				<span>나의 예약 내역</span>
			</div>

			<!--모바일 메인 이너-->

			<div></div>
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
	<script src="${pageContext.request.contextPath}/assets/js/regex.js"></script>



</body>
</html>