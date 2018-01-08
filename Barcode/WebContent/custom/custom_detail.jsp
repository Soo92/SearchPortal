<%@page import="custom.CustomCateBoardBean"%>
<%@page import="custom.CustomCateBean"%>
<%@page import="custom.CustomBean"%>
<%@page import="java.util.Vector"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:useBean id="mgr" class="member.MemberMgr" />
<jsp:useBean id="cmgr" class="custom.CustomMgr"/>
<jsp:useBean id="cbean" class="custom.CustomBean"/>
<jsp:useBean id="ccbean" class="custom.CustomCateBean"/>
<jsp:useBean id="cccbean" class="custom.CustomCateBoardBean"/>
<%
	request.setCharacterEncoding("utf-8");
	String id = (String)session.getAttribute("idKey");	
	String email = mgr.getMember(id).getEmail();
	String name = mgr.getMember(id).getName();
	String index = request.getParameter("index");
	String cnum = request.getParameter("cnum");
	String boardnum = request.getParameter("boardnum");
	int idx = Integer.parseInt(index);
	Vector<CustomBean> clist = cmgr.getCustomList();
	Vector<CustomCateBean> cclist0 = cmgr.getCustomCateList(index, "0");
	Vector<CustomCateBean> cclist1 = cmgr.getCustomCateList(index, "1");
%>
<!DOCTYPE html>
<!-- saved from url=(0082)./custom_detail.html -->
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta property="og:title" content="바코드 고객센터">
<title>바코드 고객센터</title>
<link rel="stylesheet" type="text/css"
	href="./custom_detail_files/help.css">
<script type="text/javascript">
	function mypage() {
		if(document.getElementById("gnb_my_layer").className===("gnb_my_li"))
			document.getElementById("gnb_my_layer").className = "gnb_my_li gnb_lyr_opened";
		else
			document.getElementById("gnb_my_layer").className = "gnb_my_li";
	}
	function alarm() {
		if(document.getElementById("gnb_notice_layer").className===("gnb_notice_li"))
			document.getElementById("gnb_notice_layer").className = "gnb_notice_li gnb_lyr_opened";
		else
			document.getElementById("gnb_notice_layer").className = "gnb_notice_li";
	}
	function service() {
		if(document.getElementById("gnb_service_layer").className===("gnb_service_li"))
			document.getElementById("gnb_service_layer").className = "gnb_service_li gnb_lyr_opened";
		else
			document.getElementById("gnb_service_layer").className = "gnb_service_li";
	}
</script>
<script type="text/javascript" src="./custom_detail_files/jquery-1.10.2.js.%EB%8B%A4%EC%9A%B4%EB%A1%9C%EB%93%9C"></script>
<script type="text/javascript"
	src="./custom_detail_files/common.js.%EB%8B%A4%EC%9A%B4%EB%A1%9C%EB%93%9C"></script>
<script type="text/javascript" src="./custom_detail_files/clickcr.js.%EB%8B%A4%EC%9A%B4%EB%A1%9C%EB%93%9C"></script>
<link rel="stylesheet" href="../css/gnb_style.css" type="text/css">
<script	src="./custom_detail_files/clickcrD.js.%EB%8B%A4%EC%9A%B4%EB%A1%9C%EB%93%9C" id="gnb_clickcrD" charset="utf-8"></script>
</head>
<body style="">
	<div id="wrap">
		<div id="header">
			<div class="gnb_area">
				<div class="Ngnb">
					<div class="Ngnb_inner">
						<a href="../index.jsp" class="Nlogo_link"> <img
							src="logo_ci.png" width="150" height="30"
							style="margin-top: 10px;"></a>
						<h1 class="Ngnb_service">
							<a href="https://help.naver.com/#" class="Nhome_link"><span class="Nhome">고객센터</span></a>
						</h1>
					<div id="login">
	<%if(id == null || id.equals("")){%>
						<a href="../member/login.jsp">
							<table width="70px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px #b73400 solid; background:background:#ff5b1b; margin-bottom:7px;">
								<tr>
									<td height="30px;"><p>로그인</p></td>
								</tr>
							</table>
							</a>
	<%}else{%>
					<div id="gnb" class="gnb_dark_type2"><strong class="blind">사용자 링크</strong><ul class="gnb_lst" id="gnb_lst" style="display: block;"><li class="gnb_login_li" id="gnb_login_layer" style="display: none;"><a class="gnb_btn_login" href="https://nid.naver.com/nidlogin.login" id="gnb_login_button"><span class="gnb_bg"></span><span class="gnb_bdr"></span><span class="gnb_txt">로그인</span></a></li><li class="gnb_my_li" id="gnb_my_layer" style="display: inline-block;"><div class="gnb_my_namebox" id="gnb_my_namebox" style="background-image: url(&quot;http://static.naver.net/common/gnb/2014/ico_arrow_wh.gif&quot;);"><a href="javascript:;" class="gnb_my" onclick="mypage()"><img id="gnb_profile_img" src="http://static.naver.net/common/myarea/myInfo.gif" width="26" height="26" alt="내 프로필 이미지" style="display: inline-block;"><span id="gnb_profile_filter_mask" class="filter_mask" style="display: inline-block;"></span> <span class="gnb_name" id="gnb_name1"><%=name %></span><em class="blind">내정보 보기</em><span class="ico_arrow"></span></a><a href="#" class="gnb_emp" id="gnb_emp" style="display: none;">(임직원혜택)</a></div><div class="gnb_my_lyr" id="gnb_my_lyr"><div class="gnb_my_content"><div class="gnb_img_area"><span class="gnb_mask"></span><img src="http://static.naver.net/common/myarea/myInfo.gif" width="80" height="80" alt=""><a href="https://nid.naver.com/user2/api/naverProfile.nhn?m=checkIdType" class="gnb_change"><span class="blind">프로필 사진 변경</span></a></div><div class="gnb_txt_area"><p class="gnb_account"><span class="gnb_name" id="gnb_name2"><a class="gnb_nick" href="https://nid.naver.com/user2/api/naverProfile.nhn?m=checkIdType"><%=name %></a>님</span><a class="gnb_btn_login" href="../member/logout.jsp"><span class="gnb_bg"></span><span class="gnb_bdr"></span><span class="gnb_txt">로그아웃</span></a></p><a href="http://mail.naver.com" class="gnb_mail_address"><%=email %></a><ul class="gnb_edit_lst"><li class="gnb_info"><a href="https://nid.naver.com/user2/help/myInfo.nhn?menu=home">내정보</a></li></ul><p class="gnb_pay_check" id="gnb_pay_check"><em>B Pay</em><a href="http://pay.naver.com" id="gnb_pay_point"><span>내 페이포인트</span><strong>63,035원</strong></a></p></div></div><a href="#" class="gnb_my_interface" style="display:none"><span class="blind">환경설정</span></a></div></li><li class="gnb_notice_li" id="gnb_notice_layer" style="display: inline-block;"><a href="javascript:;" class="gnb_notice" onclick="alarm(); return false;"><span class="blind">알림</span><span class="gnb_icon"></span><em class="gnb_ico_num" id="gnb_me_menu" style="display:none"><span class="gnb_ico_new"><span class="gnb_count" id="gnb_me_count" style="display: inline-block;"></span></span></em><span class="ico_arrow"></span></a><div class="gnb_notice_lyr" id="gnb_notice_lyr"><div class="svc_noti svc_panel"><div class="svc_scroll"><div class="svc_head"><strong class="gnb_tit">전체 알림</strong><div class="task_right"><button onclick="gnbNaverMeLayer.deleteReadList(this, event);" id="gnb_btn_read_noti_del">읽은 알림 삭제</button><button onclick="gnbNaverMeLayer.showDeleteAlert();" id="gnb_btn_all_noti_del">모두 삭제</button></div></div><div class="svc_body" id="gnb_naverme_layer"></div></div><div class="gnb_ly_alert" id="gnb_ly_alert" style="display: none;"><p class="gnb_msg"><strong>알림을 모두 삭제하시겠습니까?</strong></p><div class="gnb_btns"><button id="ly_alert_confirm" onclick="gnbNaverMeLayer.deleteAllList(this, event);">확인</button><button onclick="gnbNaverMeLayer.hideDeleteAlert();">취소</button></div><button class="gnb_btn_close" onclick="gnbNaverMeLayer.hideDeleteAlert();"><i>레이어 닫기</i></button></div><a href="http://me.naver.com/box/noti.nhn" class="gnb_notice_all">내 알림 전체보기</a></div></div><iframe id="gnb_notice_lyr_iframe" title="빈 프레임" class="gnb_pad_lyr" name="padding" width="0" height="0" scrolling="no" frameborder="0" style="top:34px;right:-4px;width:299px;height:332px;display:none;opacity:0;-ms-filter:alpha(opacity=0)"></iframe></li><li class="gnb_service_li" id="gnb_service_layer" style="display: inline-block;"><a href="javascript:;" class="gnb_service" onclick="service(); return false;"><span class="blind">서비스 더보기</span><span class="gnb_icon"></span><span class="ico_arrow"></span></a><div class="gnb_service_lyr" id="gnb_service_lyr"><div class="gnb_favorite_search" id="gnb_favorite_search"><div class="gnb_favorite_area"><div class="gnb_favorite_lstwrp"><div class="gnb_first_visit" style="display:none"><span class="blind">나만의 즐겨찾기를 추가해 보세요!</span><a href="#" class="gnb_close"><span class="blind">닫기</span></a></div><strong class="blind">즐겨찾는 서비스</strong><ul class="gnb_favorite_lst" id="gnb_favorite_lst"><li class="gnb_add"><a href="#"><span class="ic_add"></span>추가</a></li><li class="gnb_add"><a href="#"><span class="ic_add"></span>추가</a></li><li class="gnb_add"><a href="#"><span class="ic_add"></span>추가</a></li><li class="gnb_add"><a href="#"><span class="ic_add"></span>추가</a></li></ul><a href="#" class="gnb_my_interface" onclick="gnbMoreLayer.clickToggleWhole(); return false;"><span class="blind">즐겨찾기 설정</span></a></div></div><div class="gnb_search_area"><div class="gnb_search_box" onmouseover="gnb_search.mouseOver(this);" onmouseout="gnb_search.mouseOut(this);"><input id="gnb_svc_search_input" type="text" title="서비스 검색" value="더 많은 서비스를 간편하게 시작하세요!" onfocus="gnb_search.clearInput(this);" onblur="gnb_search.resetInput(this);" onkeydown="gnb_search.keyDown(event);" onkeyup="gnb_search.keyUp(event);"><a href="#" class="gnb_del_txt" id="gnb_del_txt" style="display:none"><span class="blind">삭제</span></a><div class="gnb_pop_input" id="gnb_pop_input" tabindex="0" onfocus="gnb_search.searchPopOnMouse = true; return false;" onfocusout="gnb_search.searchPopOnMouse = false; return false;" onmouseover="gnb_search.searchPopOnMouse = true; return false;" onmouseout="gnb_search.searchPopOnMouse = false; return false;" style="display:none"><ul class="gnb_pop_lst"></ul></div></div><div class="gnb_search_lstwrp"><ul class="gnb_search_lst gnb_first"><li class="gnb_first"><a href="http://cafe.naver.com/">카페</a></li><li><a href="http://news.naver.com/">뉴스</a></li><li><a href="http://map.naver.com/">지도</a></li><li><a href="http://sports.news.naver.com/">스포츠</a></li><li><a href="http://game.naver.com/">게임</a></li></ul><ul class="gnb_search_lst"><li class="gnb_first"><a href="http://section.blog.naver.com/">블로그</a></li><li><a href="http://post.naver.com/main.nhn">포스트</a></li><li><a href="http://dic.naver.com/">사전</a></li><li><a href="http://kin.naver.com/">지식iN</a></li><li><a href="http://weather.naver.com/">날씨</a></li></ul><ul class="gnb_search_lst"><li class="gnb_first"><a href="http://mail.naver.com/">메일</a></li><li><a href="http://stock.naver.com/">증권</a></li><li><a href="http://land.naver.com/">부동산</a></li><li><a href="http://music.naver.com/">뮤직</a></li><li><a href="http://book.naver.com">책</a></li></ul><ul class="gnb_search_lst"><li class="gnb_first"><a href="http://shopping.naver.com/">쇼핑</a></li><li><a href="http://comic.naver.com/">웹툰</a></li><li><a href="http://movie.naver.com/">영화</a></li><li><a href="http://cloud.naver.com/">클라우드</a></li><li><a href="http://auto.naver.com/">자동차</a></li></ul></div></div><div class="gnb_banner"><a href="http://campaign.naver.com/pointevent/" class="gnb_service_event"><img id="gnb_promo" alt="바코드페이 | 12월 이벤트" width="265" height="47" src="http://static.naver.net/common/gnb/banner/promo_npay_1712.png"></a></div><div class="gnb_linkwrp"><a href="http://www.naver.com/more.html" class="gnb_service_all" id="gnb_service_all">전체 서비스 보기</a></div></div><div class="gnb_svc_more" id="gnb_svc_more" style="display: none;"><strong class="blind">바코드 주요 서비스</strong><div class="gnb_bg_top"></div><div class="gnb_svc_hd"><strong class="gnb_svc_tit">바로가기 설정</strong><span class="link"><a href="http://www.naver.com/more.html">전체 서비스 보기</a></span></div><div class="gnb_svc_lstwrp"><div class="gnb_svc_lst1"><ul class="gnb_first"><li><input type="checkbox" id="nsvc_game" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_game">게임</label></li><li><input type="checkbox" id="nsvc_weather" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_weather">날씨</label></li><li><input type="checkbox" id="nsvc_shopping" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_shopping">바코드쇼핑</label></li><li><input type="checkbox" id="nsvc_navercast" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_navercast">바코드캐스트</label></li><li><input type="checkbox" id="nsvc_cloud" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_cloud">바코드클라우드</label></li><li class="gnb_event"><input type="checkbox" id="nsvc_naverpay" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_naverpay">바코드페이</label><em class="ic_gnb_new">New</em></li><li><input type="checkbox" id="nsvc_news" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_news">뉴스</label></li><li><input type="checkbox" id="nsvc_comic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_comic">만화/웹툰</label></li><li><input type="checkbox" id="nsvc_memo" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_memo">메모</label></li><li><input type="checkbox" id="nsvc_mail" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_mail">메일</label></li><li><input type="checkbox" id="nsvc_music" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_music">뮤직</label></li><li><input type="checkbox" id="nsvc_land" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_land">부동산</label></li><li><input type="checkbox" id="nsvc_bookmark" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_bookmark">북마크</label></li></ul><ul class=""><li><input type="checkbox" id="nsvc_blog" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_blog">블로그</label></li><li><input type="checkbox" id="nsvc_dic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_dic">사전</label></li><li><input type="checkbox" id="nsvc_software" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_software">소프트웨어</label></li><li><input type="checkbox" id="nsvc_sports" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_sports">스포츠</label></li><li><input type="checkbox" id="nsvc_ya9" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_ya9">야구9단</label></li><li><input type="checkbox" id="nsvc_movie" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_movie">영화</label></li><li><input type="checkbox" id="nsvc_office" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_office">오피스</label></li><li><input type="checkbox" id="nsvc_novel" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_novel">웹소설</label></li><li><input type="checkbox" id="nsvc_auto" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_auto">자동차</label></li><li><input type="checkbox" id="nsvc_contact" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_contact">주소록</label></li><li><input type="checkbox" id="nsvc_finance" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_finance">증권(금융)</label></li><li><input type="checkbox" id="nsvc_map" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_map">지도</label></li><li><input type="checkbox" id="nsvc_kin" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_kin">지식iN</label></li></ul><ul class=""><li><input type="checkbox" id="nsvc_terms" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_terms">지식백과</label></li><li><input type="checkbox" id="nsvc_book" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_book">책</label></li><li><input type="checkbox" id="nsvc_cafe" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_cafe">카페</label></li><li><input type="checkbox" id="nsvc_calendar" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_calendar">캘린더</label></li><li><input type="checkbox" id="nsvc_photo" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_photo">포토갤러리</label></li><li><input type="checkbox" id="nsvc_nstore" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_nstore">N스토어</label></li><li><input type="checkbox" id="nsvc_navertv" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_navertv">바코드TV</label></li></ul></div><div class="svc_lst2"><div class="svc_spc gnb_first"><strong><a href="http://dic.naver.com/">어학사전</a></strong><ul class=""><li><input type="checkbox" id="nsvc_krdic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_krdic">국어사전</label></li><li><input type="checkbox" id="nsvc_endic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_endic">영어/영영사전</label></li><li><input type="checkbox" id="nsvc_hanja" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_hanja">한자사전</label></li><li><input type="checkbox" id="nsvc_jpdic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_jpdic">일어사전</label></li><li><input type="checkbox" id="nsvc_cndic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_cndic">중국어사전</label></li><li><input type="checkbox" id="nsvc_frdic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_frdic">프랑스어사전</label></li><li><input type="checkbox" id="nsvc_dedic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_dedic">독일어사전</label></li><li><input type="checkbox" id="nsvc_rudic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_rudic">러시아어사전</label></li><li><input type="checkbox" id="nsvc_vndic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_vndic">베트남어사전</label></li><li><input type="checkbox" id="nsvc_spdic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_spdic">스페인어사전</label></li><li><input type="checkbox" id="nsvc_translate" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_translate">번역기</label></li></ul></div><div class="svc_spc"><strong>인기/신규서비스</strong><ul class=""><li><input type="checkbox" id="nsvc_grafolio" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_grafolio">그라폴리오</label></li><li><input type="checkbox" id="nsvc_post" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_post">포스트</label></li><li><input type="checkbox" id="nsvc_luncherapp" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_luncherapp">도돌런처</label></li><li><input type="checkbox" id="nsvc_band" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_band">밴드</label></li><li><input type="checkbox" id="nsvc_line" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_line">라인</label></li></ul></div></div></div><div class="svc_btnwrp"><div class="svc_btns"><button class="gnb_save" onclick="if(gnbFavorite.addService()){gnbMoreLayer.clickToggleWhole()} return false;"><strong class="blind">확인</strong></button><button class="gnb_close" onclick="gnbFavorite.cancel(); return false;"><span class="blind">취소</span></button><button class="gnb_return" onclick="gnbFavorite.resetService(); return false;"><span class="blind">초기 설정으로 변경</span></button></div></div><div class="gnb_bg_btm"></div></div></div><iframe id="gnb_service_lyr_iframe" title="빈 프레임" class="gnb_pad_lyr" name="padding" width="0" height="0" scrolling="no" frameborder="0" style="display:none;top:34px;right:297px;width:585px;height:385px;opacity:0;-ms-filter:alpha(opacity=0)"></iframe><iframe id="gnb_svc_more_iframe" title="빈 프레임" class="gnb_pad_lyr" name="padding" width="0" height="0" scrolling="no" frameborder="0" style="display:none;top:34px;right:-4px;width:295px;height:385px;opacity:0;-ms-filter:alpha(opacity=0)"></iframe></li></ul>
					</div>
						<%}%>
						</div>
					</div>
				</div>
			</div>
			<div class="sta Nsearch">
				<form id="searchForm" name="searchForm" method="get" action="https://help.naver.com/support/search/searchResultAll.nhn"	class="snb_search_box">
					<fieldset>
						<legend class="blind">바코드 도움말 검색 영역</legend>
						<div class="srch_area">
							<span class="srch_box"> <span class="ipt_box"> <!-- [D] input 요소에 포커스가 갈 경우 클래스 fcs 추가 및 value 삭제 -->
									<input id="searchText" name="searchText" type="text"
									title="도움말 검색" accesskey="w" value="궁금한 점이 있다면 도움말을 검색해 보세요."
									class="srch_kwd">
							</span>
							<!-- [D] button 클릭할 경우 클래스 active 추가 -->
							</span>
							<button id="ischButton" type="submit" title="검색" class="btn_srch">
								<span class="blind">검색</span>
							</button>
							<!-- [D] 서비스명 input에 텍스트 입력시 display:block 변경 -->
							<div class="auto_kwd" style="display: none; z-index: 999999">
								<ul>
								</ul>
							</div>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
		<div id="container">
			<!-- ticker notice -->
			<!-- //ticker notice -->
			<div class="content_wrap svs">
				<div class="snb">
					<h2>
						<a href=<%=request.getRequestURI()%>?index=<%=idx%>><%=clist.get(idx-1).getTitle() %></a>
					</h2>
					<div class="nav">
						<!-- h3 class="tit_nav"></h3-->
						<span class="nav_top_line"></span>
<% if(cnum!=null&&cmgr.getCustomCateParent(cnum).getParent().equals("2")) { 
	CustomCateBean parent = cmgr.getCustomCateParent(cmgr.getCustomCateParent(cnum).getIdx());
	cclist1 = cmgr.getCustomCateList(parent.getCnum(), "2");%>
						<h4 class="back_prv"><a href="<%=request.getRequestURI()%>?index=<%=idx%>&&cnum=<%=parent.getCnum()%>"><span class="ic_prv"></span><%=parent.getTitle() %></a></h4>
						<ul>
	<% for(int i=0;i<cclist1.size();i++) {	%>
							<li<%if(cnum.equals(cclist1.get(i).getCnum())) {%> class="on"<%}%>><a href="<%=request.getRequestURI()%>?index=<%=idx%>&&cnum=<%=cclist1.get(i).getCnum()%>">
							<%=cclist1.get(i).getTitle() %></a></li>
	<%}%>
						</ul>
<%}else if(boardnum!=null){
	CustomCateBean parent = cmgr.getCustomCateParent(cmgr.getCustomCateBoardParent(boardnum).getIdx());
	Vector<CustomCateBoardBean> cclist2 = cmgr.getCustomCateBoardList(parent.getCnum());%>
						<h4 class="back_prv"><a href="<%=request.getRequestURI()%>?index=<%=idx%>&&cnum=<%=parent.getCnum()%>"><span class="ic_prv"></span><%=parent.getTitle() %></a></h4>
						<ul>
	<% for(int i=0;i<cclist2.size();i++) {	%>
							<li<%if(boardnum.equals(cclist2.get(i).getCcboardnum())) {%> class="on"<%}%>><a href="<%=request.getRequestURI()%>?index=<%=idx%>&&boardnum=<%=cclist2.get(i).getCcboardnum()%>">
							<%=cclist2.get(i).getTitle() %></a></li>
	<%}%>
						</ul>
<%}else{
%>
						<ul>
	<%for(int i=0;i<cclist1.size();i++) {%>
							<li<%if(cnum!=null&&cnum.equals(cclist1.get(i).getCnum())) {%> class="on"<%}%>><a href="<%=request.getRequestURI()%>?index=<%=idx%>&&cnum=<%=cclist1.get(i).getCnum()%>">
							<%=cclist1.get(i).getTitle() %></a></li>
	<%}%>
						</ul>
<%} %>
					</div>
				</div>
				<div id="content">
<%if((cnum == null || cnum.equals("")) && boardnum == null){%>
					<div class="kwd_typ_section">
						<ul class="lst_kwd">
<% for(int i=0;i<cclist0.size();i++){%>
							<li>
								<img src="<%=cclist0.get(i).getPic() %>.jpg" width="130" height="92" alt="<%=cclist0.get(i).getTitle() %>" class="thumb"/>
								<dl>
									<dt><%=cclist0.get(i).getTitle() %></dt>
									<!-- [D] 시스텝폰트 기준 띄어쓰기 포함 최대 31자 노출 -->
	<% Vector<CustomCateBoardBean> ccblist = cmgr.getCustomCateBoardList(cclist0.get(i).getCnum());
	for(int j=0;j<ccblist.size();j++) {%>
									<dd>
										<a href="<%=request.getRequestURI()%>?index=<%=idx%>&&cnum=<%=cclist0.get(i).getCnum()%>&&boardnum=<%=ccblist.get(j).getCcboardnum()%>">
										<%=ccblist.get(j).getTitle() %>
										<span class="ic"></span>
										</a>
									</dd>
		<%} %>
								</dl>
							</li>
	<%} %>
						</ul>
					</div>
<%} else if(boardnum == null || boardnum.equals("")){ 
	Vector<CustomCateBean> ccblist1 = cmgr.getCustomCateList(cnum,"2");
	Vector<CustomCateBoardBean> ccblist2 = cmgr.getCustomCateBoardList(cnum);
	Vector<CustomCateBoardBean> listing = cmgr.getCustomCateBoardList(cnum);
	%>
					<div class="ctg_section">
						<div class="pnt_ctg_area">
							<h4 class="blind">카테고리 정보</h4>
							<ul>
								<li><a href="<%=request.getRequestURI()%>?index=<%=idx%>" title="<%=clist.get(idx-1).getTitle() %>"><%=clist.get(idx-1).getTitle() %></a></li>
								<li class="last"><strong title="<%=cmgr.getCustomCateParent(cnum).getTitle() %>"><%=cmgr.getCustomCateParent(cnum).getTitle() %></strong></li>
							</ul>
						</div>
						<div class="nav_area">
							<ul>
								<!-- [D] 시스템 폰트 기준 띄어쓰기 포함 최대 46자 노출 -->
	<% for(int k=0;k<ccblist1.size();k++) {%>
							<li><a href="<%=request.getRequestURI()%>?index=<%=idx%>&&cnum=<%=ccblist1.get(k).getCnum()%>"><%=ccblist1.get(k).getTitle() %></a></li>
<%} for(int k=0;k<ccblist2.size();k++) {%>
							<li><a href="<%=request.getRequestURI()%>?index=<%=idx%>&&boardnum=<%=ccblist2.get(k).getCcboardnum()%>"><%=ccblist2.get(k).getTitle() %></a></li>
<%} %>
							</ul>
						</div>
					</div>
<%}else{ %>
					<div class="ctg_section">
						<div class="pnt_ctg_area">
							<h4 class="blind">카테고리 정보</h4>
							<ul>
								<li><a href="<%=request.getRequestURI()%>?index=<%=idx%>" title="<%=clist.get(idx-1).getTitle() %>"><%=clist.get(idx-1).getTitle() %></a></li>
								<li class="last"><strong title="<%=cmgr.getCustomCateParent(cnum).getTitle() %>"><%=cmgr.getCustomCateParent(cnum).getTitle() %></strong></li>
							</ul>
						</div>
						<div class="svs_end_area">
							<!-- [D] 현재 선택된 타이틀 적용 -->
							<h1 class="blind"><%=cmgr.getCustomCateBoardParent(boardnum).getTitle() %></h1>
							<!-- [D] 본문 페이지일 경우 클래스 cont 추가 -->
							<table class="cmn_table cont">
								<!-- [D] 현재 선택된 타이틀 적용 -->
								<caption><%=cmgr.getCustomCateBoardParent(boardnum).getTitle() %></caption>
								<colgroup>
									<col>
									<col style="width: 82px">
									<col style="width: 76px">
								</colgroup>
								<thead>
									<tr>
										<th scope="col"><span class="atcl">제목</span></th>
										<th scope="col">업데이트</th>
										<th scope="col">조회수</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><span class="atcl"><%=cmgr.getCustomCateBoardParent(boardnum).getTitle() %></span></td>
										<td><%=cmgr.getCustomCateBoardParent(boardnum).getRegdate() %></td>
										<td><%=cmgr.getCustomCateBoardParent(boardnum).getCnt() %></td>
									</tr>
								</tbody>
							</table>
							<!-- [D] 본문 상세 타이틀 적용 -->
							<h2 class="blind">내 계정(아이디/비밀번호) 도용 의심</h2>
							<div class="svs_end_cont">
								<%=cmgr.getCustomCateBoardParent(boardnum).getContent() %>
							</div>
						</div>
					</div>
<%} %>
				</div>
			</div>
		</div>
		<div id="footer_">
			<div id="footerWrap">
				<p class="a_">공지사항</p>
				<p class="a__">서비스 전체보기</p>
			</div>
		</div>
		<div id="footer">
			<p class="Extra">Creators</p>
			<ul>
				<li>크리에이터</li>
				<li class="aaa">|</li>
				<li>스몰비즈니스</li>
			</ul>
			<p class="Extra">Partners</p>
			<ul>
				<li>이성수</li>
				<li class="aaa">|</li>
				<li>김민정</li>
				<li class="aaa">|</li>
				<li>박준영</li>
				<li class="aaa">|</li>
				<li>육동주</li>
				<li class="aaa">|</li>
				<li>조성수</li>
			</ul>
			<p class="Extra">Developers</p>
			<ul>
				<li>바코드 개발센터</li>
				<li class="aaa">|</li>
				<li>오픈API</li>
				<li class="aaa">|</li>
				<li>오픈소스</li>
				<li class="aaa">|</li>
				<li>바코드 D2</li>
				<li class="aaa">|</li>
				<li>바코드 랩스</li>
			</ul>
			<div id="ul_except">
				<ul>
					<li style="padding: 0;">회사소개</li>
					<li class="aaa">|</li>
					<li>인재채용</li>
					<li class="aaa">|</li>
					<li>제휴제안</li>
					<li class="aaa">|</li>
					<li>이용약관</li>
					<li class="aaa">|</li>
					<li>개인정보처리방침</li>
					<li class="aaa">|</li>
					<li>청소년보호정책</li>
					<li class="aaa">|</li>
					<li>바코드정책</li>
					<li class="aaa">|</li>
					<li>고객센터</li>
					<li class="aaa">|</li>
					<li>ⓒBarcode Crop.</li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>