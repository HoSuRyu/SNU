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
<title>제41대 사범대학 학생회 늘품(조홍식)(류호수)</title>

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
				<div class="onclick">
					<div class="button">바로가기</div>

				</div>
				<div class="menu">
					<a class="menus 1"
						href="${pageContext.request.contextPath}/calendar.do">공실예약하기</a> <a
						class="menus 2"
						href="${pageContext.request.contextPath}/loadmap/snu_class_loadmap.do">졸업
						로드맵</a> <a class="menus 3"
						href="${pageContext.request.contextPath}/community/Hi.do">Hi
						사범</a> <a class="menus 4"
						href="${pageContext.request.contextPath}/calendar.do">회의록/안건지</a>
				</div>
			</div>
			<div class="third_box">
				<div class="third_left">
					<div>이미지이미지이미지</div>
				</div>
				<div class="third_right">
					<a href="${pageContext.request.contextPath}/festive/festive.do"
						class="third_right_top">홍보게시판</a>
					<div class="third_right_bot">

						<c:forEach var="item" items="${output1}" varStatus="status">
							<c:set var="title" value="${item.title}" />
							<c:set var="img" value="${item.img}" />
							<c:set var="no" value="${item.festiveno}" />

							<div class="main_festive_box">
								<a href="${pageContext.request.contextPath}/festive/festive_detail.do?festiveno=${no}"> <img style="width: 100%;"
									src="http://3.138.48.22:8080/upload/${img}" /> <br>
									<div class="main_festive_title">
										<span>${title}</span>
									</div>
								</a>
							</div>
						</c:forEach>



					</div>
				</div>
			</div>

			<div class="notice">
				<div class="notice_header">
					<div class="notice_header_title">공지사항</div>
					<div class="notice_header_more">
						더보기<i class="fas fa-chevron-right"></i>
					</div>
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
							<div class="notice_body_text">${title}</div>
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

		<div class="snu_mobile_content_box">
			<iframe width="100%" height="300px"
				src="https://www.youtube.com/embed/OlVTXkYgVs0?autoplay=1&mute=1&controls=0&loop=1&playlist=OlVTXkYgVs0"
				title="YouTube video player" frameborder="0"
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
		</div>
		<div class="middle">
			<div class="notice">
				<div class="notice_header">
					<div class="notice_header_title">공지사항</div>
					<div class="notice_header_more">
						더보기<i class="fas fa-chevron-right"></i>
					</div>
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
							<div class="notice_body_text">${title}</div>
						</a>

					</c:forEach>

				</div>
			</div>

			<div class="onclick_m">
				<div class="card_news">
					<div class="card_news_header">
						<div class="notice_header_title">카드뉴스</div>
					</div>
					<div class="card_news_body">
						<img src="assets/img/kakao.png">
					</div>
				</div>
			</div>
			<div class="pr">
				<div class="pr_header">
					<div class="pr_header_title">홍보게시판</div>
					<div class="pr_header_more">
						더보기<i class="fas fa-chevron-right"></i>
					</div>
				</div>
				<div class="pr_body">
					<div class="pr_body_first">
						<div class="pr_body_photo">
							<img src="assets/img/everytime.png" alt="">
						</div>
						<div class="pr_body_text">[진행]겨울사만 신청</div>
					</div>
					<div class="pr_body_second">
						<div class="pr_body_photo">
							<img src="assets/img/everytime.png" alt="">
						</div>
						<div class="pr_body_text">사범대 새터</div>
					</div>
				</div>
			</div>


			<div class="onclick_m">
				<div class="onclick_m_header">
					<div class="onclick_m_header_title">바로가기</div>
				</div>
				<div class="onclick_m_body">
					<div class="first_body">
						<div class="first_body_one">공실 예약하기</div>
						<div class="first_body_two">졸업 로드맵</div>
					</div>
					<div class="second_body">
						<div class="second_body_one">Hi 사범</div>
						<div class="second_body_two">회의록/안건지</div>
					</div>
				</div>
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