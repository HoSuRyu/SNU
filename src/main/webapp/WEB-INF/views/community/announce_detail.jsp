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
.back {
	color: white;
	background-color: #0f0f70;
	border-radius: 7px;
	padding: 5px 10px;
	width: 65px;
	text-align: center;
	cursor: pointer;
}

.back_m {
	color: white;
	background-color: #0f0f70;
	border-radius: 7px;
	padding: 5px 10px;
	width: 65px;
	text-align: center;
	cursor: pointer;
}

.midd {
	overflow: hidden;
	position: relative;
	height: 10em;
	margin: 1em 4em 0;
}

.midd ul {
	position: absolute;
	left: 0;
	top: 0;
	width: 20000px;
	height: 10em;
	list-style: none;
	margin: 0px;
	padding: 0px;
}

.midd>ul>li {
	float: left;
	position: relative;
	height: 10em;
	margin-right: 1em;
}

.midd>ul>li>a {
	display: block;
	position: relative;
	height: 100%;
}

.midd>ul>li>a img {
	max-width: 100%;
	height: 100%;
}

.next, .prev {
	overflow: hidden;
	display: block;
	position: absolute;
	bottom: 3em;
	width: 4em;
	height: 4em;
	text-align: left;
	text-indent: -1000px;
	background-repeat: no-repeat;
	background-position: center center;
	background-size: contain;
}

.prev {
	left: 0;
	background-image:
		url(https://www.moe.go.kr/img/2021Renewal/common/page_prev.svg);
}

.next {
	right: 0;
	background-image:
		url(https://www.moe.go.kr/img/2021Renewal/common/page_next.svg);
}

.photo {
	position: relative;
	margin-bottom: 10px;
}

.on {
	opacity: 1;
	width: 100%;
	height: 100%;
	border: 0.2em solid #FC5C42;
	box-sizing: border-box;
	transition: opacity .2s linear;
	margin: 0;
	padding: 0;
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
			<div class="snu_main_header">${ output.title }</div>
			<div class="" style="width: 70%; margin: auto;">
				<div class="photo" style="margin-top: 30px">
					<div class="head">

						<img class="main_img" style="width: 100%;"
							src="http://147.47.106.57:8080/announce/${output.img}" />
					</div>
					<a class="prev"> <span>이전</span>
					</a> <a class="next"> <span>이후</span>
					</a>
					<div class="midd">
						<ul>
							<li id="li_0"><a class="small_img_box on"> <img
									class="small_img" id="0"
									src="http://147.47.106.57:8080/announce/${output.img}" />
							</a></li>

							<c:forEach var="item" items="${imgoutput}" varStatus="status">
								<c:set var="img" value="${item.img}" />
								<c:set var="num" value="${num+1}" />
								<li id="li_${num}"><a class="small_img_box"> <img
										class="small_img" id="${num}"
										src="http://147.47.106.57:8080/announce/${img}" />
								</a></li>
							</c:forEach>

						</ul>

					</div>
				</div>

				<div class="festive_main_text"
					style="width: 100%; margin: 60px 0px;">${output.text}</div>
				<div
					style="display: flex; justify-content: left; margin-left: 370px; margin-bottom: 100px;">
					<div style="display: flex;">
						<div class="back">
							<a style="color: white;"
								href="${pageContext.request.contextPath}/community/announce.do">목록으로</a>
						</div>
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

			<div class="snu_main_header">${output.title }</div>

			<div class="">

				<div style="width: 70%; margin: auto; margin-top: 30px">
					<div style="position: relative;">
						<img class="main_img" style="width: 100%;"
							src="http://147.47.106.57:8080/announce/${output.img}" /> <a
							class="prev" style="left: -20%; bottom: 40%;"> <span>이전</span>
						</a> <a class="next" style="right: -20%; bottom: 40%;"> <span>이후</span>
						</a>
						<ul style="display: none;">
							<li id="li_0"><a class="small_img_box on"> <img
									class="small_img" id="0"
									src="http://147.47.106.57:8080/upload/${output.img}" />
							</a></li>

							<c:forEach var="item" items="${imgoutput}" varStatus="status">
								<c:set var="img" value="${item.img}" />
								<c:set var="num" value="${num+1}" />
								<li id="li_${num}"><a class="small_img_box"> <img
										class="small_img" id="${num}"
										src="http://147.47.106.57:8080/announce/${img}" />
								</a></li>
							</c:forEach>
						</ul>
						<div class="mobile_img_page" style="text-align: center;"></div>

					</div>
				</div>

				<div class="festive_main_text"
					style="width: 100%; margin: 60px 0px;">${output.text}</div>
			</div>

			<div
				style="display: flex; justify-content:center;  margin-bottom: 100px;">
				<div class="back_m">
					<a style="color: white;"
						href="${pageContext.request.contextPath}/community/announce.do">목록으로</a>
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
	<script src="${pageContext.request.contextPath}/assets/js/style.js"></script>


	<script>
		//if(${member ==null} ){
		//var confirm = confirm("로그인이 필요한 페이지입니다. 로그인 하시겠습니까?");
		//if(confirm){
		//window.location.href = '${pageContext.request.contextPath}/login.do';

		//}
		//else{
		//window.location.href = '${pageContext.request.contextPath}/';

		//}

		//}
		$(window).load(
				function() {
					var width_sum = 0;
					var width = $(".midd").width();
					var overflow = 0;
					var move_distance = 0;
					var first_index = 0;
					var last_index = parseInt($(".midd ul li:last img").attr(
							"id"));
					for (var i = 0; i <= last_index; i++) {
						width_sum += $("#li_" + i).outerWidth(true);
						if (width_sum > width) {
							overflow = i;
							break;
						}
					}
					$(".mobile_img_page").html(1 + "/" + (last_index + 1));
					console.log(width_sum);
					console.log(width);
					console.log(overflow);
					$(".next").click(
							function() {
								var index = parseInt($(".on")
										.find(".small_img").attr("id")) + 1;
								if (index <= last_index) {
									if (overflow == 0) {
										slide(index);
									} else {
										slide(index);
										if (index >= overflow) {
											move_distance += $("#li_" + index)
													.outerWidth(true);
											$(".midd ul").animate(
													{
														left : "-"
																+ move_distance
																+ "px"
													}, 200);
										} else {
											move_distance = 0;
											$(".midd ul").animate({
												left : "0px"
											}, 200);
										}
									}
								}
								console.log(move_distance);
							});
					$(".prev").click(
							function() {
								var index = parseInt($(".on")
										.find(".small_img").attr("id")) - 1;
								if (index >= first_index) {
									slide(index);
									if (index >= overflow) {
										move_distance -= $("#li_" + index)
												.outerWidth(true);
										$(".midd ul").animate({
											left : "-" + move_distance + "px"
										}, 200);
									} else {
										move_distance = 0;
										$(".midd ul").animate({
											left : "0px"
										}, 200);
									}
								}
								console.log(move_distance);
							});
					function slide(index) {
						$(".small_img_box").removeClass("on");
						$("#" + index).parent(".small_img_box").addClass("on");
						var src = $(".on").find(".small_img").attr("src");
						$(".main_img").attr("src", src);
						$(".mobile_img_page").html(
								index + 1 + "/" + (last_index + 1));
					}
					$(".small_img_box").click(
							function() {
								move_distance = 0;
								$(".small_img_box").removeClass("on");
								$(this).addClass("on");
								var index = parseInt($(this).find(".small_img")
										.attr("id"));
								slide(index);
								if (index >= overflow && overflow != 0) {
									for (var i = overflow; i <= index; i++) {
										move_distance += $("#li_" + i)
												.outerWidth(true);
									}
									$(".midd ul").animate({
										left : "-" + move_distance + "px"
									}, 200);
								} else {
									$(".midd ul").animate({
										left : "0px"
									}, 200);
								}
								console.log(move_distance);
								console.log(index);
								console.log(overflow);
							});
				});
	</script>


</body>
</html>