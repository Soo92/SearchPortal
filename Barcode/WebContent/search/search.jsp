<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:useBean id="mgr" class="member.MemberMgr"/>
<%
		request.setCharacterEncoding("utf-8");
		String id = (String)session.getAttribute("idKey");	
		String email = mgr.getMember(id).getEmail();
		String name = mgr.getMember(id).getName();
%>
<%
		request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<!-- saved from url=(0075)file:///C:/Users/Soo/git/SearchPortal/Barcode/WebContent/search/search.html -->
<html lang="ko"
	data-useragent="mozilla/5.0 (windows nt 6.1; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/62.0.3202.94 safari/537.36"
	data-platform="win32">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta property="og:title" content="바코드 통합검색">
<title>바코드 통합검색</title>
<link rel="stylesheet" type="text/css" href="search_files/search1_171207b.css">
<link rel="stylesheet" type="text/css" href="search_files/search2_171207.css">
<link rel="stylesheet" type="text/css" href="search_files/pcs_movie_info_150821.css">
<link rel="stylesheet" type="text/css" href="search_files/search1_171221.css">
<link rel="stylesheet" type="text/css" href="search_files/sp_ncr_0728.css">
<link rel="stylesheet" type="text/css" href="search_files/style.css">
<link rel="stylesheet" type="text/css" href="search_files/likeit_search.css">
<link rel="stylesheet" href="search_files/gnb_style.css" type="text/css">
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
function delayed_submit(object) {
	if (navigator.userAgent.indexOf('MSIE') == -1) {
		var b = c = new Date();
      	while ((b.getTime() - c.getTime()) < 100) {
			b = new Date();
      	}
	} 
}
function fold(a){
	alert(document.getElementById(a).className);
	alert(document.getElementById(a).className.match('SET')=='SET');
	if(document.getElementById(a).className.match('SET')=='SET'){
		document.getElementById(a).className = document.getElementById(a).className.replace('SET','REMOVE');
	}else{
		document.getElementById(a).className = document.getElementById(a).className.replace('REMOVE','SET');
	}
}
</script>
</head>
<body class="">
	<div id="wrap">
		<div id="header_wrap">
			<div id="header">
				<div id="logo">
					<img src="./search_files/barcode_logo_.png" width="100%"
						height="100%" alt="바코드">
				</div>
				<div id="search">
					<input type="text"
						style="width: 420px; height: 40px; margin: 5px 0px 0px 20px; border: 0px; font-size: 16px;"
						align="center" placeholder="검색해보세용!">
					<div id="search_button">
						<img src="./search_files/search_icon.png"
							onclick="location.href=&#39;./search/search.html&#39;">
					</div>
					<div id="place">
						<img src="./search_files/place_icon.png">
					</div>
				</div>
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
				<div id="gnb"><strong class="blind">사용자 링크</strong><ul class="gnb_lst" id="gnb_lst" style="display: block;"><li class="gnb_login_li" id="gnb_login_layer" style="display: none;"><a class="gnb_btn_login" href="https://nid.naver.com/nidlogin.login" id="gnb_login_button"><span class="gnb_bg"></span><span class="gnb_bdr"></span><span class="gnb_txt">로그인</span></a></li><li class="gnb_my_li" id="gnb_my_layer" style="display: inline-block;"><div class="gnb_my_namebox" id="gnb_my_namebox" style="background-image: url(&quot;http://static.naver.net/common/gnb/2014/ico_arrow_bl1.gif&quot;);"><a href="javascript:;" class="gnb_my" onclick="mypage()"><img id="gnb_profile_img" src="http://static.naver.net/common/myarea/myInfo.gif" width="26" height="26" alt="내 프로필 이미지" style="display: inline-block;"><span id="gnb_profile_filter_mask" class="filter_mask" style="display: inline-block;"></span> <span class="gnb_name" id="gnb_name1"><%=name %></span><em class="blind">내정보 보기</em><span class="ico_arrow"></span></a><a href="#" class="gnb_emp" id="gnb_emp" style="display: none;">(임직원혜택)</a></div><div class="gnb_my_lyr" id="gnb_my_lyr"><div class="gnb_my_content"><div class="gnb_img_area"><span class="gnb_mask"></span><img src="http://static.naver.net/common/myarea/myInfo.gif" width="80" height="80" alt=""><a href="https://nid.naver.com/user2/api/naverProfile.nhn?m=checkIdType" class="gnb_change"><span class="blind">프로필 사진 변경</span></a></div><div class="gnb_txt_area"><p class="gnb_account"><span class="gnb_name" id="gnb_name2"><a class="gnb_nick" href="https://nid.naver.com/user2/api/naverProfile.nhn?m=checkIdType"><%=name %></a>님</span><a class="gnb_btn_login" href="../member/logout.jsp"><span class="gnb_bg"></span><span class="gnb_bdr"></span><span class="gnb_txt">로그아웃</span></a></p><a href="http://mail.naver.com" class="gnb_mail_address"><%=email %></a><ul class="gnb_edit_lst"><li class="gnb_info"><a href="https://nid.naver.com/user2/help/myInfo.nhn?menu=home">내정보</a></li></ul><p class="gnb_pay_check" id="gnb_pay_check"><em>B Pay</em><a href="http://pay.naver.com" id="gnb_pay_point"><span>내 페이포인트</span><strong>63,035원</strong></a></p></div></div><a href="#" class="gnb_my_interface" style="display:none"><span class="blind">환경설정</span></a></div></li><li class="gnb_notice_li" id="gnb_notice_layer" style="display: inline-block;"><a href="javascript:;" class="gnb_notice" onclick="alarm(); return false;"><span class="blind">알림</span><span class="gnb_icon"></span><em class="gnb_ico_num" id="gnb_me_menu" style="display:none"><span class="gnb_ico_new"><span class="gnb_count" id="gnb_me_count" style="display: inline-block;"></span></span></em><span class="ico_arrow"></span></a><div class="gnb_notice_lyr" id="gnb_notice_lyr"><div class="svc_noti svc_panel"><div class="svc_scroll"><div class="svc_head"><strong class="gnb_tit">전체 알림</strong><div class="task_right"><button onclick="gnbNaverMeLayer.deleteReadList(this, event);" id="gnb_btn_read_noti_del">읽은 알림 삭제</button><button onclick="gnbNaverMeLayer.showDeleteAlert();" id="gnb_btn_all_noti_del">모두 삭제</button></div></div><div class="svc_body" id="gnb_naverme_layer"></div></div><div class="gnb_ly_alert" id="gnb_ly_alert" style="display: none;"><p class="gnb_msg"><strong>알림을 모두 삭제하시겠습니까?</strong></p><div class="gnb_btns"><button id="ly_alert_confirm" onclick="gnbNaverMeLayer.deleteAllList(this, event);">확인</button><button onclick="gnbNaverMeLayer.hideDeleteAlert();">취소</button></div><button class="gnb_btn_close" onclick="gnbNaverMeLayer.hideDeleteAlert();"><i>레이어 닫기</i></button></div><a href="http://me.naver.com/box/noti.nhn" class="gnb_notice_all">내 알림 전체보기</a></div></div><iframe id="gnb_notice_lyr_iframe" title="빈 프레임" class="gnb_pad_lyr" name="padding" width="0" height="0" scrolling="no" frameborder="0" style="top:34px;right:-4px;width:299px;height:332px;display:none;opacity:0;-ms-filter:alpha(opacity=0)"></iframe></li><li class="gnb_service_li" id="gnb_service_layer" style="display: inline-block;"><a href="javascript:;" class="gnb_service" onclick="service(); return false;"><span class="blind">서비스 더보기</span><span class="gnb_icon"></span><span class="ico_arrow"></span></a><div class="gnb_service_lyr" id="gnb_service_lyr"><div class="gnb_favorite_search" id="gnb_favorite_search"><div class="gnb_favorite_area"><div class="gnb_favorite_lstwrp"><div class="gnb_first_visit" style="display:none"><span class="blind">나만의 즐겨찾기를 추가해 보세요!</span><a href="#" class="gnb_close"><span class="blind">닫기</span></a></div><strong class="blind">즐겨찾는 서비스</strong><ul class="gnb_favorite_lst" id="gnb_favorite_lst"><li class="gnb_add"><a href="#"><span class="ic_add"></span>추가</a></li><li class="gnb_add"><a href="#"><span class="ic_add"></span>추가</a></li><li class="gnb_add"><a href="#"><span class="ic_add"></span>추가</a></li><li class="gnb_add"><a href="#"><span class="ic_add"></span>추가</a></li></ul><a href="#" class="gnb_my_interface" onclick="gnbMoreLayer.clickToggleWhole(); return false;"><span class="blind">즐겨찾기 설정</span></a></div></div><div class="gnb_search_area"><div class="gnb_search_box" onmouseover="gnb_search.mouseOver(this);" onmouseout="gnb_search.mouseOut(this);"><input id="gnb_svc_search_input" type="text" title="서비스 검색" value="더 많은 서비스를 간편하게 시작하세요!" onfocus="gnb_search.clearInput(this);" onblur="gnb_search.resetInput(this);" onkeydown="gnb_search.keyDown(event);" onkeyup="gnb_search.keyUp(event);"><a href="#" class="gnb_del_txt" id="gnb_del_txt" style="display:none"><span class="blind">삭제</span></a><div class="gnb_pop_input" id="gnb_pop_input" tabindex="0" onfocus="gnb_search.searchPopOnMouse = true; return false;" onfocusout="gnb_search.searchPopOnMouse = false; return false;" onmouseover="gnb_search.searchPopOnMouse = true; return false;" onmouseout="gnb_search.searchPopOnMouse = false; return false;" style="display:none"><ul class="gnb_pop_lst"></ul></div></div><div class="gnb_search_lstwrp"><ul class="gnb_search_lst gnb_first"><li class="gnb_first"><a href="http://cafe.naver.com/">카페</a></li><li><a href="http://news.naver.com/">뉴스</a></li><li><a href="http://map.naver.com/">지도</a></li><li><a href="http://sports.news.naver.com/">스포츠</a></li><li><a href="http://game.naver.com/">게임</a></li></ul><ul class="gnb_search_lst"><li class="gnb_first"><a href="http://section.blog.naver.com/">블로그</a></li><li><a href="http://post.naver.com/main.nhn">포스트</a></li><li><a href="http://dic.naver.com/">사전</a></li><li><a href="http://kin.naver.com/">지식iN</a></li><li><a href="http://weather.naver.com/">날씨</a></li></ul><ul class="gnb_search_lst"><li class="gnb_first"><a href="http://mail.naver.com/">메일</a></li><li><a href="http://stock.naver.com/">증권</a></li><li><a href="http://land.naver.com/">부동산</a></li><li><a href="http://music.naver.com/">뮤직</a></li><li><a href="http://book.naver.com">책</a></li></ul><ul class="gnb_search_lst"><li class="gnb_first"><a href="http://shopping.naver.com/">쇼핑</a></li><li><a href="http://comic.naver.com/">웹툰</a></li><li><a href="http://movie.naver.com/">영화</a></li><li><a href="http://cloud.naver.com/">클라우드</a></li><li><a href="http://auto.naver.com/">자동차</a></li></ul></div></div><div class="gnb_banner"><a href="http://campaign.naver.com/pointevent/" class="gnb_service_event"><img id="gnb_promo" alt="네이버페이 | 12월 이벤트" width="265" height="47" src="http://static.naver.net/common/gnb/banner/promo_npay_1712.png"></a></div><div class="gnb_linkwrp"><a href="http://www.naver.com/more.html" class="gnb_service_all" id="gnb_service_all">전체 서비스 보기</a></div></div><div class="gnb_svc_more" id="gnb_svc_more" style="display: none;"><strong class="blind">네이버 주요 서비스</strong><div class="gnb_bg_top"></div><div class="gnb_svc_hd"><strong class="gnb_svc_tit">바로가기 설정</strong><span class="link"><a href="http://www.naver.com/more.html">전체 서비스 보기</a></span></div><div class="gnb_svc_lstwrp"><div class="gnb_svc_lst1"><ul class="gnb_first"><li><input type="checkbox" id="nsvc_game" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_game">게임</label></li><li><input type="checkbox" id="nsvc_weather" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_weather">날씨</label></li><li><input type="checkbox" id="nsvc_shopping" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_shopping">네이버쇼핑</label></li><li><input type="checkbox" id="nsvc_navercast" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_navercast">네이버캐스트</label></li><li><input type="checkbox" id="nsvc_cloud" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_cloud">네이버클라우드</label></li><li class="gnb_event"><input type="checkbox" id="nsvc_naverpay" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_naverpay">네이버페이</label><em class="ic_gnb_new">New</em></li><li><input type="checkbox" id="nsvc_news" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_news">뉴스</label></li><li><input type="checkbox" id="nsvc_comic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_comic">만화/웹툰</label></li><li><input type="checkbox" id="nsvc_memo" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_memo">메모</label></li><li><input type="checkbox" id="nsvc_mail" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_mail">메일</label></li><li><input type="checkbox" id="nsvc_music" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_music">뮤직</label></li><li><input type="checkbox" id="nsvc_land" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_land">부동산</label></li><li><input type="checkbox" id="nsvc_bookmark" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_bookmark">북마크</label></li></ul><ul class=""><li><input type="checkbox" id="nsvc_blog" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_blog">블로그</label></li><li><input type="checkbox" id="nsvc_dic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_dic">사전</label></li><li><input type="checkbox" id="nsvc_software" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_software">소프트웨어</label></li><li><input type="checkbox" id="nsvc_sports" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_sports">스포츠</label></li><li><input type="checkbox" id="nsvc_ya9" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_ya9">야구9단</label></li><li><input type="checkbox" id="nsvc_movie" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_movie">영화</label></li><li><input type="checkbox" id="nsvc_office" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_office">오피스</label></li><li><input type="checkbox" id="nsvc_novel" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_novel">웹소설</label></li><li><input type="checkbox" id="nsvc_auto" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_auto">자동차</label></li><li><input type="checkbox" id="nsvc_contact" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_contact">주소록</label></li><li><input type="checkbox" id="nsvc_finance" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_finance">증권(금융)</label></li><li><input type="checkbox" id="nsvc_map" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_map">지도</label></li><li><input type="checkbox" id="nsvc_kin" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_kin">지식iN</label></li></ul><ul class=""><li><input type="checkbox" id="nsvc_terms" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_terms">지식백과</label></li><li><input type="checkbox" id="nsvc_book" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_book">책</label></li><li><input type="checkbox" id="nsvc_cafe" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_cafe">카페</label></li><li><input type="checkbox" id="nsvc_calendar" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_calendar">캘린더</label></li><li><input type="checkbox" id="nsvc_photo" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_photo">포토갤러리</label></li><li><input type="checkbox" id="nsvc_nstore" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_nstore">N스토어</label></li><li><input type="checkbox" id="nsvc_navertv" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_navertv">네이버TV</label></li></ul></div><div class="svc_lst2"><div class="svc_spc gnb_first"><strong><a href="http://dic.naver.com/">어학사전</a></strong><ul class=""><li><input type="checkbox" id="nsvc_krdic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_krdic">국어사전</label></li><li><input type="checkbox" id="nsvc_endic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_endic">영어/영영사전</label></li><li><input type="checkbox" id="nsvc_hanja" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_hanja">한자사전</label></li><li><input type="checkbox" id="nsvc_jpdic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_jpdic">일어사전</label></li><li><input type="checkbox" id="nsvc_cndic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_cndic">중국어사전</label></li><li><input type="checkbox" id="nsvc_frdic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_frdic">프랑스어사전</label></li><li><input type="checkbox" id="nsvc_dedic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_dedic">독일어사전</label></li><li><input type="checkbox" id="nsvc_rudic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_rudic">러시아어사전</label></li><li><input type="checkbox" id="nsvc_vndic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_vndic">베트남어사전</label></li><li><input type="checkbox" id="nsvc_spdic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_spdic">스페인어사전</label></li><li><input type="checkbox" id="nsvc_translate" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_translate">번역기</label></li></ul></div><div class="svc_spc"><strong>인기/신규서비스</strong><ul class=""><li><input type="checkbox" id="nsvc_grafolio" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_grafolio">그라폴리오</label></li><li><input type="checkbox" id="nsvc_post" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_post">포스트</label></li><li><input type="checkbox" id="nsvc_luncherapp" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_luncherapp">도돌런처</label></li><li><input type="checkbox" id="nsvc_band" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_band">밴드</label></li><li><input type="checkbox" id="nsvc_line" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_line">라인</label></li></ul></div></div></div><div class="svc_btnwrp"><div class="svc_btns"><button class="gnb_save" onclick="if(gnbFavorite.addService()){gnbMoreLayer.clickToggleWhole()} return false;"><strong class="blind">확인</strong></button><button class="gnb_close" onclick="gnbFavorite.cancel(); return false;"><span class="blind">취소</span></button><button class="gnb_return" onclick="gnbFavorite.resetService(); return false;"><span class="blind">초기 설정으로 변경</span></button></div></div><div class="gnb_bg_btm"></div></div></div><iframe id="gnb_service_lyr_iframe" title="빈 프레임" class="gnb_pad_lyr" name="padding" width="0" height="0" scrolling="no" frameborder="0" style="display:none;top:34px;right:297px;width:585px;height:385px;opacity:0;-ms-filter:alpha(opacity=0)"></iframe><iframe id="gnb_svc_more_iframe" title="빈 프레임" class="gnb_pad_lyr" name="padding" width="0" height="0" scrolling="no" frameborder="0" style="display:none;top:34px;right:-4px;width:295px;height:385px;opacity:0;-ms-filter:alpha(opacity=0)"></iframe></li></ul>
				</div>
					<%}%>
					</div>
			</div>
		</div>
		<div id="nav">
			<ul style="padding-right: 40%">
				<li><a
					href="file:///C:/Users/Soo/git/SearchPortal/Barcode/WebContent/search/product/product_home.jsp">중고
						쇼핑</a></li>
				<li class="ulul"><a
					href="file:///C:/Users/Soo/git/SearchPortal/Barcode/WebContent/search/reserve/reserve_home.jsp">여행지</a></li>
				<li class="ulul"><a
					href="file:///C:/Users/Soo/git/SearchPortal/Barcode/WebContent/search/movie/movie_home.jsp">영화
						추천</a></li>
				<li class="ulul"><a
					href="file:///C:/Users/Soo/git/SearchPortal/Barcode/WebContent/search/custom/custom_home.jsp">고객센터</a></li>
			</ul>
		</div>
		<div id="container" role="main">
			<div id="content" class="pack_group">
				<div id="main_pack" class="main_pack">
					<div id="nx_related_keywords" class="sp_keyword section">
						<dl class="relate_area">
							<dt>
								<span class="tit_relate">연관검색어</span><a
									onclick="return goOtherCR(this, &#39;a=rsk.guide&amp;r=&amp;i=&amp;u=&#39;+urlencode(urlexpand(this.href)));"
									href="https://help.naver.com/support/alias/search/word/word_1.naver"
									title="새창" target="_blank" class="spkw ico_help"><span
									class="blind">도움말</span></a>
							</dt>
							<dd class="lst_relate" style="display: block;">
								<ul>
									<li><a
										href="https://search.naver.com/search.naver?where=nexearch&amp;query=%EB%B0%94%EC%BD%94%EB%93%9C%EC%8A%A4%EC%BA%90%EB%84%88&amp;ie=utf8&amp;sm=tab_she&amp;qdt=0"
										data-idx="1" data-area="*q">바코드스캐너</a></li>
									<li><a
										href="https://search.naver.com/search.naver?where=nexearch&amp;query=%EB%84%A4%EC%9D%B4%EB%B2%84+%EB%B0%94%EC%BD%94%EB%93%9C%EC%8A%A4%EC%BA%90%EB%84%88&amp;ie=utf8&amp;sm=tab_she&amp;qdt=0"
										data-idx="2" data-area="*q">바코드 바코드스캐너</a></li>
									<li><a
										href="https://search.naver.com/search.naver?where=nexearch&amp;query=%EB%B0%94%EC%BD%94%EB%93%9C+%EC%9D%B8%EC%8B%9D&amp;ie=utf8&amp;sm=tab_she&amp;qdt=0"
										data-idx="3" data-area="*q">바코드 인식</a></li>
									<li><a
										href="https://search.naver.com/search.naver?where=nexearch&amp;query=qr%EC%BD%94%EB%93%9C+%EA%B2%80%EC%83%89&amp;ie=utf8&amp;sm=tab_she&amp;qdt=0"
										data-idx="4" data-area="*q">qr코드 검색</a></li>
								</ul>
							</dd>
						</dl>
						<div class="ly_option" style="display: block;"></div>
					</div>
					<link rel="stylesheet" type="text/css"
						href="./search_files/sp_image_170330.css">
					<div class="sp_shop_default section" id="_shopping_guide_view">
						<div class="section_head">
							<h2>바코드쇼핑</h2>
							<div class="dsc_ncaution2 _shopping_info_area">
								<a
									href="https://search.naver.com/search.naver?sm=tab_hty.top&amp;where=nexearch&amp;query=%EB%B0%94%EC%BD%94%EB%93%9C&amp;oquery=dd&amp;tqi=TAzLwlpVuECssuRYb5Nsssssss0-399706#"
									onclick="return tCR(&#39;a=shp_gui.imark&amp;r=&amp;i=&amp;u=javascript&#39;);"
									class="ico_ad_dsc _open_btn" title="이 정보가 표시된 이유">이 정보가 표시된
									이유</a>
								<div class="ly_ad_dsc _layer" style="display: none;">
									<span class="ico_arr">&nbsp;</span>
									<p>바코드가 운영하는 쇼핑 서비스입니다.</p>
									<button type="button" class="bt_ad_clse _close_btn"
										title="안내 레이어 닫기"
										onclick="return tCR(&#39;a=shp_gui.guideclose&amp;r=&amp;i=&amp;u=javascript&#39;);">안내
										레이어 닫기</button>
								</div>
							</div>
						</div>
						<p class="title_desc title_desc_v2">
							'<em>바코드</em>' 상품 <a
								href="http://shopping.naver.com/search/all.nhn?query=%EB%B0%94%EC%BD%94%EB%93%9C&amp;frm=NVSCPRO"
								onclick="return goOtherCR(this,&#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=&amp;i=&amp;a=shp_gui.resultcount&#39;);"
								target="_blank">87,240</a>건
						</p>
						<div class="group_item">
							<div class="_page_group" style="display: block;">
								<div class="group_guide _page "
									data-more-link="http://shopping.naver.com/search/all.nhn?query=%EB%B0%94%EC%BD%94%EB%93%9C&amp;frm=NVSCPRO"
									data-clicklog-id="shp_gui*a" data-start="1" data-index="0"
									style="display: block;">
									<ul class="lst_guide">
										<li class="bx"><div class="bx_area">
												<div class="thumb_area">
													<a
														href="http://shopping.naver.com/bridge/searchGate.nhn?cat_id=50002953&amp;nv_mid=12585222143&amp;query=%EB%B0%94%EC%BD%94%EB%93%9C&amp;frm=NVSCPRO&amp;h=ac64663b64bf7b12d0c9259fcf6ab5551f6ce35d&amp;t=JB0CXZ3W"
														class="thumb"
														onclick="return goOtherCR(this,&#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;i=00000009_0002ee233fff&amp;a=shp_gui*a.outimg&#39;);"
														target="_blank"><img
														src="./search_files/12585222143.jpg"
														onerror="on_noimage_shop(this);" width="133" height="133"
														alt="대륙의 실수 가성비갑 무선 바코드 스캐너 리더기"><span class="mask"></span></a>
												</div>
												<div class="detail_area">
													<div class="detail">
														<div class="tit">
															<span class="ico_txt">해외</span><a
																href="http://shopping.naver.com/bridge/searchGate.nhn?cat_id=50002953&amp;nv_mid=12585222143&amp;query=%EB%B0%94%EC%BD%94%EB%93%9C&amp;frm=NVSCPRO&amp;h=ac64663b64bf7b12d0c9259fcf6ab5551f6ce35d&amp;t=JB0CXZ3W"
																title="대륙의 실수 가성비갑 무선 바코드 스캐너 리더기"
																onclick="return goOtherCR(this,&#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;i=00000009_0002ee233fff&amp;a=shp_gui*a.outtit&#39;);"
																target="_blank">대륙의 실수 가성비갑 무선 <b class="hl">바코드</b>...
															</a>
														</div>
														<div class="dsc price">
															<em class="price_num" title="38,000원">38,000원</em>
														</div>
														<div class="dsc mall">
															<a href="http://storefarm.naver.com/kongpupanda2017"
																class="name" title="쿵푸팬더착한직구"
																onclick="return goOtherCR(this,&#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;i=00000009_0002ee233fff&amp;a=shp_gui*a.outmall&#39;);"
																target="_blank">쿵푸팬더착한직구</a>
															<div class="npay drct_ico _hover_icon">
																<img src="./search_files/ico_npay_small.png" width="32"
																	height="13" alt="바코드페이"><a
																	href="http://pay.naver.com/about?frm=sec"
																	target="_blank" class="api_ly_npay"><span
																	class="npay_bx"><span class="npay_dsc">바코드
																			아이디 하나로 간편구매</span><span class="npay_etc"><strong>Naver
																				Pay</strong> 서비스 보기<span class="sppay npay_go"></span></span></span><span
																	class="sppay npay_arr"></span></a>
															</div>
														</div>
														<div class="dsc compare">
															리뷰<em class="txt">9개</em>
														</div>
													</div>
												</div>
											</div></li>
										<li class="bx"><div class="bx_area">
												<div class="thumb_area">
													<a
														href="http://shopping.naver.com/bridge/searchGate.nhn?cat_id=50002953&amp;nv_mid=7501259620&amp;query=%EB%B0%94%EC%BD%94%EB%93%9C&amp;frm=NVSCPRO&amp;h=ac64663b64bf7b12d0c9259fcf6ab5551f6ce35d&amp;t=JB0CXZ3W"
														class="thumb"
														onclick="return goOtherCR(this,&#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=2&amp;i=00000009_0001bf1c2364&amp;a=shp_gui*a.itemimg&#39;);"
														target="_blank"><img
														src="./search_files/7501259620.20140221123207.jpg"
														onerror="on_noimage_shop(this);" width="133" height="133"
														alt="제벡스 Z-3220 블랙 USB"><span class="mask"></span></a>
												</div>
												<div class="detail_area">
													<div class="detail">
														<div class="tit">
															<a
																href="http://shopping.naver.com/bridge/searchGate.nhn?cat_id=50002953&amp;nv_mid=7501259620&amp;query=%EB%B0%94%EC%BD%94%EB%93%9C&amp;frm=NVSCPRO&amp;h=ac64663b64bf7b12d0c9259fcf6ab5551f6ce35d&amp;t=JB0CXZ3W"
																title="제벡스 Z-3220 블랙 USB"
																onclick="return goOtherCR(this,&#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=2&amp;i=00000009_0001bf1c2364&amp;a=shp_gui*a.itemtit&#39;);"
																target="_blank">제벡스 Z-3220 블랙 USB</a>
														</div>
														<div class="dsc price">
															<em class="price_num" title="32,310원">32,310원</em> <span
																class="lowest">최저</span>
														</div>
														<div class="dsc compare">
															판매처<em class="txt">167개</em>
														</div>
														<div class="dsc compare">
															리뷰<em class="txt">387개</em>
														</div>
													</div>
												</div>
											</div></li>
										<li class="bx"><div class="bx_area">
												<div class="thumb_area">
													<a
														href="http://shopping.naver.com/bridge/searchGate.nhn?cat_id=50002953&amp;nv_mid=4027159064&amp;query=%EB%B0%94%EC%BD%94%EB%93%9C&amp;frm=NVSCPRO&amp;h=ac64663b64bf7b12d0c9259fcf6ab5551f6ce35d&amp;t=JB0CXZ3W"
														class="thumb"
														onclick="return goOtherCR(this,&#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=3&amp;i=00000009_0000f0099218&amp;a=shp_gui*a.itemimg&#39;);"
														target="_blank"><img
														src="./search_files/4027159064.20120211201034.jpg"
														onerror="on_noimage_shop(this);" width="133" height="133"
														alt="Symbol LS-2208"><span class="mask"></span></a>
												</div>
												<div class="detail_area">
													<div class="detail">
														<div class="tit">
															<a
																href="http://shopping.naver.com/bridge/searchGate.nhn?cat_id=50002953&amp;nv_mid=4027159064&amp;query=%EB%B0%94%EC%BD%94%EB%93%9C&amp;frm=NVSCPRO&amp;h=ac64663b64bf7b12d0c9259fcf6ab5551f6ce35d&amp;t=JB0CXZ3W"
																title="Symbol LS-2208"
																onclick="return goOtherCR(this,&#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=3&amp;i=00000009_0000f0099218&amp;a=shp_gui*a.itemtit&#39;);"
																target="_blank">Symbol LS-2208</a>
														</div>
														<div class="dsc price">
															<em class="price_num" title="72,600원">72,600원</em> <span
																class="lowest">최저</span>
														</div>
														<div class="dsc compare">
															판매처<em class="txt">203개</em>
														</div>
														<div class="dsc compare">
															리뷰<em class="txt">465개</em>
														</div>
													</div>
												</div>
											</div></li>
										<li class="bx"><div class="bx_area">
												<div class="thumb_area">
													<a
														href="http://shopping.naver.com/bridge/searchGate.nhn?cat_id=50002953&amp;nv_mid=6597626974&amp;query=%EB%B0%94%EC%BD%94%EB%93%9C&amp;frm=NVSCPRO&amp;h=ac64663b64bf7b12d0c9259fcf6ab5551f6ce35d&amp;t=JB0CXZ3W"
														class="thumb"
														onclick="return goOtherCR(this,&#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=4&amp;i=00000009_0001893fcc5e&amp;a=shp_gui*a.itemimg&#39;);"
														target="_blank"><img
														src="./search_files/6597626974.20120921123852.jpg"
														onerror="on_noimage_shop(this);" width="133" height="133"
														alt="케이씨텍 DS-210"><span class="mask"></span></a>
												</div>
												<div class="detail_area">
													<div class="detail">
														<div class="tit">
															<a
																href="http://shopping.naver.com/bridge/searchGate.nhn?cat_id=50002953&amp;nv_mid=6597626974&amp;query=%EB%B0%94%EC%BD%94%EB%93%9C&amp;frm=NVSCPRO&amp;h=ac64663b64bf7b12d0c9259fcf6ab5551f6ce35d&amp;t=JB0CXZ3W"
																title="케이씨텍 DS-210"
																onclick="return goOtherCR(this,&#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=4&amp;i=00000009_0001893fcc5e&amp;a=shp_gui*a.itemtit&#39;);"
																target="_blank">케이씨텍 DS-210</a>
														</div>
														<div class="dsc price">
															<em class="price_num" title="19,910원">19,910원</em> <span
																class="lowest">최저</span>
														</div>
														<div class="dsc compare">
															판매처<em class="txt">114개</em>
														</div>
														<div class="dsc compare">
															리뷰<em class="txt">302개</em>
														</div>
													</div>
												</div>
											</div></li>
										<li class="bx"><div class="bx_area">
												<div class="thumb_area">
													<a
														href="http://shopping.naver.com/bridge/searchGate.nhn?cat_id=50002953&amp;nv_mid=6597608716&amp;query=%EB%B0%94%EC%BD%94%EB%93%9C&amp;frm=NVSCPRO&amp;h=ac64663b64bf7b12d0c9259fcf6ab5551f6ce35d&amp;t=JB0CXZ3W"
														class="thumb"
														onclick="return goOtherCR(this,&#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=5&amp;i=00000009_0001893f850c&amp;a=shp_gui*a.itemimg&#39;);"
														target="_blank"><img
														src="./search_files/6597608716.20120921123020.jpg"
														onerror="on_noimage_shop(this);" width="133" height="133"
														alt="데이타로직 QW2100"><span class="mask"></span></a>
												</div>
												<div class="detail_area">
													<div class="detail">
														<div class="tit">
															<a
																href="http://shopping.naver.com/bridge/searchGate.nhn?cat_id=50002953&amp;nv_mid=6597608716&amp;query=%EB%B0%94%EC%BD%94%EB%93%9C&amp;frm=NVSCPRO&amp;h=ac64663b64bf7b12d0c9259fcf6ab5551f6ce35d&amp;t=JB0CXZ3W"
																title="데이타로직 QW2100"
																onclick="return goOtherCR(this,&#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=5&amp;i=00000009_0001893f850c&amp;a=shp_gui*a.itemtit&#39;);"
																target="_blank">데이타로직 QW2100</a>
														</div>
														<div class="dsc price">
															<em class="price_num" title="68,900원">68,900원</em> <span
																class="lowest">최저</span>
														</div>
														<div class="dsc compare">
															판매처<em class="txt">146개</em>
														</div>
														<div class="dsc compare">
															리뷰<em class="txt">45개</em>
														</div>
													</div>
												</div>
											</div></li>
										<li class="bx"><div class="bx_area">
												<div class="thumb_area">
													<a
														href="http://shopping.naver.com/bridge/searchGate.nhn?cat_id=50002953&amp;nv_mid=4027406398&amp;query=%EB%B0%94%EC%BD%94%EB%93%9C&amp;frm=NVSCPRO&amp;h=ac64663b64bf7b12d0c9259fcf6ab5551f6ce35d&amp;t=JB0CXZ3W"
														class="thumb"
														onclick="return goOtherCR(this,&#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=6&amp;i=00000009_0000f00d583e&amp;a=shp_gui*a.itemimg&#39;);"
														target="_blank"><img
														src="./search_files/4027406398.20150504173426.jpg"
														onerror="on_noimage_shop(this);" width="133" height="133"
														alt="CL-1000"><span class="mask"></span></a>
												</div>
												<div class="detail_area">
													<div class="detail">
														<div class="tit">
															<a
																href="http://shopping.naver.com/bridge/searchGate.nhn?cat_id=50002953&amp;nv_mid=4027406398&amp;query=%EB%B0%94%EC%BD%94%EB%93%9C&amp;frm=NVSCPRO&amp;h=ac64663b64bf7b12d0c9259fcf6ab5551f6ce35d&amp;t=JB0CXZ3W"
																title="CL-1000"
																onclick="return goOtherCR(this,&#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=6&amp;i=00000009_0000f00d583e&amp;a=shp_gui*a.itemtit&#39;);"
																target="_blank">CL-1000</a>
														</div>
														<div class="dsc price">
															<em class="price_num" title="37,400원">37,400원</em> <span
																class="lowest">최저</span>
														</div>
														<div class="dsc compare">
															판매처<em class="txt">79개</em>
														</div>
														<div class="dsc compare">
															리뷰<em class="txt">266개</em>
														</div>
													</div>
												</div>
											</div></li>
									</ul>
								</div>
							</div>
							<div class="_page_group" style="display: none;">
								<div class="group_guide _page" style="display: none;"
									data-more-link="http://shopping.naver.com/search/hotdeal.nhn?query=%EB%B0%94%EC%BD%94%EB%93%9C&amp;frm=NVSCHOT&amp;fo=true"
									data-clicklog-id="shp_gui*h" data-start="7" data-index="1">
									<ul class="lst_guide">
										<li class="bx"><div class="bx_area type_hotdeal">
												<div class="thumb_area">
													<a
														href="http://shopping.naver.com/bridge/searchGate.nhn?cat_id=50002953&amp;nv_mid=8634071587&amp;frm=NVSCHOT&amp;query=%EB%B0%94%EC%BD%94%EB%93%9C&amp;prodType=hotdeal&amp;h=f635f038341d041728c20100f71ebcc859767782&amp;t=JB0CXZ3X"
														class="thumb"
														onclick="return goOtherCR(this,&#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=7&amp;i=88152d41_0000010a2f23&amp;a=shp_gui*h.outimg&#39;);"
														target="_blank"><img
														src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
														data-source="https://phinf.pstatic.net/shopping//20170918_7/c1797bab-e460-4df2-bd6b-427840fd3ad6.jpg?type=f133"
														class="_load_image" onerror="on_noimage_shop(this);"
														width="133" height="133" alt="이미지준비중"><span
														class="mask"></span><span class="spshop ico_hotdeal"><em>7</em>%</span><span
														class="blind">할인</span></a>
												</div>
												<div class="detail_area">
													<div class="detail">
														<div class="tit">
															<a
																href="http://shopping.naver.com/bridge/searchGate.nhn?cat_id=50002953&amp;nv_mid=8634071587&amp;frm=NVSCHOT&amp;query=%EB%B0%94%EC%BD%94%EB%93%9C&amp;prodType=hotdeal&amp;h=f635f038341d041728c20100f71ebcc859767782&amp;t=JB0CXZ3X"
																title="ZEBEX CCD 바코드스캐너 Z-3220 블랙 핸드스캐너 "
																onclick="return goOtherCR(this,&#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=7&amp;i=88152d41_0000010a2f23&amp;a=shp_gui*h.outtit&#39;);"
																target="_blank">ZEBEX CCD <b class="hl">바코드</b>스캐너
																Z-3220 블...
															</a>
														</div>
														<div class="dsc price">33,480원</div>
														<div class="dsc mall">
															<a
																href="http://www.interpark.com/gate/ippgw.jsp?biz_cd=P00385&amp;url=http://www.interpark.com"
																class="name" title="인터파크 쎈딜"
																onclick="return goOtherCR(this,&#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=7&amp;i=88152d41_0000010a2f23&amp;a=shp_gui*h.outmall&#39;);"
																target="_blank">인터파크 쎈딜</a>
															<div class="npay drct_ico _hover_icon">
																<img src="./search_files/ico_npay_small.png" width="32"
																	height="13" alt="바코드페이"><a
																	href="http://pay.naver.com/about?frm=sec"
																	target="_blank" class="api_ly_npay"><span
																	class="npay_bx"><span class="npay_dsc">바코드
																			아이디 하나로 간편구매</span><span class="npay_etc"><strong>Naver
																				Pay</strong> 서비스 보기<span class="sppay npay_go"></span></span></span><span
																	class="sppay npay_arr"></span></a>
															</div>
														</div>
														<div class="dsc compare">
															구매<em class="txt">61개</em>
														</div>
													</div>
												</div>
											</div></li>
										<li class="bx"><div class="bx_area type_hotdeal">
												<div class="thumb_area">
													<a
														href="http://shopping.naver.com/bridge/searchGate.nhn?cat_id=50002953&amp;nv_mid=12017395777&amp;frm=NVSCHOT&amp;query=%EB%B0%94%EC%BD%94%EB%93%9C&amp;prodType=hotdeal&amp;h=f635f038341d041728c20100f71ebcc859767782&amp;t=JB0CXZ3X"
														class="thumb"
														onclick="return goOtherCR(this,&#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=8&amp;i=88152d41_0000010a30df&amp;a=shp_gui*h.outimg&#39;);"
														target="_blank"><img
														src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
														data-source="https://phinf.pstatic.net/shopping//20170918_0/6c38cdb7-88b2-4757-8f37-8afd034843a5.jpg?type=f133"
														class="_load_image" onerror="on_noimage_shop(this);"
														width="133" height="133" alt="이미지준비중"><span
														class="mask"></span></a>
												</div>
												<div class="detail_area">
													<div class="detail">
														<div class="tit">
															<a
																href="http://shopping.naver.com/bridge/searchGate.nhn?cat_id=50002953&amp;nv_mid=12017395777&amp;frm=NVSCHOT&amp;query=%EB%B0%94%EC%BD%94%EB%93%9C&amp;prodType=hotdeal&amp;h=f635f038341d041728c20100f71ebcc859767782&amp;t=JB0CXZ3X"
																title="모토로라 심볼 DS-4208 2D 바코드스캐너 QR코드인식"
																onclick="return goOtherCR(this,&#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=8&amp;i=88152d41_0000010a30df&amp;a=shp_gui*h.outtit&#39;);"
																target="_blank">모토로라 심볼 DS-4208 2D <b class="hl">바코드</b>스...
															</a>
														</div>
														<div class="dsc price">138,000원</div>
														<div class="dsc mall">
															<a
																href="http://www.interpark.com/gate/ippgw.jsp?biz_cd=P00385&amp;url=http://www.interpark.com"
																class="name" title="인터파크 쎈딜"
																onclick="return goOtherCR(this,&#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=8&amp;i=88152d41_0000010a30df&amp;a=shp_gui*h.outmall&#39;);"
																target="_blank">인터파크 쎈딜</a>
															<div class="npay drct_ico _hover_icon">
																<img src="./search_files/ico_npay_small.png" width="32"
																	height="13" alt="바코드페이"><a
																	href="http://pay.naver.com/about?frm=sec"
																	target="_blank" class="api_ly_npay"><span
																	class="npay_bx"><span class="npay_dsc">바코드
																			아이디 하나로 간편구매</span><span class="npay_etc"><strong>Naver
																				Pay</strong> 서비스 보기<span class="sppay npay_go"></span></span></span><span
																	class="sppay npay_arr"></span></a>
															</div>
														</div>
														<div class="dsc compare">
															구매<em class="txt">70개</em>
														</div>
													</div>
												</div>
											</div></li>
										<li class="bx"><div class="bx_area type_hotdeal">
												<div class="thumb_area">
													<a
														href="http://shopping.naver.com/bridge/searchGate.nhn?cat_id=50002953&amp;nv_mid=9343230881&amp;frm=NVSCHOT&amp;query=%EB%B0%94%EC%BD%94%EB%93%9C&amp;prodType=hotdeal&amp;h=f635f038341d041728c20100f71ebcc859767782&amp;t=JB0CXZ3X"
														class="thumb"
														onclick="return goOtherCR(this,&#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=9&amp;i=88152d41_00000113f264&amp;a=shp_gui*h.outimg&#39;);"
														target="_blank"><img
														src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
														data-source="https://phinf.pstatic.net/shopping//20171113_1/fe008f1e-4576-472c-94d6-409edf3a24bf.jpg?type=f133"
														class="_load_image" onerror="on_noimage_shop(this);"
														width="133" height="133" alt="이미지준비중"><span
														class="mask"></span></a>
												</div>
												<div class="detail_area">
													<div class="detail">
														<div class="tit">
															<a
																href="http://shopping.naver.com/bridge/searchGate.nhn?cat_id=50002953&amp;nv_mid=9343230881&amp;frm=NVSCHOT&amp;query=%EB%B0%94%EC%BD%94%EB%93%9C&amp;prodType=hotdeal&amp;h=f635f038341d041728c20100f71ebcc859767782&amp;t=JB0CXZ3X"
																title="허니웰 IT-3800 3800g 1D CCD 바코드스캐너 리더기"
																onclick="return goOtherCR(this,&#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=9&amp;i=88152d41_00000113f264&amp;a=shp_gui*h.outtit&#39;);"
																target="_blank">허니웰 IT-3800 3800g 1D CCD 바코...</a>
														</div>
														<div class="dsc price">160,000원</div>
														<div class="dsc mall">
															<a
																href="http://www.interpark.com/gate/ippgw.jsp?biz_cd=P00385&amp;url=http://www.interpark.com"
																class="name" title="인터파크 쎈딜"
																onclick="return goOtherCR(this,&#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=9&amp;i=88152d41_00000113f264&amp;a=shp_gui*h.outmall&#39;);"
																target="_blank">인터파크 쎈딜</a>
															<div class="npay drct_ico _hover_icon">
																<img src="./search_files/ico_npay_small.png" width="32"
																	height="13" alt="바코드페이"><a
																	href="http://pay.naver.com/about?frm=sec"
																	target="_blank" class="api_ly_npay"><span
																	class="npay_bx"><span class="npay_dsc">바코드
																			아이디 하나로 간편구매</span><span class="npay_etc"><strong>Naver
																				Pay</strong> 서비스 보기<span class="sppay npay_go"></span></span></span><span
																	class="sppay npay_arr"></span></a>
															</div>
														</div>
														<div class="dsc compare">
															구매<em class="txt">5개</em>
														</div>
													</div>
												</div>
											</div></li>
										<li class="bx"><div class="bx_area type_hotdeal">
												<div class="thumb_area">
													<a
														href="http://shopping.naver.com/bridge/searchGate.nhn?cat_id=50002953&amp;nv_mid=12880045399&amp;frm=NVSCHOT&amp;query=%EB%B0%94%EC%BD%94%EB%93%9C&amp;prodType=hotdeal&amp;h=f635f038341d041728c20100f71ebcc859767782&amp;t=JB0CXZ3X"
														class="thumb"
														onclick="return goOtherCR(this,&#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=10&amp;i=88152d41_000001181d48&amp;a=shp_gui*h.outimg&#39;);"
														target="_blank"><img
														src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
														data-source="https://phinf.pstatic.net/shopping//20171204_5/9fc445a6-1b9a-4fd6-92d4-4556f6e32ad7.jpg?type=f133"
														class="_load_image" onerror="on_noimage_shop(this);"
														width="133" height="133" alt="이미지준비중"><span
														class="mask"></span></a>
												</div>
												<div class="detail_area">
													<div class="detail">
														<div class="tit">
															<a
																href="http://shopping.naver.com/bridge/searchGate.nhn?cat_id=50002953&amp;nv_mid=12880045399&amp;frm=NVSCHOT&amp;query=%EB%B0%94%EC%BD%94%EB%93%9C&amp;prodType=hotdeal&amp;h=f635f038341d041728c20100f71ebcc859767782&amp;t=JB0CXZ3X"
																title="제브라 LS1203 바코드스캐너 LS-1203"
																onclick="return goOtherCR(this,&#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=10&amp;i=88152d41_000001181d48&amp;a=shp_gui*h.outtit&#39;);"
																target="_blank">제브라 LS1203 <b class="hl">바코드</b>스캐너
																LS-12...
															</a>
														</div>
														<div class="dsc price">64,900원</div>
														<div class="dsc mall">
															<a
																href="http://www.wemakeprice.com/widget/aff_bridge_public/naver_ep/0/Y/PRICE_af/0/02413D/wmp_logo"
																class="name type_longdsc" title="위메프"
																onclick="return goOtherCR(this,&#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=10&amp;i=88152d41_000001181d48&amp;a=shp_gui*h.outmall&#39;);"
																target="_blank">위메프</a>
														</div>
														<div class="dsc compare">
															구매<em class="txt">0개</em>
														</div>
													</div>
												</div>
											</div></li>
										<li class="bx"><div class="bx_area type_hotdeal">
												<div class="thumb_area">
													<a
														href="http://shopping.naver.com/bridge/searchGate.nhn?cat_id=50002953&amp;nv_mid=12899373529&amp;frm=NVSCHOT&amp;query=%EB%B0%94%EC%BD%94%EB%93%9C&amp;prodType=hotdeal&amp;h=1c648f6ec8c5b32269e43894778d715eebe18f20&amp;t=JB0CXZ3Y"
														class="thumb"
														onclick="return goOtherCR(this,&#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=11&amp;i=88152d41_00000118c35f&amp;a=shp_gui*h.outimg&#39;);"
														target="_blank"><img
														src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
														data-source="https://phinf.pstatic.net/shopping//20171206_14/a84a0a8e-6fbe-44b6-9037-ff40fe8d130e.jpg?type=f133"
														class="_load_image" onerror="on_noimage_shop(this);"
														width="133" height="133" alt="이미지준비중"><span
														class="mask"></span></a>
												</div>
												<div class="detail_area">
													<div class="detail">
														<div class="tit">
															<a
																href="http://shopping.naver.com/bridge/searchGate.nhn?cat_id=50002953&amp;nv_mid=12899373529&amp;frm=NVSCHOT&amp;query=%EB%B0%94%EC%BD%94%EB%93%9C&amp;prodType=hotdeal&amp;h=1c648f6ec8c5b32269e43894778d715eebe18f20&amp;t=JB0CXZ3Y"
																title="TechScan TSK900 CCD 바코드스캐너"
																onclick="return goOtherCR(this,&#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=11&amp;i=88152d41_00000118c35f&amp;a=shp_gui*h.outtit&#39;);"
																target="_blank">TechScan TSK900 CCD <b class="hl">바코드</b>스캐너
															</a>
														</div>
														<div class="dsc price">45,900원</div>
														<div class="dsc mall">
															<a
																href="http://www.wemakeprice.com/widget/aff_bridge_public/naver_ep/0/Y/PRICE_af/0/02413D/wmp_logo"
																class="name type_longdsc" title="위메프"
																onclick="return goOtherCR(this,&#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=11&amp;i=88152d41_00000118c35f&amp;a=shp_gui*h.outmall&#39;);"
																target="_blank">위메프</a>
														</div>
														<div class="dsc compare">
															구매<em class="txt">0개</em>
														</div>
													</div>
												</div>
											</div></li>
										<li class="bx"><div class="bx_area type_hotdeal">
												<div class="thumb_area">
													<a
														href="http://shopping.naver.com/bridge/searchGate.nhn?cat_id=50002953&amp;nv_mid=11440408227&amp;frm=NVSCHOT&amp;query=%EB%B0%94%EC%BD%94%EB%93%9C&amp;prodType=hotdeal&amp;h=1c648f6ec8c5b32269e43894778d715eebe18f20&amp;t=JB0CXZ3Y"
														class="thumb"
														onclick="return goOtherCR(this,&#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=12&amp;i=88152d41_000000f3e76f&amp;a=shp_gui*h.outimg&#39;);"
														target="_blank"><img
														src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
														data-source="https://phinf.pstatic.net/shopping//20170807_22/9ce69893-3fa5-4ff4-9cd0-ea5483af3f1f.jpg?type=f133"
														class="_load_image" onerror="on_noimage_shop(this);"
														width="133" height="133" alt="이미지준비중"><span
														class="mask"></span></a>
												</div>
												<div class="detail_area">
													<div class="detail">
														<div class="tit">
															<a
																href="http://shopping.naver.com/bridge/searchGate.nhn?cat_id=50002953&amp;nv_mid=11440408227&amp;frm=NVSCHOT&amp;query=%EB%B0%94%EC%BD%94%EB%93%9C&amp;prodType=hotdeal&amp;h=1c648f6ec8c5b32269e43894778d715eebe18f20&amp;t=JB0CXZ3Y"
																title="바코드스캐너 컬러거치대 벽면거치가능 높은지지대"
																onclick="return goOtherCR(this,&#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=12&amp;i=88152d41_000000f3e76f&amp;a=shp_gui*h.outtit&#39;);"
																target="_blank"><b class="hl">바코드</b>스캐너 컬러거치대
																벽면거치...</a>
														</div>
														<div class="dsc price">11,000원</div>
														<div class="dsc mall">
															<a
																href="http://www.interpark.com/gate/ippgw.jsp?biz_cd=P00385&amp;url=http://www.interpark.com"
																class="name" title="인터파크 쎈딜"
																onclick="return goOtherCR(this,&#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=12&amp;i=88152d41_000000f3e76f&amp;a=shp_gui*h.outmall&#39;);"
																target="_blank">인터파크 쎈딜</a>
															<div class="npay drct_ico _hover_icon">
																<img src="./search_files/ico_npay_small.png" width="32"
																	height="13" alt="바코드페이"><a
																	href="http://pay.naver.com/about?frm=sec"
																	target="_blank" class="api_ly_npay"><span
																	class="npay_bx"><span class="npay_dsc">바코드
																			아이디 하나로 간편구매</span><span class="npay_etc"><strong>Naver
																				Pay</strong> 서비스 보기<span class="sppay npay_go"></span></span></span><span
																	class="sppay npay_arr"></span></a>
															</div>
														</div>
														<div class="dsc compare">
															구매<em class="txt">74개</em>
														</div>
													</div>
												</div>
											</div></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="section_more">
							<a
								href="http://shopping.naver.com/search/all.nhn?query=%EB%B0%94%EC%BD%94%EB%93%9C&amp;frm=NVSCPRO"
								onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=&amp;i=&amp;a=&#39;+nhn.search.shopping.GuideView.getId()+&#39;.more&#39;);"
								class="go_site _shopping_more" target="_blank">쇼핑 더보기</a>
						</div>
					</div>
					<div class="movie_info section">
						<div class="section_head">
							<h2>바코드 영화</h2>
							<div class="dsc_ncaution2">
								<a nocr=""
									onclick="if(adInfoShowMovie(this)) goOtherTCR(this, &#39;a=&#39;+ nco_area_p68 +&#39;.imark&amp;r=1&amp;i=1800009D_000000000000&amp;u=&#39;+urlencode(this.href));"
									href="javascript:void(0);" class="ico_ad_dsc"
									title="이 정보가 표시된 이유">이 정보가 표시된 이유</a>
								<div class="ly_ad_dsc"
									onclick="adInfoHideMovie(); tCR(nco_area_p68 +&#39;.guideclose&#39;, 1 , &#39;1800009D_000000000000&#39;);"
									style="margin-right: -262px; display: none;">
									<span class="ico_arr">&nbsp;</span>
									<p>바코드가 운영하는 영화 서비스입니다.</p>
									<button type="button" class="bt_ad_clse" title="안내 레이어 닫기">안내
										레이어 닫기</button>
								</div>
							</div>
							<div class="dsc_ninfo">
								다른 사이트를 보시려면 <a nocr=""
									onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.pagmore&amp;i=&#39;+&#39;1800009D_000000000000&#39;);"
									href="http://web.search.naver.com/search.naver?where=webkr&amp;opt_src=site&amp;query=%EC%98%81%ED%99%94%EC%98%88%EB%A7%A4%20-%EB%84%A4%EC%9D%B4%EB%B2%84&amp;sm=tab_etc">여기</a>를
								누르세요.
							</div>
						</div>
						<div class="info_main">
							<div class="thumb">
								<a nocr=""
									onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.poster&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
									href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=155665"
									class="sp_thmb" target="_blank"> <img
									src="./search_files/common" width="120" height="171" alt="강철비"
									onerror="$Element(this).parent().parent().hide()"> <span
									class="thmb_v"></span>
								</a>
							</div>
							<h3>
								<a nocr=""
									onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.title&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
									href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=155665"
									class="sh_movie_link" target="_blank"><strong>강철비</strong>
									(Steel Rain, 2017)</a> <span class="btn_state open"></span>
							</h3>
							<dl class="r_grade">
								<dt>관람객</dt>
								<dd>
									<p>
										<span style="width: 88%;"></span>
									</p>
									<em>8.80</em><em class="cont_p">(2,678)</em>
								</dd>
								<dd class="bar"></dd>
								<dt>기자·평론가</dt>
								<dd>
									<p>
										<span style="width: 71.8%;"></span>
									</p>
									<em>7.18</em><em class="cont_p">(11)</em>
								</dd>
								<dt class="blind"></dt>
								<dd>
									<a nocr=""
										onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.score&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
										href="http://movie.naver.com/movie/point/af/list.nhn?st=mcode&amp;sword=155665"
										target="_blank" class="btn_rating">평점주기</a>
								</dd>
							</dl>
							<dl class="desc_detail">
								<dt class="blind">개요</dt>
								<dd class="frst">
									<span id="dss_h_movie_info_genre_content">액션, 드라마</span><span
										class="bar"></span><span
										id="dss_h_movie_info_opendate_content">2017.12.14 개봉</span><span
										class="bar"></span><span id="dss_h_movie_info_runtime_content">139분</span><span
										class="bar"></span><span id="dss_h_movie_info_nation_content">한국</span><span
										class="bar"></span><span id="dss_h_movie_info_grade_content">15세
										관람가</span>
								</dd>
								<dt id="dss_h_movie_info_director_title">감독</dt>
								<dd>
									<span id="dss_h_movie_info_director_content"> <a nocr=""
										onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.tname&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
										href="http://movie.naver.com/movie/bi/pi/basic.nhn?code=318605"
										title="양우석" target="_blank">양우석</a>
									</span>
								</dd>
								<dt id="dss_h_movie_info_story_content">내용</dt>
								<dd>
									쿠데타 발생 직후 최정예요원 '엄철우'(정우성)는 치명상을 ... <a nocr=""
										onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.story&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
										href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=155665#story"
										class="cont_more" target="_blank"><span class="blind">줄거리</span>더보기</a>
								</dd>
								<dt>부가정보</dt>
								<dd>
									<a nocr=""
										onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.asite&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
										href="http://steelrain.co.kr/" target="_blank">공식사이트</a>
								</dd>
								<dd class="btn">
									<span class="u_likeit_list_module"> <a nocr=""
										href="javascript:;"
										class="u_likeit_list_btn u_type_bright u_none_txt off"><span
											class="u_ico"></span> <em class="u_cnt _cnt">3,089</em></a>
									</span>
								</dd>
							</dl>
						</div>
						<script type="text/javascript"> var _elAdIndLayerMovie = null; var _elAdIndLayerTimeMovie; var _elDscNcautionMovie = null; function adInfoShowMovie(el) { if (_elAdIndLayerMovie) { adInfoHideMovie(); return false; } else { if(!_elDscNcautionMovie) { _elDscNcautionMovie = $Element(el).parent(); } _elDscNcautionMovie._element.style.zIndex=121; _elAdIndLayerMovie = $Element(el).next(); _elAdIndLayerMovie.show(); _elAdIndLayerTimeMovie = (new Date()).getTime(); return true;} } function adInfoHideMovie() { if (_elAdIndLayerMovie) { if(_elDscNcautionMovie) { _elDscNcautionMovie._element.style.zIndex=0; } _elAdIndLayerMovie.hide(); _elAdIndLayerMovie = null; } }; function adInfoHideClickEventHandlerMovie(e) { if( _elAdIndLayerTimeMovie+200 < (new Date()).getTime()) adInfoHideMovie(); }; document.body[window.addEventListener ? 'addEventListener' : 'attachEvent']( window.addEventListener ? "click" : "onclick", adInfoHideClickEventHandlerMovie, false); </script>
						<div class="con_mvtab">
							<ul class="tab_info" style="display: block">
								<li><a nocr=""
									onclick="return goOtherTCR(this, &#39;r=1&amp;a=&#39;+nco_area_4348174+&#39;.casttab&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
									id="tab_info_actor"
									href="javascript:movieInfoTabChange(&#39;actor&#39;);" class="">출연</a></li>
								<li><a nocr=""
									onclick="return goOtherTCR(this, &#39;r=1&amp;a=&#39;+nco_area_4348174+&#39;.cinematab&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
									id="tab_info_theater"
									href="javascript:movieInfoTabChange(&#39;theater&#39;);"
									class="">상영정보</a></li>
								<li><a nocr=""
									onclick="return goOtherTCR(this, &#39;r=1&amp;a=&#39;+nco_area_4348174+&#39;.reviewtab&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
									id="tab_info_review"
									href="javascript:movieInfoTabChange(&#39;review&#39;)" class="">리뷰</a></li>
								<li><a nocr=""
									onclick="return goOtherTCR(this, &#39;r=1&amp;a=&#39;+nco_area_4348174+&#39;.phototab&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
									id="tab_info_multimedia"
									href="javascript:movieInfoTabChange(&#39;multimedia&#39;)"
									class="on">포토/동영상</a></li>
							</ul>
							<h4 class="blind">포토/동영상</h4>
							<div id="_tab_actor_info"
								class="etcinfo_movie dss_h_movie_info_actor_content"
								style="display: none;">
								<div class="character">
									<ul>
										<li>
											<div class="thumb">
												<a nocr=""
													onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.cast&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
													href="http://movie.naver.com/movie/bi/pi/basic.nhn?code=2523"
													target="_blank"> <img src="./search_files/common(1)"
													width="92" height="116" alt=""
													onerror="$Element(this).parent().addClass(&#39;noimage&#39;);$Element(this).leave()">
													<span></span>
												</a>
											</div>
											<dl>
												<dt>
													<a nocr=""
														onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.castname&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
														href="http://movie.naver.com/movie/bi/pi/basic.nhn?code=2523"
														title="정우성" target="_blank">정우성</a>
												</dt>
												<dd>엄철우 역</dd>
											</dl>
										</li>
										<li>
											<div class="thumb">
												<a nocr=""
													onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.cast&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
													href="http://movie.naver.com/movie/bi/pi/basic.nhn?code=48376"
													target="_blank"> <img src="./search_files/common(2)"
													width="92" height="116" alt=""
													onerror="$Element(this).parent().addClass(&#39;noimage&#39;);$Element(this).leave()">
													<span></span>
												</a>
											</div>
											<dl>
												<dt>
													<a nocr=""
														onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.castname&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
														href="http://movie.naver.com/movie/bi/pi/basic.nhn?code=48376"
														title="곽도원" target="_blank">곽도원</a>
												</dt>
												<dd>곽철우 역</dd>
											</dl>
										</li>
										<li>
											<div class="thumb">
												<a nocr=""
													onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.cast&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
													href="http://movie.naver.com/movie/bi/pi/basic.nhn?code=1706"
													target="_blank"> <img src="./search_files/common(3)"
													width="92" height="116" alt=""
													onerror="$Element(this).parent().addClass(&#39;noimage&#39;);$Element(this).leave()">
													<span></span>
												</a>
											</div>
											<dl>
												<dt>
													<a nocr=""
														onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.castname&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
														href="http://movie.naver.com/movie/bi/pi/basic.nhn?code=1706"
														title="김갑수" target="_blank">김갑수</a>
												</dt>
												<dd>리태한 역</dd>
											</dl>
										</li>
										<li>
											<div class="thumb">
												<a nocr=""
													onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.cast&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
													href="http://movie.naver.com/movie/bi/pi/basic.nhn?code=1747"
													target="_blank"> <img src="./search_files/common(4)"
													width="92" height="116" alt=""
													onerror="$Element(this).parent().addClass(&#39;noimage&#39;);$Element(this).leave()">
													<span></span>
												</a>
											</div>
											<dl>
												<dt>
													<a nocr=""
														onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.castname&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
														href="http://movie.naver.com/movie/bi/pi/basic.nhn?code=1747"
														title="김의성" target="_blank">김의성</a>
												</dt>
												<dd>이의성 역</dd>
											</dl>
										</li>
										<li>
											<div class="thumb">
												<a nocr=""
													onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.cast&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
													href="http://movie.naver.com/movie/bi/pi/basic.nhn?code=2518"
													target="_blank"> <img src="./search_files/common(5)"
													width="92" height="116" alt=""
													onerror="$Element(this).parent().addClass(&#39;noimage&#39;);$Element(this).leave()">
													<span></span>
												</a>
											</div>
											<dl>
												<dt>
													<a nocr=""
														onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.castname&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
														href="http://movie.naver.com/movie/bi/pi/basic.nhn?code=2518"
														title="이경영" target="_blank">이경영</a>
												</dt>
												<dd>김경영 역</dd>
											</dl>
										</li>
									</ul>
								</div>
							</div>
							<div id="_tab_theater_info" class="info_cnm"
								style="display: none;">
								<div class="cnm_head _theater-option">
									<span class="opt_date">날짜 <select
										class="_theater-select_date" style="width: 108px"><option
												value="2017-12-23" selected="selected">12월23일(토)</option>
											<option value="2017-12-24">12월24일(일)</option>
											<option value="2017-12-25">12월25일(월)</option>
											<option value="2017-12-26">12월26일(화)</option>
											<option value="2017-12-27">12월27일(수)</option>
											<option value="2017-12-28">12월28일(목)</option>
											<option value="2017-12-29">12월29일(금)</option></select>
									</span> <span class="opt_place" style="display: inline;">지역 <select
										class="_theater-select_region" style="width: 60px"><option
												value="1">서울</option>
											<option value="2">인천</option>
											<option value="3">경기</option>
											<option value="4">대전</option>
											<option value="5">충청</option>
											<option value="6">강원</option>
											<option value="7">광주</option>
											<option value="8">전라</option>
											<option value="9" selected="selected">부산</option>
											<option value="10">대구</option>
											<option value="11">경상</option>
											<option value="12">제주</option></select> <select
										class="_theater-select_subregion"
										style="width: 160px; display: inline;"><option
												value="0">전체</option>
											<option value="26">금정구</option>
											<option value="28">동래구</option>
											<option value="29">부산진구</option>
											<option value="30">북구</option>
											<option value="31">사상구</option>
											<option value="33">중구</option>
											<option value="34">해운대구</option></select>
									</span>
								</div>
								<div class="_theater-schedule scroll">
									<p class="txt_error _theater-notice" style="display: none"></p>
									<table class="tbl_cnm _theater-timetable"
										style="display: table;">
										<colgroup>
											<col>
											<col style="width: 44px">
											<col style="width: 317px">
										</colgroup>
										<thead class="blind">
											<tr class="blind">
												<th scope="col">상영관</th>
												<th scope="col">분관</th>
												<th scope="col">시간</th>
											</tr>
										</thead>
										<tbody>
											<tr class="frst_row">
												<td class="cnm_name"><p>
														<span class="fl"><img
															src="./search_files/common(6)" width="36" height="19"
															alt=""></span><span><a nocr=""
															onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.cname&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
															href="file:///C:/Users/Soo/git/SearchPortal/Barcode/WebContent/search/search.html?where=nexearch&amp;sm=tab_etc&amp;ie=utf8&amp;query=%EB%A1%AF%EB%8D%B0%EC%8B%9C%EB%84%A4%EB%A7%88%20%EC%98%A4%ED%88%AC">롯데시네마
																오투</a></span>
													</p></td>
												<td class="cnm_hall"><p>1관</p></td>
												<td class="cnm_time"><p>
														<a nocr=""
															onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.ctime&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
															href="http://movie.naver.com/movie/reservation/index.nhn?rmcode=155665_0&amp;gcode=544&amp;tcode=3875&amp;date=2017-12-23&amp;time=2325"
															target="_blank">23:25</a>
													</p></td>
											</tr>
											<tr>
												<td class="cnm_name"><p>
														<span class="fl"><img
															src="./search_files/common(7)" width="36" height="19"
															alt=""></span><span><a nocr=""
															onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.cname&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
															href="file:///C:/Users/Soo/git/SearchPortal/Barcode/WebContent/search/search.html?where=nexearch&amp;sm=tab_etc&amp;ie=utf8&amp;query=%EB%A9%94%EA%B0%80%EB%B0%95%EC%8A%A4%20%EB%B6%80%EC%82%B0%EB%8C%80">메가박스
																부산대</a></span>
													</p></td>
												<td class="cnm_hall"><p>5관</p></td>
												<td class="cnm_time"><p>
														<span class="past">17:10</span><span class="past">20:05</span><a
															nocr=""
															onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.ctime&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
															href="http://movie.naver.com/movie/reservation/index.nhn?rmcode=155665_0&amp;gcode=607&amp;tcode=4213&amp;date=2017-12-23&amp;time=2255"
															target="_blank">22:55</a>
													</p></td>
											</tr>
											<tr>
												<td class="cnm_name"><p>
														<span class="fl"><img
															src="./search_files/common(7)" width="36" height="19"
															alt=""></span><span><a nocr=""
															onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.cname&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
															href="file:///C:/Users/Soo/git/SearchPortal/Barcode/WebContent/search/search.html?where=nexearch&amp;sm=tab_etc&amp;ie=utf8&amp;query=%EB%A9%94%EA%B0%80%EB%B0%95%EC%8A%A4%20%EB%B6%80%EC%82%B0%EB%8C%80">메가박스
																부산대</a></span>
													</p></td>
												<td class="cnm_hall"><p>컴포트 3관</p></td>
												<td class="cnm_time"><p>
														<span class="past">09:40</span><span class="past">12:40</span><span
															class="past">15:45</span><span class="past">18:35</span><span
															class="past">21:25</span><a nocr=""
															onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.ctime&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
															href="http://movie.naver.com/movie/reservation/index.nhn?rmcode=155665_0&amp;gcode=607&amp;tcode=4726&amp;date=2017-12-23&amp;time=2415"
															target="_blank">24:15</a>
													</p></td>
											</tr>
											<tr>
												<td class="cnm_name"><p>
														<span class="fl"><img
															src="./search_files/common(6)" width="36" height="19"
															alt=""></span><span><a nocr=""
															onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.cname&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
															href="file:///C:/Users/Soo/git/SearchPortal/Barcode/WebContent/search/search.html?where=nexearch&amp;sm=tab_etc&amp;ie=utf8&amp;query=%EB%A1%AF%EB%8D%B0%EC%8B%9C%EB%84%A4%EB%A7%88%20%EC%98%A4%ED%88%AC">롯데시네마
																오투</a></span>
													</p></td>
												<td class="cnm_hall"><p>7관</p></td>
												<td class="cnm_time"><p>
														<span class="past">08:30</span><span class="past">11:20</span><span
															class="past">14:10</span><span class="past">17:00</span><span
															class="past">19:50</span><span class="past">22:40</span>
													</p></td>
											</tr>
											<tr>
												<td class="cnm_name"><p>
														<span class="fl"><img
															src="./search_files/common(7)" width="36" height="19"
															alt=""></span><span><a nocr=""
															onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.cname&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
															href="file:///C:/Users/Soo/git/SearchPortal/Barcode/WebContent/search/search.html?where=nexearch&amp;sm=tab_etc&amp;ie=utf8&amp;query=%EB%A9%94%EA%B0%80%EB%B0%95%EC%8A%A4%20%EB%B6%80%EC%82%B0%EB%8C%80">메가박스
																부산대</a></span>
													</p></td>
												<td class="cnm_hall"><p>4관</p></td>
												<td class="cnm_time"><p>
														<span class="past">14:15</span><span class="past">19:20</span>
													</p></td>
											</tr>
											<tr>
												<td class="cnm_name"><p>
														<span class="fl"><img
															src="./search_files/common(7)" width="36" height="19"
															alt=""></span><span><a nocr=""
															onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.cname&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
															href="file:///C:/Users/Soo/git/SearchPortal/Barcode/WebContent/search/search.html?where=nexearch&amp;sm=tab_etc&amp;ie=utf8&amp;query=%EB%A9%94%EA%B0%80%EB%B0%95%EC%8A%A4%20%EB%B6%80%EC%82%B0%EB%8C%80">메가박스
																부산대</a></span>
													</p></td>
												<td class="cnm_hall"><p>7관</p></td>
												<td class="cnm_time"><p>
														<span class="past">11:00</span>
													</p></td>
											</tr>
										</tbody>
									</table>
								</div>
								<div></div>
								<div class="cnm_foot v2">
									<p>
										CGV 상영관은 해당 사이트로 직접 이동해서 예매가 가능합니다.<br>
										<span class="sec_info_txt">시간표가 변경될 수 있으니, 이용에 참고해 주시기
											바랍니다.</span><span class="l_update">최종 업데이트</span><span
											class="_theater-last_update">2017.12.23 21:18</span>
									</p>
									<span class="offer"><em>제공</em><a nocr=""
										onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.csrc&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
										href="http://movie.yes24.com/" target="_blank"><img
											src="./search_files/ico_yes24.gif" width="54" height="21"
											alt="YES24"></a></span>
								</div>
							</div>
							<div id="_tab_review_info"
								class="etcinfo_movie dss_h_movie_info_review_content"
								style="display: none;">
								<div class="view_list_div">
									<p>
										이 영화에 대한 리뷰가 <strong>361</strong>개 등록되어 있습니다. <a nocr=""
											onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.reviewb&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
											href="http://movie.naver.com/movie/bi/mi/reviewwrite.nhn?code=155665"
											class="btn_write_review" target="_blank">리뷰쓰기</a>
									</p>
									<ul class="type01">
										<li class="sh_movie_top">
											<dl>
												<dt>
													<a nocr=""
														onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.reviewlist&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
														href="http://movie.naver.com/movie/bi/mi/reviewread.nhn?nid=4582941&amp;code=155665"
														class="sh_movie_title" target="_blank">정은이도 까 줘요</a>
												</dt>
												<dd class="txt_inline">
													geva****<span class="bar"></span>189 추천<span class="bar"></span>2017.12.02
												</dd>
											</dl>
										</li>
										<li class="sh_movie_top">
											<dl>
												<dt>
													<a nocr=""
														onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.reviewlist&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
														href="http://movie.naver.com/movie/bi/mi/reviewread.nhn?nid=4585084&amp;code=155665"
														class="sh_movie_title" target="_blank">그냥 수령동지 만세 영화
														찍으시죠. ㅋㅋ</a>
												</dt>
												<dd class="txt_inline">
													ilso****<span class="bar"></span>172 추천<span class="bar"></span>2017.12.10
												</dd>
											</dl>
										</li>
										<li class="sh_movie_top">
											<dl>
												<dt>
													<a nocr=""
														onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.reviewlist&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
														href="http://movie.naver.com/movie/bi/mi/reviewread.nhn?nid=4585950&amp;code=155665"
														class="sh_movie_title" target="_blank">강철비 : 지극히 현실적인
														한반도 핵전쟁 시나리오, 단 한 순간도 ...</a>
												</dt>
												<dd class="txt_inline">
													c106****<span class="bar"></span>53 추천<span class="bar"></span>2017.12.18
												</dd>
											</dl>
										</li>
									</ul>
								</div>
							</div>
							<div id="_tab_multimedia_info" class="etcinfo_movie"
								style="display: block;">
								<div class="multimedia">
									<ul>
										<li id="dss_h_movie_info_preview_content"><a nocr=""
											onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.media&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
											href="http://movie.naver.com/movie/bi/mi/mediaView.nhn?code=155665&amp;mid=37047"
											target="_blank"> <img src="./search_files/common(8)"
												width="106" height="70" alt=""
												onerror="$Element(this).parent().addClass(&#39;noimage&#39;);$Element(this).leave()">
												<span><span class="play_mask"></span><span
													class="ico_play">예고편</span></span>
										</a></li>
										<li><a nocr=""
											onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.media&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
											href="http://movie.naver.com/movie/bi/mi/mediaView.nhn?code=155665&amp;mid=37220"
											target="_blank"> <img src="./search_files/common(9)"
												width="106" height="70" alt=""
												onerror="$Element(this).parent().addClass(&#39;noimage&#39;);$Element(this).leave()">
												<span><span class="play_mask"></span><span
													class="ico_play">인터뷰</span></span>
										</a></li>
										<li><a nocr=""
											onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.media&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
											href="http://movie.naver.com/movie/bi/mi/mediaView.nhn?code=155665&amp;mid=37140"
											target="_blank"> <img src="./search_files/common(10)"
												width="106" height="70" alt=""
												onerror="$Element(this).parent().addClass(&#39;noimage&#39;);$Element(this).leave()">
												<span><span class="play_mask"></span><span
													class="ico_play">메이킹필름</span></span>
										</a></li>
										<li><a nocr=""
											onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.img&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
											href="http://movie.naver.com/movie/bi/mi/photoView.nhn?code=155665&amp;imageNid=6568485"
											target="_blank"> <img src="./search_files/common(11)"
												width="106" height="70" alt=""
												onerror="$Element(this).parent().addClass(&#39;noimage&#39;);$Element(this).leave()">
										</a></li>
										<li><a nocr=""
											onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.img&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
											href="http://movie.naver.com/movie/bi/mi/photoView.nhn?code=155665&amp;imageNid=6586848"
											target="_blank"> <img src="./search_files/common(12)"
												width="106" height="70" alt=""
												onerror="$Element(this).parent().addClass(&#39;noimage&#39;);$Element(this).leave()">
										</a></li>
									</ul>
								</div>
							</div>
							<a nocr=""
								onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.castall&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
								id="info_more_actor"
								href="http://movie.naver.com/movie/bi/mi/detail.nhn?code=155665"
								class="info_more" target="_blank" style="display: none;"><span
								class="blind">출연정보</span>더보기</a> <a nocr=""
								onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.reviewall&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
								id="info_more_review"
								href="http://movie.naver.com/movie/bi/mi/review.nhn?code=155665#reviewTab"
								class="go_write" target="_blank" style="display: none;"><span
								class="blind">리뷰정보</span>더보기</a> <a nocr=""
								onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.mediaall&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
								id="info_more_multimedia"
								href="http://movie.naver.com/movie/bi/mi/media.nhn?code=155665"
								class="info_more" target="_blank" style="display: block;"><span
								class="blind">포토/동영상</span>더보기</a>
						</div>
						<div class="cs_applyinfo">
							<a nocr=""
								onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;a=&#39;+nco_area_4348174+&#39;.claim&amp;i=&#39;+&#39;1800009D_00000042590E&#39;);"
								href="javascript:nhn.dss.x0aBase.openUserRequestPopup();"
								class="cs_applyinfo_link">정보오류 수정요청</a>
						</div>
						<div id="movie_info_macos" class="cs_macos" style="display: none">
							<p>Mac OS에서는 영화 예매와 다운로드 구매 및 서비스 이용이 불가합니다.</p>
						</div>
					</div>
					<div class="blog section _blogBase">
						<div class="section_head">
							<h2>블로그</h2>
						</div>
						<ul class="type01">
							<li class="sh_blog_top" id="sp_blog_1">
								<div class="thumb">
									<a href="http://happynut.blog.me/221140224000"
										class="sp_thmb thmb80" target="_blank"
										onclick="return goOtherCR(this,&#39;a=blg_1st*i.img&amp;r=1&amp;i=90000003_00000000000000337CFC0800&amp;u=&#39;+urlencode(urlexpand(this.href)));">
										<img src="./search_files/saved_resource(6)" width="82"
										height="82" alt="바코드앱의 스마트렌즈" class="sh_blog_thumbnail"
										onerror="this.parentNode.parentNode.style.display=&#39;none&#39;;">
										<span class="thmb_v"></span> <span class="thmb_bd"></span>
									</a>
								</div>
								<dl>
									<dt>
										<a class="sh_blog_title _sp_each_url _sp_each_title"
											href="http://happynut.blog.me/221140224000" target="_blank"
											title="바코드앱의 스마트렌즈 활용하기 -  QR코드와 바코드"
											onclick="return goOtherCR(this,&#39;a=blg_1st*i.tit&amp;r=1&amp;i=90000003_00000000000000337CFC0800&amp;u=&#39;+urlencode(urlexpand(this.href)));">바코드앱의
											스마트렌즈 활용하기 - QR코드와 <strong class="hl">바코드</strong>
										</a>
									</dt>
									<dd class="txt_inline">2017.11.15.</dd>
									<dd class="sh_blog_passage">
										♣ 바코드 앱 스마트렌즈 활용하기 - <strong class="hl">바코드</strong>와 QR코드 바코드
										앱이 바뀐건 모두... 그럼 오늘은 바코드 앱의 스마트렌즈로 <strong class="hl">바코드</strong>와
										QR코드를 인식하는 방법을...
									</dd>
									<dd class="txt_block">
										<span class="inline"> <a
											href="http://happynut.blog.me/"
											onclick="return goOtherCR(this,&#39;a=blg_1st*i.blogname&amp;r=1&amp;i=90000003_00000000000000337CFC0800&amp;u=&#39;+urlencode(urlexpand(this.href)));"
											target="_blank" class="txt84">로사쌤의 컴교실</a> <a
											href="http://happynut.blog.me/221140224000" target="_blank"
											onclick="return goOtherCR(this,&#39;a=blg_1st*i.url&amp;r=1&amp;i=90000003_00000000000000337CFC0800&amp;u=&#39;+urlencode(urlexpand(this.href)));"
											class="url">happynut.blog.me/221140224000</a> <span
											class="bar"></span><a
											href="https://search.naver.com/search.naver?query=%EB%B0%94%EC%BD%94%EB%93%9C&amp;where=post&amp;sm=tab_brs&amp;post_blogurl=happynut.blog.me"
											onclick="return goOtherCR(this,&#39;a=blg_1st*i.similar&amp;r=1&amp;i=90000003_00000000000000337CFC0800&amp;u=&#39;+urlencode(urlexpand(this.href)));"
											class="txt84">블로그 내 검색</a>
										</span>
									</dd>
								</dl>
							</li>
						</ul>
						<div class="section_more">
							<a
								href="https://search.naver.com/search.naver?query=%EB%B0%94%EC%BD%94%EB%93%9C&amp;where=post&amp;sm=tab_nmr&amp;nso="
								onclick="return goOtherCR(this,&#39;a=blg_1st.more&amp;r=0&amp;i=more&amp;u=&#39;+urlencode(urlexpand(this.href)));"
								class="go_more">블로그 더보기</a>
						</div>
					</div>
					<link rel="stylesheet" type="text/css" href="./search_files/sp_shop_default_170615b.css">
					<div class="collection"></div>
				</div>
				<div id="sub_pack" class="sub_pack">
					<div class="z_aside section rktshp">
						<div class="section_head">
							<h2>복합기/프린터 쇼핑검색어</h2>
						</div>
						<div class="realtime_srch">
							<ol class="lst_realtime_srch">
								<li><a
									href="https://search.naver.com/search.naver?query=3D+%ED%94%84%EB%A6%B0%ED%84%B0&amp;ie=utf8&amp;sm=tab_shk&amp;rm=126k%2Cnexearch%2Csearch_all%2C0"
									class="bx bx_item" title="3D 프린터"
									onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(urlexpand(this.href))+&#39;&amp;a=shk_126.list&amp;i=&amp;r=1&#39;)">
										<span class="keyword"> <em class="num">1</em> <span
											class="tit">3D 프린터</span>
									</span> <em class="rank equal"><span class="spim">동일</span><span
											class="count">0</span></em>
								</a></li>
								<li><a
									href="https://search.naver.com/search.naver?query=%EA%B3%A0%EC%86%8D%EC%8A%A4%EC%BA%90%EB%84%88&amp;ie=utf8&amp;sm=tab_shk&amp;rm=126k%2Cnexearch%2Csearch_all%2C0"
									class="bx bx_item" title="고속스캐너"
									onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(urlexpand(this.href))+&#39;&amp;a=shk_126.list&amp;i=&amp;r=2&#39;)">
										<span class="keyword"> <em class="num">2</em> <span
											class="tit">고속스캐너</span>
									</span> <em class="rank up"><span class="spim">상승</span><span
											class="count">8</span></em>
								</a></li>
								<li><a
									href="https://search.naver.com/search.naver?query=%EB%AC%B4%ED%95%9C%EC%9E%89%ED%81%AC+%ED%94%84%EB%A6%B0%ED%84%B0&amp;ie=utf8&amp;sm=tab_shk&amp;rm=126k%2Cnexearch%2Csearch_all%2C0"
									class="bx bx_item" title="무한잉크 프린터"
									onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(urlexpand(this.href))+&#39;&amp;a=shk_126.list&amp;i=&amp;r=3&#39;)">
										<span class="keyword"> <em class="num">3</em> <span
											class="tit">무한잉크 프린터</span>
									</span> <em class="rank new"><span class="spim"></span><span>NEW</span></em>
								</a></li>
								<li><a
									href="https://search.naver.com/search.naver?query=%EB%A0%88%EC%9D%B4%EC%A0%80%ED%94%84%EB%A6%B0%ED%84%B0&amp;ie=utf8&amp;sm=tab_shk&amp;rm=126k%2Cnexearch%2Csearch_all%2C0"
									class="bx bx_item" title="레이저프린터"
									onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(urlexpand(this.href))+&#39;&amp;a=shk_126.list&amp;i=&amp;r=4&#39;)">
										<span class="keyword"> <em class="num">4</em> <span
											class="tit">레이저프린터</span>
									</span> <em class="rank down"><span class="spim">하락</span><span
											class="count">2</span></em>
								</a></li>
								<li><a
									href="https://search.naver.com/search.naver?query=%EC%BB%AC%EB%9F%AC+%EB%A0%88%EC%9D%B4%EC%A0%80+%EB%B3%B5%ED%95%A9%EA%B8%B0&amp;ie=utf8&amp;sm=tab_shk&amp;rm=126k%2Cnexearch%2Csearch_all%2C0"
									class="bx bx_item" title="컬러 레이저 복합기"
									onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(urlexpand(this.href))+&#39;&amp;a=shk_126.list&amp;i=&amp;r=5&#39;)">
										<span class="keyword"> <em class="num">5</em> <span
											class="tit">컬러 레이저 복합기</span>
									</span> <em class="rank down"><span class="spim">하락</span><span
											class="count">2</span></em>
								</a></li>
								<li><a
									href="https://search.naver.com/search.naver?query=%EC%BA%90%EB%85%BC+%EC%85%80%ED%94%BC+CP1300&amp;ie=utf8&amp;sm=tab_shk&amp;rm=126k%2Cnexearch%2Csearch_all%2C0"
									class="bx bx_item" title="캐논 셀피 CP1300"
									onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(urlexpand(this.href))+&#39;&amp;a=shk_126.list&amp;i=&amp;r=6&#39;)">
										<span class="keyword"> <em class="num">6</em> <span
											class="tit">캐논 셀피 CP1300</span>
									</span> <em class="rank down"><span class="spim">하락</span><span
											class="count">1</span></em>
								</a></li>
								<li><a
									href="https://search.naver.com/search.naver?query=%ED%8F%AC%ED%86%A0%EB%B9%84&amp;ie=utf8&amp;sm=tab_shk&amp;rm=126k%2Cnexearch%2Csearch_all%2C0"
									class="bx bx_item" title="포토비"
									onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(urlexpand(this.href))+&#39;&amp;a=shk_126.list&amp;i=&amp;r=7&#39;)">
										<span class="keyword"> <em class="num">7</em> <span
											class="tit">포토비</span>
									</span> <em class="rank down"><span class="spim">하락</span><span
											class="count">1</span></em>
								</a></li>
								<li><a
									href="https://search.naver.com/search.naver?query=MLT-D111S&amp;ie=utf8&amp;sm=tab_shk&amp;rm=126k%2Cnexearch%2Csearch_all%2C0"
									class="bx bx_item" title="MLT-D111S"
									onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(urlexpand(this.href))+&#39;&amp;a=shk_126.list&amp;i=&amp;r=8&#39;)">
										<span class="keyword"> <em class="num">8</em> <span
											class="tit">MLT-D111S</span>
									</span> <em class="rank down"><span class="spim">하락</span><span
											class="count">4</span></em>
								</a></li>
								<li><a
									href="https://search.naver.com/search.naver?query=%EC%82%BC%EC%84%B1%EB%B3%B5%ED%95%A9%EA%B8%B0&amp;ie=utf8&amp;sm=tab_shk&amp;rm=126k%2Cnexearch%2Csearch_all%2C0"
									class="bx bx_item" title="삼성복합기"
									onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(urlexpand(this.href))+&#39;&amp;a=shk_126.list&amp;i=&amp;r=9&#39;)">
										<span class="keyword"> <em class="num">9</em> <span
											class="tit">삼성복합기</span>
									</span> <em class="rank equal"><span class="spim">동일</span><span
											class="count">0</span></em>
								</a></li>
								<li><a
									href="https://search.naver.com/search.naver?query=HP+%EB%B3%B5%ED%95%A9%EA%B8%B0&amp;ie=utf8&amp;sm=tab_shk&amp;rm=126k%2Cnexearch%2Csearch_all%2C0"
									class="bx bx_item" title="HP 복합기"
									onclick="return goOtherCR(this, &#39;u=&#39;+urlencode(urlexpand(this.href))+&#39;&amp;a=shk_126.list&amp;i=&amp;r=10&#39;)">
										<span class="keyword"> <em class="num">10</em> <span
											class="tit">HP 복합기</span>
									</span> <em class="rank up"><span class="spim">상승</span><span
											class="count">2</span></em>
								</a></li>
							</ol>
							<div class="realtime_srch_area" data-index="0">
								<p class="dsc">
									<time>2017.12.09</time>
									. 기준 <a
										href="https://help.naver.com/support/alias/search/integration/chart2.naver"
										target="_blank" class="spim lk_rts_help"
										onclick="goOtherCR(this, &#39;u=&#39; + urlencode(this.href) + &#39;&amp;a=shk_help&#39;);">도움말</a>
								</p>
							</div>
						</div>
					</div>
					<div class="sp_ncr section" role="contentinfo">
						<div id="ncrm_sub">
							<div class="section_head ">
								<h2>상영영화 주말 박스오피스</h2>
							</div>
							<div class="group_movie">
								<ul class="ranking_lst">
									<li class="top"><span class="num">1</span> <a
										href="https://search.naver.com/search.naver?where=nexearch&amp;sm=tab_nc2&amp;ie=utf8&amp;query=%EA%B0%95%EC%B2%A0%EB%B9%84"
										class="bf_thum"
										onclick="return goOtherCR(this, &#39;a=nrm_x0a*r.link&amp;r=1&amp;i=1800009D_00000042590E&amp;u=&#39;+urlencode(urlexpand(this.href)));"><span
											class="thum"><img src="./search_files/saved_resource"
												alt="" class=""
												onerror="ncr_noimg2(this, &#39;bg_nimg2&#39;, 68, 86);"><span
												class="thum_v"></span><span class="mask"></span></span> </a> <span
										class="rank_dsc"> <span class="tit"><a
												href="https://search.naver.com/search.naver?where=nexearch&amp;sm=tab_nc2&amp;ie=utf8&amp;query=%EA%B0%95%EC%B2%A0%EB%B9%84"
												onclick="return goOtherCR(this, &#39;a=nrm_x0a*r.link&amp;r=1&amp;i=1800009D_00000042590E&amp;u=&#39;+urlencode(urlexpand(this.href)));">강철비</a></span>
											<span class="sort"><span class="txt">관객수</span> <em>1,378,357명</em></span>
											<span class="sort"><span class="txt">점유율</span> <em>56.80%</em></span>
									</span></li>
									<li class="top"><span class="num">2</span> <a
										href="https://search.naver.com/search.naver?where=nexearch&amp;sm=tab_nc2&amp;ie=utf8&amp;query=%EC%8A%A4%ED%83%80%EC%9B%8C%EC%A6%88%3A%EB%9D%BC%EC%8A%A4%ED%8A%B8%EC%A0%9C%EB%8B%A4%EC%9D%B4"
										class="bf_thum"
										onclick="return goOtherCR(this, &#39;a=nrm_x0a*r.link&amp;r=2&amp;i=1800009D_0000001E53EE&amp;u=&#39;+urlencode(urlexpand(this.href)));"><span
											class="thum"><img
												src="./search_files/saved_resource(1)" alt="" class=""
												onerror="ncr_noimg2(this, &#39;bg_nimg2&#39;, 68, 86);"><span
												class="thum_v"></span><span class="mask"></span></span> </a> <span
										class="rank_dsc"> <span class="tit"><a
												href="https://search.naver.com/search.naver?where=nexearch&amp;sm=tab_nc2&amp;ie=utf8&amp;query=%EC%8A%A4%ED%83%80%EC%9B%8C%EC%A6%88%3A%EB%9D%BC%EC%8A%A4%ED%8A%B8%EC%A0%9C%EB%8B%A4%EC%9D%B4"
												onclick="return goOtherCR(this, &#39;a=nrm_x0a*r.link&amp;r=2&amp;i=1800009D_0000001E53EE&amp;u=&#39;+urlencode(urlexpand(this.href)));">스타워즈:
													라스트 제다이</a></span> <span class="sort"><span class="txt">관객수</span>
												<em>522,824명</em></span> <span class="sort"><span
												class="txt">점유율</span> <em>21.54%</em></span>
									</span></li>
									<li class="item"><span class="num">3</span> <span
										class="rank_dsc"> <span class="tit"><a
												href="https://search.naver.com/search.naver?where=nexearch&amp;sm=tab_nc2&amp;ie=utf8&amp;query=%EB%BD%80%EB%A1%9C%EB%A1%9C%EA%B7%B9%EC%9E%A5%ED%8C%90%EA%B3%B5%EB%A3%A1%EC%84%AC%EB%8C%80%EB%AA%A8%ED%97%98"
												onclick="return goOtherCR(this, &#39;a=nrm_x0a*r.link&amp;r=3&amp;i=1800009D_00000061868D&amp;u=&#39;+urlencode(urlexpand(this.href)));">뽀로로
													극장판 공룡섬 대모험</a></span> <span class="sort"><em>178,058명</em><em>
													(7.34%)</em></span>
									</span></li>
									<li class="item"><span class="num">4</span> <span
										class="rank_dsc"> <span class="tit"><a
												href="https://search.naver.com/search.naver?where=nexearch&amp;sm=tab_nc2&amp;ie=utf8&amp;query=%EB%A9%94%EB%A6%AC%EC%99%80%EB%A7%88%EB%85%80%EC%9D%98%EA%BD%83"
												onclick="return goOtherCR(this, &#39;a=nrm_x0a*r.link&amp;r=4&amp;i=1800009D_00000050ED80&amp;u=&#39;+urlencode(urlexpand(this.href)));">메리와
													마녀의 꽃</a></span> <span class="sort"><em>98,658명</em><em>
													(4.07%)</em></span>
									</span></li>
									<li class="item"><span class="num">5</span> <span
										class="rank_dsc"> <span class="tit"><a
												href="https://search.naver.com/search.naver?where=nexearch&amp;sm=tab_nc2&amp;ie=utf8&amp;query=%EA%B8%B0%EC%96%B5%EC%9D%98%EB%B0%A4"
												onclick="return goOtherCR(this, &#39;a=nrm_x0a*r.link&amp;r=5&amp;i=1800009D_000000537DAE&amp;u=&#39;+urlencode(urlexpand(this.href)));">기억의
													밤</a></span> <span class="sort"><em>84,839명</em><em>
													(3.50%)</em></span>
									</span></li>
									<li class="item"><span class="num">6</span> <span
										class="rank_dsc"> <span class="tit"><a
												href="https://search.naver.com/search.naver?where=nexearch&amp;sm=tab_nc2&amp;ie=utf8&amp;query=%EC%98%81%ED%99%94%EA%BE%BC"
												onclick="return goOtherCR(this, &#39;a=nrm_x0a*r.link&amp;r=6&amp;i=1800009D_00000038775E&amp;u=&#39;+urlencode(urlexpand(this.href)));">꾼</a></span>
											<span class="sort"><em>78,008명</em><em> (3.21%)</em></span>
									</span></li>
									<li class="item"><span class="num">7</span> <span
										class="rank_dsc"> <span class="tit"><a
												href="https://search.naver.com/search.naver?where=nexearch&amp;sm=tab_nc2&amp;ie=utf8&amp;query=%EA%B7%B9%EC%9E%A5%ED%8C%90%EC%88%B2%EC%9D%98%EC%9A%94%EC%A0%95%ED%8E%98%EC%96%B4%EB%A6%AC%EB%A3%A8~%ED%81%AC%EB%A6%AC%EC%8A%A4%EB%A7%88%EC%8A%A4%EC%9D%98%EA%B8%B0%EC%A0%81%3A%EB%A7%88%EB%B2%95%EC%9D%98%EB%82%A0%EA%B0%9C~"
												onclick="return goOtherCR(this, &#39;a=nrm_x0a*r.link&amp;r=7&amp;i=1800009D_00000062C99B&amp;u=&#39;+urlencode(urlexpand(this.href)));">극장판
													숲의 요정 페어리루 ~크리스마스의 기적: 마법의 날개~</a></span> <span class="sort"><em>35,669명</em><em>
													(1.47%)</em></span>
									</span></li>
									<li class="item"><span class="num">8</span> <span
										class="rank_dsc"> <span class="tit"><a
												href="https://search.naver.com/search.naver?where=nexearch&amp;sm=tab_nc2&amp;ie=utf8&amp;query=%ED%8A%A4%EB%A6%BD%ED%94%BC%EB%B2%84"
												onclick="return goOtherCR(this, &#39;a=nrm_x0a*r.link&amp;r=8&amp;i=1800009D_0000001DF67D&amp;u=&#39;+urlencode(urlexpand(this.href)));">튤립
													피버</a></span> <span class="sort"><em>22,409명</em><em>
													(0.92%)</em></span>
									</span></li>
									<li class="item"><span class="num">9</span> <span
										class="rank_dsc"> <span class="tit"><a
												href="https://search.naver.com/search.naver?where=nexearch&amp;sm=tab_nc2&amp;ie=utf8&amp;query=%EC%98%A4%EB%A6%AC%EC%97%94%ED%8A%B8%ED%8A%B9%EA%B8%89%EC%82%B4%EC%9D%B8"
												onclick="return goOtherCR(this, &#39;a=nrm_x0a*r.link&amp;r=9&amp;i=1800009D_0000004896EB&amp;u=&#39;+urlencode(urlexpand(this.href)));">오리엔트
													특급 살인</a></span> <span class="sort"><em>16,079명</em><em>
													(0.66%)</em></span>
									</span></li>
									<li class="item"><span class="num">10</span> <span
										class="rank_dsc"> <span class="tit"><a
												href="https://search.naver.com/search.naver?where=nexearch&amp;sm=tab_nc2&amp;ie=utf8&amp;query=%EB%9F%AC%EB%B9%99%EB%B9%88%EC%84%BC%ED%8A%B8"
												onclick="return goOtherCR(this, &#39;a=nrm_x0a*r.link&amp;r=10&amp;i=1800009D_0000002E7C03&amp;u=&#39;+urlencode(urlexpand(this.href)));">러빙
													빈센트</a></span> <span class="sort"><em>11,765명</em><em>
													(0.48%)</em></span>
									</span></li>
								</ul>
								<p class="g_notice">
									영화진흥위원회 제공 2017.12.22. <a
										href="https://help.naver.com/support/alias/search/integration/ncrm2.naver"
										class="spnc btn_help" target="_blank"
										onclick="return goOtherCR(this, &#39;a=nrm_x0a.help&amp;r=1&amp;i=&amp;u=&#39;+urlencode(urlexpand(this.href)));">도움말</a>
								</p>
							</div>
						</div>
					</div>
					<div class="sp_ncr section" role="contentinfo">
						<div id="ncrm_sub">
							<div class="section_head ">
								<h2>개봉예정영화</h2>
							</div>
							<div class="group_movie">
								<ul class="thum_lst w68">
									<li><a
										href="https://search.naver.com/search.naver?where=nexearch&amp;sm=tab_nc2&amp;ie=utf8&amp;query=%EC%9A%A9%ED%98%B8%ED%92%8D%EC%9A%B4"
										class="bf_thum"
										onclick="return goOtherCR(this, &#39;a=nrm_x0a*l.link&amp;r=1&amp;i=1800009D_0000001AB2F5&amp;u=&#39;+urlencode(urlexpand(this.href)));"><span
											class="thum"><img
												src="./search_files/saved_resource(2)" alt="" class=""
												onerror="ncr_noimg2(this, &#39;bg_nimg&#39;, 68, 68);"><span
												class="thum_v"></span><span class="mask"></span><i
												class="spcm api_rating rating_15">15세 관람가</i></span> <span
											class="tit ellipsis_none" title="용호풍운">용호풍운</span> </a></li>
									<li><a
										href="https://search.naver.com/search.naver?where=nexearch&amp;sm=tab_nc2&amp;ie=utf8&amp;query=%EA%B5%B0%EC%A4%91%EB%82%99%EC%9B%90"
										class="bf_thum"
										onclick="return goOtherCR(this, &#39;a=nrm_x0a*l.link&amp;r=2&amp;i=1800009D_0000001F4F2D&amp;u=&#39;+urlencode(urlexpand(this.href)));"><span
											class="thum"><img
												src="./search_files/saved_resource(3)" alt="" class=""
												onerror="ncr_noimg2(this, &#39;bg_nimg&#39;, 68, 68);"><span
												class="thum_v"></span><span class="mask"></span><i
												class="spcm api_rating rating_19">청소년 관람불가</i></span> <span
											class="tit ellipsis_none" title="군중낙원">군중낙원</span> </a></li>
									<li><a
										href="https://search.naver.com/search.naver?where=nexearch&amp;sm=tab_nc2&amp;ie=utf8&amp;query=%EC%98%81%ED%99%941987"
										class="bf_thum"
										onclick="return goOtherCR(this, &#39;a=nrm_x0a*l.link&amp;r=3&amp;i=1800009D_0000004F7CF9&amp;u=&#39;+urlencode(urlexpand(this.href)));"><span
											class="thum"><img
												src="./search_files/saved_resource(4)" alt="" class=""
												onerror="ncr_noimg2(this, &#39;bg_nimg&#39;, 68, 68);"><span
												class="thum_v"></span><span class="mask"></span><i
												class="spcm api_rating rating_15">15세 관람가</i></span> <span
											class="tit ellipsis_none" title="1987">1987</span> </a></li>
									<li><a
										href="https://search.naver.com/search.naver?where=nexearch&amp;sm=tab_nc2&amp;ie=utf8&amp;query=%EC%9B%94%ED%84%B0%EC%9D%98%EC%83%81%EC%83%81%EC%9D%80%ED%98%84%EC%8B%A4%EC%9D%B4%EB%90%9C%EB%8B%A4"
										class="bf_thum"
										onclick="return goOtherCR(this, &#39;a=nrm_x0a*l.link&amp;r=4&amp;i=1800009D_0000001BF0B8&amp;u=&#39;+urlencode(urlexpand(this.href)));"><span
											class="thum"><img
												src="./search_files/saved_resource(5)" alt="" class=""
												onerror="ncr_noimg2(this, &#39;bg_nimg&#39;, 68, 68);"><span
												class="thum_v"></span><span class="mask"></span><i
												class="spcm api_rating rating_12">12세 관람가</i></span> <span
											class="tit ellipsis_none" title="월터의 상상은 현실이 된다">월터의
												상상은 현실이...</span> </a></li>
									<li><a
										href="https://search.naver.com/search.naver?where=nexearch&amp;sm=tab_nc2&amp;ie=utf8&amp;query=%EC%98%81%ED%99%94%EC%9B%90%EB%8D%94"
										class="bf_thum"
										onclick="return goOtherCR(this, &#39;a=nrm_x0a*l.link&amp;r=5&amp;i=1800009D_00000036AF10&amp;u=&#39;+urlencode(urlexpand(this.href)));"><span
											class="thum"><img
												src="./search_files/saved_resource(7)" alt="" class=""
												onerror="ncr_noimg2(this, &#39;bg_nimg&#39;, 68, 68);"><span
												class="thum_v"></span><span class="mask"></span><i
												class="spcm api_rating rating_all">전체 관람가</i></span> <span
											class="tit ellipsis_none" title="원더">원더</span> </a></li>
								</ul>
								<div class="btn_extend">
									<a href="http://movie.naver.com/movie/running/premovie.nhn"
										class="btn_more"
										onclick="return goOtherCR(this, &#39;a=nrm_x0a*l.more&amp;r=1&amp;i=&amp;u=&#39;+urlencode(urlexpand(this.href)));"
										target="_blank">더보기<span class="spnc ico_arrow"></span></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="ly_dimmed"></div>
			</div>
		</div>
		<div id="footer"> <p class="Extra">Creators</p> <ul> <li>크리에이터</li> <li class="aaa">|</li> <li>스몰비즈니스</li> </ul> <p class="Extra">Partners</p> <ul> <li>이성수</li> <li class="aaa">|</li> <li>김민정</li> <li class="aaa">|</li> <li>박준영</li> <li class="aaa">|</li> <li>육동주</li> <li class="aaa">|</li> <li>조성수</li> </ul> <p class="Extra">Developers</p> <ul> <li>바코드 개발센터</li> <li class="aaa">|</li> <li>오픈API</li> <li class="aaa">|</li> <li>오픈소스</li> <li class="aaa">|</li> <li>바코드 D2</li> <li class="aaa">|</li> <li>바코드 랩스</li> </ul> <div id="ul_except"> <ul> <li style="padding: 0;">회사소개</li> <li class="aaa">|</li> <li>인재채용</li> <li class="aaa">|</li> <li>제휴제안</li> <li class="aaa">|</li> <li>이용약관</li> <li class="aaa">|</li> <li>개인정보처리방침</li> <li class="aaa">|</li> <li>청소년보호정책</li> <li class="aaa">|</li> <li>바코드정책</li> <li class="aaa">|</li> <li>고객센터</li> <li class="aaa">|</li> <li>ⓒBarcode Crop.</li> </ul> </div> </div>
	</div>
</body>
</html>