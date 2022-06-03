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
<link
	href="https://hangeul.pstatic.net/hangeul_static/css/nanum-gothic.css"
	rel="stylesheet">
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
.main_festive_title {
	font-weight: bold;
	text-align: center;
	margin-top: 15px;
}

@media ( max-width :900px) {
	.menu {
		display: flex;
		flex-direction: column;
		align-items: center;
	}
	.menu>a {
		margin: 13px;
		width: 100%;
		height: 60px;
	}
}

.pr_body {
	display: block;
}

.pr_body_first {
	margin-top: 20px;
}

.third_wrap {
	display: flex;
	width: 1190px;
	margin: auto;
	justify-content: space-between;
	margin: auto;
}

.third_inner_box {
	width: 48%;
}

.third_inner_header {
	font-weight: bold;
	padding-bottom: 2px;
	border-bottom: 2px solid #0f0f70;
}

.third_inner_img_box {
	height: 450px;
	display: flex;
	align-items: end;
	justify-content: center;
	/* width: 100%; */
	text-align: center;
}

.third_inner_text {
	font-weight: bold;
	display: block;
	padding-top: 10px;
}

.notice_body_text {
	padding: 5px 0px;
	display: block;
	width: 100%;
	border-bottom: 1px solid #dcdcdc;
	font-size: 17px;
}

#notice_info {
	display: inline-block;
	font-size: 0.83em;
	color: #8c8c8c;
	margin-top: 5px;
}
</style>

</head>

<body>
	<!-- pc부분 -->
	<div class="main_box">
		<div class="header">
			<%@ include file="../include/WEB/header.jsp"%>
			<%@ include file="../include/WEB/side_bar.jsp"%>
		</div>


		<div class="snu_content_box">
			<iframe width="100%" height="1070"
				src="https://www.youtube.com/embed/OlVTXkYgVs0?autoplay=1&mute=1&controls=0&loop=1&playlist=OlVTXkYgVs0"
				title="YouTube video player" frameborder="0"
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
		</div>

		<div class="second_page">
			<div class="second_box">
				<div class="onclick" style="border-bottom: 2px solid #0f0f70;">
					<div class="button" style="padding-bottom: 3px;">바로가기</div>

				</div>
				<div class="menu">
					<a class="menus 1" href="#"> <span style="text-align:center;">공실예약하기 <br> (곧 오픈됩니다!)</span>
					</a> <a class="menus 2"
						href="${pageContext.request.contextPath}/loadmap/snu_class_loadmap.do">졸업
						로드맵</a> <a class="menus 3"
						href="${pageContext.request.contextPath}/community/Hi.do">Hi
						사범</a> <a class="menus 4"
						href="https://drive.google.com/drive/folders/178bXKJbEItgUvkZXd1_u4L3EMwgtdaTj?usp=sharing">회의록/안건지</a>
				</div>
			</div>
			<div class="third_wrap">
				<div class="third_inner_box" style="width: 35%">
					<div class="third_inner_header">mbti 게임</div>
					<div class="third_inner_img_box">
						<a href="${pageContext.request.contextPath}/game/game.do"><img
							style="width: 80%;"
							src="${pageContext.request.contextPath}/assets/img/mbti/mbti.png" /></a>
					</div>

				</div>
				<div class="third_inner_box" style="width: 60%">
					<div class="third_inner_header">홍보게시판</div>
					<div class="third_inner_img_box">
						<c:forEach var="item" items="${output1}" varStatus="status">
							<c:set var="title" value="${item.title}" />
							<c:set var="img" value="${item.img}" />
							<c:set var="no" value="${item.festiveno}" />
							<a
								href="${pageContext.request.contextPath}/festive/festive_detail.do?festiveno=${no}"><img
								style="width: 80%;" src="${pageContext.request.contextPath}/../upload/${img}" />
								<span class="third_inner_text">${title}</span> </a>
						</c:forEach>

					</div>

				</div>

			</div>

			<div class="notice">
				<div class="notice_header">
					<div class="notice_header_title">공지사항</div>
					<a class="notice_header_more"
						href="${pageContext.request.contextPath}/community/announce.do">
						더보기<i class="fas fa-chevron-right"></i>
					</a>
				</div>
				<div class="notice_body">

					<c:forEach var="item" items="${output}" varStatus="status">

						<c:set var="title" value="${item.title}" />
						<c:set var="img" value="${item.img}" />
						<c:set var="no" value="${item.announceno}" />
						<c:set var="postdate" value="${item.postdate}" />
						<c:set var="view" value="${item.view}" />
						<a
							href="${pageContext.request.contextPath }/community/announce_detail.do?announceno=${no}">
							<span class="notice_body_text">${title}</span>
						</a>

					</c:forEach>

				</div>
			</div>
		</div>


		<%@ include file="../include/WEB/footer.jsp"%>


	</div>

	<!--모바일 -->
	<div class="snu_mobile_box">

		<!-- 모바일 헤더-->

		<%@ include file="../include/MOBILE/header.jsp"%>
		<%@ include file="../include/MOBILE/tab.jsp"%>
		<!--모바일 컨텐츠 박스-->

		<div class="snu_mobile_content_box"
			style="margin-top: 0px; padding-top: 0px;">
			<iframe width="100%" height="300px"
				src="https://www.youtube.com/embed/OlVTXkYgVs0?autoplay=1&mute=1&controls=0&loop=1&playlist=OlVTXkYgVs0"
				title="YouTube video player" frameborder="0"
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
		</div>
		<div class="middle">
			<div class="notice">
				<div class="notice_header" style="margin-top: 30px;">
					<div class="notice_header_title">공지사항</div>
					<a class="notice_header_more"
						href="${pageContext.request.contextPath}/community/announce.do">
						더보기<i class="fas fa-chevron-right"></i>
					</a>
				</div>
				<div class="notice_body">

					<c:forEach var="item" items="${output}" varStatus="status">

						<c:set var="title" value="${item.title}" />
						<c:set var="img" value="${item.img}" />
						<c:set var="no" value="${item.announceno}" />
						<c:set var="postdate" value="${item.postdate}" />
						<c:set var="view" value="${item.view}" />
						<a
							href="${pageContext.request.contextPath }/community/announce_detail.do?announceno=${no}">
							<div class="notice_body_text">
								<div id="notice_title">${title}</div>
								<div id="notice_info">
									<span>관리자</span> <span>${postdate}</span> <span>${view}</span>

								</div>
							</div>

						</a>

					</c:forEach>

				</div>
			</div>

			<div class="pr">
				<div class="pr_header">
					<div class="pr_header_title" style="padding-bottom: 10px;">MBTI
						게임</div>

				</div>
				<div class="pr_body">


					<a href="${pageContext.request.contextPath}/game/game.do">
						<div class="pr_body_first">
							<div class="pr_body_photo">
								<img
									src="${pageContext.request.contextPath}/assets/img/mbti/mbti.png"
									alt="">
							</div>
						</div>
					</a>



				</div>
			</div>

			<div class="pr">
				<div class="pr_header">
					<div class="pr_header_title" style="padding-bottom: 10px;">홍보게시판</div>

				</div>
				<div class="pr_body">


					<c:forEach var="item" items="${output1}" varStatus="status">
						<c:set var="title" value="${item.title}" />
						<c:set var="img" value="${item.img}" />
						<c:set var="no" value="${item.festiveno}" />

						<a
							href="${pageContext.request.contextPath}/festive/festive_detail.do?festiveno=${no}">
							<div class="pr_body_first">
								<div class="pr_body_photo">
									<img src="${pageContext.request.contextPath}/../upload/${img}" alt="">
								</div>
								<div class="pr_body_text">${title}</div>
							</div>
						</a>

					</c:forEach>


				</div>
			</div>


			<div class="menu">
				<a class="menus 1" href="#">  <span style="text-align:center;">공실예약하기<br>(곧 오픈됩니다!)</span>
					</a> <a
					class="menus 2"
					href="${pageContext.request.contextPath}/loadmap/snu_class_loadmap.do">졸업
					로드맵</a> <a class="menus 3"
					href="${pageContext.request.contextPath}/community/Hi.do">Hi 사범</a>
				<a class="menus 4"
					href="https://drive.google.com/drive/folders/178bXKJbEItgUvkZXd1_u4L3EMwgtdaTj?usp=sharing">회의록/안건지</a>
			</div>
		</div>

		<!--모바일 footer-->
		<%@ include file="../include/MOBILE/footer.jsp"%>
	</div>




	<script src="https://kit.fontawesome.com/695be3a17b.js"
		crossorigin="anonymous"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/style.js">
		
	</script>


</body>
</html>