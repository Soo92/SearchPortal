<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:useBean id="mgr" class="member.MemberMgr"/>

<%
		request.setCharacterEncoding("utf-8");
		String id = (String)session.getAttribute("idKey");	
		boolean checkSell = mgr.getMember(id).getSeller()!=null && mgr.getMember(id).getSeller().equals("seller");
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./userInfo_files/myarea.171214.css">
<script src="http://code.jquery.com/jquery-1.7.0.min.js"></script>
<script type="text/javascript">
	if("<%=id%>"=="null"){
		location.href="../index.jsp";
	}
	function toggleService(a) {
		var ser = document.getElementById("service_pannel");
		var panel = document.getElementsByClassName("svc_panel");
		for (var i = 0; i < panel.length; i++) {
			if(panel[i].classList.contains("svc_"+a)&&panel[i].style.display=="none") {panel[i].style.display="block"; ser.style.display = "block"; ser.style.height = "";}
			else if(panel[i].classList.contains("svc_"+a)&&panel[i].style.display=="block"){ panel[i].style.display="none"; ser.style.display = "none"; ser.style.height = "0px";}
			else {panel[i].style.display="none";}
		}
		var resizeHeight = $('#service_pannel').height();
		  $("#minime",parent.document).height( resizeHeight + 120 );
	}
</script>
</head>
<body>
	<div class="my_area">
		<div class="profile">
			<div class="user_area">
				<div class="user_info">
					<a target="_parent"
						class="user_thumbnail" onclick=""> <span class="mask"></span>
						<img id="profile_image" src="./userInfo_files/myInfo.gif"
						width="56" height="56" alt="<%=id%> 님">
					</a>
					<div class="private">
						<span class="user_name"><a href="" target="_parent" onclick=""><strong id="user_name"><%=id%></strong>님</a></span> 
								<a href="./mypage.jsp" target="_parent" class="link_myinfo" onclick="">내정보</a>
					<%if(checkSell) {%>
								<a href="../admin/admin_list.jsp" target="_parent" class="link_myinfo" onclick="">판매자 페이지</a>
					<%} %>
					</div>
					<div class="my_service">
						<a href="./logout.jsp" target="_parent" id="btn_logout"
							class="btn_logout"><span class="btn_inr">로그아웃</span></a> <span
							class="link_cover"><a id="note_count_profile"
							href="" target="_parent"
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
								onclick="toggleService('ndrive')"
								class="selected" id="myPage_o_but">
								<a
									class="tab_ndrive"> <img
									src="./userInfo_files/myP_01.png"> <span
									id="ndrive_count" class="b_cnt" style="display:"><em></em><i
										class="arrow_down"></i></span>
								</a>
							</div>
							<div
								onclick="toggleService('memo')"
								class="selected" id="myPage_o_but">
								<a
									class="tab_ndrive"> <img
									src="./userInfo_files/myP_02.png"> <span id="memo_count"
									class="b_cnt" style="display: none"><em></em><i
										class="arrow_down"></i></span>
								</a>
							</div>
							<div
								onclick="toggleService('mail')"
								class="selected" id="myPage_o_but">
								<a
									class="tab_ndrive"> <img
									src="./userInfo_files/myP_03.png"> <span id="mail_count"
									class="b_cnt" style="display: none"><em></em><i
										class="arrow_down"></i></span>
								</a>
							</div>
							<div
								onclick="toggleService('npay')"
								class="selected" id="myPage_o_but">
								<a
									class="tab_ndrive"> <img
									src="./userInfo_files/myP_04.png"> <span id="npay_count"
									class="b_cnt" style="display: none"><em></em><i
										class="arrow_down"></i></span>
								</a>
							</div>
						</div>
					</div>
				</div>
				<span class="slide_btn">
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
						<a
							class="tit selected"
							onclick="clickcr(this, 'nmy_mil.allmail', '', '', event);My.drawList('/my/mail/list/?isNew=true');return false;">전체메일</a>
						<a class="tit"
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
						</ul>
						<a
							class="view_more"
							onclick="clickcr(this, 'nmy_mil.mailmore', '', '', event);My.movePage('', 'mailWindows');return false;"
							target="_blank">메일에서 더보기<span class="ico"></span></a>
					</div>
				</div>
				<div class="svc_navigation">
					<a target="_parent"
						class="svc_link_strong"
						onclick="clickcr(this, 'nmy_fot.mail', '', '', event);My.movePage('');return false;"><span
						class="svc_ico"></span>메일</a> <span class="bar"></span> <a
						href="" target="_parent"
						class="svc_link_weak"
						onclick="clickcr(this, 'nmy_fot.mailset', '', '', event);My.movePage('');return false;">새
						메일 통수 설정</a>
				</div>
			</div>
			<div class="svc_npay svc_panel" queryid="C1514285812109585875"
				style="display: none;">
				<div class="svc_banner"></div>
				<div class="svc_scroll" style="-webkit-overflow-scrolling: touch;">
					<div class="svc_head">
						<div class="shortcut_cover">
							<a
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
								href=""
								class="list_cover"
								onclick="clickcr(this, 'nmy_pay.event', '','', event);My.openPage('', 'payWindows');return false;"><span
									class="thumb"></span>
									<div class="subject_cover">
										<p class="subject">프렌즈 특별패키지 런칭! 후디커버 또는 충전크래들 100% 증정</p>
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
								href="?tabMenu=BOOKING"
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
								<a
									class="link_order"
									onclick="clickcr(this, 'nmy_pay.order', '','', event);My.openPage('', 'payWindows');return false;">결제내역<span
									class="arrow_right"></span></a> <a
									href=""
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
					<a target="_parent"
						class="svc_link_strong"
						onclick="clickcr(this, 'nmy_fot.npay', '', '', event);"><span
						class="svc_ico"></span>Pay</a>
				</div>
			</div>
			<div class="svc_ndrive svc_panel" queryid="C1514285836069107502"
				style="display: block;">
				<div class="svc_banner"></div>
				<div class="svc_scroll" style="-webkit-overflow-scrolling: touch;">
					<title>user info</title>
					<!-- my.jsp -->
					<!-- svc_head 사진, 업데이트 영역 -->
					<div class="svc_head">
						<a href="" class="tit selected"
							onclick="clickcr(this, 'nmy_ndr.update', '', '', event); My.drawList('/my/ndrive/new/myFolder.nhn', false); return false;">내
							폴더</a> <a href="https://my.barcode.com/new?svgless=true&amp;20171226193059#"
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
								href=""
								class="list_cover"
								onclick="clickcr(this, 'nmy_ndr.ufile', '', '', event); My.openPage('', ''); return false;">
									<p class="subject">오피스_이용안내.ndoc</p>
									<p class="info">
										<span class="date">2013.1.17 17:16</span>
									</p> <span class="lbu ic_ndoc"><em class="blind">ndoc</em></span>
							</a></li>
						</ul>
						<a
							class="view_more"
							onclick="clickcr(this, 'nmy_ndr.umore', '', '', event); My.openPage('', 'NDrvie'); return false;">바코드
							클라우드에서 더보기<span class="ico"></span>
						</a>
					</div>
					<!-- //svc_body -->
					<!--// my.jsp -->
				</div>
				<div class="svc_navigation">
					<a target="_parent"
						class="svc_link_strong"
						onclick="clickcr(this, 'nmy_fot.ndrive', '', '', event);My.movePage('');return false;"><span
						class="svc_ico"></span>바코드 클라우드</a>
				</div>
			</div>
			<div class="svc_memo svc_panel" style="display: none;"
				queryid="C1514285807848710456">
				<div class="svc_banner"></div>
				<div class="svc_scroll" style="-webkit-overflow-scrolling: touch;">
					<div class="svc_head">
						<!-- My.drawList 는  My 서버  proxy 를 통해 호출되기때문에 "/my/memo" 를 붙여줘야 한다. -->
						<a
							class="tit selected"
							onclick="clickcr(this, 'nmy_meo.all', '', '', event);My.drawList('/my/memo/my');return false;">전체
							메모</a> <a
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
					<a target="_parent"
						class="svc_link_strong"
						onclick="clickcr(this, 'nmy_fot.memo', '', '', event);My.movePage('');return false;"><span
						class="svc_ico"></span>메모</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>