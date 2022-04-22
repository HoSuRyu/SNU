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
.qna_write_form div {
	margin-top: 10px;
}

.qna_write_form {
	margin-top: 30px;
}

.snu_qna_write_box {
	text-align: right;
	margin-bottom: 30px;
	margin-top: 30px;
}

.snu_qna_write_btn {
	color: white;
	background-color: #0f0f70;
	padding: 5px 10px;
	width: 100px;
	cursor: pointer;
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
				<span>공지사항 글 쓰기</span> <img
					src="${pageContext.request.contextPath}/assets/img/snu_logo.png" />
			</div>

			<form class="qna_write_form" method="post" enctype="multipart/form-data"
				action="${pageContext.request.contextPath }/community/announce_insert.do">

				<div style="margin-top: 30px;">
					<input id="title" name="title"
						style="width: 60%; padding: 10px 5px; font-weight: bold;"
						type="text" placeholder="제목을 입력해 주세요" />
				</div>
				<div style="margin-top: 30px;">
					<textarea id="content" name="text"
						style="width: 100%; height: 400px; padding: 10px 5px; font-size: 20px;"
						placeholder="내용을 입력해 주세요...."></textarea>
					<label for="thumbnail"> 썸네일 이미지</label>
					<input type="file" name="thumbnail" />
					<br><br><br>
					<label for="file"> 나머지 이미지</label><input multiple="multiple" type="file" name="file" />
				</div>
				<input type="hidden" name="announceno" value="${announceno}" />
				<div class="snu_qna_write_box">
					<button class="snu_qna_write_btn">글쓰기</button>
				</div>
			</form>
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
				<span>건의 및 Q&A 글쓰기</span>
			</div>

			<!--모바일 메인 이너-->

			<div>
				<form class="qna_write_moblie_form">
					<div>
						<b>카테고리</b> <label for="category1"><input id="category1"
							type="radio" name="chk_info1" value="HTML">건의</label> <label
							for="category2"><input id="category2" type="radio"
							name="chk_info1" value="HTML">질문</label>
					</div>

					<div>
						<b>공개설정</b> <label for="category3"><input id="category3"
							type="radio" name="chk_info2" value="HTML">공개</label> <label
							for="category4"><input id="category4" type="radio"
							name="chk_info2" value="HTML">비공개</label>
					</div>

					<div>
						<b>익명여부</b> <label for="category5"><input id="category5"
							type="radio" name="chk_info3" value="HTML">익명</label> <label
							for="category6"><input id="category6" type="radio"
							name="chk_info3" value="HTML">실명</label>
					</div>
					<div style="margin-top: 30px; text-align: center;">
						<input id="title"
							style="width: 95%; padding: 10px 5px; font-weight: bold;"
							type="text" placeholder="제목을 입력해 주세요" />
					</div>
					<div style="margin-top: 30px; text-align: center;">
						<textarea
							style="width: 95%; height: 400px; padding: 10px 5px; font-size: 20px; margin: auto;"
							placeholder="내용을 입력해 주세요...."></textarea>
					</div>
					<div class="snu_qna_write_box">
						<button class="snu_qna_write_btn">글쓰기</button>
					</div>
				</form>
			</div>
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
	<script>
		
	</script>


</body>
</html>