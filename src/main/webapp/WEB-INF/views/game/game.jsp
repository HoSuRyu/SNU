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
.question {
	color: white;
	font-weight: bold;
	background-color: #000e58;
}

body {
	margin: 0px;
	background: #ECEFF1;
}

.snu_game_box {
	width: 500px;
	text-align: center;
	margin: auto;
}

.start_box {
	position: absolute;
	width: 100%;
	height: 105px;
	bottom: 17%;
}

#question0 {
	position: relative;
}

.snu_game_title {
	padding: 30px 0px;
}

#content_wrap {
	display: flex;
	align-items: center;
	height: 100vh;
	background: #000e58;
	width: 500px;
	margin: auto;
}

.header_bar {
	height: 20px;
	background-color: #000e58;
}

.hidden {
	display: none;
}

.answer {
	cursor: pointer;
	background-color: #f05723;
	text-decoration: none;
	color: white;
	border: 0;
	box-shadow: 0 1px 3px rgb(0 0 0/ 12%), 0 1px 2px rgb(0 0 0/ 24%);
	font-size: 1.1rem;
	padding: 30px 0px;
	font-weight: bold;
	width: 95%;
	font-weight: bold;
	border-radius: 20px;
}

.page_nav_bar {
	padding: 30px 0px;
}

.mbti_text {
	font-size: 20px;
	height: 350px;
	display: flex;
	align-items: center;
	justify-content: center;
}

.page_nav_bar {
	font-size: 20px;
}

#start_btn {
	background: rgba(0, 0, 0, 0);
	color: rgba(0, 0, 0, 0);
	box-shadow: none;
	height: 105px;
}

@font-face {
	font-family: 'Gmarket Bold';
	font-style: normal;
	font-weight: 700;
	src: local('Gmarket Sans Bold'), local('GmarketSans-Bold'),
		url('http://script.ebay.co.kr/fonts/GmarketSansBold.woff2')
		format('woff2'),
		url('http://script.ebay.co.kr/fonts/GmarketSansBold.woff')
		format('woff');
}

@font-face {
	font-family: 'Gmarket mid';
	font-style: normal;
	font-weight: 500;
	src: local('Gmarket Sans Medium'), local('GmarketSans-Medium'),
		url('http://script.ebay.co.kr/fonts/GmarketSansMedium.woff2')
		format('woff2'),
		url('http://script.ebay.co.kr/fonts/GmarketSansMedium.woff')
		format('woff');
}

@font-face {
	font-family: 'Gmarket Lite';
	font-style: normal;
	font-weight: 300;
	src: local('Gmarket Sans Light'), local('GmarketSans-Light'),
		url('http://script.ebay.co.kr/fonts/GmarketSansLight.woff2')
		format('woff2'),
		url('http://script.ebay.co.kr/fonts/GmarketSansLight.woff')
		format('woff');
}

* {
	font-family: 'Gmarket mid', serif;
}

@media ( max-width : 600px) {
	.snu_game_box, #content_wrap {
		width: 100%;
	}
	body {
		background: white;
	}
	.answer_btn_box {
		position: relative;
		top: -30px;
	}
	.mbti_text ,.page_nav_bar{
		font-size: 18px;
	}
}

</style>

</head>

<body>

	<div id="content_wrap">
		<div class="snu_game_box" style="">
			<div id="question0" class="question">

				<div>
					<img style="width: 100%;"
						src="${pageContext.request.contextPath }/assets/img/mbti/mbti_start_size.png" />
				</div>
				<div class="start_box">
					<button class="answer" id="start_btn"></button>
					<br /> <br />

				</div>
			</div>
			<div style="background: #222538;" id="question0"
				class="question hidden">

				<div>
					<img style="width: 100%;"
						src="${pageContext.request.contextPath }/assets/img/mbti/start2.png" />
				</div>
				<div class="start_box">
					<button class="answer" id="start_btn"></button>
					<br /> <br />

				</div>
			</div>

			<div style="background: #222538;" id="question0"
				class="question hidden">

				<div>
					<img style="width: 100%;"
						src="${pageContext.request.contextPath }/assets/img/mbti/start3.png" />
				</div>
				<div class="start_box">
					<button class="answer last_start_btn" id="start_btn"></button>
					<br /> <br />

				</div>
			</div>
			<div id="question1" class="question hidden">

				<div class="page_nav_bar">1/12</div>

				<div class="mbti_text">

					먼저 풀었던 문제집을 다시<br> 정리해야겠어.<br> <br> 이때 나는
				</div>


				<div class="answer_btn_box">
					<button class="answer" value="J">정리를 다 하고 휴식타임을 가진다</button>
					<br /> <br />
					<button class="answer" value="P">
						친구들과 장난으로 낙서한 페이지를 보며<br>추억에 잠긴다
					</button>
				</div>
			</div>


			<div id="question2" class="question hidden">
				<div class="page_nav_bar">2/12</div>
				<div class="mbti_text">

					"아냐. 이럴 때가 아니야 <br>재수종합 학원이라도 다녀야겠어." <br> <br> 다
					처음보는 친구들이다. <br>같이 밥을 먹게 됐는데, 요즘 공부를 <br> 어떻게 하냐고 묻는다.<br>
					<br> 이때 나는
				</div>
				<div class="answer_btn_box">
					<button class="answer" value="E">
						오늘 어떻게 공부했고 보통 어떤 썜 강의를<br> 듣는지 말하면서 분위기를 풀어나가야지.
					</button>
					<br /> <br />
					<button class="answer" value="I">
						내가 어떻게 공부하는지<br>정리할 시간이 필요한데........
					</button>
				</div>
			</div>

			<div id="question3" class="question hidden">
				<div class="page_nav_bar">3/12</div>
				<div class="mbti_text">
					이제 벌써 수능 직전!<br> <br> 친구 A는 <br>"넌 왜 모르는게 없냐"<br>라고
					칭찬해주고 <br> <br>친구 B는<br>"언제부터 이렇게 똑똑했냐"<br>라고
					칭찬해준다. <br> <br> 이때 나는
				</div>

				<div class="answer_btn_box">
					<button class="answer" value="T">친구 A의 칭찬이 더 기분 좋다.</button>
					<br /> <br />
					<button class="answer" value="F">친구 B의 칭찬이 더 기분 좋다.</button>
				</div>
			</div>

			<div id="question4" class="question hidden">

				<div class="page_nav_bar">4/12</div>

				<div class="mbti_text">

					이번에도 수능은 무난하게 봐서<br> 서울대 사범대를 지원할 수 있게 됐다. <br> <br>
					인적성 면접... 무슨 질문이 나올까? <br> 교육에 대한 내 생각? <br> 어떤 질문을 하실
					건가요 교수님.. <br> <br> 교수님: 자네는 '사과' 하면 무슨 생각이 드나? <br>
					<br> 나:
				</div>

				<div class="answer_btn_box">
					<button class="answer" value="S">빨갛다, 맛있다..?</button>
					<br /> <br />
					<button class="answer" value="N">스티브 잡스, 뉴턴..?</button>
				</div>
			</div>


			<div id="question5" class="question hidden">
				<div class="page_nav_bar">5/12</div>
				<div class="mbti_text">
					왜인지는 모르겠는데,<br> 합격이다!! <br> <br> 나도 이제 새내기 >_0 <br>
					<br> 사범대 학생회에서 새터를 한다고 해서 갔는데..<br> 새터 조장이 분위기를 너무 못 띄우고
					노잼이다. <br> <br> 이때 나는
				</div>

				<div class="answer_btn_box">
					<button class="answer" value="E">
						조장을 격려하면서 조장이 전체 조를 <br>이끌어갈 수 있게 돕는다.
					</button>
					<br /> <br />
					<button class="answer" value="I">
						조장이 재미없으니 나랑 맞는 사람들이랑 <br>알아서 혼자 친해진다.
					</button>
				</div>
			</div>


			<div id="question6" class="question hidden">
				<div class="page_nav_bar">6/12</div>
				<div class="mbti_text">
					그래도 새터 끝나고 뒷풀이가 잡혔다!<br> 드디어 사람들과 설레는 첫 술자리!! <br> <br>
					그런데 주량 조절을 못하고 너무 많이 <br> 마시는 친구가 있다. <br> <br> 술
					마시고 자꾸 1도 안궁금한 <br> 자기 전 애인들 이야기를 한다. <br> <br> 이때
					나는
				</div>

				<div class="answer_btn_box">
					<button class="answer" value="T">
						와 어쩌자는거지? 라는 심정으로 일단은 듣고 <br>빨리 택시 태워서 집에 바로 보낸다.
					</button>
					<br /> <br />
					<button class="answer" value="F">
						전 애인 얘기에 공감하면서 일단은 <br>열심히 들어주고 택시 태워 보내준다.
					</button>
				</div>
			</div>


			<div id="question7" class="question hidden">
				<div class="page_nav_bar">7/12</div>
				<div class="mbti_text">


					대면 수업은 즐겁지만 너무 힘들다 ㅜㅜ <br> <br> 수업 끝나고 일어나는데 친구가<br>
					예정에도 없이 갑자기 오늘<br> 밤새 술 먹자고 한다. <br> <br> 이때 나는
				</div>

				<div class="answer_btn_box">
					<button class="answer" value="J">
						술을 신나게 마시다가 취할 것 같으면 <br>그만 마신다.
					</button>
					<br /> <br />
					<button class="answer" value="P">
						술을 조절하면서 마시려다가 실패하고 <br>필름이 끊긴다.
					</button>
				</div>
			</div>


			<div id="question8" class="question hidden">
				<div class="page_nav_bar">8/12</div>
				<div class="mbti_text">

					선후배끼리 다같이 만난 자리에서<br> 선배가 자꾸 latte 썰을 풀고 귀찮게 한다. <br> <br>
					이때 나는
				</div>

				<div class="answer_btn_box">
					<button class="answer" value="S">
						와... 진짜 뭐라 하고 싶지만 현실적으로<br> 선배니까 일단 참아야지....
					</button>
					<br /> <br />
					<button class="answer" value="N">
						마음 속으로 저 선배가 다치지 않지만 <br> 민망할 정도로 넘어지는 생각을 하며 참는다.
					</button>
				</div>
			</div>

			<div id="question9" class="question hidden">
				<div class="page_nav_bar">9/12</div>
				<div class="mbti_text">
					같이 친해진 과동기랑 단둘이 약속이 <br>잡혔는데,동기가 갑자기 자기 룸메도<br> 같이 불러서
					놀아도 되냐고 한다.<br> <br> 이때 나는

				</div>

				<div class="answer_btn_box">
					<button class="answer" value="E">
						선약에 룸메가 끼어들어서 기분 나쁘다는<br> 말을 하지만 일단 만난다.
					</button>
					<br /> <br />
					<button class="answer" value="I">
						만나지만 속으로는 이미 마음 다 상하고 <br>다시 그 친구랑 안 만날 계획을 하고 있다.
					</button>
				</div>
			</div>

			<div id="question10" class="question hidden">

				<div class="page_nav_bar">10/12</div>
				<div class="mbti_text">
					친구랑 같이 듣기로 한 강의가 있는데,<br> 친구가 너무 힘들어서 드랍해도 되냐고<br> 조심스럽게
					물어본다.<br> <br> 이때 나는
				</div>

				<div class="answer_btn_box">
					<button class="answer" value="T">왜 드랍해?</button>
					<br /> <br />
					<button class="answer" value="F">나랑 같이 안들어ㅜㅜ?</button>
				</div>
			</div>

			<div id="question11" class="question hidden">
				<div class="page_nav_bar">11/12</div>

				<div class="mbti_text">

					친구가<br> "다음 주 까지 제출해야 하는 과제 풀었어?"<br> 라고 물어본다.<br> <br>
					이때 나는
				</div>

				<div class="answer_btn_box">
					<button class="answer" value="J">과제가...있었어? 오늘 풀어야지</button>
					<br /> <br />
					<button class="answer" value="P">과제가...있었어? 다음 주에 풀어야지</button>
				</div>
			</div>

			<div id="question12" class="question hidden">
				<div class="page_nav_bar">12/12</div>
				<div class="mbti_text">

					"입학도 했고, 다양한 활동도 하고 싶으니까<br> 학생회도 해야지!" <br> <br>
					사범대학 학생회 집행부에 지원하려고 하는데,<br> 에타에서 '학생회 은근 힘들지 않나'<br> 라는
					글을 봤다.<br> <br> 이때 나는

				</div>

				<div class="answer_btn_box">
					<button class="answer last_btn" value="S">
						주변 학생회 사람들한테 물어봐서 <br>사실인지 확인한다.
					</button>
					<br /> <br />
					<button class="answer last_btn" value="N">벌써 혼자 학생회 n년차
						타큐를 찍는다.</button>
				</div>
			</div>

			<div style="background: #222538;" id="question0"
				class="question hidden">

				<div>
					<img style="width: 100%;"
						src="${pageContext.request.contextPath }/assets/img/mbti/result.png" />
				</div>
				<div class="start_box">
					<button class="answer last_start_btn end_btn" id="start_btn"></button>
					<br /> <br />

				</div>
			</div>



			<div id="result" class="question hidden">
				<img class="game_loading"
					src="${pageContext.request.contextPath }/assets/img/loading.gif"
					style="width: 10%; padding: 70% 0%;">
			</div>


		</div>
	</div>
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="https://kit.fontawesome.com/6478f529f2.js"
		crossorigin="anonymous"></script>
	<script>
		$("#start_btn").click(function() {
			$("#content_wrap").css("background-color", "#222538");

		})

		$(".last_start_btn").click(function() {
			$("#content_wrap").css("background-color", "#000e58");

		})
		var mbti = [ 0, 0, 0, 0, 0, 0, 0, 0 ]
		$(".answer").click(function() {
			$(this).parents(".question").addClass("hidden");
			$(this).parents(".question").next().removeClass("hidden");
			var check = $(this).val();

			switch (check) {
			case "E":
				mbti[0]++;
				break;
			case "I":
				mbti[1]++;
				break;
			case "N":
				mbti[2]++;
				break;
			case "S":
				mbti[3]++;
				break;
			case "F":
				mbti[4]++;
				break;
			case "T":
				mbti[5]++;
				break;
			case "J":
				mbti[6]++;
				break;
			case "P":
				mbti[7]++;
				break;
			}

		})
		var result = ""
		$(".last_btn").click(function() {
			$("#content_wrap").css("background-color", "#222538");

			if (mbti[0] > mbti[1]) {
				result += "E";
			} else {
				result += "I";
			}

			if (mbti[2] > mbti[3]) {
				result += "N";
			} else {
				result += "S";
			}

			if (mbti[4] > mbti[5]) {
				result += "F";
			} else {
				result += "T";
			}

			if (mbti[6] > mbti[7]) {
				result += "J";
			} else {
				result += "P";
			}

		});
		$(".end_btn")
				.click(
						function() {
							setTimeout(
									function() {
										$(".game_loading").addClass('hidden');
										$("#content_wrap").css(
												"background-color", "white");
										$(".question").css("background-color",
												"white");
										var code = ""
										code += "<img style='width:100%;' src='${pageContext.request.contextPath}/assets/img/mbti/result/"
												+ result + ".png'/>";
										code += "<a class='home_btn' href='${pageContext.request.contextPath}/'>홈으로</a>"
										$("#result").append(code);

									}, 2000);

						})
	</script>
</body>
</html>