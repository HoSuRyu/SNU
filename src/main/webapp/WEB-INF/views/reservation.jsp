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
<title>제41대 사범대학 학생회 늘품(조홍식)(류호수)</title>
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
.time_table_row {
	text-align: center;
}

.time_table_row button {
	width: 14%;
	margin: -2px;
	padding: 0px;
	border: none;
	background-color: #0f0f70;
	padding: 3%;
	cursor: pointer;
	margin-top: 50px;
	position: relative;
	display: inline-block;
}

.time_table_row span {
	position: absolute;
	bottom: -25%;
	left: -10%;
}

.time_table_row .last_btn_label {
	position: absolute;
	bottom: -25%;
	right: -110%;
}

.time_table_row button:disabled {
	cursor: default;
	background-color: green;
	color: green;
}

@media ( max-width : 900px) {
	#snu_mobile_box {
		width: 100%;
		overflow: hidden;
	}
	.content_wrap {
		padding: 0px 10px;
	}
	.time_table_row span {
		position: absolute;
		font-size: 10px;
		left: -15px;
		bottom: -15px;
		color: black;
	}
	.time_table_row .last_btn_label {
		position: absolute;
		bottom: -70%;
		font-size: 10px;
		bottom: -15px;
		color: black;
	}
	.time_table_row button {
		width: 13%;
		margin: -2px;
		padding: 0px;
		border: none;
		background-color: #0f0f70;
		padding: 3%;
		cursor: pointer;
		margin-top: 25px;
		position: relative;
		display: inline-block;
	}
}

@media ( max-width : 420px) {
}

.room_reserve_form span, .room_reserve_form label {
	font-weight: bold;
	color: #0f0f70;
	display: inline-block;
	padding: 10px 0px;
	font-size: 20px;
}

label {
	font-weight: bold;
	color: #0f0f70;
	display: inline-block;
	padding: 10px 0px;
	font-size: 20px;
	width: 200px;
}

input {
	height: 30px;
	border: 1px solid #0f0f70;
	padding: 2px;
	position: relative;
	top: -3px;
	right: -10px;
}

input:focus {
	outline: none;
}

#btn_box {
	text-align: center;
}

.reserve_btn {
	border-radius: 0px;
	width: 150px;
	height: 60px;
	border: none;
	cursor: pointer;
	background-color: green;
	color: white;
	font-weight: bold;
	margin-top: 30px;
	margin-bottom: 50px;
}

.time_table_row .disabled:disabled {
	background-color: red;
}
</style>

</head>

<body style="position: relative;">
	<%@ include file="../include/MOBILE/tab.jsp"%>
	<!-- pc부분 -->
	<div class="main_box">
		<div class="header">
			<%@ include file="../include/WEB/header.jsp"%>
			<%@ include file="../include/WEB/side_bar.jsp"%>
		</div>
	</div>

	<div class="snu_mobile_box" id="snu_mobile_header_box">
		<!-- 모바일 헤더-->
		<%@ include file="../include/MOBILE/header.jsp"%>
	</div>


	<div class="snu_main_box" id="snu_mobile_box">
		<div class="content_wrap">


			<div class="snu_main_header">공실예약하기</div>
			<div>
				<span>${month}월 ${day}일 9동 ${room_num }호 예약하기</span>
				<div class="time_table_row">
					<button class="time_table_button" type="button" id="1"
						value="09:00">
						<span id="time_1">09:00</span>
					</button>
					<button class="time_table_button" type="button" id="2"
						value="09:30">
						<span id="time_2">09:30</span>
					</button>
					<button class="time_table_button" type="button" id="3"
						value="10:00">
						<span id="time_3">10:00</span>
					</button>
					<button class="time_table_button" type="button" id="4"
						value="10:30">
						<span id="time_4">10:30</span>
					</button>
					<button class="time_table_button" type="button" id="5"
						value="11:00">
						<span id="time_5">11:00</span>
					</button>
					<button class="time_table_button" type="button" id="6"
						value="11:30">
						<span id="time_6">11:30</span>
					</button>
					<button class="time_table_button" type="button" id="7"
						value="12:00">
						<span id="time_7">12:00</span><span id="time_7_1"
							class="last_btn_label">12:30</span>
					</button>
				</div>
				<div class="time_table_row">
					<button class="time_table_button" type="button" id="8"
						value="12:30">
						<span id="time_8">12:30</span>
					</button>
					<button class="time_table_button" type="button" id="9"
						value="13:00">
						<span id="time_9">13:00</span>
					</button>
					<button class="time_table_button" type="button" id="10"
						value="13:30">
						<span id="time_10">13:30</span>
					</button>
					<button class="time_table_button" type="button" id="11"
						value="14:00">
						<span id="time_11">14:00</span>
					</button>
					<button class="time_table_button" type="button" id="12"
						value="14:30">
						<span id="time_12">14:30</span>
					</button>
					<button class="time_table_button" type="button" id="13"
						value="15:00">
						<span id="time_13">15:00</span>
					</button>
					<button class="time_table_button" type="button" id="14"
						value="15:30">
						<span id="time_14">15:30</span> <span id="time_14_1"
							class="last_btn_label">16:00</span>
					</button>

				</div>
				<div class="time_table_row">
					<button class="time_table_button" type="button" id="15"
						value="16:00">
						<span id="time_15">16:00</span>
					</button>
					<button class="time_table_button" type="button" id="16"
						value="16:30">
						<span id="time_16">16:30</span>
					</button>
					<button class="time_table_button" type="button" id="17"
						value="17:00">
						<span id="time_17">17:00</span>
					</button>
					<button class="time_table_button" type="button" id="18"
						value="17:30">
						<span id="time_18">17:30</span>
					</button>
					<button class="time_table_button" type="button" id="19"
						value="18:00">
						<span id="time_19">18:00</span>
					</button>
					<button class="time_table_button" type="button" id="20"
						value="18:30">
						<span id="time_20">18:30</span>
					</button>
					<button class="time_table_button" type="button" id="21"
						value="19:00">
						<span id="time_21">19:00</span><span id="time_21_1"
							class="last_btn_label">19:30</span>
					</button>
				</div>

				<div class="time_table_row">
					<button class="time_table_button" type="button" id="22"
						value="19:30">
						<span id="time_22">19:30</span>
					</button>
					<button class="time_table_button" type="button" id="23"
						value="20:00">
						<span id="time_23">20:00</span>
					</button>
					<button class="time_table_button" type="button" id="24"
						value="20:30">
						<span id="time_24">20:30</span>
					</button>
					<button class="time_table_button" type="button" id="25"
						name="21:00" value="21:00">
						<span id="time_25">21:00</span>
					</button>
					<button class="time_table_button" type="button" id="26"
						name="21:30" value="21:30">
						<span id="time_26">21:30</span>
					</button>
					<button class="time_table_button" type="button" id="27"
						name="22:00" value="22:00">
						<span id="time_27">22:00</span>
					</button>
					<button class="time_table_button" type="button" id="28"
						name="22:30" value="22:30">
						<span id="time_28">22:30</span><span id="time_28_1"
							class="last_btn_label">23:00</span>
					</button>
					<input class="time_table_button" type="hidden" id="29"
						value="23:00" />


				</div>
			</div>

			<form class="room_reserve_form" method="post"
				action="${pageContext.request.contextPath }/reservation/reservation_insert.do">
				<br> <br> <br> <br> <br>
				<div>
					<span>선택시간</span> <span class="inserted_time"></span> <input
						type="hidden" name="start_time" id="start_time" value="" /> <input
						type="hidden" name="end_time" id="end_time" value="" /> <br>

					<label for="purpose">공실 대여 목적</label> 
					<input type="text" id="purpose" name="purpose" /> <br> 
					<label for="people_num">사용 인원수</label> <input type="text" id="people_num" name="people_num" value="" /> <br> 
					<label for="student_name">대표 예약자 성함</label> <input type="text" id="student_name" name="student_name" disabled value="${member.name }" /> <br> 
					<label for="student_id">대표 예약자 학번</label> <input type="text" id="student_id" name="student_id" disabled value="${member.studentid }" /> <br> 
					<label for="student_phNum">대표 예약자 연락처</label> <input type="text" id="student_phNum" name="student_phNum" /> 
					<input type="hidden" id="date" name="date" value="${date}" />
					<input type="hidden" name="roomNum" id="roomNum" value=${room_num } />
				</div>
				<div id="btn_box">
					<button class="reserve_btn" type="submit">예약하기</button>
				</div>


			</form>
		</div>

		<div class="main_box">
			<%@ include file="../include/WEB/footer.jsp"%>
		</div>

		<div id="snu_footer_m_box" class="snu_mobile_box">
			<%@ include file="../include/MOBILE/footer.jsp"%>

		</div>

	</div>


	<script src="${pageContext.request.contextPath }/assets/js/regex.js" />
	<script src="https://kit.fontawesome.com/695be3a17b.js"
		crossorigin="anonymous"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/style.js">
		
	</script>

	<script>
	if(${member == null} ){
		window.location.href = '${pageContext.request.contextPath}/calendar.do';
	}
	
		var starttime_list = new Array();
		var endtime_list = new Array();
		//jstl 변수 리스트에 담기 
		<c:forEach items="${output}" var="item">
		starttime_list.push("${item.starttime}");
		endtime_list.push("${item.endtime}");

		</c:forEach>

		$(document)
				.ready(
						function() {
							var arrLength = '${fn:length(output)}';
							console.log(arrLength);
							for (var i = 0; i < starttime_list.length; i++) {
								console.log("starttime=" + starttime_list[i]);
								console.log("endtime=" + endtime_list[i]);
								var start_index = parseInt($(
										'[value="' + starttime_list[i] + '"]')
										.attr("id"));
								var end_index = parseInt($(
										'[value="' + endtime_list[i] + '"]')
										.attr("id"));

								console.log("starttime=" + start_index);
								console.log("endtime=" + end_index);
								for (var j = start_index; j < end_index; j++) {

									$("#" + j).addClass("disabled");
									$("#" + j).attr("disabled", true);
									console.log(j);

								}
								$(".disabled").css("color", "red");

							}

						});

		var click_count = 0;

		var fisrt = 0;
		var last = 0;
		var start_time = "";
		var end_time = "";

		//$(".time_table_button").click(function(){
		//    $(".time_table_button").attr("disabled",true);
		//    var selected = parseInt($(this).attr("id"));
		//    console.log(selected);
		//    for(var i = selected; i<=selected+7 ; i++){
		//        $("#"+i).attr("disabled",false);
		//        console.log(i);
		//    }
		//    alert(selected);});

		$(".time_table_button").click(function() {
			if (click_count == 0) {
				$(this).attr("disabled", true);
				click_count++;
				first = parseInt($(this).attr("id"));
				console.log("2번");
				return;
			} else if (click_count == 1) {
				last = parseInt($(this).attr("id"));
				if (first > last) {
					var tmp = first;
					first = last;
					last = tmp;
				}
				if (last - first >= 8) {
					alert("최대 4시간 까지 대여 가능합니다. 다시 선택해 주세요");
					$(".time_table_button").attr("disabled", false);
					$(".disabled").attr("disabled", true);
					click_count = 0;
					console.log("last: "+last);
					console.log("first: "+first);
					

					console.log(last-fisrt);
					return;
				}
				else{
					console.log("last: "+last);
					console.log("first: "+first);
					console.log("last - first:"+ (last-first));
				}

				for (var i = first; i <= last; i++) {
					if ($("#" + i).hasClass("disabled") == true) {
						alert("예약 불가능한 시간이 있습니다. 시간을 다시 선택해주세요");
						$(".time_table_button").attr("disabled", false);
						$(".disabled").attr("disabled", true);
						click_count = 0;
						return;
					}
					$("#" + i).attr("disabled", true);
				}

				start_time = $("#" + first).val();
				end_time = $("#" + (last + 1)).val();
				if (last % 7 == 0) {
					$("#time_" + (last) + "_1").css("color", "green");
				} else {
					$("#time_" + (last + 1)).css("color", "green");
				}
				$(".inserted_time").html(start_time + " ~ " + end_time);
				$("#start_time").val(start_time);
				$("#end_time").val(end_time);
				click_count++;
				return;

			} else {
				$(".time_table_button").attr("disabled", false);
				$(".disabled").attr("disabled", true);
				$(this).attr("disabled", true);
				click_count = 1;
				first = parseInt($(this).attr("id"));
				$(".inserted_time").html("");
				if (last % 7 == 0) {
					$("#time_" + (last) + "_1").css("color", "black");
				} else {
					$("#time_" + (last + 1)).css("color", "black");
				}

			}

		});
		$("#student_phNum")
				.keyup(
						function() {
							$(this)
									.val(
											$(this)
													.val()
													.replace(/[^0-9]/g, "")
													.replace(
															/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,
															"$1-$2-$3")
													.replace("--", "-"));
							console.log($(this).val());
						});
		$("#people_num").keyup(function() {
			$(this).val($(this).val().replace(/[^0-9]/g, ""));
		});
		$("#student_id").keyup(function() {
			$(this).val($(this).val().replace(/[^0-9]/g, ""));
		});

		$(".room_reserve_form")
				.submit(
						function(e) {
							var start_time = $("#start_time").val();
							var end_time = $("#end_time").val();
							var student_name = $("#student_name").val();
							var student_phNum = $("#student_phNum").val();
							var student_id = $("#student_id").val();
							var people_num = $("#people_num").val();
							var date = $("#date").val();
							var roomNum = $("#roomNum").val();
							var purpose = $("#purpose").val();
							var timeCount =last-first + 1 ;
							e.preventDefault();
							var formData = new FormData(this);
							if (!regex.value('#start_time', '시작시간을 입력하세요')) {
								return false;
							}
							if (!regex.value('#student_name', '이름을 입력하세요')) {
								return false;
							}
							$.ajax({
										type : "GET",
										url : "${pageContext.request.contextPath}/reservation/reservation_insert.do?start_time="
												+ start_time
												+ "&end_time="
												+ end_time
												+ "&student_name="
												+ student_name
												+ "&student_phNum="
												+ student_phNum
												+ "&student_id="
												+ student_id
												+ "&people_num="
												+ people_num
												+ "&date=" + date
												+ "&roomNum="+roomNum
												+ "&purpose="+purpose
												+ "&timeCount="+timeCount
												,

										success : function(data) {
											if(data ==1)
											{
												alert("예약에 실패하였습니다. 1일 예약 가능시간은 최대 4시간입니다.");
											}
											else
											{
												alert("공실 예약이 완료 되었습니다!!");
											}
											location.reload();

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
</body>
</html>