<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.Date"%>


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
td {
	font-family: "돋움";
	font-size: 9pt;
	color: #595959;
}

th {
	font-family: "돋움";
	font-size: 9pt;
	color: #000000;
}

select {
	font-family: "돋움";
	font-size: 9pt;
	color: #595959;
}

.divDotText {
	overflow: hidden;
	text-overflow: ellipsis;
}

.day {
	width: 100px;
	height: 30px;
	font-weight: bold;
	font-size: 15px;
	font-weight: bold;
	text-align: center;
}

.sat {
	color: #529dbc;
}

.sun {
	color: red;
}

.today_button_div {
	float: right;
}

.today_button {
	width: 100px;
	height: 30px;
}

.calendar {
	width: 100%;
	margin: auto;
}

.navigation {
	margin-top: 50px;
	margin-bottom: 30px;
	text-align: center;
	font-size: 25px;
	vertical-align: middle;
}

.calendar_body {
	width: 100%;
	background-color: #FFFFFF;
	border: 1px solid white;
	margin-bottom: 50px;
	border-collapse: collapse;
}

.calendar_body .today {
	border: 1px solid white;
	height: 120px;
	background-color: #c9c9c9;
	text-align: left;
	vertical-align: top;
}

body .calendar_body .today_color {
	background-color: #c9c9c9;
}

.calendar_body .date {
	font-weight: bold;
	font-size: 15px;
	padding-left: 3px;
	padding-top: 3px;
}

.calendar_body .sat_day {
	border: 1px solid white;
	height: 120px;
	background-color: #EFEFEF;
	text-align: left;
	vertical-align: top;
}

.calendar_body .sat_day .sat {
	color: #529dbc;
	font-weight: bold;
	font-size: 15px;
	padding-left: 3px;
	padding-top: 3px;
}

.calendar_body .sun_day {
	border: 1px solid white;
	height: 120px;
	background-color: #EFEFEF;
	text-align: left;
	vertical-align: top;
}

.calendar_body .sun_day .sun {
	color: red;
	font-weight: bold;
	font-size: 15px;
	padding-left: 3px;
	padding-top: 3px;
}

.calendar_body .normal_day {
	border: 1px solid white;
	height: 120px;
	background-color: #EFEFEF;
	vertical-align: top;
	text-align: left;
}

.before_after_month {
	margin: 10px;
	font-weight: bold;
}

.before_after_year {
	font-weight: bold;
}

.this_month {
	margin: 10px;
}

.reserve_btn {
	width: 80%;
	background-color: #0f0f70;
	padding: 3% 0%;
	font-weight: bold;
	color: white;
	text-align: center;
	border-radius: 5px;
	display: block;
	margin: auto;
	cursor: pointer;
}

.reservation_rule_box {
	font-size: 20px;
	margin: 30px 0px;
}

.navi_box {
	width: 90%;
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin: auto;
	margin-top: 20px;
}

.navi_box a {
	background-color: #0f0f70;
	color: white;
	border-radius: 5px;
	padding: 1%;
	font-size: 16px;
}

form {
	border: 1px solid;
	margin-bottom: 40px;
}

.navi_box span {
	font-size: 45px;
	font-weight: bold;
	color: #0f0f70;
	position: relative;
	bottom: 20px;
}

.year {
	font-size: 35px;
	color: #0f0f70;
}

@media ( max-width : 900px) {
}

@media ( max-width : 420px) {
	.calendar {
		width: 100%;
	}
	.reserve_btn {
		font-size: 8px;
	}
	.calendar_body .today, .calendar_body .sun_day, .calendar_body .sat_day,
		.calendar_body .normal_day {
		height: 70px;
	}
	.reserve_btn {
		width: 100%;
		margin-top: 5px;
		padding: 25% 0%;
	}
	.navi_box a {
		background-color: #0f0f70;
		color: white;
		border-radius: 5px;
		padding: 3%;
		font-size: 12px;
	}
}
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
		<div class="snu_main_box">
			<div class="snu_main_header">
				공실 예약하기 <img
					src="${pageContext.request.contextPath }/assets/img/snu_logo.png" />
			</div>
			<div class="reservation_rule_box">
				<span>- 예약을 원하시는 날짜의 9동 106호, 107호 버튼을 누르시면 대여 현황을 확인하실수 있으며
					빈 예약시간에 예약하실 수 있습니다.</span> <br> <span>- 가능 시간대: 09:00 ~ 23:00
					(월 ~ 일)</span> <br> <span>- 많은 학우분들의 이용을 위해 예약 가능 시간은 <b>1일
						최대 4시간</b>으로 제한됩니다.
				</span>
			</div>
			<form name="calendarFrm" id="calendarFrm" action="" method="GET">
				<c:set var="month" value="${today_info.search_month}" />
				<c:if test="${today_info.search_month<10}">
					<c:set var="month" value="${0}${today_info.search_month}" />

				</c:if>
				<c:set var="before_year" value="${today_info.before_year}" />
				<c:set var="before_month" value="${today_info.before_month}" />
				<c:set var="after_year" value="${today_info.after_year}" />
				<c:set var="after_month" value="${today_info.after_month}" />
				<div class="calendar">

					<!--날짜 네비게이션  -->
					<div class="navigation">
						<div class="year">${today_info.search_year}</div>
						<div class="navi_box">
							<a
								href="${pageContext.request.contextPath}/calendar.do?year=${before_year}&month=${before_month}">
								<i class="fa-solid fa-chevron-left"></i> 이전달
							</a> <span>${today_info.search_month}월 </span><a
								href="${pageContext.request.contextPath}/calendar.do?year=${after_year}&month=${after_month}">
								다음달 <i class="fa-solid fa-chevron-right"></i>
							</a>

						</div>



					</div>

					<!-- <div class="today_button_div"> -->
					<!-- <input type="button" class="today_button" onclick="javascript:location.href='/calendar.do'" value="go today"/> -->
					<!-- </div> -->
					<table class="calendar_body">

						<thead>
							<tr bgcolor="#CECECE">
								<td class="day sun">일</td>
								<td class="day">월</td>
								<td class="day">화</td>
								<td class="day">수</td>
								<td class="day">목</td>
								<td class="day">금</td>
								<td class="day sat">토</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<c:forEach var="dateList" items="${dateList}"
									varStatus="date_status">

									<fmt:parseDate value="${today}" var="strPlanDate"
										pattern="yyyy-MM-dd" />
									<fmt:parseNumber value="${strPlanDate.time / (1000*60*60*24)}"
										integerOnly="true" var="strDate"></fmt:parseNumber>

									<c:if test="${dateList.value ne null || dateList.value !='' }">
										<c:choose>
											<c:when test="${dateList.date <=9 && dateList.date>=1}">
												<c:set var="calendar_date"
													value="${today_info.search_year}${'-'}${month}${'-0'}${dateList.date}" />
											</c:when>

											<c:otherwise>
												<c:set var="calendar_date"
													value="${today_info.search_year}${'-'}${month}${'-'}${dateList.date}" />
											</c:otherwise>


										</c:choose>
									</c:if>
									<c:if test="${dateList.value eq null || dateList.value =='' }">
										<c:set var="calendar_date" value="${''}" />
									</c:if>

									<c:if test="${ calendar_date ne null || calendar_date !=''}">
										<fmt:parseDate value="${calendar_date }" var="endPlanDate"
											pattern="yyyy-MM-dd" />
										<fmt:parseNumber value="${endPlanDate.time / (1000*60*60*24)}"
											integerOnly="true" var="endDate"></fmt:parseNumber>
										<c:set var="DATE" value="${endDate -strDate } " />
										<fmt:parseNumber var="i" integerOnly="true" type="number"
											value="${DATE}" />
									</c:if>

									<c:choose>
										<c:when test="${date_status.index%7==6}">

											<c:choose>
												<c:when test="${today_info.today == dateList.date}">

													<td class="sat_day today_color">
														<div class="sat">${dateList.date}
															<c:if test="${i <=14 && i>=0 }">
																<div class="reserve_btn_box">
																	<br> <a class="reserve_btn"
																		onclick="javascript:goPage('106','${calendar_date}')">9-106호</a>
																	<br> <a class="reserve_btn"
																		onclick="javascript:goPage('107','${calendar_date}')">9-107호</a>
																</div>
															</c:if>
														</div>
														<div></div>
													</td>

												</c:when>
												<c:otherwise>
													<td class="sat_day">
														<div class="sat">${dateList.date}
															<c:if test="${i <=14 && i>=0 }">
																<div class="reserve_btn_box">
																	<br> <a class="reserve_btn"
																		onclick="javascript:goPage('106','${calendar_date}')">9-106호</a>
																	<br> <a class="reserve_btn"
																		onclick="javascript:goPage('107','${calendar_date}')">9-107호</a>
																</div>
															</c:if>
														</div>
														<div></div>
													</td>
												</c:otherwise>
											</c:choose>

										</c:when>
										<c:when test="${date_status.index%7==0}">

											<c:choose>
												<c:when test="${today_info.today == dateList.date}">
							</tr>
							<tr>
								<td class="sun_day today_color">
									<div class="sun">${dateList.date}
										<c:if test="${i <=14 && i>=0 }">
											<div class="reserve_btn_box">
												<br> <a class="reserve_btn"
													onclick="javascript:goPage('106','${calendar_date}')">9-106호</a>
												<br> <a class="reserve_btn"
													onclick="javascript:goPage('107','${calendar_date}')">9-107호</a>
											</div>
										</c:if>
									</div>
									<div></div>
								</td>

								</c:when>
								<c:otherwise>
							</tr>
							<tr>
								<td class="sun_day">
									<div class="sun">${dateList.date}
										<c:if test="${i <=14 && i>=0 }">
											<div class="reserve_btn_box">
												<br> <a class="reserve_btn"
													onclick="javascript:goPage('106','${calendar_date}')">9-106호</a>
												<br> <a class="reserve_btn"
													onclick="javascript:goPage('107','${calendar_date}')">9-107호</a>
											</div>
										</c:if>
									</div>
									<div></div>
								</td>



								</c:otherwise>
								</c:choose>

								</c:when>
								<c:otherwise>

									<c:choose>
										<c:when test="${today_info.today == dateList.date}">
											<td class="normal_day today_color">
												<div class="date">${dateList.date}
													<c:if test="${i <=14 && i>=0 }">
														<div class="reserve_btn_box">
															<br> <a class="reserve_btn"
																onclick="javascript:goPage('106','${calendar_date}')">9-106호</a>
															<br> <a class="reserve_btn"
																onclick="javascript:goPage('107','${calendar_date}')">9-107호</a>
														</div>
													</c:if>
												</div>
												<div></div>
											</td>

										</c:when>
										<c:otherwise>

											<td class="normal_day">
												<div class="date">${dateList.date}
													<c:if test="${i <=14 && i>=0 }">
														<div class="reserve_btn_box">
															<br> <a class="reserve_btn"
																onclick="javascript:goPage('106','${calendar_date}')">9-106호</a>
															<br> <a class="reserve_btn"
																onclick="javascript:goPage('107','${calendar_date}')">9-107호</a>
														</div>
													</c:if>
												</div>
												<div></div>
											</td>



										</c:otherwise>
									</c:choose>

								</c:otherwise>
								</c:choose>
								</c:forEach>
						</tbody>

					</table>
				</div>
			</form>
		</div>


		<%@ include file="../include/WEB/footer.jsp"%>


	</div>

	<!--모바일 -->
	<div class="snu_mobile_box">

		<!-- 모바일 헤더-->

		<%@ include file="../include/MOBILE/header.jsp"%>
		<%@ include file="../include/MOBILE/tab.jsp"%>
		<!--모바일 컨텐츠 박스-->

		<form name="calendarFrm" id="calendarFrm" action="" method="GET">
			<c:set var="month" value="${today_info.search_month}" />
			<c:if test="${today_info.search_month<10}">
				<c:set var="month" value="${0}${today_info.search_month}" />

			</c:if>
			<c:set var="before_year" value="${today_info.before_year}" />
			<c:set var="before_month" value="${today_info.before_month}" />
			<c:set var="after_year" value="${today_info.after_year}" />
			<c:set var="after_month" value="${today_info.after_month}" />
			<div class="calendar">

				<!--날짜 네비게이션  -->
				<div class="navigation">
					<div class="year">${today_info.search_year}</div>
					<div class="navi_box">
						<a
							href="${pageContext.request.contextPath}/calendar.do?year=${before_year}&month=${before_month}">
							<i class="fa-solid fa-chevron-left"></i> 이전달
						</a> <span>${today_info.search_month}월 </span><a
							href="${pageContext.request.contextPath}/calendar.do?year=${after_year}&month=${after_month}">
							다음달 <i class="fa-solid fa-chevron-right"></i>
						</a>

					</div>



				</div>

				<!-- <div class="today_button_div"> -->
				<!-- <input type="button" class="today_button" onclick="javascript:location.href='/calendar.do'" value="go today"/> -->
				<!-- </div> -->
				<table class="calendar_body">

					<thead>
						<tr bgcolor="#CECECE">
							<td class="day sun">일</td>
							<td class="day">월</td>
							<td class="day">화</td>
							<td class="day">수</td>
							<td class="day">목</td>
							<td class="day">금</td>
							<td class="day sat">토</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<c:forEach var="dateList" items="${dateList}"
								varStatus="date_status">

								<fmt:parseDate value="${today}" var="strPlanDate"
									pattern="yyyy-MM-dd" />
								<fmt:parseNumber value="${strPlanDate.time / (1000*60*60*24)}"
									integerOnly="true" var="strDate"></fmt:parseNumber>

								<c:if test="${dateList.value ne null || dateList.value !='' }">
									<c:choose>
										<c:when test="${dateList.date <=9 && dateList.date>=1}">
											<c:set var="calendar_date"
												value="${today_info.search_year}${'-'}${month}${'-0'}${dateList.date}" />
										</c:when>

										<c:otherwise>
											<c:set var="calendar_date"
												value="${today_info.search_year}${'-'}${month}${'-'}${dateList.date}" />
										</c:otherwise>


									</c:choose>
								</c:if>
								<c:if test="${dateList.value eq null || dateList.value =='' }">
									<c:set var="calendar_date" value="${''}" />
								</c:if>

								<c:if test="${ calendar_date ne null || calendar_date !=''}">
									<fmt:parseDate value="${calendar_date }" var="endPlanDate"
										pattern="yyyy-MM-dd" />
									<fmt:parseNumber value="${endPlanDate.time / (1000*60*60*24)}"
										integerOnly="true" var="endDate"></fmt:parseNumber>
									<c:set var="DATE" value="${endDate -strDate } " />
									<fmt:parseNumber var="i" integerOnly="true" type="number"
										value="${DATE}" />
								</c:if>

								<c:choose>
									<c:when test="${date_status.index%7==6}">

										<c:choose>
											<c:when test="${today_info.today == dateList.date}">

												<td class="sat_day today_color">
													<div class="sat">${dateList.date}
														<c:if test="${i <=14 && i>=0 }">
															<div class="reserve_btn_box">
																<br> <a class="reserve_btn"
																	onclick="javascript:goPage('106','${calendar_date}')">9-106호</a>
																<br> <a class="reserve_btn"
																	onclick="javascript:goPage('107','${calendar_date}')">9-107호</a>
															</div>
														</c:if>
													</div>
													<div></div>
												</td>

											</c:when>
											<c:otherwise>
												<td class="sat_day">
													<div class="sat">${dateList.date}
														<c:if test="${i <=14 && i>=0 }">
															<div class="reserve_btn_box">
																<br> <a class="reserve_btn"
																	onclick="javascript:goPage('106','${calendar_date}')">9-106호</a>
																<br> <a class="reserve_btn"
																	onclick="javascript:goPage('107','${calendar_date}')">9-107호</a>
															</div>
														</c:if>
													</div>
													<div></div>
												</td>
											</c:otherwise>
										</c:choose>

									</c:when>
									<c:when test="${date_status.index%7==0}">

										<c:choose>
											<c:when test="${today_info.today == dateList.date}">
						</tr>
						<tr>
							<td class="sun_day today_color">
								<div class="sun">${dateList.date}
									<c:if test="${i <=14 && i>=0 }">
										<div class="reserve_btn_box">
											<br> <a class="reserve_btn"
												onclick="javascript:goPage('106','${calendar_date}')">9-106호</a>
											<br> <a class="reserve_btn"
												onclick="javascript:goPage('107','${calendar_date}')">9-107호</a>
										</div>
									</c:if>
								</div>
								<div></div>
							</td>

							</c:when>
							<c:otherwise>
						</tr>
						<tr>
							<td class="sun_day">
								<div class="sun">${dateList.date}
									<c:if test="${i <=14 && i>=0 }">
										<div class="reserve_btn_box">
											<br> <a class="reserve_btn"
												onclick="javascript:goPage('106','${calendar_date}')">9-106호</a>
											<br> <a class="reserve_btn"
												onclick="javascript:goPage('107','${calendar_date}')">9-107호</a>
										</div>
									</c:if>
								</div>
								<div></div>
							</td>



							</c:otherwise>
							</c:choose>

							</c:when>
							<c:otherwise>

								<c:choose>
									<c:when test="${today_info.today == dateList.date}">
										<td class="normal_day today_color">
											<div class="date">${dateList.date}
												<c:if test="${i <=14 && i>=0 }">
													<div class="reserve_btn_box">
														<br> <a class="reserve_btn"
															onclick="javascript:goPage('106','${calendar_date}')">9-106호</a>
														<br> <a class="reserve_btn"
															onclick="javascript:goPage('107','${calendar_date}')">9-107호</a>
													</div>
												</c:if>
											</div>
											<div></div>
										</td>

									</c:when>
									<c:otherwise>

										<td class="normal_day">
											<div class="date">${dateList.date}
												<c:if test="${i <=14 && i>=0 }">
													<div class="reserve_btn_box">
														<br> <a class="reserve_btn"
															onclick="javascript:goPage('106','${calendar_date}')">9-106호</a>
														<br> <a class="reserve_btn"
															onclick="javascript:goPage('107','${calendar_date}')">9-107호</a>
													</div>
												</c:if>
											</div>
											<div></div>
										</td>



									</c:otherwise>
								</c:choose>

							</c:otherwise>
							</c:choose>
							</c:forEach>
					</tbody>

				</table>
			</div>
		</form>


		<!--모바일 footer-->
		<%@ include file="../include/MOBILE/footer.jsp"%>


	</div>
	<script src="https://kit.fontawesome.com/695be3a17b.js"
		crossorigin="anonymous"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/style.js">
		
	</script>

	<script>
		function goPage(room, date) {
			if(${member  == null})
			{
				if(confirm("로그인이 필요한 서비스입니다. 로그인 하시겠습니까?")){
					window.location = "${pageContext.request.contextPath}/login.do"	
				}
				else{
					return;
				}
				
			}
			else{

				var newForm = $('<form></form>');
				newForm.attr("method", "Post");
				newForm.attr("action",
						"${pageContext.request.contextPath}/reservation.do");

				newForm.append($('<input/>', {
					type : 'hidden',
					name : 'room_num',
					value : room
				}));
				newForm.append($('<input/>', {
					type : 'hidden',
					name : 'reserve_date',
					value : date
				}));

				newForm.appendTo('body');

				newForm.submit();

			}
		}
	</script>


</body>
</html>