
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
.btn_delete {
	background-color: #0f0f70;
	color: white;
	border-radius: 5px;
	border: none;
}

.comment_main.btn {
	display: flex;
	justify-content: flex-end;
}

.comment_who {
	margin-bottom: 5px;
}

.comment_rely_name {
	font-size: 16px;
	font-weight: bold;
}

.comment_box {
	border-bottom: 1px solid #dcdcdc;
	padding: 20px 10px;
}

.post_main_box {
	border-bottom: 1px solid #dcdcdc;
	min-height: 400px;
}

.post_main_header b {
	font-size: 18px;
	display: inline-block;
}

.post_main_header {
	margin-bottom: 30px;
	background: #f5f5f5;
	padding: 20px 10px;
	border-bottom: 1px solid #dcdcdc;
}

.post_main_text {
	width: 80%;
	font-size: 18px;
	line-height: 25px;
	font-family: 'Noto Sans KR', malgun gothic, '맑은 고딕', '돋움', Arial,
		sans-serif;
	font-size: 16px;
	line-height: 1.4em;
}

.post_btn_box {
	text-align: right;
	margin-top: 10px;
	margin-bottom: 100px;
}

.post_btn_box .write {
	border: none;
	color: white;
	background-color: #0f0f70;
	padding: 7px 15px;
	border-radius: 10px;
	font-size: 15px;
}

.mobile_post_info {
	margin-top: 5px;
	color: #8c8c8c;
}

.mobile_post_info  span {
	padding-left: 5px
}

.label {
	display: inline;
	font-size: 75%;
	font-weight: 700;
	color: #fff;
	text-align: center;
	white-space: nowrap;
	vertical-align: baseline;
	border-radius: 0.25em;
}

.label {
	padding: 5px 10px;
	display: inline-block;
	vertical-align: top;
}

.label-success {
	background-color: #0f0f70;
}

textarea {
	font-size: 16px;
	width: 100%;
	-webkit-appearance: none;
	resize: none;
	box-sizing: border-box;
	height: 90px;
	padding: 10px;
	display: inline-block;
	outline: none;
}

@media ( max-width : 900px) {
	.post_main_text {
		width: 100%;
		font-size: 14px;
		line-height: 25px;
	}
	.mobile_post_count, .mobile_post_info {
		font-size: 10px;
	}
	.snu_main_header {
		font-size: 18px;
	}
	.post_main_header b {
		font-size: 16px;
	}
	.label {
		line-height: 1;
		padding: 5px 5px;
	}
}

.reply_add_view_box {
	text-align: center;
	margin-top: 20px;
}

.reply_add_view_btn {
	border: none;
	width: 150px;
	padding: 10px 25px;
	border-radius: 0.4em;
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
				건의 및 Q&A<img
					src="${pageContext.request.contextPath }/assets/img/snu_logo.png" />
			</div>

			<c:set var="postdate" value="${output.postdate}" />
			<c:choose>
				<c:when test="${output.posttype eq '익명'}">
					<c:set var="name" value="익명" />
				</c:when>
				<c:otherwise>
					<c:set var="name" value="${output.name}" />

				</c:otherwise>
			</c:choose>

			<div class="post_main_box">
				<div class="post_main_header">
					<div class="mobile_post_title">
						<span class="label label-success">${output.postcategory}</span> <b>${output.posttitle }</b>
					</div>
					<div class="mobile_post_info">
						<c:choose>
							<c:when test="${output.posttype eq '익명'}">익명</c:when>
							<c:otherwise>${output.name}</c:otherwise>
						</c:choose>
						<span>${fn:substring(postdate,0,10)}</span> <br> <span
							style="padding: 10px 0px 0px 0px">조회수 ${output.postview }</span>
					</div>
				</div>

				<div class="post_main_text">${output.postcontent }</div>
			</div>
			<div class="comment_wrap">
				<c:forEach var="comment" items="${reply}" varStatus="status">
					<div class="comment_box reply${comment.reply_num}">
						<div class="comment_who">
							<span class="comment_rely_name">${comment.reply_name}</span>
						</div>
						<div class="comment_main">${comment.reply_txt}</div>
						<c:if test='${comment.reply_name eq member.name}'>
							<button value="${comment.reply_num}" class="btn_delete">삭제</button>
						</c:if>
					</div>
				</c:forEach>
			</div>
			<div class="reply_add_view_box">
				<button class="reply_add_view_btn">댓글 더보기</button>
			</div>
			<div class="post_btn_box">
				<form class="reply_write_insert"
					action="${pageContext.request.contextPath}/community/reply_write_insert.do"
					method="POST">
					<input id="postno" type="hidden" name='postno'
						value="${output.postno}" />

					<textarea id="posttext" name="posttext"
						placeholder="댓글을 입력해 주세요...."></textarea>

					<button type="submit" class="write">글쓰기</button>
					<button type="button" class="write"
						onclick="location.href='${pageContext.request.contextPath}/community/Q&A.do'">목록</button>
				</form>

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

			<div class="snu_main_header">건의 및 Q&A</div>

			<!--모바일 메인 이너-->

			<div class="post_main_box">
				<div class="post_main_header">
					<div class="mobile_post_title">
						<span class="label label-success">${output.postcategory}</span> <b>${output.posttitle }</b>
					</div>
					<div class="mobile_post_info">
						<c:choose>
							<c:when test="${output.posttype eq '익명'}">익명</c:when>
							<c:otherwise>${output.name}</c:otherwise>
						</c:choose>
						<span>${fn:substring(postdate,0,10)}</span> <br> <span
							style="padding: 10px 0px 0px 0px">조회수 ${output.postview }</span>

					</div>
				</div>

				<div class="post_main_text">${output.postcontent }</div>
			</div>
			<div class="comment_wrap">
				<c:forEach var="comment" items="${reply}" varStatus="status">
					<div class="comment_box reply${comment.reply_num}">
						<div class="comment_who">
							<span class="comment_rely_name">${comment.reply_name}</span>
						</div>
						<div class="comment_main">${comment.reply_txt}</div>
						<c:if test='${comment.reply_name eq member.name}'>
							<button value="${comment.reply_num}" class="btn_delete">삭제</button>
						</c:if>

					</div>
				</c:forEach>
			</div>
			<div class="reply_add_view_box">
				<button class="reply_add_view_btn">댓글 더보기</button>
			</div>
			<div class="post_btn_box">
				<form class="reply_write_insert_m"
					action="${pageContext.request.contextPath}/community/reply_write_insert.do"
					method="POST">
					<input id="postno" type="hidden" name='postno'
						value="${output.postno}" />
					<textarea id="posttext_m" name="posttext"
						placeholder="댓글을 입력해 주세요...."></textarea>
					<button type="submit" class="write">글쓰기</button>
					<button type="button" class="write"
						onclick="location.href='${pageContext.request.contextPath}/community/Q&A.do'">목록</button>
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
		$(document).on("click",".btn_delete",function() {
			if(confirm("댓글을 삭제 하시겠습니까?")){
				var replyno = $(this).val();
				$(".reply"+replyno).css("display","none");
				$.ajax({
					type : "GET",
					url : "${pageContext.request.contextPath}/community/reply_delete.do?replyno="+ replyno,
					success : function() {
						
					},
					cache : false,
					contentType : false,
					processData : false,
					error : function(request, status, error) {
						alert("code:" + request.status+ "\n" + "message:"+ request.responseText+ "\n" + "error:" + error);
						}
					});

			}
			else{
				return;
			}
			
	
		});
		
		$(".reply_write_insert_m").submit(function(e) {
					$(".write").attr("disabled", false);
					var postno = $("#postno").val();
					var posttext = $("#posttext_m").val();
					
					console.log(postno);

					e.preventDefault();
					var formData = new FormData(this);
					if (!regex.value('#posttext_m', '답글을 입력해 주세요')) {
						return false;
					}
					if(${member.name == null}){
						alert("로그인이 필요한 서비스입니다");
						return false;
					}
					$("#posttext_m").val("");
					
					$.ajax({
						type : "GET",
						url : "${pageContext.request.contextPath}/community/reply_write_insert.do?postno="
										+ postno
										+ "&posttext="
										+ posttext,

						success : function(data) {
							
							var comment ='<div class="comment_box reply'+data+'"><div class="comment_who"><span class="comment_rely_name">${member.name}</span></div><div class="comment_main">';
							comment+=posttext;
							comment+='</div><button value="'+data+'" class="btn_delete">삭제</button></div>';
							alert("답글 작성이 완료되었습니다");
							$(".comment_wrap").prepend(comment);
							
						},
								cache : false,
								contentType : false,
								processData : false,
								error : function(request, status, error) {

									alert("code:" + request.status
											+ "\n" + "message:"
											+ request.responseText
											+ "\n" + "error:" + error);
								}
							});

		});
		

		$(".reply_write_insert").submit(function(e) {
			
					var postno = $("#postno").val();
					var posttext = $("#posttext").val();
					console.log(postno);
					e.preventDefault();
					var formData = new FormData(this);
					if (!regex.value('#posttext', '답글을 입력해 주세요')) {
						return false;
					}
					if(${member.name == null}){
						alert("로그인이 필요한 서비스입니다");
						return false;
					}
					$("#posttext_m").val("");
					
					$.ajax({
						type : "GET",
						url : "${pageContext.request.contextPath}/community/reply_write_insert.do?postno="
										+ postno
										+ "&posttext="
										+ posttext,

						success : function(data) {

							var comment ='<div class="comment_box reply'+data+'"><div class="comment_who"><span class="comment_rely_name">${member.name}</span></div><div class="comment_main">';
							comment+=posttext;
							comment+='</div><button value="'+data+'" class="btn_delete">삭제</button></div>';
							alert("답글 작성이 완료되었습니다");
							$(".comment_wrap").prepend(comment);
						},
								cache : false,
								contentType : false,
								processData : false,
								error : function(request, status, error) {

									alert("code:" + request.status
											+ "\n" + "message:"
											+ request.responseText
											+ "\n" + "error:" + error);
								}
							});

		});
	</script>

	<script>
		
	</script>
</body>
</html>