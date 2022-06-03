<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<link rel="icon" 
	href="${pageContext.request.contextPath}/assets/img/basic_logo.png" />
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta NAME="ROBOTS"CONTENT="NOINDEX,NOFOLLOW">
<title>선거</title>

<style type="text/css">
body {
	margin: 0px;
	background: #ECEFF1;
}

.snu_game_box {
	width: 500px;
	text-align: center;
	background-color: white;
	margin: auto;
	padding: 10px;
}

.snu_game_title {
	padding: 30px 0px;
}

@media ( max-width : 600px) {
	.snu_game_box {
		width: 370px;
	}
	body {
		background: white;
	}
}

.header_bar {
	height: 20px;
	background-color: #0F0F70;
}

.hidden {
	display: none;
}
</style>

</head>

<body>

	<div>
		<div class="header_bar"></div>
		<div class="snu_game_box" style="">
			<div class="snu_game_title">사범대학교 mbti</div>
			<img style="width: 100%;"
				src="${pageContext.request.contextPath}/assets/img/game.gif">
			<div class="snu_game_title">선생님 사범대 재입학 한번 하시렵니까?</div>
			<div>
				이 게임에서는 성향테스트를 통해 <br /> 당신의 성격에 잘 맞는 과를 추천합니다.<br /> <br /> <br />
				게임에 참여하시렵니까?
			</div>
			<br /> <br /> <br />
			<div>
				<button onclick="location.href='${pageContext.request.contextPath}/game/game.do'">네 , 해볼게요!</button>
				<br /> <br />
				<button type="button"
					onclick="location.href='${pageContext.request.contextPath}/'">아니요
					바빠요..</button>
			</div>
		</div>




	</div>
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="https://kit.fontawesome.com/6478f529f2.js"
		crossorigin="anonymous"></script>
	<script>
		
	</script>
</body>
</html>