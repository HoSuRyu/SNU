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


<style type="text/css">
.snu_detail_loadmap_main {
	display: flex;
}

.snu_class_name_box {
	width: 60%;
	margin-top: 20px;
	padding-right: 20px;
	border-right: 3px solid #0f0f70;
}

.snu_class_name_box img {
	width: 100%;
}

.snu_class_file_box {
	display: flex;
	width: 40%;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

.snu_class_file_box a {
	text-align: center;
	width: 80%;
	margin: 15px 0px;
	height: 80px;
	display: flex;
	justify-content: center;
	align-items: center;
	border: 1px solid black;
	background-color:#0f0f70;
	color: white;
	font-weight:bold;
	border-radius: 8px;
	
}

.snu_loadmap_main_text {
	width: 60%;
	margin-top: 40px;
}

.snu_loadmap_title {
	font-weight: bold;
	font-size: 28px;
	color: #0f0f70;
	padding: 20px 0px;
}

.snu_loadmap_table_info b {
	color: #0f0f70;
}

@media ( max-width : 900px) {
	.snu_loadmap_title {
		font-size: 20px;
	}
	.snu_detail_loadmap_main {
		display: block;
	}
	.snu_class_name_box {
		width: 100%;
		border-right: none;
	}
	.snu_class_file_box {
		width: 100%;
	}
}

@media ( max-width : 420px) {
}

.snu_loadmap_graph span {
	width: 25%;
	text-align: center;
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
				<span>과별 졸업로드맵</span> <span
					style="font-size: 16px; color: rgba(0, 0, 0, 0.6);">${department.dname}</span>
				<img
					src="${pageContext.request.contextPath}/assets/img/snu_logo.png" />
			</div>

			<div class="snu_detail_loadmap_main">
				<div class="snu_class_name_box">
					<img
						src="${pageContext.request.contextPath}/assets/img/2_class_loadmap/class/${department.image}.png" />
				</div>
				<div class="snu_class_file_box">
					<a
						href="${pageContext.request.contextPath}/file/loadmap/${department.image}">졸업로드맵 download</a>
					<a
						href="${pageContext.request.contextPath}/file/self_check/${department.image}">자가진단표 download</a>
				</div>
			</div>

			<div class="snu_loadmap_main_text">
				<div class="snu_loadmap_title">
					<span>사범대 공통 졸업요건</span>
				</div>
			</div>
			<div class="snu_loadmap_graph">
				<img
					src="${pageContext.request.contextPath}/assets/img/2_class_loadmap/graph.png"
					style="width: 100%;" />
			</div>




			<div class="snu_loadmap_table_info">
				<div style="margin-top: 20px;">
					<b>1. 교직 적성 인성 검사</b> <br> <span>1 ) 매 학기 초 신청(1학기 3월
						,2학기 9월)</span> <br> <span>2 ) 두 학기 연속으로 검사를 신청할 수 없음(원칙상
						1/2학년에 1차, 3/4학년에 2차 검사)</span>
				</div>

				<div style="margin-top: 20px;">
					<b>2. 응급처치 및 심폐소생술 교육</b> <br> <span>1 ) 매 학기 초 신청, 단체
						교육 신청 기간을 놓쳤을 시 서울대학교 보건진료소 홈페이지(http://cpr.snu.ac.kr)에서 개별 신청</span> <br>
					<span>2 ) 두 학기 연속으로 검사를 신청할 수 없음</span>
				</div>

				<div style="margin-top: 20px; margin-bottom: 200px;">
					<b>3. 성인지교육</b> <br> <span>1 ) 연 1회씩 총 4회 필수 이수</span> <br>
					<span>2 ) 연 1회만 수강 가능</span> <br> <span>3 ) 매 회 총4차시의
						과정 이수(1~2차시 : 인권센터(https://helpms.snu.ac.kr/)의 인권-성평등 교육 이수, 3~4차시
						: 교원양성센터 대면 강의)</span>
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
		<!--모바일 컨텐츠 박스-->

		<div class="snu_mobile_main_box">

			<div class="snu_main_header">
				<span>과별 졸업로드맵</span>
			</div>

			<div class="snu_detail_loadmap_main">
				<div class="snu_class_name_box">
					<img
						src="${pageContext.request.contextPath}/assets/img/2_class_loadmap/class/${department.image}.png" />
				</div>
				<div class="snu_class_file_box">
					<a
						href="${pageContext.request.contextPath}/file/loadmap/${department.image}">졸업로드맵 download</a>
					<a
						href="${pageContext.request.contextPath}/file/self_check/${department.image}">자가진단표 download</a>
				</div>
			</div>

			<div class="snu_loadmap_main_text">
				<div class="snu_loadmap_title">
					<span>사범대 공통 졸업요건</span>
				</div>
			</div>

			<img
				src="${pageContext.request.contextPath}/assets/img/2_class_loadmap/graph.png"
				style="width: 100%;" />

			<div class="snu_loadmap_table_info">
				<div style="margin-top: 20px;">
					<b>1. 교직 적성 인성 검사</b> <br> <span>1 ) 매 학기 초 신청(1학기 3월
						,2학기 9월)</span> <br> <span>2 ) 두 학기 연속으로 검사를 신청할 수 없음(원칙상
						1/2학년에 1차, 3/4학년에 2차 검사)</span>
				</div>

				<div style="margin-top: 20px;">
					<b>2. 응급처치 및 심폐소생술 교육</b> <br> <span>1 ) 매 학기 초 신청, 단체
						교육 신청 기간을 놓쳤을 시 서울대학교 보건진료소 홈페이지(http://cpr.snu.ac.kr)에서 개별 신청</span> <br>
					<span>2 ) 두 학기 연속으로 검사를 신청할 수 없음</span>
				</div>

				<div style="margin-top: 20px; margin-bottom: 200px;">
					<b>3. 성인지교육</b> <br> <span>1 ) 연 1회씩 총 4회 필수 이수</span> <br>
					<span>2 ) 연 1회만 수강 가능</span> <br> <span>3 ) 매 회 총4차시의
						과정 이수(1~2차시 : 인권센터(https://helpms.snu.ac.kr/)의 인권-성평등 교육 이수, 3~4차시
						: 교원양성센터 대면 강의)</span>
				</div>

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


</body>
</html>