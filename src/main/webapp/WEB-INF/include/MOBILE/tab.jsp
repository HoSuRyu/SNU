<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="snu_m_tab_box">
            <div class="tab_logo_box"></div>
            <div class="tab_inner">
                <div class="tab_inner_box">
                    <div class="btn">
                        <div>학생회 </div>
                        <div><i class="fas fa-chevron-down"></i></div>
                    </div>
                    <div class="tab_btn_inner">
                        <div><a href="${pageContext.request.contextPath}/Student_Council/introduce.do">학생회 소개</a></div>
                        <div><a href="#">회의록 / 안건지</a></div>
                         <div><a href="${pageContext.request.contextPath}/Student_Council/rule.do">학생회칙 / 세칙</a></div>
                        <div><a href="${pageContext.request.contextPath}/introduce/introduce.do">집행위원회 소개</a></div>
                        <div><a href="${pageContext.request.contextPath}/introduce/business_introduce.do?cnum=1">주요사업소개</a></div>
                    </div>
                </div>
                <div class="tab_inner_box">
                    <div class="btn" id="tab_btn2">
                        <div>커뮤니티</div>
                        <div><i class="fas fa-chevron-down"></i></div>
                    </div>

                    <div class="tab_btn_inner">
                        <div><a href="${pageContext.request.contextPath}/community/Q&A.do">건의 및 Q&A</a></div>
                        <div><a href="#">MBTI 게임</a></div>
                        <div><a href="${pageContext.request.contextPath}/community/Q&A.do">FAQ</a></div>
                        <div><a href="${pageContext.request.contextPath}/community/Hi.do">Hi 사범</a></div>
                    </div>
                </div>

                <div class="tab_inner_box">
                    <div class="btn" id="tab_btn2">
                        <div><a href="${pageContext.request.contextPath}/community/announce.do">공지사항</a></div>

                    </div>

                </div>

                <div class="tab_inner_box">
                    <div class="btn" id="tab_btn2">
                        <div><a href="${pageContext.request.contextPath}/festive/festive.do">행사 참여신청</a></div>
                    </div>
                </div>

                <div class="tab_inner_box">
                    <div class="btn" id="tab_btn2">
                        <div>졸업로드맵</div>
                        <div><i class="fas fa-chevron-down"></i></div>
                    </div>

                    <div class="tab_btn_inner">
                        <div><a href="${pageContext.request.contextPath}/loadmap/snu_class_loadmap.do">과별 졸업로드맵</a></div>
                        <div><a href="${pageContext.request.contextPath}/loadmap/snu_education_loadmap.do">교직 로드맵</a></div>
                    </div>
                </div>

            </div>

        </div>
     