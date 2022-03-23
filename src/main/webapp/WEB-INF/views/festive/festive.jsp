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


<style type="text/css">
.festive_list {
	display: flex;
	align-items: center;
	justify-content: space-between;
	margin-top: 30px;
}

.festive_list_inner_img {
	width: 90%;
	border: 1px solid #0f0f70;
}

.festive_list_inner_img img {
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
			<div class="snu_main_header">제목2</div>

			<div class="festive_list">
				<div class="festive_list_inner_box">
					<a href="${pageContext.request.contextPath}/festive/festive_detail.do">
						<div class="festive_list_inner_img">
							<img
								src="${pageContext.request.contextPath}/assets/img/kakao.png">
						</div>
						<div class="festive_list_inner_state">
							<span>[진행]</span> 1. 첫번째 행사입니다
						</div>
					</a>
				</div>
				<div class="festive_list_inner_box">
					<div class="festive_list_inner_img">
						<img src="${pageContext.request.contextPath}/assets/img/kakao.png">
					</div>
					<div class="festive_list_inner_state">
						<span>[진행]</span> 2. 두번째 행사입니다
					</div>
				</div>
				<div class="festive_list_inner_box">
					<div class="festive_list_inner_img">
						<img src="${pageContext.request.contextPath}/assets/img/kakao.png">
					</div>
					<div class="festive_list_inner_state">
						<span>[진행]</span> 3. 세번째 행사입니다
					</div>
				</div>
			</div>

			<div class="festive_list">
				<div class="festive_list_inner_box">
					<div class="festive_list_inner_img">
						<img src="${pageContext.request.contextPath}/assets/img/kakao.png">
					</div>
					<div class="festive_list_inner_state">
						<span>[마감]</span> 4. 네번째 행사입니다
					</div>
				</div>
				<div class="festive_list_inner_box">
					<div class="festive_list_inner_img">
						<img src="${pageContext.request.contextPath}/assets/img/kakao.png">
					</div>
					<div class="festive_list_inner_state">
						<span>[마감]</span> 5. 다섯번째 행사입니다
					</div>
				</div>
				<div class="festive_list_inner_box">
					<div class="festive_list_inner_img">
						<img src="${pageContext.request.contextPath}/assets/img/kakao.png">
					</div>
					<div class="festive_list_inner_state">
						<span>[마감]</span> 6. 여섯번째 행사입니다
					</div>
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

			<div class="snu_main_header">제목2</div>

			<!--모바일 메인 이너-->

			<div>
				<div class="festive_list">
					<div class="festive_list_inner_box">
						<a href="#">
							<div class="festive_list_inner_img">
								<img
									src="${pageContext.request.contextPath}/assets/img/kakao.png">
							</div>
							<div class="festive_list_inner_state">
								<span>[진행]</span><br> 1. 첫번째 행사입니다
							</div>
						</a>
					</div>
					<div class="festive_list_inner_box">
						<div class="festive_list_inner_img">
							<img
								src="${pageContext.request.contextPath}/assets/img/kakao.png">
						</div>
						<div class="festive_list_inner_state">
							<span>[진행]</span> <br>2. 두번째 행사입니다
						</div>
					</div>

				</div>

				<div class="festive_list">
					<div class="festive_list_inner_box">
						<div class="festive_list_inner_img">
							<img
								src="${pageContext.request.contextPath}/assets/img/kakao.png">
						</div>
						<div class="festive_list_inner_state">
							<span>[마감]</span><br> 3. 세t번째 행사입니다
						</div>
					</div>
					<div class="festive_list_inner_box">
						<div class="festive_list_inner_img">
							<img
								src="${pageContext.request.contextPath}/assets/img/kakao.png">
						</div>
						<div class="festive_list_inner_state">
							<span>[마감]</span> <br> 4. 네섯번째 행사입니다
						</div>
					</div>

				</div>

				<div class="festive_list">
					<div class="festive_list_inner_box">
						<div class="festive_list_inner_img">
							<img
								src="${pageContext.request.contextPath}/assets/img/kakao.png">
						</div>
						<div class="festive_list_inner_state">
							<span>[마감]</span> <br>5. 다섯번째 행사입니다
						</div>
					</div>
					<div class="festive_list_inner_box">
						<div class="festive_list_inner_img">
							<img
								src="${pageContext.request.contextPath}/assets/img/kakao.png">
						</div>
						<div class="festive_list_inner_state">
							<span>[마감]</span> <br>6. 여섯번째 행사입니다
						</div>
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
		src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/style.js">
		
	</script>


</body>
</html>