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
		font-size: 1px;
		left: -15px;
		bottom: -15px;
	}
	.time_table_row .last_btn_label {
		position: absolute;
		bottom: -70%;
		font-size: 1px;
		bottom: -15px;
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
</style>

</head>

<body>
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
		<%@ include file="../include/MOBILE/tab.jsp"%>


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
						value="21:00">
						<span id="time_25">21:00</span>
					</button>
					<button class="time_table_button" type="button" id="26"
						value="21:30">
						<span id="time_26">21:30</span>
					</button>
					<button class="time_table_button" type="button" id="27"
						value="22:00">
						<span id="time_27">22:00</span>
					</button>
					<button class="time_table_button" type="button" id="28"
						value="22:30">
						<span id="time_28">22:30</span><span id="time_28_1"
							class="last_btn_label">23:00</span>
					</button>
				</div>
			</div>

			<form class="room_reserve_form">
				<br> <br> <br> <br> <br>
				<div>
					<span>선택시간</span> <span class="inserted_time"></span> <input
						type="hidden" class="start_time" /> <input type="hidden"
						class="start_time" /> <br> <label for="rent_objective">공실
						대여 목적</label> <input type="text" id="rent_objective" /> <br> <label
						for="people_num">사용 인원수</label> <input type="text" id="people_num" />
					<br> <label for="student_name">대표 예약자 성함</label> <input
						type="text" id="student_name" /> <br> <label
						for="student_id">대표 예약자 학번</label> <input type="text"
						id="student_id" /> <br> <label for="student_phNum">대표
						예약자 연락처</label> <input type="text" id="student_phNum" />

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












	<script src="https://kit.fontawesome.com/695be3a17b.js"
		crossorigin="anonymous"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/style.js">
		
	</script>

	<script>
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
					click_count = 0;
					return;
				}
				for (var i = first; i <= last; i++) {
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
				click_count++;
				return;

			} else {
				$(".time_table_button").attr("disabled", false);
				$(this).attr("disabled", true);
				click_count = 1;
				first = parseInt($(this).attr("id"));
				if (last % 7 == 0) {
					$("#time_" + (last) + "_1").css("color", "black");
				} else {
					$("#time_" + (last + 1)).css("color", "black");
				}

			}

		})
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
						})
	</script>
</body>
</html>