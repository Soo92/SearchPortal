<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
		request.setCharacterEncoding("utf-8");
		String id = (String)session.getAttribute("idKey");	
%>

<!DOCTYPE html>
<!-- saved from url=(0045)file:///C:/Users/Soo/Desktop/user%20info.html -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="./userInfo_files/myarea.171214.css">
<script type="text/javascript">
	if(<%=id%>==null){
		location.href="../index.jsp"
	}
</script>
</head>
<body>
	<div class="my_area">
		<div class="profile">
			<div class="user_area">
				<div class="user_info">
					<a href="file:///C:/Users/Soo/Desktop/mypage.html" target="_parent"
						class="user_thumbnail" onclick=""> <span class="mask"></span>
						<img id="profile_image" src="./userInfo_files/myInfo.gif"
						width="56" height="56" alt="수수 님">
					</a>
					<div class="private">
						<span class="user_name"><a
							href="https://nid.naver.com/user2/api/route.nhn?m=routePcProfileModification"
							target="_parent"
							onclick="clickcr(this, 'nmy.idname', '', '', event);My.movePage('https://nid.naver.com/user2/api/route.nhn?m=routePcProfileModification');return false;"><strong
								id="user_name">수수</strong>님</a></span> <a
							href="./mypage.jsp"
							target="_parent" class="link_myinfo" onclick="">내정보</a>
					</div>
					<div class="my_service">
						<a href="./logout.jsp" target="_parent" id="btn_logout"
							class="btn_logout"><span class="btn_inr">로그아웃</span></a> <span
							class="link_cover"><a id="note_count_profile"
							href="file:///C:/Users/Soo/Desktop/mypage.html" target="_parent"
							class="link_note" onclick=""><i>쪽지</i><span class="cnt">377</span></a></span>
					</div>
				</div>
			</div>
			<div class="service_tab">
				<div id="slide_cover" class="slide_cover">
					<div class="service_list" id="service_tab_list"
						style="left: 0px; transition: left 0.3s ease-in-out;">
						<div id="myPage_other">
							<div
								onclick="clickcr(this, 'nmy.ndrive', '', '', event);myCore.toggleService('ndrive');return false;"
								class="selected" id="myPage_o_but">
								<a href="file:///C:/Users/Soo/Desktop/mypage.html"
									class="tab_ndrive"
									onkeydown="myCore.keydownServiceTab(event, 7)"> <img
									src="./userInfo_files/myP_01.png"> <span
									id="ndrive_count" class="b_cnt" style="display:"><em></em><i
										class="arrow_down"></i></span>
								</a>
							</div>
							<div
								onclick="clickcr(this, 'nmy.ndrive', '', '', event);myCore.toggleService('memo');return false;"
								class="selected" id="myPage_o_but">
								<a href="file:///C:/Users/Soo/Desktop/mypage.html"
									class="tab_ndrive"
									onkeydown="myCore.keydownServiceTab(event, 12)"> <img
									src="./userInfo_files/myP_02.png"> <span id="memo_count"
									class="b_cnt" style="display: none"><em></em><i
										class="arrow_down"></i></span>
								</a>
							</div>
							<div
								onclick="clickcr(this, 'nmy.ndrive', '', '', event);myCore.toggleService('mail');return false;"
								class="selected" id="myPage_o_but">
								<a href="file:///C:/Users/Soo/Desktop/mypage.html"
									class="tab_ndrive"
									onkeydown="myCore.keydownServiceTab(event, 2)"> <img
									src="./userInfo_files/myP_03.png"> <span id="mail_count"
									class="b_cnt" style="display: none"><em></em><i
										class="arrow_down"></i></span>
								</a>
							</div>
							<div
								onclick="clickcr(this, 'nmy.ndrive', '', '', event);myCore.toggleService('npay');return false;"
								class="selected" id="myPage_o_but">
								<a href="file:///C:/Users/Soo/Desktop/mypage.html"
									class="tab_ndrive"
									onkeydown="myCore.keydownServiceTab(event, 5)"> <img
									src="./userInfo_files/myP_04.png"> <span id="npay_count"
									class="b_cnt" style="display: none"><em></em><i
										class="arrow_down"></i></span>
								</a>
							</div>
						</div>
					</div>
				</div>
				<span class="slide_btn" onkeydown="myCore.keydownPrevBtn(event)">
				</span>
			</div>
		</div>
		<div id="service_pannel" class="service" style="display: none;">
			<div class="svc_mail svc_panel" queryid="C1514285809970304315"
				style="display: none;">
				<div class="svc_banner"></div>
				<div class="svc_scroll" style="-webkit-overflow-scrolling: touch;">
					<script type="text/javascript">
	var changeReadStatus = function(el) {
		if (el && $$.getSingle("! li", el)) {
			$Element($$.getSingle("! li", el)).removeClass("unread");
		}
	}
</script>
					<div class="svc_head">
						<a href="file:///C:/Users/Soo/Desktop/mypage.html"
							class="tit selected"
							onclick="clickcr(this, 'nmy_mil.allmail', '', '', event);My.drawList('/my/mail/list/?isNew=true');return false;">전체메일</a>
						<a href="file:///C:/Users/Soo/Desktop/mypage.html" class="tit"
							onclick="clickcr(this, 'nmy_mil.inbox', '', '', event);My.drawList('/my/mail/list/?folderSN=0&amp;isNew=true');return false;">받은메일함</a>
						<div class="task_right">
							<button
								onclick="clickcr(this, 'nmy_mil.write', '', '', event);My.moveMailWrite();return false;">메일
								쓰기</button>
						</div>
					</div>
					<div class="svc_body">
						<ul class="svc_list">
							<!-- [D] .unread 안읽음  -->
							<li class="unread"><a
								href="file:///C:/Users/Soo/Desktop/read/46788"
								class="list_cover"
								onclick="clickcr(this, 'nmy_mil.list', '', '', event);changeReadStatus(this);My.openPage('read/46788', 'mailWindows');return false;">
									<span class="notify_ico"><i class="blind">안읽은 메일</i></span>
									<p class="subject">[알림] 5 - 2017. 12. 26 오후 8:00
										(Asia/Seoul)</p>
									<p class="info">
										<span class="user_name">by "바코드 캘린더 ···"</span> <span
											class="bar"></span> <span class="date">6분 전</span>
									</p>
							</a>
								<button class="btn_remove"
									onclick="clickcr(this, 'nmy_mil.delete', '', '', event);My.deleteMail('46788', '-1');return false;">
									<i>메일 삭제</i>
								</button></li>
							<li class="unread"><a
								href="file:///C:/Users/Soo/Desktop/read/46787"
								class="list_cover"
								onclick="clickcr(this, 'nmy_mil.list', '', '', event);changeReadStatus(this);My.openPage('read/46787', 'mailWindows');return false;">
									<span class="notify_ico"><i class="blind">안읽은 메일</i></span>
									<p class="subject">(광고) 삼성 갤럭시탭 A6 7.0 T280 단독 특가!</p>
									<p class="info">
										<span class="user_name">by "쇼킹딜"</span> <span class="bar"></span>
										<span class="date">23분 전</span>
									</p>
							</a>
								<button class="btn_remove"
									onclick="clickcr(this, 'nmy_mil.delete', '', '', event);My.deleteMail('46787', '-1');return false;">
									<i>메일 삭제</i>
								</button></li>
							<li class="unread"><a
								href="file:///C:/Users/Soo/Desktop/read/46786"
								class="list_cover"
								onclick="clickcr(this, 'nmy_mil.list', '', '', event);changeReadStatus(this);My.openPage('read/46786', 'mailWindows');return false;">
									<span class="notify_ico"><i class="blind">안읽은 메일</i></span>
									<p class="subject">[PROJECT23244]2017-12-26[프리모아]『앱홍보를 랜딩
										페이지 제작 (디자인제공)』</p>
									<p class="info">
										<span class="user_name">by "(주)프리모아</span> <span class="bar"></span>
										<span class="date">32분 전</span>
									</p>
							</a>
								<button class="btn_remove"
									onclick="clickcr(this, 'nmy_mil.delete', '', '', event);My.deleteMail('46786', '-1');return false;">
									<i>메일 삭제</i>
								</button></li>
							<li class="unread"><a
								href="file:///C:/Users/Soo/Desktop/read/46785"
								class="list_cover"
								onclick="clickcr(this, 'nmy_mil.list', '', '', event);changeReadStatus(this);My.openPage('read/46785', 'mailWindows');return false;">
									<span class="notify_ico"><i class="blind">안읽은 메일</i></span>
									<p class="subject">(광고) 단 하루! 패션/뷰티DAY 15%</p>
									<p class="info">
										<span class="user_name">by "11번가"</span> <span class="bar"></span>
										<span class="date">1시간 전</span>
									</p>
							</a>
								<button class="btn_remove"
									onclick="clickcr(this, 'nmy_mil.delete', '', '', event);My.deleteMail('46785', '-1');return false;">
									<i>메일 삭제</i>
								</button></li>
							<li class=""><a
								href="file:///C:/Users/Soo/Desktop/read/46745"
								class="list_cover"
								onclick="clickcr(this, 'nmy_mil.list', '', '', event);changeReadStatus(this);My.openPage('read/46745', 'mailWindows');return false;">
									<span class="notify_ico"><i class="blind">안읽은 메일</i></span>
									<p class="subject">(광고) 로이스 생초콜렛</p>
									<p class="info">
										<span class="user_name">by "티몬"</span> <span class="bar"></span>
										<span class="date">12월 25일</span>
									</p>
							</a>
								<button class="btn_remove"
									onclick="clickcr(this, 'nmy_mil.delete', '', '', event);My.deleteMail('46745', '-1');return false;">
									<i>메일 삭제</i>
								</button></li>
							<li class="unread"><a
								href="file:///C:/Users/Soo/Desktop/read/46744"
								class="list_cover"
								onclick="clickcr(this, 'nmy_mil.list', '', '', event);changeReadStatus(this);My.openPage('read/46744', 'mailWindows');return false;">
									<span class="notify_ico"><i class="blind">안읽은 메일</i></span>
									<p class="subject">Google 알리미 - 인천국제공항</p>
									<p class="info">
										<span class="user_name">by "Google Alerts"</span> <span
											class="bar"></span> <span class="date">12월 25일</span>
									</p>
							</a>
								<button class="btn_remove"
									onclick="clickcr(this, 'nmy_mil.delete', '', '', event);My.deleteMail('46744', '-1');return false;">
									<i>메일 삭제</i>
								</button></li>
							<li class="unread"><a
								href="file:///C:/Users/Soo/Desktop/read/46743"
								class="list_cover"
								onclick="clickcr(this, 'nmy_mil.list', '', '', event);changeReadStatus(this);My.openPage('read/46743', 'mailWindows');return false;">
									<span class="notify_ico"><i class="blind">안읽은 메일</i></span>
									<p class="subject">Google 알리미 - 자율주행</p>
									<p class="info">
										<span class="user_name">by "Google Alerts"</span> <span
											class="bar"></span> <span class="date">12월 25일</span>
									</p>
							</a>
								<button class="btn_remove"
									onclick="clickcr(this, 'nmy_mil.delete', '', '', event);My.deleteMail('46743', '-1');return false;">
									<i>메일 삭제</i>
								</button></li>
							<li class="unread"><a
								href="file:///C:/Users/Soo/Desktop/read/46742"
								class="list_cover"
								onclick="clickcr(this, 'nmy_mil.list', '', '', event);changeReadStatus(this);My.openPage('read/46742', 'mailWindows');return false;">
									<span class="notify_ico"><i class="blind">안읽은 메일</i></span>
									<p class="subject">Google 알리미 - 현대자동차</p>
									<p class="info">
										<span class="user_name">by "Google Alerts"</span> <span
											class="bar"></span> <span class="date">12월 25일</span>
									</p>
							</a>
								<button class="btn_remove"
									onclick="clickcr(this, 'nmy_mil.delete', '', '', event);My.deleteMail('46742', '-1');return false;">
									<i>메일 삭제</i>
								</button></li>
							<li class="unread"><a
								href="file:///C:/Users/Soo/Desktop/read/46741"
								class="list_cover"
								onclick="clickcr(this, 'nmy_mil.list', '', '', event);changeReadStatus(this);My.openPage('read/46741', 'mailWindows');return false;">
									<span class="notify_ico"><i class="blind">안읽은 메일</i></span>
									<p class="subject">Google 알리미 - 항공사</p>
									<p class="info">
										<span class="user_name">by "Google Alerts"</span> <span
											class="bar"></span> <span class="date">12월 25일</span>
									</p>
							</a>
								<button class="btn_remove"
									onclick="clickcr(this, 'nmy_mil.delete', '', '', event);My.deleteMail('46741', '-1');return false;">
									<i>메일 삭제</i>
								</button></li>
							<li class="unread"><a
								href="file:///C:/Users/Soo/Desktop/read/46740"
								class="list_cover"
								onclick="clickcr(this, 'nmy_mil.list', '', '', event);changeReadStatus(this);My.openPage('read/46740', 'mailWindows');return false;">
									<span class="notify_ico"><i class="blind">안읽은 메일</i></span>
									<p class="subject">Google 알리미 - 연구 개발</p>
									<p class="info">
										<span class="user_name">by "Google Alerts"</span> <span
											class="bar"></span> <span class="date">12월 25일</span>
									</p>
							</a>
								<button class="btn_remove"
									onclick="clickcr(this, 'nmy_mil.delete', '', '', event);My.deleteMail('46740', '-1');return false;">
									<i>메일 삭제</i>
								</button></li>
							<li class="unread"><a
								href="file:///C:/Users/Soo/Desktop/read/46739"
								class="list_cover"
								onclick="clickcr(this, 'nmy_mil.list', '', '', event);changeReadStatus(this);My.openPage('read/46739', 'mailWindows');return false;">
									<span class="notify_ico"><i class="blind">안읽은 메일</i></span>
									<p class="subject">(광고) 권총 알람시계</p>
									<p class="info">
										<span class="user_name">by "쿠팡"</span> <span class="bar"></span>
										<span class="date">12월 25일</span>
									</p>
							</a>
								<button class="btn_remove"
									onclick="clickcr(this, 'nmy_mil.delete', '', '', event);My.deleteMail('46739', '-1');return false;">
									<i>메일 삭제</i>
								</button></li>
							<li class="unread"><a
								href="file:///C:/Users/Soo/Desktop/read/46738"
								class="list_cover"
								onclick="clickcr(this, 'nmy_mil.list', '', '', event);changeReadStatus(this);My.openPage('read/46738', 'mailWindows');return false;">
									<span class="notify_ico"><i class="blind">안읽은 메일</i></span>
									<p class="subject">(광고) 월급날! 전 고객 11% 쿠폰할인</p>
									<p class="info">
										<span class="user_name">by "11번가"</span> <span class="bar"></span>
										<span class="date">12월 25일</span>
									</p>
							</a>
								<button class="btn_remove"
									onclick="clickcr(this, 'nmy_mil.delete', '', '', event);My.deleteMail('46738', '-1');return false;">
									<i>메일 삭제</i>
								</button></li>
							<li class="unread"><a
								href="file:///C:/Users/Soo/Desktop/read/46737"
								class="list_cover"
								onclick="clickcr(this, 'nmy_mil.list', '', '', event);changeReadStatus(this);My.openPage('read/46737', 'mailWindows');return false;">
									<span class="notify_ico"><i class="blind">안읽은 메일</i></span>
									<p class="subject">(광고) 퍼펙트 2days! ~10%더블쿠폰+샤벳 20%왕쿠폰+청구할인</p>
									<p class="info">
										<span class="user_name">by "SSG.COM"</span> <span class="bar"></span>
										<span class="date">12월 25일</span>
									</p>
							</a>
								<button class="btn_remove"
									onclick="clickcr(this, 'nmy_mil.delete', '', '', event);My.deleteMail('46737', '-1');return false;">
									<i>메일 삭제</i>
								</button></li>
							<li class="unread"><a
								href="file:///C:/Users/Soo/Desktop/read/46736"
								class="list_cover"
								onclick="clickcr(this, 'nmy_mil.list', '', '', event);changeReadStatus(this);My.openPage('read/46736', 'mailWindows');return false;">
									<span class="notify_ico"><i class="blind">안읽은 메일</i></span>
									<p class="subject">Google 알리미 - google</p>
									<p class="info">
										<span class="user_name">by "Google Alerts"</span> <span
											class="bar"></span> <span class="date">12월 25일</span>
									</p>
							</a>
								<button class="btn_remove"
									onclick="clickcr(this, 'nmy_mil.delete', '', '', event);My.deleteMail('46736', '-1');return false;">
									<i>메일 삭제</i>
								</button></li>
							<li class="unread"><a
								href="file:///C:/Users/Soo/Desktop/read/46735"
								class="list_cover"
								onclick="clickcr(this, 'nmy_mil.list', '', '', event);changeReadStatus(this);My.openPage('read/46735', 'mailWindows');return false;">
									<span class="notify_ico"><i class="blind">안읽은 메일</i></span>
									<p class="subject">Google 알리미 - 길고양이</p>
									<p class="info">
										<span class="user_name">by "Google Alerts"</span> <span
											class="bar"></span> <span class="date">12월 25일</span>
									</p>
							</a>
								<button class="btn_remove"
									onclick="clickcr(this, 'nmy_mil.delete', '', '', event);My.deleteMail('46735', '-1');return false;">
									<i>메일 삭제</i>
								</button></li>
							<li class="unread"><a
								href="file:///C:/Users/Soo/Desktop/read/46734"
								class="list_cover"
								onclick="clickcr(this, 'nmy_mil.list', '', '', event);changeReadStatus(this);My.openPage('read/46734', 'mailWindows');return false;">
									<span class="notify_ico"><i class="blind">안읽은 메일</i></span>
									<p class="subject">(광고) 이ㆍ얼ㆍ싼 ▶ 하겐다즈 윈터 스페셜 6팩 45% 11,900원
										| 하나 더 ▶ 사조해표 안심특선 선물세트/크라운 과자선물세트 | 다다익선 ▶ 맥심 카누/오뚜기 특선 선물세트</p>
									<p class="info">
										<span class="user_name">by "이마트몰"</span> <span class="bar"></span>
										<span class="date">12월 25일</span>
									</p>
							</a>
								<button class="btn_remove"
									onclick="clickcr(this, 'nmy_mil.delete', '', '', event);My.deleteMail('46734', '-1');return false;">
									<i>메일 삭제</i>
								</button></li>
							<li class="unread"><a
								href="file:///C:/Users/Soo/Desktop/read/46733"
								class="list_cover"
								onclick="clickcr(this, 'nmy_mil.list', '', '', event);changeReadStatus(this);My.openPage('read/46733', 'mailWindows');return false;">
									<span class="notify_ico"><i class="blind">안읽은 메일</i></span>
									<p class="subject">[광고] 업계 유일! ★토익 응시권 즉시 증정★ 토익보장코스</p>
									<p class="info">
										<span class="user_name">by "YBM인강_토익</span> <span class="bar"></span>
										<span class="date">12월 25일</span>
									</p>
							</a>
								<button class="btn_remove"
									onclick="clickcr(this, 'nmy_mil.delete', '', '', event);My.deleteMail('46733', '-1');return false;">
									<i>메일 삭제</i>
								</button></li>
							<li class="unread"><a
								href="file:///C:/Users/Soo/Desktop/read/46732"
								class="list_cover"
								onclick="clickcr(this, 'nmy_mil.list', '', '', event);changeReadStatus(this);My.openPage('read/46732', 'mailWindows');return false;">
									<span class="notify_ico"><i class="blind">안읽은 메일</i></span>
									<p class="subject">Google 알리미 - 경진대회</p>
									<p class="info">
										<span class="user_name">by "Google Alerts"</span> <span
											class="bar"></span> <span class="date">12월 25일</span>
									</p>
							</a>
								<button class="btn_remove"
									onclick="clickcr(this, 'nmy_mil.delete', '', '', event);My.deleteMail('46732', '-1');return false;">
									<i>메일 삭제</i>
								</button></li>
							<li class="unread"><a
								href="file:///C:/Users/Soo/Desktop/read/46731"
								class="list_cover"
								onclick="clickcr(this, 'nmy_mil.list', '', '', event);changeReadStatus(this);My.openPage('read/46731', 'mailWindows');return false;">
									<span class="notify_ico"><i class="blind">안읽은 메일</i></span>
									<p class="subject">Sheet Metal Fireplace</p>
									<p class="info">
										<span class="user_name">by "Instructables"</span> <span
											class="bar"></span> <span class="date">12월 24일</span>
									</p>
							</a>
								<button class="btn_remove"
									onclick="clickcr(this, 'nmy_mil.delete', '', '', event);My.deleteMail('46731', '-1');return false;">
									<i>메일 삭제</i>
								</button></li>
							<li class="unread"><a
								href="file:///C:/Users/Soo/Desktop/read/46730"
								class="list_cover"
								onclick="clickcr(this, 'nmy_mil.list', '', '', event);changeReadStatus(this);My.openPage('read/46730', 'mailWindows');return false;">
									<span class="notify_ico"><i class="blind">안읽은 메일</i></span>
									<p class="subject">(광고) 파이널 뷰티 클리어런스 UP TO 68%</p>
									<p class="info">
										<span class="user_name">by "11번가"</span> <span class="bar"></span>
										<span class="date">12월 24일</span>
									</p>
							</a>
								<button class="btn_remove"
									onclick="clickcr(this, 'nmy_mil.delete', '', '', event);My.deleteMail('46730', '-1');return false;">
									<i>메일 삭제</i>
								</button></li>
							<li class="unread"><a
								href="file:///C:/Users/Soo/Desktop/read/46729"
								class="list_cover"
								onclick="clickcr(this, 'nmy_mil.list', '', '', event);changeReadStatus(this);My.openPage('read/46729', 'mailWindows');return false;">
									<span class="notify_ico"><i class="blind">안읽은 메일</i></span>
									<p class="subject">(광고) 용돈봉투</p>
									<p class="info">
										<span class="user_name">by "티몬 홈데코디자 ···"</span> <span
											class="bar"></span> <span class="date">12월 24일</span>
									</p>
							</a>
								<button class="btn_remove"
									onclick="clickcr(this, 'nmy_mil.delete', '', '', event);My.deleteMail('46729', '-1');return false;">
									<i>메일 삭제</i>
								</button></li>
							<li class="unread"><a
								href="file:///C:/Users/Soo/Desktop/read/46728"
								class="list_cover"
								onclick="clickcr(this, 'nmy_mil.list', '', '', event);changeReadStatus(this);My.openPage('read/46728', 'mailWindows');return false;">
									<span class="notify_ico"><i class="blind">안읽은 메일</i></span>
									<p class="subject">Google 알리미 - 뇌졸중</p>
									<p class="info">
										<span class="user_name">by "Google Alerts"</span> <span
											class="bar"></span> <span class="date">12월 24일</span>
									</p>
							</a>
								<button class="btn_remove"
									onclick="clickcr(this, 'nmy_mil.delete', '', '', event);My.deleteMail('46728', '-1');return false;">
									<i>메일 삭제</i>
								</button></li>
							<li class="unread"><a
								href="file:///C:/Users/Soo/Desktop/read/46727"
								class="list_cover"
								onclick="clickcr(this, 'nmy_mil.list', '', '', event);changeReadStatus(this);My.openPage('read/46727', 'mailWindows');return false;">
									<span class="notify_ico"><i class="blind">안읽은 메일</i></span>
									<p class="subject">Google 알리미 - 마이다스 아이티</p>
									<p class="info">
										<span class="user_name">by "Google Alerts"</span> <span
											class="bar"></span> <span class="date">12월 24일</span>
									</p>
							</a>
								<button class="btn_remove"
									onclick="clickcr(this, 'nmy_mil.delete', '', '', event);My.deleteMail('46727', '-1');return false;">
									<i>메일 삭제</i>
								</button></li>
							<li class="unread"><a
								href="file:///C:/Users/Soo/Desktop/read/46726"
								class="list_cover"
								onclick="clickcr(this, 'nmy_mil.list', '', '', event);changeReadStatus(this);My.openPage('read/46726', 'mailWindows');return false;">
									<span class="notify_ico"><i class="blind">안읽은 메일</i></span>
									<p class="subject">(광고) 즐거운 나의 인생! 욜로DAY</p>
									<p class="info">
										<span class="user_name">by "11번가"</span> <span class="bar"></span>
										<span class="date">12월 24일</span>
									</p>
							</a>
								<button class="btn_remove"
									onclick="clickcr(this, 'nmy_mil.delete', '', '', event);My.deleteMail('46726', '-1');return false;">
									<i>메일 삭제</i>
								</button></li>
							<li class="unread"><a
								href="file:///C:/Users/Soo/Desktop/read/46725"
								class="list_cover"
								onclick="clickcr(this, 'nmy_mil.list', '', '', event);changeReadStatus(this);My.openPage('read/46725', 'mailWindows');return false;">
									<span class="notify_ico"><i class="blind">안읽은 메일</i></span>
									<p class="subject">(광고) 얼음분수 축제</p>
									<p class="info">
										<span class="user_name">by "티몬"</span> <span class="bar"></span>
										<span class="date">12월 24일</span>
									</p>
							</a>
								<button class="btn_remove"
									onclick="clickcr(this, 'nmy_mil.delete', '', '', event);My.deleteMail('46725', '-1');return false;">
									<i>메일 삭제</i>
								</button></li>
							<li class="unread"><a
								href="file:///C:/Users/Soo/Desktop/read/46724"
								class="list_cover"
								onclick="clickcr(this, 'nmy_mil.list', '', '', event);changeReadStatus(this);My.openPage('read/46724', 'mailWindows');return false;">
									<span class="notify_ico"><i class="blind">안읽은 메일</i></span>
									<p class="subject">Google 알리미 - 인천국제공항</p>
									<p class="info">
										<span class="user_name">by "Google Alerts"</span> <span
											class="bar"></span> <span class="date">12월 24일</span>
									</p>
							</a>
								<button class="btn_remove"
									onclick="clickcr(this, 'nmy_mil.delete', '', '', event);My.deleteMail('46724', '-1');return false;">
									<i>메일 삭제</i>
								</button></li>
							<li class="unread"><a
								href="file:///C:/Users/Soo/Desktop/read/46723"
								class="list_cover"
								onclick="clickcr(this, 'nmy_mil.list', '', '', event);changeReadStatus(this);My.openPage('read/46723', 'mailWindows');return false;">
									<span class="notify_ico"><i class="blind">안읽은 메일</i></span>
									<p class="subject">Google 알리미 - 자율주행</p>
									<p class="info">
										<span class="user_name">by "Google Alerts"</span> <span
											class="bar"></span> <span class="date">12월 24일</span>
									</p>
							</a>
								<button class="btn_remove"
									onclick="clickcr(this, 'nmy_mil.delete', '', '', event);My.deleteMail('46723', '-1');return false;">
									<i>메일 삭제</i>
								</button></li>
							<li class="unread"><a
								href="file:///C:/Users/Soo/Desktop/read/46722"
								class="list_cover"
								onclick="clickcr(this, 'nmy_mil.list', '', '', event);changeReadStatus(this);My.openPage('read/46722', 'mailWindows');return false;">
									<span class="notify_ico"><i class="blind">안읽은 메일</i></span>
									<p class="subject">Google 알리미 - 현대자동차</p>
									<p class="info">
										<span class="user_name">by "Google Alerts"</span> <span
											class="bar"></span> <span class="date">12월 24일</span>
									</p>
							</a>
								<button class="btn_remove"
									onclick="clickcr(this, 'nmy_mil.delete', '', '', event);My.deleteMail('46722', '-1');return false;">
									<i>메일 삭제</i>
								</button></li>
							<li class="unread"><a
								href="file:///C:/Users/Soo/Desktop/read/46721"
								class="list_cover"
								onclick="clickcr(this, 'nmy_mil.list', '', '', event);changeReadStatus(this);My.openPage('read/46721', 'mailWindows');return false;">
									<span class="notify_ico"><i class="blind">안읽은 메일</i></span>
									<p class="subject">Google 알리미 - 항공사</p>
									<p class="info">
										<span class="user_name">by "Google Alerts"</span> <span
											class="bar"></span> <span class="date">12월 24일</span>
									</p>
							</a>
								<button class="btn_remove"
									onclick="clickcr(this, 'nmy_mil.delete', '', '', event);My.deleteMail('46721', '-1');return false;">
									<i>메일 삭제</i>
								</button></li>
							<li class="unread"><a
								href="file:///C:/Users/Soo/Desktop/read/46720"
								class="list_cover"
								onclick="clickcr(this, 'nmy_mil.list', '', '', event);changeReadStatus(this);My.openPage('read/46720', 'mailWindows');return false;">
									<span class="notify_ico"><i class="blind">안읽은 메일</i></span>
									<p class="subject">Google 알리미 - 연구 개발</p>
									<p class="info">
										<span class="user_name">by "Google Alerts"</span> <span
											class="bar"></span> <span class="date">12월 24일</span>
									</p>
							</a>
								<button class="btn_remove"
									onclick="clickcr(this, 'nmy_mil.delete', '', '', event);My.deleteMail('46720', '-1');return false;">
									<i>메일 삭제</i>
								</button></li>
						</ul>
						<a href="file:///C:/Users/Soo/Desktop/mypage.html"
							class="view_more"
							onclick="clickcr(this, 'nmy_mil.mailmore', '', '', event);My.movePage('', 'mailWindows');return false;"
							target="_blank">메일에서 더보기<span class="ico"></span></a>
					</div>
				</div>
				<div class="svc_navigation">
					<a href="file:///C:/Users/Soo/Desktop/mypage.html" target="_parent"
						class="svc_link_strong"
						onclick="clickcr(this, 'nmy_fot.mail', '', '', event);My.movePage('');return false;"><span
						class="svc_ico"></span>메일</a> <span class="bar"></span> <a
						href="file:///C:/Users/Soo/Desktop/mypage.html" target="_parent"
						class="svc_link_weak"
						onclick="clickcr(this, 'nmy_fot.mailset', '', '', event);My.movePage('');return false;">새
						메일 통수 설정</a>
					<div class="task_right">
						<span class="cnt"><em><i class="blind">현재탭</i>3</em><span>/<i
								class="blind">전체 탭 갯수</i>13
						</span></span><a
							href="https://my.naver.com/new?svgless=true&amp;20171226193059#"
							class="btn_prev" title="이전"
							onclick="clickcr(this, 'nmy_fot.prev', '', '', event);myCore.moveServicePannel('prev');return false;"><i>이전
								탭 보기</i></a><a
							href="https://my.naver.com/new?svgless=true&amp;20171226193059#"
							class="btn_next" title="다음"
							onclick="clickcr(this, 'nmy_fot.next', '', '', event);myCore.moveServicePannel('next');return false;"><i>다음
								탭 보기</i></a>
					</div>
				</div>
			</div>
			<div class="svc_npay svc_panel" queryid="C1514285812109585875"
				style="display: none;">
				<div class="svc_banner"></div>
				<div class="svc_scroll" style="-webkit-overflow-scrolling: touch;">
					<div class="svc_head">
						<div class="shortcut_cover">
							<a href="file:///C:/Users/Soo/Desktop/mypage.html"
								class="shortcut mypoint"
								onclick="clickcr(this, 'nmy_pay.mypoint', '','', event);My.openPage('', 'payWindows');return false;"><span
								class="label">포인트</span><em class="value">63,453원</em></a><a
								href="file:///C:/Users/Soo/Desktop/mypage/update#set1"
								class="shortcut mycard"
								onclick="clickcr(this, 'nmy_pay.mycard', '','', event);My.openPage('mypage/update#set1', 'payWindows');return false;"><span
								class="label">카드 관리</span><em class="value">국민카드외 3건</em></a><a
								href="file:///C:/Users/Soo/Desktop/mypage/update#set2"
								class="shortcut myaccount"
								onclick="clickcr(this, 'nmy_pay.myaccount', '','', event);My.openPage('mypage/update#set2', 'payWindows');return false;"><span
								class="label">계좌 관리</span><em class="value">등록하기</em></a>
						</div>
					</div>
					<div class="svc_body">
						<ul class="svc_list">
							<li class="noti_event"><a
								href="http://music.naver.com/promotion/clovaspeaker/ticket201712Friends.nhn"
								class="list_cover"
								onclick="clickcr(this, 'nmy_pay.event', '','', event);My.openPage('http://music.naver.com/promotion/clovaspeaker/ticket201712Friends.nhn', 'payWindows');return false;"><span
									class="thumb"></span>
									<div class="subject_cover">
										<p class="subject">프렌즈 특별패키지 런칭! 후디커버 또는 충전크래들 100% 증정</p>
									</div></a></li>
							<li class="noti_event"><a
								href="http://campaign.naver.com/event/ngift/201712"
								class="list_cover"
								onclick="clickcr(this, 'nmy_pay.event', '','', event);My.openPage('http://campaign.naver.com/event/ngift/201712', 'payWindows');return false;"><span
									class="thumb"></span>
									<div class="subject_cover">
										<p class="subject">연말연시, 기프트카드로 마음을 전하세요</p>
									</div></a></li>
							<li class="noti_partner"><a
								href="file:///C:/Users/Soo/Desktop/send/p/credit-card/samsung/apply"
								class="list_cover"
								onclick="clickcr(this, 'nmy_pay.notice', '','', event);My.openPage('send/p/credit-card/samsung/apply', 'payWindows');return false;"><span
									class="thumb"></span>
									<div class="subject_cover">
										<p class="subject">최대 10% 적립되는 바코드페이 taptap카드 출시!</p>
									</div></a></li>
							<li><a
								href="file:///C:/Users/Soo/Desktop/mypage.html?tabMenu=BOOKING"
								class="list_cover"
								onclick="clickcr(this, 'nmy_pay.history', '','', event);My.openPage('?tabMenu=BOOKING', 'payWindows');return false;"><span
									class="thumb"><span class="mask"></span><img
										src="./userInfo_files/2000744602672805.jpg" alt="바코드 페이"
										width="26" height="26"></span>
									<div class="subject_cover">
										<p class="subject">야간 자유이용권&amp;산타축제(12.01-12.31)</p>
										<p class="info">
											<span class="price">15,900원</span> <span class="bar"></span>
											<span class="date">12월 15일</span> <span class="bar"></span> <span
												class="state">구매확정</span>
										</p>
									</div></a></li>
							<li><a
								href="file:///C:/Users/Soo/Desktop/mypage.html?tabMenu=BOOKING"
								class="list_cover"
								onclick="clickcr(this, 'nmy_pay.history', '','', event);My.openPage('?tabMenu=BOOKING', 'payWindows');return false;"><span
									class="thumb"><span class="mask"></span><img
										src="./userInfo_files/2000744602672805.jpg" alt="바코드 페이"
										width="26" height="26"></span>
									<div class="subject_cover">
										<p class="subject">야간 자유이용권&amp;산타축제(12.01-12.31)</p>
										<p class="info">
											<span class="price">15,900원</span> <span class="bar"></span>
											<span class="date">12월 15일</span> <span class="bar"></span> <span
												class="state">구매확정</span>
										</p>
									</div></a></li>
						</ul>
						<div class="npay_link">
							<div class="shortcut_cover">
								<a href="file:///C:/Users/Soo/Desktop/mypage.html"
									class="link_order"
									onclick="clickcr(this, 'nmy_pay.order', '','', event);My.openPage('', 'payWindows');return false;">결제내역<span
									class="arrow_right"></span></a> <a
									href="file:///C:/Users/Soo/Desktop/mypage.html"
									class="link_mileage"
									onclick="clickcr(this, 'nmy_pay.point', '','', event);My.openPage('', 'payWindows');return false;">포인트<span
									class="arrow_right"></span></a> <a
									href="file:///C:/Users/Soo/Desktop/send/p/list/s"
									class="link_send"
									onclick="clickcr(this, 'nmy_pay.send', '','', event);My.openPage('send/p/list/s', 'payWindows');return false;">송금<span
									class="arrow_right"></span></a> <span class="line_breaker"></span>
							</div>
						</div>
					</div>
				</div>
				<div class="svc_navigation">
					<a href="file:///C:/Users/Soo/Desktop/mypage.html" target="_parent"
						class="svc_link_strong"
						onclick="clickcr(this, 'nmy_fot.npay', '', '', event);"><span
						class="svc_ico"></span>Pay</a>
					<div class="task_right">
						<span class="cnt"><em><i class="blind">현재탭</i>6</em><span>/<i
								class="blind">전체 탭 갯수</i>13
						</span></span><a
							href="https://my.naver.com/new?svgless=true&amp;20171226193059#"
							class="btn_prev" title="이전"
							onclick="clickcr(this, 'nmy_fot.prev', '', '', event);myCore.moveServicePannel('prev');return false;"><i>이전
								탭 보기</i></a><a
							href="https://my.naver.com/new?svgless=true&amp;20171226193059#"
							class="btn_next" title="다음"
							onclick="clickcr(this, 'nmy_fot.next', '', '', event);myCore.moveServicePannel('next');return false;"><i>다음
								탭 보기</i></a>
					</div>
				</div>
			</div>
			<div class="svc_ndrive svc_panel" queryid="C1514285836069107502"
				style="display: block;">
				<div class="svc_banner"></div>
				<div class="svc_scroll" style="-webkit-overflow-scrolling: touch;">
					<title>user info</title>
					<!-- my.jsp -->
					<script type="text/javascript">
//<![CDATA[
var userId = "dltjdtn321";
var userIdx = 13824381;
var userIdc = 2;
var cmsServerDomain = "files.cloud.naver.com";
//]]>
</script>
					<!-- svc_head 사진, 업데이트 영역 -->
					<div class="svc_head">
						<a
							href="https://my.naver.com/new?svgless=true&amp;20171226193059#"
							class="tit selected"
							onclick="clickcr(this, 'nmy_ndr.update', '', '', event); My.drawList('/my/ndrive/new/myFolder.nhn', false); return false;">내
							폴더</a> <a
							href="https://my.naver.com/new?svgless=true&amp;20171226193059#"
							class="tit"
							onclick="clickcr(this, 'nmy_ndr.photo', '', '', event); My.drawList('/my/ndrive/new/myPhoto.nhn', false); return false;">내
							사진</a>
						<div class="task_right">
							<a
								href="file:///C:/Users/Soo/Desktop/mycapacity.nhn?openerType=main"
								class="my_hb"
								onclick="clickcr(this, 'nmy_ndr.crntstrge', '', '', event); My.openPage('mycapacity.nhn?openerType=main', false); return false"><strong>2.9</strong>GB</a>
							<span class="slash">/</span> <a
								href="file:///C:/Users/Soo/Desktop/payment/user/upgrade.nhn"
								class="my_hb"
								onclick="clickcr(this, 'nmy_ndr.mystrge', '', '', event); My.openPage('payment/user/upgrade.nhn', false); return false">30GB</a>
						</div>
					</div>
					<!-- //svc_head -->
					<!-- svc_body 컨텐츠 영역-->
					<div class="svc_body">
						<!-- [D] 내 폴더 리스트 -->
						<div class="summary_cover">
							<div class="shortcut_cover">
								<a
									href="file:///C:/Users/Soo/Desktop/my/collectView.nhn?type=image"
									class="shortcut photo"
									onclick="clickcr(this, 'nmy_ndr.flphoto', '', '', event); My.openPage('my/collectView.nhn?type=image', 'NDrive'); return false;">
									<span class="label">사진</span> <em class="value">63</em>
								</a> <a
									href="file:///C:/Users/Soo/Desktop/my/collectView.nhn?type=video"
									class="shortcut movie"
									onclick="clickcr(this, 'nmy_ndr.flvideo', '', '', event); My.openPage('my/collectView.nhn?type=video', 'NDrive'); return false;">
									<span class="label">동영상</span> <em class="value">2</em>
								</a> <a
									href="file:///C:/Users/Soo/Desktop/my/collectView.nhn?type=doc"
									class="shortcut document"
									onclick="clickcr(this, 'nmy_ndr.fldoc', '', '', event); My.openPage('my/collectView.nhn?type=doc', 'NDrive'); return false;">
									<span class="label">문서</span> <em class="value">42</em>
								</a> <a
									href="file:///C:/Users/Soo/Desktop/my/collectView.nhn?type=audio"
									class="shortcut music"
									onclick="clickcr(this, 'nmy_ndr.flmusic', '', '', event); My.openPage('my/collectView.nhn?type=audio', 'NDrive'); return false;">
									<span class="label">음악</span> <em class="value">0</em>
								</a>
							</div>
						</div>
						<ul class="svc_list n_update" style="display: block;">
							<!-- resource가 폴더인 경우의 nclick code -->
							<li class="unread"><a
								href="file:///C:/Users/Soo/Desktop/crp/" class="list_cover"
								onclick="clickcr(this, 'nmy_ndr.ufolder', '', '', event); My.openPage('crp/', 'NDrive'); return false;">
									<p class="subject">crp</p>
									<p class="info">
										<span class="date">2016.12.5 22:18</span>
									</p> <span class="lbu ic_folder"><em class="blind">folder</em></span>
							</a></li>
							<li class="read"><a
								href="file:///C:/Users/Soo/Desktop/mypage.html"
								class="list_cover"
								onclick="clickcr(this, 'nmy_ndr.ufile', '', '', event); My.openPage('', ''); return false;">
									<p class="subject">오피스_이용안내.ndoc</p>
									<p class="info">
										<span class="date">2013.1.17 17:16</span>
									</p> <span class="lbu ic_ndoc"><em class="blind">ndoc</em></span>
							</a></li>
						</ul>
						<a href="file:///C:/Users/Soo/Desktop/mypage.html"
							class="view_more"
							onclick="clickcr(this, 'nmy_ndr.umore', '', '', event); My.openPage('', 'NDrvie'); return false;">바코드
							클라우드에서 더보기<span class="ico"></span>
						</a>
					</div>
					<!-- //svc_body -->
					<!--// my.jsp -->
				</div>
				<div class="svc_navigation">
					<a href="file:///C:/Users/Soo/Desktop/mypage.html" target="_parent"
						class="svc_link_strong"
						onclick="clickcr(this, 'nmy_fot.ndrive', '', '', event);My.movePage('');return false;"><span
						class="svc_ico"></span>바코드 클라우드</a>
					<div class="task_right">
						<span class="cnt"><em><i class="blind">현재탭</i>8</em><span>/<i
								class="blind">전체 탭 갯수</i>13
						</span></span><a href="file:///C:/Users/Soo/Desktop/mypage.html"
							class="btn_prev" title="이전"
							onclick="clickcr(this, 'nmy_fot.prev', '', '', event);myCore.moveServicePannel('prev');return false;"><i>이전
								탭 보기</i></a><a href="file:///C:/Users/Soo/Desktop/mypage.html"
							class="btn_next" title="다음"
							onclick="clickcr(this, 'nmy_fot.next', '', '', event);myCore.moveServicePannel('next');return false;"><i>다음
								탭 보기</i></a>
					</div>
				</div>
			</div>
			<div class="svc_memo svc_panel" style="display: none;"
				queryid="C1514285807848710456">
				<div class="svc_banner"></div>
				<div class="svc_scroll" style="-webkit-overflow-scrolling: touch;">
					<div class="svc_head">
						<!-- My.drawList 는  My 서버  proxy 를 통해 호출되기때문에 "/my/memo" 를 붙여줘야 한다. -->
						<a href="file:///C:/Users/Soo/Desktop/mypage.html"
							class="tit selected"
							onclick="clickcr(this, 'nmy_meo.all', '', '', event);My.drawList('/my/memo/my');return false;">전체
							메모</a> <a href="file:///C:/Users/Soo/Desktop/mypage.html"
							class="tit "
							onclick="clickcr(this, 'nmy_meo.star', '', '', event);My.drawList('/my/memo/my?filter=important');return false;">중요
							메모</a>
						<div class="task_right">
							<button
								onclick="clickcr(this, 'nmy_meo.write', '', '', event);My.movePage('');">메모
								쓰기</button>
						</div>
					</div>
					<div class="svc_body">
						<ul class="svc_list">
							<li><a href="javascript:My.openPage('')"
								class="list_cover"
								onclick="clickcr(this, 'nmy_meo.alist', '', '', event);">
									<span class="notify_ico"><i class="blind">중요메모</i></span>
									<p class="subject">바빠서 연애할 시간이 없을 때 출처 : K.Greb .. | 바코드
										블로그</p>
									<p class="info">
										<span class="folder"> 내 메모 </span> <span class="bar"></span> <span
											class="date">2015.05.25 19:33</span>
									</p>
							</a></li>
							<li><a href="javascript:My.openPage('')"
								class="list_cover"
								onclick="clickcr(this, 'nmy_meo.alist', '', '', event);">
									<span class="notify_ico"><i class="blind">중요메모</i></span>
									<p class="subject">◈ 언제 어디서나 바코드 메모! 바코드 아이디 하나면 PC, 모바일, 웹
										여기저기 흩어져 있던 메모가 자동으로 동기화되어 메모 관리가 편리해집니다. ◈ 모바일 앱 자세히 보</p>
									<p class="info">
										<span class="folder"> 내 메모 </span> <span class="bar"></span> <span
											class="date">2011.12.21 19:57</span>
									</p>
							</a></li>
						</ul>
					</div>
				</div>
				<div class="svc_navigation">
					<a href="file:///C:/Users/Soo/Desktop/mypage.html" target="_parent"
						class="svc_link_strong"
						onclick="clickcr(this, 'nmy_fot.memo', '', '', event);My.movePage('');return false;"><span
						class="svc_ico"></span>메모</a>
					<div class="task_right">
						<span class="cnt"><em><i class="blind">현재탭</i>13</em><span>/<i
								class="blind">전체 탭 갯수</i>13
						</span></span><a href="file:///C:/Users/Soo/Desktop/mypage.html"
							class="btn_prev" title="이전"
							onclick="clickcr(this, 'nmy_fot.prev', '', '', event);myCore.moveServicePannel('prev');return false;"><i>이전
								탭 보기</i></a><a href="file:///C:/Users/Soo/Desktop/mypage.html"
							class="btn_next" title="다음"
							onclick="clickcr(this, 'nmy_fot.next', '', '', event);myCore.moveServicePannel('next');return false;"><i>다음
								탭 보기</i></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>