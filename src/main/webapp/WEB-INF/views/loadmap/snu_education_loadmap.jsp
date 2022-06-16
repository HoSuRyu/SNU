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

.snu_loadmap_main {
	width: 1190px;
	margin: auto;
	margin-bottom:70px;
}

.snu_loadmap_main_header {
	margin-top: 5%;
	font-size: 24px;
	font-weight: bold;
	border-bottom: 3px solid #0f0f70;
	padding-bottom: 10px;
}

.snu_loadmap_main_box {
	margin-top: 30px;
}

.snu_loadmap_main_img {
	width: 400px;
	height: 400px;
}

.loadmap_img {
	width: 100%;
	height: 100%;
}

.snu_loadmap_main_box {
	display: flex;
	justify-content: space-between;
}

.snu_loadmap_main_text {
	width: 60%;
	margin-bottom: 100px;
}

.snu_loadmap_title i {
	font-size: 20px;
	margin-right: 10px;
}

.snu_loadmap_title {
	font-weight: bold;
	font-size: 30px;
	display: flex;
	align-items: center;
	padding: 20px 0px;
}

.snu_loadmap_info {
	font-size: 21px;
	line-height: 30px;
	height: 300px;
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 10;
	-webkit-box-orient: vertical;
}

.snu_loadmap_main_btn_class {
	width: 33%;
	display: inline-block;
	font-weight: bold;
	color: rgba(0, 0, 0, 0.6);
	margin: 5px 0px;
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
}

.snu_loadmap_main_btn {
	margin: 60px 0px;
}

/*모바일 */
@media ( max-width : 900px) {
	.snu_loadmap_main {
		width: 95%;
		margin: auto;
	}
	.snu_loadmap_main_box {
		display: block;
	}
	.snu_loadmap_main_img {
		width: 100%;
	}
	.loadmap_img {
		width: 100%;
		height: 100%;
	}
	.snu_loadmap_main_text {
		width: 100%;
		margin-top:50px;
		line-height: 30px;
	}
	.snu_loadmap_main_btn_class {
		width: 31%;
	}
	.snu_loadmap_info{
	line-height:30px
	}
}

@media ( max-width : 420px) {
	.snu_loadmap_main_btn_class {
		width: 31%;
		font-size: 11px;
	}
	.snu_loadmap_title i {
		font-size: 12px;
		margin-right: 10px;
	}
	.snu_loadmap_title {
		font-size: 18px;
	}
	.loadmap_img {
		width: 100%;
		height: 100%;
	}
}

.snu_class_file_box a {
	text-align: center;
	width: 100%;
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
</style>

</head>

<body>
	<!-- pc부분 -->
	<div class="main_box">
		<div class="header">
			<%@ include file="../../include/WEB/header.jsp"%>
			<%@ include file="../../include/WEB/side_bar.jsp"%>
		</div>


		<div class="snu_loadmap_main">
			<div class="snu_main_header">
				<span>교직로드맵</span> <img src="${pageContext.request.contextPath}/assets/img/snu_logo.png" />
			</div>

			<div class="snu_loadmap_main_box">
				<div class="snu_loadmap_main_img">
					<img class="loadmap_img" src="${pageContext.request.contextPath}/assets/img/snu_edu_loadmap.jpg">
				</div>

				<div class="snu_loadmap_main_text">
					<div class="snu_loadmap_title">
						<i class="fas fa-circle"></i> <span>교직 로드맵이란?</span>
					</div>
					<div class="snu_loadmap_info">일련의 정보를 통합해 자신의 시기에 맞는 교과목 정보를
						한눈에 확인할 수 있도록 하고, 효율적이고 체계적인 학습 계획 수립을 돕기 위해 제작된 교직 로드맵과 자가진단표입니다.
						교직 이수 표준형태 및 학사규정, 교원양성지원센터 홈페이지 자료, 수강 편람 들을 종합해 교직 로드맵을 제작하며,
						자가진단표를 통해 이수 상황을 체크할 수 있도록 합니다. 자료에 대한 업데이트는 매년 진행할 예정입니다.</div>
				</div>
			</div>
			
			<div class="snu_class_file_box">
					<a
						href="${pageContext.request.contextPath}/file/loadmap/Curriculum_for_Teaching_Profession">교직로드맵 download</a>
					<a
						href="${pageContext.request.contextPath}/file/self_check/Curriculum_for_Teaching_Profession">교직 이론 및 기타 졸업 요건 자가진단표 download</a>
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
				<span>교직 졸업로드맵</span>
			</div>

			<div class="snu_loadmap_main_box">
				<div class="snu_loadmap_main_img">
					<img class="loadmap_img" src="${pageContext.request.contextPath}/assets/img/snu_edu_loadmap.jpg">
				</div>
				<div class="snu_loadmap_main_text">
					<div class="snu_loadmap_title">
						<i class="fas fa-circle"></i> <span>교직 로드맵이란?</span>
					</div>
					<div class="snu_mobile_loadmap_info">일련의 정보를 통합해 자신의 시기에 맞는
						교과목 정보를 한눈에 확인할 수 있도록 하고, 효율적이고 체계적인 학습 계획 수립을 돕기 위해 제작된 교직 로드맵과
						자가진단표입니다. 교직 이수 표준형태 및 학사규정, 교원양성지원센터 홈페이지 자료, 수강 편람 들을 종합해 교직
						로드맵을 제작하며, 자가진단표를 통해 이수 상황을 체크할 수 있도록 합니다. 자료에 대한 업데이트는 매년 진행할
						예정입니다.</div>
				</div>
			</div>
			
			<div class="snu_class_file_box">
					<a
						href="${pageContext.request.contextPath}/file/loadmap/Curriculum_for_Teaching_Profession">교직로드맵 download</a>
					<a
						href="${pageContext.request.contextPath}/file/self_check/Curriculum_for_Teaching_Profession">교직 이론 및 기타 졸업 요건 자가진단표 download</a>
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