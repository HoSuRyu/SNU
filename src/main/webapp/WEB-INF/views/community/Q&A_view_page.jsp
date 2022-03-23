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
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/FAQ.css" />




<style type="text/css">
.post_main_box {
	padding: 50px 0px;
	border-bottom: 3px solid #0f0f70;
}

.post_main_header b {
	font-size: 30px;
	display: block;
}

.post_main_header {
	margin-bottom: 30px;
}

.post_main_text {
	width: 80%;
	font-size: 18px;
	line-height: 25px;
}

.post_btn_box {
	text-align: right;
	margin-top: 10px;
	margin-bottom: 100px;
}

.post_btn_box a {
	border: none;
	color: white;
	background-color: #0f0f70;
	font-weight: 600;
	padding: 7px 20px;
	border-radius: 10px;
	font-size: 20px;
}

@media ( max-width : 900px) {
	.post_main_text {
		width: 100%;
		font-size: 18px;
		line-height: 25px;
	}
}

@media ( max-width : 420px) {
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
				공지사항 <img src="${pageContext.request.contextPath }/assets/img/snu_logo.png" />
			</div>

			<c:set var="postdate" value="${output.postdate}" />
			<c:choose>
				<c:when test="${output.posttype eq '익명'}">
					<c:set var="name" value="익명" />
				</c:when>
				<c:otherwise>
					<c:set var="name" value="${output.memberno}번회원" />
				</c:otherwise>
			</c:choose>

			<div class="post_main_box">
				<div class="post_main_header">
					<b>${output.posttitle}</b> <br> <span>${output.postcategory}</span>
					/ ${fn:substring(postdate,0,10)} / 조회수 ${output.postview} / ${name}
				</div>

				<div class="post_main_text">${output.postcontent}</div>
			</div>


			<div class="post_btn_box">
				<a>답글</a>
				<a href="${pageContext.request.contextPath}/community/Q&A.do">목록</a>
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

			<div class="snu_main_header">공지사항</div>

			<!--모바일 메인 이너-->

			<div class="post_main_box">
				<div class="post_main_header">
					<b>글의 제목을 여기에 띄어주세요.</b> <br> <span>건의 / 2022.02.23 /
						조회수 12345 / 작성자</span>
				</div>

				<div class="post_main_text">대한민국 최초의 국립 고등교육기관으로 첫 장을 열었던
					서울대학교는 이제 대한민국을 대표하는 세계적인 대학으로 자리매김하였습니다. 급변하는 국내외 환경 속에서 대학들은 여러
					가지 도전에 직면하고 있습니다. 서울대학교는 세계를 선도하는 진리 탐구와 공동체를 위한 공헌에 더욱 매진하기 위해 이제
					혁신의 도정에 나섭니다. 독창적인 사유능력과 더불어 공동체를 두루 살피고 타인을 존중하는 인재를 양성할 것입니다. 사회
					곳곳에 숨어있는 인재들을 선발하여 서울대에서 그 잠재력을 꽃피우도록 할 것입니다. 긴 호흡으로 새로운 영역을 개척하는
					연구를 수행할 것입니다. 사회적 난제들에 대해 실현가능한 정책을 연구하고, 사회가 나아가야 할 방향을 제시하며 사회와
					함께 발전해 나가겠습니다. 새로운 길을 가고 함께 가는 인재 양성 담대한 진리 탐구와 사회 난제에 대한 협동 연구 윤리와
					다양성을 존중하며 소통하는 학문공동체 서울대인이 함께 지혜와 힘을 모아 탁월하고 따뜻한 지성의 전당을 만들겠습니다. 많은
					성원을 부탁드립니다.</div>
			</div>


			<div class="post_btn_box">
				<button>답글</button>
				<button>목록</button>
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