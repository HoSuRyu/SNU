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
.snu_qna_box {
	margin-bottom: 50px;
}

.snu_qna_content {
	display: flex;
	justify-content: space-between;
	align-items: center;
	border-bottom: 1px solid rgba(0, 0, 0, 0.2);
}

#snu_qna_header {
	border-bottom: 1px solid rgba(0, 0, 0, 0.5);
}

.snu_qna_write_box {
	width: 100%;
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

.snu_qna_content div {
	padding: 10px 5px;
	text-align: center;
}

#snu_qna_header div {
	font-weight: bold;
	font-size: 16px;
}

.qna_mobile_views {
	color: rgba(0, 0, 0, 0.5);
	font-size: 10px;
	font-weight: bold;
	position: absolute;
}

/*모바일 박스*/
.snu_mobile_main_box .snu_qna_content {
	font-size: 11px;
}

.snu_mobile_qna_content {
	padding: 15px 10px;
	border-bottom: 1px solid rgba(0, 0, 0, 0.2);
	color: gray
}

.snu_mobile_qna_content_title {
	font-weight: bold;
	padding-bottom: 10px;
}

.snu_mobile_qna_content_detail {
	font-size: 11px;
}

.snu_mobile_qna_content_title i {
	font-size: 12px;
	position: relative;
	top: -2px;
}

.qna_read_btn {
	cursor: pointer;
}

#protected_qna_content {
	background-color: rgba(0, 0, 0, 0.1);
}

#protected_qna_content i {
	color: grey;
	position: relative;
	left: 5px;
	top: -1px;
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
			<div class="snu_main_content">

				<div class="snu_main_header">
					<span>건의 및 Q&A</span> <img
						src="${pageContext.request.contextPath}/assets/img/snu_logo.png" />
				</div>
				<div class="snu_qna_box">
					<div class="snu_qna_content" id="snu_qna_header">
						<div style="width: 8%;">카테고리</div>
						<div style="width: 44%;">제목</div>

						<div style="width: 16%;">작성자</div>

						<div style="width: 16%;">게시일</div>
						<div style="width: 16%;">조회수</div>
					</div>

					<c:forEach var="item" items="${output}" varStatus="status">
						<c:set var="postcategory" value="${item.postcategory}" />
						<c:set var="posttitle" value="${item.posttitle}" />
						<c:set var="name" value="${item.name}" />
						<c:set var="postdate" value="${item.postdate}" />
						<c:set var="postview" value="${item.postview}" />
						<c:set var="posttype" value="${item.posttype}" />
						<c:set var="postpublic" value="${item.postpublic}" />
						<c:set var="postno" value="${item.postno}" />

						<c:choose>
							<c:when test="${postpublic eq '비공개'}">
								<a href="#">
									<div class="snu_qna_content" id="protected_qna_content">
										<div style="width: 8%;">${postcategory }</div>
										<div style="width: 44%; text-align: left;">${posttitle }
											<i class="fa-solid fa-lock"></i>
										</div>
										<c:choose>
											<c:when test="${posttype eq '익명'}">
												<div style="width: 16%;">익명</div>
											</c:when>
											<c:otherwise>
												<div style="width: 16%;">${name}</div>
											</c:otherwise>
										</c:choose>
										<div style="width: 16%;">${fn:substring(postdate,0,10)}</div>
										<div style="width: 16%;">${postview }</div>
									</div>
								</a>
							</c:when>
							<c:otherwise>
								<a class="qna_read_btn" id="${postno}">
									<div class="snu_qna_content">
										<div style="width: 8%;">${postcategory }</div>
										<div style="width: 44%; text-align: left;">${posttitle }</div>

										<c:choose>
											<c:when test="${posttype eq '익명'}">
												<div style="width: 16%;">익명</div>
											</c:when>
											<c:otherwise>
												<div style="width: 16%;">${name}</div>
											</c:otherwise>
										</c:choose>
										<div style="width: 16%;">${fn:substring(postdate,0,10)}</div>
										<div style="width: 16%;">${postview }</div>
									</div>
								</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>



				</div>

				<div class="snu_qna_write_box">
					<a href="${pageContext.request.contextPath}/community/Q&A_write.do"
						class="snu_qna_write_btn">글쓰기</a>
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
				<span>건의 및 Q&A</span>
			</div>
			<div class="snu_mobile_qna_main_box">
				<div class="snu_mobile_qna_content">
					<div class="snu_mobile_qna_content_title">
						류호수 입니다. 안녕하세요 <i class="fas fa-lock"></i>
					</div>
					<div class="snu_mobile_qna_content_detail">
						<span>류호수 </span><span>| 2021.02.03</span> | <i class="far fa-eye"></i>
						252
					</div>
				</div>

				<div class="snu_mobile_qna_content">
					<div class="snu_mobile_qna_content_title">
						예시 제목 2입니다. <i class="fas fa-lock"></i>
					</div>
					<div class="snu_mobile_qna_content_detail">
						<span>조홍식 </span><span>| 2021.02.03</span> | <i class="far fa-eye"></i>
						252
					</div>
				</div>

				<div class="snu_mobile_qna_content">
					<div class="snu_mobile_qna_content_title">안녕하세요 자원봉사단 단장 이창준
						입니다.</div>
					<div class="snu_mobile_qna_content_detail">
						<span>이창준 </span><span>| 2021.02.03</span> | <i class="far fa-eye"></i>
						123,456,789
					</div>
				</div>

				<div class="snu_mobile_qna_content">
					<div class="snu_mobile_qna_content_title">안녕하세요 자원봉사단 단장 이창준
						입니다.</div>
					<div class="snu_mobile_qna_content_detail">
						<span>이창준 </span><span>| 2021.02.03</span> | <i class="far fa-eye"></i>
						123,456,789
					</div>
				</div>

				<div class="snu_mobile_qna_content">
					<div class="snu_mobile_qna_content_title">안녕하세요 자원봉사단 단장 이창준
						입니다.</div>
					<div class="snu_mobile_qna_content_detail">
						<span>이창준 </span><span>| 2021.02.03</span> | <i class="far fa-eye"></i>
						123,456,789
					</div>
				</div>
				<div class="snu_mobile_qna_content">
					<div class="snu_mobile_qna_content_title">안녕하세요 자원봉사단 단장 이창준
						입니다.</div>
					<div class="snu_mobile_qna_content_detail">
						<span>이창준 </span><span>| 2021.02.03</span> | <i class="far fa-eye"></i>
						123,456,789
					</div>
				</div>
				<div class="snu_mobile_qna_content">
					<div class="snu_mobile_qna_content_title">안녕하세요 자원봉사단 단장 이창준
						입니다.</div>
					<div class="snu_mobile_qna_content_detail">
						<span>이창준 </span><span>| 2021.02.03</span> | <i class="far fa-eye"></i>
						123,456,789
					</div>
				</div>
			</div>


			<div class="snu_qna_write_box">
				<a class="snu_qna_write_btn">글쓰기</a>
			</div>

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
	<script>
	$(".qna_read_btn").click(function(){
			if(${member == null} ){
				if(confirm("로그인이 필요한 서비스입니다. 로그인 하시겠습니까?")){
					window.location = "${pageContext.request.contextPath}/login.do"	
				}
				else{
					return;
				}
			}
			else{
				goPost($(this).attr("id"));
				
			}
	
	})
	
	function goPost(postno) {
			var newForm = $('<form></form>');
			newForm.attr("method", "Post");
			newForm.attr("action",
					"${pageContext.request.contextPath }/community/Q&A_view_page.do");

			newForm.append($('<input/>', {
				type : 'hidden',
				name : 'postno',
				value : postno
			}));
			
			newForm.appendTo('body');

			newForm.submit();

		}
	
	
	</script>


</body>
</html>