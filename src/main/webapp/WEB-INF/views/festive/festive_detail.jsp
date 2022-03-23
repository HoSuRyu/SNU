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

    .next,
    .prev {
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
        background-image: url(https://www.moe.go.kr/img/2021Renewal/common/page_prev.svg);
    }

    .next {
        right: 0;
        background-image: url(https://www.moe.go.kr/img/2021Renewal/common/page_next.svg);
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
            <div class="snu_main_header">
                [진행] 진행중인 행사 1
            </div>

            <div class="" style="width: 85%; margin: auto;">
                <div class="festive_main_text" style="width: 100%; border: 1px solid black; margin: 60px 0px;">

                    행사 설명 칸 입니다
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br><br><br><br> <br><br><br><br>
                </div>



                <div class="photo">
                    <div class="head">
                        <img class="main_img" style="width: 100%;"
                            src="https://www.moe.go.kr/upload/board/340/2022/01/BOARD_2022010609265983701.jpg" />
                    </div>
                    <a class="prev">
                        <span>이전</span>
                    </a>
                    <a class="next">
                        <span>이후</span>
                    </a>
                    <div class="midd">
                        <ul>
                            <li id="li_0">
                                <a class="small_img_box on">
                                    <img class="small_img" id="0"
                                        src="https://www.moe.go.kr/upload/board/340/2022/01/BOARD_2022010609265983701.jpg" />
                                </a>
                            </li>
                            <li id="li_1">
                                <a class="small_img_box">
                                    <img class="small_img" id="1"
                                        src="https://www.moe.go.kr/upload/board/340/2022/01/BOARD_2022010609265984511.jpg"
                                        alt="220106_2022 교육부 업무보고 02">
                                </a>
                            </li>
                            <li id="li_2">
                                <a class="small_img_box">
                                    <img class="small_img" id="2"
                                        src="https://www.moe.go.kr/upload/board/340/2022/01/BOARD_2022010609265985421.jpg"
                                        alt="220106_2022 교육부 업무보고 02">
                                </a>
                            </li>
                            <li id="li_3">
                                <a class="small_img_box">
                                    <img class="small_img" id="3"
                                        src="https://www.moe.go.kr/upload/board/340/2022/01/BOARD_2022010609265986431.jpg"
                                        alt="220106_2022 교육부 업무보고 02">
                                </a>
                            </li>
                            <li id="li_4">
                                <a class="small_img_box">
                                    <img class="small_img" id="4"
                                        src="https://www.moe.go.kr/upload/board/340/2022/01/BOARD_2022010609265984511.jpg"
                                        alt="220106_2022 교육부 업무보고 02">
                                </a>
                            </li>
                            <li id="li_5">
                                <a class="small_img_box">
                                    <img class="small_img" id="5"
                                        src="https://www.moe.go.kr/upload/board/340/2022/01/BOARD_2022010609265986431.jpg"
                                        alt="220106_2022 교육부 업무보고 02">
                                </a>
                            </li>
                            <li id="li_6">
                                <a class="small_img_box">
                                    <img class="small_img" id="6"
                                        src="https://www.moe.go.kr/upload/board/340/2022/01/BOARD_2022010609265985421.jpg"
                                        alt="220106_2022 교육부 업무보고 02">
                                </a>
                            </li>

                        </ul>

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

			<div class="snu_main_header">제목2</div>

			<!--모바일 메인 이너-->

			<div>
				<div class="festive_list">
					<div class="festive_list_inner_box">
						<a href="#">
							<div class="festive_list_inner_img">
								<img
									src="${pageContext.request.contextPath}/assets/img/kakao.png">
							</div>
							<div class="festive_list_inner_state">
								<span>[진행]</span><br> 1. 첫번째 행사입니다
							</div>
						</a>
					</div>
					<div class="festive_list_inner_box">
						<div class="festive_list_inner_img">
							<img
								src="${pageContext.request.contextPath}/assets/img/kakao.png">
						</div>
						<div class="festive_list_inner_state">
							<span>[진행]</span> <br>2. 두번째 행사입니다
						</div>
					</div>

				</div>

				<div class="festive_list">
					<div class="festive_list_inner_box">
						<div class="festive_list_inner_img">
							<img
								src="${pageContext.request.contextPath}/assets/img/kakao.png">
						</div>
						<div class="festive_list_inner_state">
							<span>[마감]</span><br> 3. 세t번째 행사입니다
						</div>
					</div>
					<div class="festive_list_inner_box">
						<div class="festive_list_inner_img">
							<img
								src="${pageContext.request.contextPath}/assets/img/kakao.png">
						</div>
						<div class="festive_list_inner_state">
							<span>[마감]</span> <br> 4. 네섯번째 행사입니다
						</div>
					</div>

				</div>

				<div class="festive_list">
					<div class="festive_list_inner_box">
						<div class="festive_list_inner_img">
							<img
								src="${pageContext.request.contextPath}/assets/img/kakao.png">
						</div>
						<div class="festive_list_inner_state">
							<span>[마감]</span> <br>5. 다섯번째 행사입니다
						</div>
					</div>
					<div class="festive_list_inner_box">
						<div class="festive_list_inner_img">
							<img
								src="${pageContext.request.contextPath}/assets/img/kakao.png">
						</div>
						<div class="festive_list_inner_state">
							<span>[마감]</span> <br>6. 여섯번째 행사입니다
						</div>
					</div>

				</div>


			</div>
			<!--모바일 메인 이너 끝-->

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
        var width_sum = 0;
        var width = $(".midd").width();
        var overflow = 0;
        var move_distance = 0;
        var first_index = 0;
        var last_index = parseInt($(".midd ul li:last img").attr("id"));

        for (var i = 0; i <= last_index; i++) {
            width_sum += $("#li_" + i).outerWidth(true);
            if (width_sum > width) {
                overflow = i;
                break;
            }
        }

        $(".next").click(function () {
            var index = parseInt($(".on").find(".small_img").attr("id")) + 1;
            if (index <= last_index) {
                slide(index);
                if (index >= overflow) {
                    move_distance += $("#li_" + index).outerWidth(true);
                    $(".midd ul").animate({
                        left: "-" + move_distance + "px"

                    }, 500);

                }
                else {
                    move_distance = 0;
                    $(".midd ul").animate({
                        left: "0px"

                    }, 500);

                }

            }
            console.log(move_distance);
        });
        $(".prev").click(function () {
            var index = parseInt($(".on").find(".small_img").attr("id")) - 1;
            if (index >= first_index) {
                slide(index);

                if (index >= overflow) {
                    move_distance -= $("#li_" + index).outerWidth(true);
                    $(".midd ul").animate({
                        left: "-" + move_distance + "px"

                    }, 500);
                }
                else {
                    move_distance = 0;
                    $(".midd ul").animate({
                        left: "0px"

                    }, 500);
                }
            }
            console.log(move_distance);
        });

        function slide(index) {
            $(".small_img_box").removeClass("on");
            $("#" + index).parent(".small_img_box").addClass("on");
            var src = $(".on").find(".small_img").attr("src");
            $(".main_img").attr("src", src);

        }

        $(".small_img_box").click(function () {
            move_distance = 0;
            $(".small_img_box").removeClass("on");
            $(this).addClass("on");
            var index = parseInt($(this).find(".small_img").attr("id"));
            slide(index) ;
            if (index >= overflow) {
                for (var i = overflow; i <= index; i++) {
                    move_distance += $("#li_" + i).outerWidth(true);
                }

                $(".midd ul").animate({
                    left: "-" + move_distance + "px"

                }, 500);
            }
            else {
                $(".midd ul").animate({
                    left: "0px"

                }, 500);
            }
            console.log(move_distance);
        });



    </script>


</body>
</html>