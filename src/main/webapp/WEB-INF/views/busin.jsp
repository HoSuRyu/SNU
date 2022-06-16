<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html lang="en">




<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta NAME="ROBOTS"CONTENT="NOINDEX,NOFOLLOW">
    <title>사범대</title>
    <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-gothic.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/side_btn.css" />
<link rel="icon" 
	href="${pageContext.request.contextPath}/assets/img/basic_logo.png" />
<link rel="icon" 
	href="${pageContext.request.contextPath}/assets/img/basic_logo.png" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/header.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/footer.css" />

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/mobile_header.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/mobile_footer.css" />

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/FAQ.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/busin.css">
</head>

<style>
.main_box{
	font-family: 'NanumGothic';
}
</style>




<body>
    <div class="main_box">
   <div class="header">
			<%@ include file="../include/WEB/header.jsp"%>
			<%@ include file="../include/WEB/side_bar.jsp"%>
		</div>

        <!--pc fix bar-->
        
    
            <!--pc 메인 박스 시작-->
            <div class="snu_main_box">
                <div class="snu_main_header">
                    주요사업소개
                 </div>

                 <div class="edu_intro_detail">
                    <div class="edu_intro_detail_1">
                        <div class="detail_title"><i class="fas fa-circle i"></i> 교육 포럼_교육국</div>
                        <div class="detail_body">교육 관련 이슈로 학기당 1회 교내 교육 포럼을 개최하여, 비대면 장기화로 인한 관련 사업 부재의 지속을 해결하고자 합니다. 교육 포럼은 사범대학 학우들이 팀을 이루어 며칠간 교육에 대해 탐구하고 심도 있게 토론하는 행사입니다. 특정 교육학 분과와 관련하여 설정된 대주제에 관해, 각 팀에서는 세부 주제를 고안하고 소탐구를 실시하여 프로젝트 결과물을 도출합니다. 팀별 준비 과정 및 결과물에 피드백을 제공할 자문위원과, 강연을 진행할 연사 초청도 함께 기획합니다.</div>
                    </div>
                </div>

                <div class="edu_intro_detail">
                    <div class="edu_intro_detail_1">
                        <div class="detail_title"><i class="fas fa-circle i"></i> 2022 겨울 사범대 만들기_문화국 </div>
                        <div class="detail_body">사범대학 대표자들 및 학생 사회에 관심 있는 학우들이 모여 함께하는 LT(Leadership Training)입니다. 2년이라는 긴 시간의 부재에서 새로운 학생회가 출범하며 맞이하는 2022년 겨울은 사범대 학생사회의 재건을 위한 중요한 시기입니다. 이 시기에 문화국은 학우들은 자치활동 및 학생사회의 여러 안건에 대해 본인들의 의견을 나누고, 대표자들 간의 교류가 가능하도록, 2022년 첫 대면 행사인 사만을 담당하고 진행합니다 :) 타임라인 설정, 레크레이션 등 세부 기획, 당일 집행까지 하고 있습니다. 
                        </div>
                    </div>
                </div>

                <div class="edu_intro_detail">
                    <div class="edu_intro_detail_1">
                        <div class="detail_title"><i class="fas fa-circle i"></i> 사범대학 축제_문화국</div>
                        <div class="detail_body">4월과 10월(예정)에 열릴 사범대학 봄축제와 가을축제! 버들골 및 사범대학 일대에서 각종 공연들과 행사들이 열릴 예정입니다. 문화국은 공연 참가자들을 모집하고 공연을 기획하며, 각종 행사(부스 활동, 참여형 활동 등)를 기획하고 실행하는 주체입니다. 코로나가 나아진다면 행사, 공연과 더불어 푸드 트럭, 장터 등도 함께 기획하며, 여러 기업과 제휴를 맺어 보다 풍성한 축제를 만들 수 있도록 제휴사업 업무도 진행할 예정입니다. 더불어 많은 학우들이 좋아하는 e-sports 대회 또한 축제의 일부 (또는 독립적인 행사)로 기획할 예정이니, 사범대 학우분들의 많은 참여 부탁드립니다!
                        </div>
                    </div>
                </div>

                <div class="edu_intro_detail">
                    <div class="edu_intro_detail_1">
                        <div class="detail_title"><i class="fas fa-circle i"></i> 교직 교재 대여 및 장터 운영_사무국</div>
                        <div class="detail_body">교직 수업시 구하기 힘든 교직 교재들이나 한번 사용하고 버리기 아까운 교재들을 기증 또는 장터를 통해 사고 팔 수 있는 장을 열어 학우들이 보다 쉽게 교재를 구비하도록 돕는 사업입니다. 기증받은 책은 학생회 차원에서 관리하며 필요한 학우들에게 대여하며 장터의 경우 구매자와 판매자를 오픈카톡을 통해 연결하여 효율적인 장터를 진행하고자 합니다. (2월 말 예정)</div>
                    </div>
                </div>

                <div class="edu_intro_detail">
                    <div class="edu_intro_detail_1">
                        <div class="detail_title"><i class="fas fa-circle i"></i> 학생회비 회계_사무국</div>
                        <div class="detail_body">학우분들이 소중하게 내어주신 학생회비를 관리합니다. 효율적이고 필요한 곳에 사용될 수 있도록 검토하며 매 사용 내역을 기록하여 정리합니다. 예산이 허투루 사용되지 않도록 국 내 및 국장단 회의를 통해 예산 집행이 시행되며 카드매출전표, 거래내역서 등을 보관하고 있습니다. 
                        </div>
                    </div>
                </div>

                <div class="edu_intro_detail">
                    <div class="edu_intro_detail_1">
                        <div class="detail_title"><i class="fas fa-circle i"></i> Humans in 사범대, HI 사범_소통기획국</div>
                        <div class="detail_body">매달 한 명~두 명의 사범대학 소속 인터뷰이를 대상으로 다양한 주제에 관해 이야기하고, 이를 영상 및 카드뉴스로 제작하여 공유하는 사업입니다. 사범대학 학우들 또는 관계자들의 이야기를 듣고, 학우들과 공유함으로써 상호소통할 수 있는 사범대 학생사회를 꿈꿉니다. 41대 학생회 늘품은 하이사범 컨텐츠 인터뷰이에 누구나 지원할 수 있게끔 하여 더 자유로운 대화의 장을 만들고자 합니다.</div>
                    </div>
                </div>

                <div class="edu_intro_detail">
                    <div class="edu_intro_detail_1">
                        <div class="detail_title"><i class="fas fa-circle i"></i> 사범대학 학부생 웹사이트 개발_소통기획국</div>
                        <div class="detail_body">서울대 본부의 지원이 중단된 사범대학 웹사이트를 학생회 차원에서 자체 개발하여, 사범대학 모든 학우가 자유롭게 사용할 수 있는 편리한 소통의 공간을 만드는 사업입니다. 기존 카페 형식이었던 커뮤니티의 단점을 보완하여 장기적으로 유지될 수 있는 웹사이트를 개발하고자 합니다. 웹디자인부터 개발까지 소통기획국원들이 참여하여 졸업 로드맵, 행사 참여 신청 등 학생들의 실질적인 니즈를 충족시키는 기능들을 고민하고 구현합니다.</div>
                    </div>
                </div>

                <div class="edu_intro_detail">
                    <div class="edu_intro_detail_1">
                        <div class="detail_title"><i class="fas fa-circle i"></i> 안전하고 차별없는 사범대를 위한 가이드라인 작성 및 교육 자료 제작_인권사회국</div>
                        <div class="detail_body">2022 새내기새로배움터의 대면 진행과 더불어, 코로나 19 사태로 인한 비대면의 일상화로 대면 대학 생활이 어색할 새내기 및 정든내기들을 위해 안전하고 차별 없는 사범대 생활을 위한 가이드라인을 제작합니다. 또한, 이를 사범대 15개 과/반에 배포하여 교육 자료를 제작하도록 도모하고, 사범대 차원의 새터 교육 자료를 제작합니다. 본 가이드라인을 통해 사범대 학우들은 가이드라인을 함께 보고 토론하고 내규를 만드는 등의 민주적 절차를 거쳐 안전하고 차별 없는 사범대 공동체를 만드는 데 일조할 수 있습니다. 이를 통해 인권사회국은 사범대 학우로서의 효능감을 느끼는 데에 일조함으로써 학우들과 한껏 가까워진 사범대 학생회를 만드는 데에 기여하고자 합니다.
                        </div>
                    </div>
                </div>

                <div class="edu_intro_detail">
                    <div class="edu_intro_detail_1">
                        <div class="detail_title"><i class="fas fa-circle i"></i> 사범대 시설&졸업요건 장애 학생 접근성 조사 및 개선_인권사회국 </div>
                        <div class="detail_body">사범대의 시설을 활용하는 데에 어려움을 겪고, 심지어는 졸업 요건을 만족시키는 것조차 어려움을 느끼는 학우들이 있습니다. 인권사회국은 이러한 문제의식에 봉착하여 장애 학생들의 총체적인 사범대 접근성을 높이고 보다 평등한 학교생활을 이어나가는 데에 기여하고자 합니다. 이를 달성하기 위한 두 가지 사업으로 첫째, 장애 학생의 심폐소생술 및 교생실습을 위한 가이드라인을 교육부로부터 전달받고, 이를 교원양성지원센터와 논의하고자 합니다. 둘째, 장애 학우들의 접근이 어려운 사범대 시설을 총체적으로 조사하고 사범대 학장단과의 면담을 통해 환경을 개선하고자 합니다.</div>
                    </div>
                </div>
    
            </div>

	<%@ include file="../include/WEB/footer.jsp"%>
        <!--pc 메인박스 끝-->


        <!--pc footer-->
       






    </div>
    



    <!--모바일 -->
    <div class="snu_mobile_box"  style="font-family: 'NanumGothic';">

        <!-- 모바일 헤더-->
        <%@ include file="../include/MOBILE/header.jsp"%>
		<%@ include file="../include/MOBILE/tab.jsp"%>
        <!--모바일 메인 박스 시작-->

        
        <div class="snu_mobile_main_box">

            <div class="snu_main_header">
               주요사업소개
            </div>
            <div class="edu_intro_detail">
                <div class="edu_intro_detail_1">
                    <div class="detail_title"><i class="fas fa-circle i"></i> 교육 포럼_교육국</div>
                    <div class="detail_body">교육 관련 이슈로 학기당 1회 교내 교육 포럼을 개최하여, 비대면 장기화로 인한 관련 사업 부재의 지속을 해결하고자 합니다. 교육 포럼은 사범대학 학우들이 팀을 이루어 며칠간 교육에 대해 탐구하고 심도 있게 토론하는 행사입니다. 특정 교육학 분과와 관련하여 설정된 대주제에 관해, 각 팀에서는 세부 주제를 고안하고 소탐구를 실시하여 프로젝트 결과물을 도출합니다. 팀별 준비 과정 및 결과물에 피드백을 제공할 자문위원과, 강연을 진행할 연사 초청도 함께 기획합니다.</div>
                </div>
            </div>

            <div class="edu_intro_detail">
                <div class="edu_intro_detail_1">
                    <div class="detail_title"><i class="fas fa-circle i"></i> 2022 겨울 사범대 만들기_문화국 </div>
                    <div class="detail_body">사범대학 대표자들 및 학생 사회에 관심 있는 학우들이 모여 함께하는 LT(Leadership Training)입니다. 2년이라는 긴 시간의 부재에서 새로운 학생회가 출범하며 맞이하는 2022년 겨울은 사범대 학생사회의 재건을 위한 중요한 시기입니다. 이 시기에 문화국은 학우들은 자치활동 및 학생사회의 여러 안건에 대해 본인들의 의견을 나누고, 대표자들 간의 교류가 가능하도록, 2022년 첫 대면 행사인 사만을 담당하고 진행합니다 :) 타임라인 설정, 레크레이션 등 세부 기획, 당일 집행까지 하고 있습니다. 
                    </div>
                </div>
            </div>

            <div class="edu_intro_detail">
                <div class="edu_intro_detail_1">
                    <div class="detail_title"><i class="fas fa-circle i"></i> 사범대학 축제_문화국</div>
                    <div class="detail_body">4월과 10월(예정)에 열릴 사범대학 봄축제와 가을축제! 버들골 및 사범대학 일대에서 각종 공연들과 행사들이 열릴 예정입니다. 문화국은 공연 참가자들을 모집하고 공연을 기획하며, 각종 행사(부스 활동, 참여형 활동 등)를 기획하고 실행하는 주체입니다. 코로나가 나아진다면 행사, 공연과 더불어 푸드 트럭, 장터 등도 함께 기획하며, 여러 기업과 제휴를 맺어 보다 풍성한 축제를 만들 수 있도록 제휴사업 업무도 진행할 예정입니다. 더불어 많은 학우들이 좋아하는 e-sports 대회 또한 축제의 일부 (또는 독립적인 행사)로 기획할 예정이니, 사범대 학우분들의 많은 참여 부탁드립니다!
                    </div>
                </div>
            </div>

            <div class="edu_intro_detail">
                <div class="edu_intro_detail_1">
                    <div class="detail_title"><i class="fas fa-circle i"></i> 교직 교재 대여 및 장터 운영_사무국</div>
                    <div class="detail_body">교직 수업시 구하기 힘든 교직 교재들이나 한번 사용하고 버리기 아까운 교재들을 기증 또는 장터를 통해 사고 팔 수 있는 장을 열어 학우들이 보다 쉽게 교재를 구비하도록 돕는 사업입니다. 기증받은 책은 학생회 차원에서 관리하며 필요한 학우들에게 대여하며 장터의 경우 구매자와 판매자를 오픈카톡을 통해 연결하여 효율적인 장터를 진행하고자 합니다. (2월 말 예정)</div>
                </div>
            </div>

            <div class="edu_intro_detail">
                <div class="edu_intro_detail_1">
                    <div class="detail_title"><i class="fas fa-circle i"></i> 학생회비 회계_사무국</div>
                    <div class="detail_body">학우분들이 소중하게 내어주신 학생회비를 관리합니다. 효율적이고 필요한 곳에 사용될 수 있도록 검토하며 매 사용 내역을 기록하여 정리합니다. 예산이 허투루 사용되지 않도록 국 내 및 국장단 회의를 통해 예산 집행이 시행되며 카드매출전표, 거래내역서 등을 보관하고 있습니다. 
                    </div>
                </div>
            </div>

            <div class="edu_intro_detail">
                <div class="edu_intro_detail_1">
                    <div class="detail_title"><i class="fas fa-circle i"></i> Humans in 사범대, HI 사범_소통기획국</div>
                    <div class="detail_body">매달 한 명~두 명의 사범대학 소속 인터뷰이를 대상으로 다양한 주제에 관해 이야기하고, 이를 영상 및 카드뉴스로 제작하여 공유하는 사업입니다. 사범대학 학우들 또는 관계자들의 이야기를 듣고, 학우들과 공유함으로써 상호소통할 수 있는 사범대 학생사회를 꿈꿉니다. 41대 학생회 늘품은 하이사범 컨텐츠 인터뷰이에 누구나 지원할 수 있게끔 하여 더 자유로운 대화의 장을 만들고자 합니다.</div>
                </div>
            </div>

            <div class="edu_intro_detail">
                <div class="edu_intro_detail_1">
                    <div class="detail_title"><i class="fas fa-circle i"></i> 사범대학 학부생 웹사이트 개발_소통기획국</div>
                    <div class="detail_body">서울대 본부의 지원이 중단된 사범대학 웹사이트를 학생회 차원에서 자체 개발하여, 사범대학 모든 학우가 자유롭게 사용할 수 있는 편리한 소통의 공간을 만드는 사업입니다. 기존 카페 형식이었던 커뮤니티의 단점을 보완하여 장기적으로 유지될 수 있는 웹사이트를 개발하고자 합니다. 웹디자인부터 개발까지 소통기획국원들이 참여하여 졸업 로드맵, 행사 참여 신청 등 학생들의 실질적인 니즈를 충족시키는 기능들을 고민하고 구현합니다.</div>
                </div>
            </div>

            <div class="edu_intro_detail">
                <div class="edu_intro_detail_1">
                    <div class="detail_title"><i class="fas fa-circle i"></i> 안전하고 차별없는 사범대를 위한 가이드라인 작성 및 교육 자료 제작_인권사회국</div>
                    <div class="detail_body">2022 새내기새로배움터의 대면 진행과 더불어, 코로나 19 사태로 인한 비대면의 일상화로 대면 대학 생활이 어색할 새내기 및 정든내기들을 위해 안전하고 차별 없는 사범대 생활을 위한 가이드라인을 제작합니다. 또한, 이를 사범대 15개 과/반에 배포하여 교육 자료를 제작하도록 도모하고, 사범대 차원의 새터 교육 자료를 제작합니다. 본 가이드라인을 통해 사범대 학우들은 가이드라인을 함께 보고 토론하고 내규를 만드는 등의 민주적 절차를 거쳐 안전하고 차별 없는 사범대 공동체를 만드는 데 일조할 수 있습니다. 이를 통해 인권사회국은 사범대 학우로서의 효능감을 느끼는 데에 일조함으로써 학우들과 한껏 가까워진 사범대 학생회를 만드는 데에 기여하고자 합니다.
                    </div>
                </div>
            </div>

            <div class="edu_intro_detail">
                <div class="edu_intro_detail_1">
                    <div class="detail_title"><i class="fas fa-circle i"></i> 사범대 시설&졸업요건 장애 학생 접근성 조사 및 개선_인권사회국 </div>
                    <div class="detail_body">사범대의 시설을 활용하는 데에 어려움을 겪고, 심지어는 졸업 요건을 만족시키는 것조차 어려움을 느끼는 학우들이 있습니다. 인권사회국은 이러한 문제의식에 봉착하여 장애 학생들의 총체적인 사범대 접근성을 높이고 보다 평등한 학교생활을 이어나가는 데에 기여하고자 합니다. 이를 달성하기 위한 두 가지 사업으로 첫째, 장애 학생의 심폐소생술 및 교생실습을 위한 가이드라인을 교육부로부터 전달받고, 이를 교원양성지원센터와 논의하고자 합니다. 둘째, 장애 학우들의 접근이 어려운 사범대 시설을 총체적으로 조사하고 사범대 학장단과의 면담을 통해 환경을 개선하고자 합니다.</div>
                </div>
            </div>

            <!--모바일 메인 이너-->
            
            <div>


            </div>
            <!--모바일 메인 이너 끝-->

        </div>

        <!--모바일 메인 박스 끝-->
       


        <!--모바일 footer-->
       

 <%@ include file="../include/MOBILE/footer.jsp"%>

    </div>
 

  <script src="https://kit.fontawesome.com/695be3a17b.js"
		crossorigin="anonymous"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/style.js"></script>
   

</body>




</html>