<%@page import="com.sun.org.apache.bcel.internal.generic.SIPUSH"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="search.SearchBean"%>
<%@page import="place.PlaceBoardBean"%>
<%@page import="product.ShoppingBean"%>
<%@page import="movie.MovieBean"%>
<%@page import="java.util.Vector"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:useBean id="mgr" class="member.MemberMgr"/>
<jsp:useBean id="smgr" class="search.SearchMgr"/>
<jsp:useBean id="rmgr" class="product.ReviewMgr"/>
<jsp:useBean id="mmgr" class="movie.MovieMgr"/>
<%
		request.setCharacterEncoding("utf-8");
		
		String id = (String)session.getAttribute("idKey");	
		String email = mgr.getMember(id).getEmail();
		String name = mgr.getMember(id).getName();
		String search = request.getParameter("search");

		smgr.insertSearch(search);
		
		Vector<MovieBean> mlist = smgr.getMemberList(search);
		Vector<ShoppingBean> slist = smgr.getShoppingList(search);
		Vector<PlaceBoardBean> plist = smgr.getPlaceBoardList(search);
		Vector<SearchBean> sclist = smgr.getSearchList();
		Calendar cr = Calendar.getInstance();
		int year = cr.get(Calendar.YEAR);
		int month = cr.get(Calendar.MONTH)+1;
		int date = cr.get(Calendar.DATE);
		String today= year+"."+month+"."+date+".";
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
<link rel="stylesheet" type="text/css" href="search_files/style.css">
<link rel="stylesheet" type="text/css" href="search_files/likeit_search.css">
<link rel="stylesheet" href="search_files/gnb_style.css" type="text/css">
<link rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/sstatic/search/pc/2016/css/sp_ncr_0728.css">
<script type="text/javascript">
Date d = new Date();
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
System.out.println("현재날짜 : "+ sdf.format(d));

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
				<a href="../index.jsp">
					<img src="./search_files/barcode_logo_.png" width="100%"
						height="100%" alt="바코드">
				</a>
				</div>
				<div id="search">
				<form name="searchf" action="./search.jsp">
					<input type="text" name="search" style="width: 420px; height: 40px; margin: 5px 0px 0px 20px; border: 0px; font-size: 16px;"
					onkeypress="if(event.keyCode==13) {submit(); return false;}" align="center" placeholder="검색해보세용!" value=<%=search %>>
					<div id="search_button">
						<img src="./search_files/search_icon.png"
							onclick="submit()">
					</div>
					<div id="place">
						<img src="./search_files/place_icon.png">
					</div>
				</form>
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
				<li><a href="file:///C:/Users/Soo/git/SearchPortal/Barcode/WebContent/search/product/product_home.jsp">중고 쇼핑</a></li>
				<li class="ulul"><a href="file:///C:/Users/Soo/git/SearchPortal/Barcode/WebContent/search/reserve/reserve_home.jsp">여행지</a></li>
				<li class="ulul"><a href="file:///C:/Users/Soo/git/SearchPortal/Barcode/WebContent/search/movie/movie_home.jsp">영화 추천</a></li>
				<li class="ulul"><a href="file:///C:/Users/Soo/git/SearchPortal/Barcode/WebContent/search/custom/custom_home.jsp">고객센터</a></li>
			</ul>
		</div>
		<div id="container" role="main">
			<div id="content" class="pack_group">
				<div id="main_pack" class="main_pack">
					<link rel="stylesheet" type="text/css" href="./search_files/sp_image_170330.css">
					<div class="sp_shop_default section" id="_shopping_guide_view">
						<div class="section_head">
							<h2>바코드쇼핑</h2>
						</div>
<%if(slist.size()!=0) {%>
						<p class="title_desc title_desc_v2">
							'<em><%=search %></em>' 상품 <a
								href="http://shopping.naver.com/search/all.nhn?query=%EB%B0%94%EC%BD%94%EB%93%9C&amp;frm=NVSCPRO"
								onclick="return goOtherCR(this,&#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=&amp;i=&amp;a=shp_gui.resultcount&#39;);"
								target="_blank"><%=slist.size() %></a>건
						</p>
						<div class="group_item">
							<div class="_page_group" style="display: block;">
								<div class="group_guide _page "
									data-more-link="http://shopping.naver.com/search/all.nhn?query=%EB%B0%94%EC%BD%94%EB%93%9C&amp;frm=NVSCPRO"
									data-clicklog-id="shp_gui*a" data-start="1" data-index="0"
									style="display: block;">
									<ul class="lst_guide">
		<%for(int i=0;i<(slist.size()>6?6:slist.size());i++) {%>
										<li class="bx"><div class="bx_area">
												<div class="thumb_area">
													<a href="<%=request.getRequestURI()%>../product/detail?index=<%=slist.get(i).getIndex() %>"	
													class="thumb" onclick="return goOtherCR(this,&#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;i=00000009_0002ee233fff&amp;a=shp_gui*a.outimg&#39;);" target="_blank">
													<img src="../product/newShopImg/<%=slist.get(i).getMainImg() %>" onerror="on_noimage_shop(this);" width="133" height="133" alt="<%=slist.get(i).getTitle()%>"><span class="mask"></span></a>
												</div>
												<div class="detail_area">
													<div class="detail">
														<div class="tit">
															<span class="ico_txt">해외</span>
															<a href="<%=request.getRequestURI()%>../product/detail?index=<%=slist.get(i).getIndex() %>"
																title="<%=slist.get(i).getTitle() %>"
																onclick="return goOtherCR(this,&#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;i=00000009_0002ee233fff&amp;a=shp_gui*a.outtit&#39;);"
																target="_blank"><%=slist.get(i).getTitle() %>
															</a>
														</div>
														<div class="dsc price">
															<em class="price_num" title="<%=slist.get(i).getPrice()%>원"><%=slist.get(i).getPrice()%>원</em>
															<span class="lowest">최저</span>
														</div>
														<div class="dsc mall">
															<a href=""
																class="name" title="<%=slist.get(i).getSeller()%>"
																onclick="return goOtherCR(this,&#39;u=&#39;+urlencode(this.href)+&#39;&amp;r=1&amp;i=00000009_0002ee233fff&amp;a=shp_gui*a.outmall&#39;);"
																target="_blank"><%=slist.get(i).getSeller()%></a>
															<div class="npay drct_ico _hover_icon">
																<img src="./search_files/ico_npay_small.png" width="32"
																	height="13" alt="바코드페이">
															</div>
														</div>
														<div class="dsc compare">리뷰<em class="txt"><%=rmgr.getReviewList(slist.get(i).getIndex()).size() %></em>
														</div>
													</div>
												</div>
											</div></li>
		<%} %>
									</ul>
								</div>
							</div>
						</div>
						<div class="section_more">
							<a	href="http://shopping.naver.com/search/all.nhn?query=%EB%B0%94%EC%BD%94%EB%93%9C&amp;frm=NVSCPRO"
								class="go_site _shopping_more" target="_blank">쇼핑 더보기</a>
						</div>
<%}else{ %><p><em>'<%=search %>'</em>에 대한 검색결과가 없습니다.</p><%} %>
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
						</div>
<%if(mlist.size()!=0) {%>
						<div class="info_main">
							<div class="thumb">
								<a href="<%=request.getRequestURI()%>../movie/movie_home.jsp?index=<%=mlist.get(0).getIdx() %>"
									class="sp_thmb" target="_blank"> 
									<img src="../movie/mainimg/<%=mlist.get(0).getPic() %>" width="120" height="171" alt="<%=mlist.get(0).getTitle() %>"
									 onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'"> <span
									class="thmb_v"></span>
								</a>
							</div>
							<h3>
								<a href="mlist.get(0).getStar()"
									class="sh_movie_link" target="_blank"><strong><%=mlist.get(0).getTitle() %></strong>
									(<%=mlist.get(0).getSubtitle() %>)</a> <span class="btn_state open"></span>
							</h3>
							<dl class="r_grade">
								<dd>
									<p>
										<span style="width: <%=Float.parseFloat(mlist.get(0).getStar())*10%>%;"></span>
									</p>
									<em><%= mlist.get(0).getStar()%></em><em class="cont_p">(<%= mlist.get(0).getLike()%>)</em>
								</dd>
								<dd class="bar"></dd>

								<dd>
									<a href="<%=request.getRequestURI()%>../movie/movie_home.jsp?index=<%=mlist.get(0).getIdx()%>&&num=2"
										target="_blank" class="btn_rating">평점주기</a>
								</dd>
							</dl>
							<dl class="desc_detail">
								<dt class="blind">개요</dt>
								<dd class="frst">
									<span id="dss_h_movie_info_genre_content"><%=mlist.get(0).getGenre() %></span><span
										class="bar"></span><span
										id="dss_h_movie_info_opendate_content"><%=mlist.get(0).getOpendate() %> 개봉</span><span
										class="bar"></span><span id="dss_h_movie_info_runtime_content"><%=mlist.get(0).getRuntime() %>분</span><span
										class="bar"></span><span id="dss_h_movie_info_nation_content"><%=mlist.get(0).getCountry() %></span><span
										class="bar"></span><span id="dss_h_movie_info_grade_content"><%=mlist.get(0).getAge() %>세 관람가</span>
								</dd>
								<dt id="dss_h_movie_info_director_title">감독</dt>
								<dd>
									<span id="dss_h_movie_info_director_content"> 
									<a title="<%=mlist.get(0).getDirector() %>" target="_blank"><%=mlist.get(0).getDirector() %></a>
									</span>
								</dd>
								<dt id="dss_h_movie_info_story_content">내용</dt>
								<dd>
									<p id="mcont"><%=mlist.get(0).getContent().replaceAll("\\<[^>]*>","") %> </p>
									<a href="<%=request.getRequestURI()%>../product/detail?index=<%=mlist.get(0).getIdx()%>"
										class="cont_more" target="_blank"><span class="blind">줄거리</span>더보기</a>
								</dd>
							</dl>
						</div>
						<script type="text/javascript"> var _elAdIndLayerMovie = null; var _elAdIndLayerTimeMovie; var _elDscNcautionMovie = null; function adInfoShowMovie(el) { if (_elAdIndLayerMovie) { adInfoHideMovie(); return false; } else { if(!_elDscNcautionMovie) { _elDscNcautionMovie = $Element(el).parent(); } _elDscNcautionMovie._element.style.zIndex=121; _elAdIndLayerMovie = $Element(el).next(); _elAdIndLayerMovie.show(); _elAdIndLayerTimeMovie = (new Date()).getTime(); return true;} } function adInfoHideMovie() { if (_elAdIndLayerMovie) { if(_elDscNcautionMovie) { _elDscNcautionMovie._element.style.zIndex=0; } _elAdIndLayerMovie.hide(); _elAdIndLayerMovie = null; } }; function adInfoHideClickEventHandlerMovie(e) { if( _elAdIndLayerTimeMovie+200 < (new Date()).getTime()) adInfoHideMovie(); }; document.body[window.addEventListener ? 'addEventListener' : 'attachEvent']( window.addEventListener ? "click" : "onclick", adInfoHideClickEventHandlerMovie, false); </script>
<%}else {%><p><em>'<%=search %>'</em>에 대한 검색결과가 없습니다.</p><%} %>
					</div>
					
					<div class="blog section _blogBase">
						<div class="section_head">
							<h2>동네 소식</h2>
						</div>
<%if(plist.size()!=0) {%>
						<ul class="type01">
		<%for(int i=0;i<plist.size();i++) {%>
							<li class="sh_blog_top" id="sp_blog_<%=i+1%>">
								<div class="thumb">
									<a href="<%=request.getRequestURI()%>../reserve/place_board.jsp?index=<%=plist.get(i).getIdx() %>"
										class="sp_thmb thmb80">
										<img src="../reserve/img/<%=plist.get(i).getIdx()%>" width="82"
										height="82" alt="바코드앱의 스마트렌즈" class="sh_blog_thumbnail"
										onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
										<span class="thmb_v"></span> <span class="thmb_bd"></span>
									</a>
								</div>
								<dl>
									<dt>
										<a class="sh_blog_title _sp_each_url _sp_each_title"
											href="<%=request.getRequestURI()%>../reserve/place_board.jsp?index=<%=plist.get(i).getIdx() %>" target="_blank"
											title="<%=plist.get(i).getTitle()%>"
											onclick="return goOtherCR(this,&#39;a=blg_1st*i.tit&amp;r=1&amp;i=90000003_00000000000000337CFC0800&amp;u=&#39;+urlencode(urlexpand(this.href)));">
											<%=plist.get(i).getTitle()%>
										</a>
									</dt>
									<dd class="txt_inline"><%=plist.get(i).getRegdate()%></dd>
									<dd class="sh_blog_passage">
										<%=plist.get(i).getContent().replaceAll("\\<[^>]*>","") %>
									</dd>
									<dd class="txt_block">
										<span class="inline"> <a href="" target="_blank" class="txt84">모집 기간</a>
											 <span class="bar"></span><a href="" class="txt84"><%=plist.get(i).getEnddate()%></a>
										</span>
									</dd>
								</dl>
							</li>
		<%} %>
						</ul>
						<div class="section_more">
							<a
								href="https://search.naver.com/search.naver?query=%EB%B0%94%EC%BD%94%EB%93%9C&amp;where=post&amp;sm=tab_nmr&amp;nso="
								onclick="return goOtherCR(this,&#39;a=blg_1st.more&amp;r=0&amp;i=more&amp;u=&#39;+urlencode(urlexpand(this.href)));"
								class="go_more">블로그 더보기</a>
						</div>
<%}else {%><p><em>'<%=search %>'</em>에 대한 검색결과가 없습니다.</p><%} %>
					</div>
					<link rel="stylesheet" type="text/css" href="./search_files/sp_shop_default_170615b.css">
					<div class="collection"></div>
				</div>
				<div id="sub_pack" class="sub_pack">
					<div class="z_aside section rktshp">
						<div class="section_head">
							<h2>검색어 순위</h2>
						</div>
						<div class="realtime_srch">
							<ol class="lst_realtime_srch">
		<%for(int i=0;i<(sclist.size()>10?10:sclist.size());i++) {%>
								<li><a href="<%=request.getRequestURI()%>?search=<%=sclist.get(i).getKeyword() %>"
									class="bx bx_item" title="고속스캐너">
										<span class="keyword"> <em class="num"><%=i+1 %></em> <span
											class="tit"><%=sclist.get(i).getKeyword()%></span></span>
											<% if(sclist.get(i).getRegdate().equals(today)){ %><em class="rank new"><span class="spim"></span><span>NEW</span></em><%} %>
								</a></li>
		<%} %>
							</ol>
							<div class="realtime_srch_area" data-index="0">
								<p class="dsc">
									<time><%=today %></time> 기준 
								</p>
							</div>
						</div>
					</div>
					<div class="sp_ncr section" role="contentinfo">
						<div id="ncrm_sub">
							<div class="section_head ">
								<h2>추천영화</h2>
							</div>
							<div class="group_movie">
								<ul class="thum_lst w68">
		<%mlist=mmgr.getMemberList();
		for(int i=0;i<(mlist.size()>5?5:mlist.size());i++) {%>
									<li><a href="<%=request.getRequestURI()%>../movie/movie_home.jsp?index=<%=mlist.get(i).getIdx() %>"
										class="bf_thum" class="thum">
										<img src="../movie/mainimg/<%=mlist.get(i).getPic() %>" width="60" height="86" alt="<%=mlist.get(i).getTitle() %>"
										 onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
										<span class="thum_v"></span><span class="mask"></span>
										<i class="spcm api_rating rating_15"><%=mlist.get(i).getAge() %>세 관람가</i></span>
										<span class="tit ellipsis_none" title="<%=mlist.get(i).getTitle() %>"><%=mlist.get(i).getTitle() %></span> </a>
									</li>
		<%} %>
								</ul>
								<div class="btn_extend">
									<a href="<%=request.getRequestURI()%>../movie/movie_home.jsp" class="btn_more" target="_blank">더보기<span class="spnc ico_arrow"></span></a>
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