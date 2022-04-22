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
<link
	href="https://hangeul.pstatic.net/hangeul_static/css/nanum-gothic.css"
	rel="stylesheet">
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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/notice.css">
	<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/main/pagination.css" />


<style type="text/css">
.main_box {
	font-family: 'NanumGothic';
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
				<span>공지사항</span> <img
					src="${pageContext.request.contextPath}/assets/img/snu_logo.png" />
			</div>


			<div class="snu_qna_box">



				<div class="snu_qna_content" id="snu_qna_header">
					<div style="width: 8%;">번호</div>
					<div style="width: 44%;">제목</div>

					<div style="width: 16%;">작성자</div>

					<div style="width: 16%;">게시일</div>
					<div style="width: 16%;">조회수</div>
				</div>

				<c:forEach var="item" items="${output}" varStatus="status">

					<c:set var="title" value="${item.title}" />
					<c:set var="img" value="${item.img}" />
					<c:set var="no" value="${item.announceno}" />
					<c:set var="postdate" value="${item.postdate}" />
					<c:set var="view" value="${item.view}" />
					<a
						href="${pageContext.request.contextPath }/community/announce_detail.do?announceno=${no}">
						<div class="snu_qna_content">
							<div style="width: 8%;">${ no}</div>
							<div style="width: 44%; text-align: left;">${title}</div>
							<div style="width: 16%;">관리자</div>
							<div style="width: 16%;">${postdate}</div>
							<div style="width: 16%;">${view }</div>
						</div>
					</a>

				</c:forEach>

			</div>

			<div class="paging_box">
				<ul class="pagination">
					<c:choose>
						<c:when test="${pageData.prevPage >0 }">
							<c:url value="/community/announce.do" var="prevPageUrl">
								<c:param name="page" value="${pageData.prevPage }" />
							</c:url>
							<a href="${prevPageUrl }">[이전]</a>

						</c:when>
						<c:otherwise>
						[이전]
						</c:otherwise>
					</c:choose>
					<c:forEach var="i" begin="${pageData.startPage}"
						end="${pageData.endPage}" varStatus="status">
						<c:url value="/community/announce.do" var="pageUrl">
							<c:param name="page" value="${i}" />
						</c:url>
						<c:choose>
							<c:when test="${pageData.nowPage ==i }">
								<strong>[${i}]</strong>
							</c:when>
							<c:otherwise>
								<a href="${pageUrl}">[${i}]</a>

							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:choose>
						<c:when test="${pageData.nextPage >0 }">
							<c:url value="/community/announce.do" var="nextPageUrl">
								<c:param name="page" value="${pageData.nextPage }" />
							</c:url>
							<a href="${nextPageUrl }">[다음]</a>
						</c:when>
						<c:otherwise>
						[다음]
						</c:otherwise>
					</c:choose>
				</ul>
			</div>

			<div class="snu_qna_write_box">
				<a class="snu_qna_write_btn"
					href="${pageContext.request.contextPath}/community/announce_write.do?announceno=${announceno}">글쓰기</a>
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
				<span>공지사항</span>

			</div>


			<div class="snu_mobile_qna_main_box">

				<c:forEach var="item" items="${output}" varStatus="status">

					<c:set var="title" value="${item.title}" />
					<c:set var="img" value="${item.img}" />
					<c:set var="no" value="${item.announceno}" />
					<c:set var="postdate" value="${item.postdate}" />
					<c:set var="view" value="${item.view}" />
					<a
						href="${pageContext.request.contextPath }/community/announce_detail.do?announceno=${no}">
						<div class="snu_mobile_qna_content">
							<div class="snu_mobile_qna_content_title">${title }</div>
							<div class="snu_mobile_qna_content_detail">
								<span>관리자 </span><span>| ${postdate}</span> | ${view}
							</div>
						</div>
					</a>

				</c:forEach>

			</div>

			
			<div class="snu_qna_write_box">
				<a class="snu_qna_write_btn"
					href="${pageContext.request.contextPath}/community/announce_write.do?announceno=${announceno}">글쓰기</a>
			</div>
			
			
			<div class="paging_box">
				<ul class="pagination">
					<c:choose>
						<c:when test="${pageData.prevPage >0 }">
							<c:url value="/community/announce.do" var="prevPageUrl">
								<c:param name="page" value="${pageData.prevPage }" />
							</c:url>
							<a href="${prevPageUrl }">[이전]</a>

						</c:when>
						<c:otherwise>
						[이전]
						</c:otherwise>
					</c:choose>
					<c:forEach var="i" begin="${pageData.startPage}"
						end="${pageData.endPage}" varStatus="status">
						<c:url value="/community/announce.do" var="pageUrl">
							<c:param name="page" value="${i}" />
						</c:url>
						<c:choose>
							<c:when test="${pageData.nowPage ==i }">
								<strong>[${i}]</strong>
							</c:when>
							<c:otherwise>
								<a href="${pageUrl}">[${i}]</a>

							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:choose>
						<c:when test="${pageData.nextPage >0 }">
							<c:url value="/community/announce.do" var="nextPageUrl">
								<c:param name="page" value="${pageData.nextPage }" />
							</c:url>
							<a href="${nextPageUrl }">[다음]</a>
						</c:when>
						<c:otherwise>
						[다음]
						</c:otherwise>
					</c:choose>
				</ul>
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