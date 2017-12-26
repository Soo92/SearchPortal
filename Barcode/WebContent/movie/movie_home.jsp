<%@page import="movie.PointBean"%>
<%@page import="movie.ReviewBean"%>
<%@page import="java.util.Vector"%>
<%@page import="movie.ReBean"%>
<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:useBean id="mgr" class="member.MemberMgr"/>
<jsp:useBean id="mmgr" class="movie.MovieMgr"/>
<jsp:useBean id="mbean" class="movie.MovieBean"/>
<jsp:useBean id="rbean" class="movie.ReviewBean"/>
<jsp:useBean id="bean" class="movie.PointBean" />
<jsp:useBean id="rebean" class="movie.ReBean"/>
<%
		request.setCharacterEncoding("utf-8");
		String id = (String)session.getAttribute("idKey");	
		String email = mgr.getMember(id).getEmail();
		String name = mgr.getMember(id).getName();
		
		String num = request.getParameter("num")==null?"1":request.getParameter("num");
		String reviewnum = request.getParameter("reviewnum");
		String reviewrite = request.getParameter("reviewrite");
		String index = request.getParameter("index");
		String cate = request.getParameter("cate");
		String pre = request.getParameter("pre");
		int idx = 0;
		if(index!=null)
			idx = Integer.parseInt(index);
		Vector<ReviewBean> reviewlist=mmgr.getReviewList(idx);

		mbean = mmgr.getMember(idx);
		String title = mbean.getTitle();
		String subtitle = mbean.getSubtitle();
		String star = mbean.getStar(); 
			String starS=star+"";
		String genre = mbean.getGenre();
		String country = mbean.getCountry();
		String runtime = mbean.getRuntime();
		String opendate = mbean.getOpendate();
		int count = 0;
		if(opendate != null){
			Calendar today = Calendar.getInstance();
			Calendar dday = Calendar.getInstance();
			String[] openda = opendate.split("\\.");
 			dday.set(Integer.parseInt(openda[0]),Integer.parseInt(openda[1])-1,Integer.parseInt(openda[2]));
			long day = dday.getTimeInMillis()/86400000;
			long tday = today.getTimeInMillis()/86400000;
			count = (int) (day - tday);
		}
		String director = mbean.getDirector();
		String actor = mbean.getActor();
		int age = mbean.getAge();
		int like = mbean.getLike();
		String content = mbean.getContent();
%>
<!DOCTYPE html>
<!-- saved from url=(0080)file:///C:/Users/Soo/git/SearchPortal/Barcode/WebContent/movie/movie_home.html -->
<html lang="ko"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"></head><body><div style="display: none;"><input title="jindoCheck" type="input" name="jindo1513590475617"></div><div style="display: none;"><input title="jindoCheck" type="input" name="jindo1513590336306"></div><script src="./movie_home_files/splugin.js(1).다운로드" charset="utf-8"></script><div style="display: none;"><input title="jindoCheck" type="input" name="jindo1513589908074"></div>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="imagetoolbar" content="no">
<title><%=title%> : 바코드 영화</title>
<link rel="shortcut icon" href="http://static.naver.net/m/movie/icons/naver_movie_favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="./movie_detail_files/movie.all.css">
<link rel="stylesheet" type="text/css" href="../css/gnb_style.css">
<link type="text/css" rel="stylesheet" href="http://common.like.naver.com/static20171214180606/css/desktop/likeit_movie.css" charset="utf-8">
<link type="text/css" rel="stylesheet" href="http://common.like.naver.com/static20171214180606/css/desktop/likeit.css" charset="utf-8">
<link type="text/css" rel="stylesheet" href="http://static.cbox.naver.net/20171215141921/css/comment_movie.css" charset="utf-8">
<script type="text/javascript">
function logi(){
	if (confirm("바코드 로그인 후 이용해주시기 바랍니다.") == true){    //확인
		location.replace('../member/login.jsp'); 
	}else{   //취소
	    return;
	}
}
function fold(id){
	if(document.getElementById(id).style.display=='block')
		document.getElementById(id).style.display='none';
	else
		document.getElementById(id).style.display='block';
}
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
</script>
<div id="wrap" class="basic">
	<!-- GNB -->
<div class="gnb_container">
	<div class="gnb_content">
		<div class="gnb_box">
			<div class="gnb_wrap">
<%if(id == null || id.equals("")){%>
				<div id="gnb" class="gnb_dark_type2"> <strong class="blind">사용자 링크</strong> <ul class="gnb_lst" id="gnb_lst" style="display: block;"> <li class="gnb_login_li" id="gnb_login_layer" style="display: inline-block;"><a class="gnb_btn_login" href="../member/login.jsp" id="gnb_login_button"><span class="gnb_bg"></span><span class="gnb_bdr"></span><span class="gnb_txt">로그인</span></a></li> <iframe id="gnb_my_lyr_iframe" title="빈 프레임" class="gnb_pad_lyr" name="padding" width="0" height="0" scrolling="no" frameborder="0" style="top: 34px; right: -4px; width: 320px; height: 174px; display: none; opacity: 0; -ms-filter: alpha(opacity = 0)" src="../img/movie/saved_resource.html"></iframe></li> <li class="gnb_notice_li gnb_lyr_opened" id="gnb_notice_layer" style="display: none"><a href="javascript:;" class="gnb_notice" onclick="alarm(); return false;"><span class="blind">알림</span><span class="gnb_icon"></span><em class="gnb_ico_num" id="gnb_me_menu" style="display: none"><span class="gnb_ico_new"><span class="gnb_count" id="gnb_me_count"></span></span></em><span class="ico_arrow"></span></a> <div class="gnb_notice_lyr" id="gnb_notice_lyr"> <div class="svc_noti svc_panel"> <div class="svc_scroll"> <div class="svc_head"> <strong class="gnb_tit">전체 알림</strong> <div class="task_right"> <button onclick="gnbNaverMeLayer.deleteReadList(this, event);" id="gnb_btn_read_noti_del">읽은 알림 삭제</button> <button onclick="gnbNaverMeLayer.showDeleteAlert();" id="gnb_btn_all_noti_del">모두 삭제</button> </div> </div> <div class="svc_body" id="gnb_naverme_layer"></div> </div> <div class="gnb_ly_alert" id="gnb_ly_alert" style="display: none;"> <p class="gnb_msg"> <strong>알림을 모두 삭제하시겠습니까?</strong> </p> <div class="gnb_btns"> <button id="ly_alert_confirm" onclick="gnbNaverMeLayer.deleteAllList(this, event);">확인</button> <button onclick="gnbNaverMeLayer.hideDeleteAlert();">취소</button> </div> <button class="gnb_btn_close" onclick="gnbNaverMeLayer.hideDeleteAlert();"> <i>레이어 닫기</i> </button> </div> <a href="http://me.naver.com/box/noti.nhn" class="gnb_notice_all">내 알림 전체보기</a> </div> </div> <iframe id="gnb_notice_lyr_iframe" title="빈 프레임" class="gnb_pad_lyr" name="padding" width="0" height="0" scrolling="no" frameborder="0" style="top: 34px; right: -4px; width: 299px; height: 332px; display: none; opacity: 0; -ms-filter: alpha(opacity = 0)" src="../img/movie/saved_resource(1).html"></iframe></li> <li class="mail_li" id="gnb_mail_layer" style="display: none"><a href="http://mail.naver.com/" class="gnb_mail"><span class="blind">메일</span><span class="gnb_icon"></span><em class="gnb_ico_num" id="gnb_mail_menu" style="display: none"><span class="gnb_ico_new"><span class="gnb_count" id="gnb_mail_count"></span></span></em></a></li> </ul>
				</div>
<%}else{%>
				<div id="gnb" class="gnb_dark_type2"><strong class="blind">사용자 링크</strong><ul class="gnb_lst" id="gnb_lst" style="display: block;"><li class="gnb_login_li" id="gnb_login_layer" style="display: none;"><a class="gnb_btn_login" href="https://nid.naver.com/nidlogin.login" id="gnb_login_button"><span class="gnb_bg"></span><span class="gnb_bdr"></span><span class="gnb_txt">로그인</span></a></li><li class="gnb_my_li" id="gnb_my_layer" style="display: inline-block;"><div class="gnb_my_namebox" id="gnb_my_namebox" style="background-image: url(&quot;http://static.naver.net/common/gnb/2014/ico_arrow_wh.gif&quot;);"><a href="javascript:;" class="gnb_my" onclick="mypage()"><img id="gnb_profile_img" src="http://static.naver.net/common/myarea/myInfo.gif" width="26" height="26" alt="내 프로필 이미지" style="display: inline-block;"><span id="gnb_profile_filter_mask" class="filter_mask" style="display: inline-block;"></span> <span class="gnb_name" id="gnb_name1"><%=name %></span><em class="blind">내정보 보기</em><span class="ico_arrow"></span></a><a href="#" class="gnb_emp" id="gnb_emp" style="display: none;">(임직원혜택)</a></div><div class="gnb_my_lyr" id="gnb_my_lyr"><div class="gnb_my_content"><div class="gnb_img_area"><span class="gnb_mask"></span><img src="http://static.naver.net/common/myarea/myInfo.gif" width="80" height="80" alt=""><a href="https://nid.naver.com/user2/api/naverProfile.nhn?m=checkIdType" class="gnb_change"><span class="blind">프로필 사진 변경</span></a></div><div class="gnb_txt_area"><p class="gnb_account"><span class="gnb_name" id="gnb_name2"><a class="gnb_nick" href="https://nid.naver.com/user2/api/naverProfile.nhn?m=checkIdType"><%=name %></a>님</span><a class="gnb_btn_login" href="../member/logout.jsp"><span class="gnb_bg"></span><span class="gnb_bdr"></span><span class="gnb_txt">로그아웃</span></a></p><a href="http://mail.naver.com" class="gnb_mail_address"><%=email %></a><ul class="gnb_edit_lst"><li class="gnb_info"><a href="https://nid.naver.com/user2/help/myInfo.nhn?menu=home">내정보</a></li></ul><p class="gnb_pay_check" id="gnb_pay_check"><em>B Pay</em><a href="http://pay.naver.com" id="gnb_pay_point"><span>내 페이포인트</span><strong>63,035원</strong></a></p></div></div><a href="#" class="gnb_my_interface" style="display:none"><span class="blind">환경설정</span></a></div></li><li class="gnb_notice_li" id="gnb_notice_layer" style="display: inline-block;"><a href="javascript:;" class="gnb_notice" onclick="alarm(); return false;"><span class="blind">알림</span><span class="gnb_icon"></span><em class="gnb_ico_num" id="gnb_me_menu" style="display:none"><span class="gnb_ico_new"><span class="gnb_count" id="gnb_me_count" style="display: inline-block;"></span></span></em><span class="ico_arrow"></span></a><div class="gnb_notice_lyr" id="gnb_notice_lyr"><div class="svc_noti svc_panel"><div class="svc_scroll"><div class="svc_head"><strong class="gnb_tit">전체 알림</strong><div class="task_right"><button onclick="gnbNaverMeLayer.deleteReadList(this, event);" id="gnb_btn_read_noti_del">읽은 알림 삭제</button><button onclick="gnbNaverMeLayer.showDeleteAlert();" id="gnb_btn_all_noti_del">모두 삭제</button></div></div><div class="svc_body" id="gnb_naverme_layer"></div></div><div class="gnb_ly_alert" id="gnb_ly_alert" style="display: none;"><p class="gnb_msg"><strong>알림을 모두 삭제하시겠습니까?</strong></p><div class="gnb_btns"><button id="ly_alert_confirm" onclick="gnbNaverMeLayer.deleteAllList(this, event);">확인</button><button onclick="gnbNaverMeLayer.hideDeleteAlert();">취소</button></div><button class="gnb_btn_close" onclick="gnbNaverMeLayer.hideDeleteAlert();"><i>레이어 닫기</i></button></div><a href="http://me.naver.com/box/noti.nhn" class="gnb_notice_all">내 알림 전체보기</a></div></div><iframe id="gnb_notice_lyr_iframe" title="빈 프레임" class="gnb_pad_lyr" name="padding" width="0" height="0" scrolling="no" frameborder="0" style="top:34px;right:-4px;width:299px;height:332px;display:none;opacity:0;-ms-filter:alpha(opacity=0)"></iframe></li><li class="gnb_service_li" id="gnb_service_layer" style="display: inline-block;"><a href="javascript:;" class="gnb_service" onclick="service(); return false;"><span class="blind">서비스 더보기</span><span class="gnb_icon"></span><span class="ico_arrow"></span></a><div class="gnb_service_lyr" id="gnb_service_lyr"><div class="gnb_favorite_search" id="gnb_favorite_search"><div class="gnb_favorite_area"><div class="gnb_favorite_lstwrp"><div class="gnb_first_visit" style="display:none"><span class="blind">나만의 즐겨찾기를 추가해 보세요!</span><a href="#" class="gnb_close"><span class="blind">닫기</span></a></div><strong class="blind">즐겨찾는 서비스</strong><ul class="gnb_favorite_lst" id="gnb_favorite_lst"><li class="gnb_add"><a href="#"><span class="ic_add"></span>추가</a></li><li class="gnb_add"><a href="#"><span class="ic_add"></span>추가</a></li><li class="gnb_add"><a href="#"><span class="ic_add"></span>추가</a></li><li class="gnb_add"><a href="#"><span class="ic_add"></span>추가</a></li></ul><a href="#" class="gnb_my_interface" onclick="gnbMoreLayer.clickToggleWhole(); return false;"><span class="blind">즐겨찾기 설정</span></a></div></div><div class="gnb_search_area"><div class="gnb_search_box" onmouseover="gnb_search.mouseOver(this);" onmouseout="gnb_search.mouseOut(this);"><input id="gnb_svc_search_input" type="text" title="서비스 검색" value="더 많은 서비스를 간편하게 시작하세요!" onfocus="gnb_search.clearInput(this);" onblur="gnb_search.resetInput(this);" onkeydown="gnb_search.keyDown(event);" onkeyup="gnb_search.keyUp(event);"><a href="#" class="gnb_del_txt" id="gnb_del_txt" style="display:none"><span class="blind">삭제</span></a><div class="gnb_pop_input" id="gnb_pop_input" tabindex="0" onfocus="gnb_search.searchPopOnMouse = true; return false;" onfocusout="gnb_search.searchPopOnMouse = false; return false;" onmouseover="gnb_search.searchPopOnMouse = true; return false;" onmouseout="gnb_search.searchPopOnMouse = false; return false;" style="display:none"><ul class="gnb_pop_lst"></ul></div></div><div class="gnb_search_lstwrp"><ul class="gnb_search_lst gnb_first"><li class="gnb_first"><a href="http://cafe.naver.com/">카페</a></li><li><a href="http://news.naver.com/">뉴스</a></li><li><a href="http://map.naver.com/">지도</a></li><li><a href="http://sports.news.naver.com/">스포츠</a></li><li><a href="http://game.naver.com/">게임</a></li></ul><ul class="gnb_search_lst"><li class="gnb_first"><a href="http://section.blog.naver.com/">블로그</a></li><li><a href="http://post.naver.com/main.nhn">포스트</a></li><li><a href="http://dic.naver.com/">사전</a></li><li><a href="http://kin.naver.com/">지식iN</a></li><li><a href="http://weather.naver.com/">날씨</a></li></ul><ul class="gnb_search_lst"><li class="gnb_first"><a href="http://mail.naver.com/">메일</a></li><li><a href="http://stock.naver.com/">증권</a></li><li><a href="http://land.naver.com/">부동산</a></li><li><a href="http://music.naver.com/">뮤직</a></li><li><a href="http://book.naver.com">책</a></li></ul><ul class="gnb_search_lst"><li class="gnb_first"><a href="http://shopping.naver.com/">쇼핑</a></li><li><a href="http://comic.naver.com/">웹툰</a></li><li><a href="./movie_home.jsp">영화</a></li><li><a href="http://cloud.naver.com/">클라우드</a></li><li><a href="http://auto.naver.com/">자동차</a></li></ul></div></div><div class="gnb_banner"><a href="http://campaign.naver.com/pointevent/" class="gnb_service_event"><img id="gnb_promo" alt="네이버페이 | 12월 이벤트" width="265" height="47" src="http://static.naver.net/common/gnb/banner/promo_npay_1712.png"></a></div><div class="gnb_linkwrp"><a href="http://www.naver.com/more.html" class="gnb_service_all" id="gnb_service_all">전체 서비스 보기</a></div></div><div class="gnb_svc_more" id="gnb_svc_more" style="display: none;"><strong class="blind">네이버 주요 서비스</strong><div class="gnb_bg_top"></div><div class="gnb_svc_hd"><strong class="gnb_svc_tit">바로가기 설정</strong><span class="link"><a href="http://www.naver.com/more.html">전체 서비스 보기</a></span></div><div class="gnb_svc_lstwrp"><div class="gnb_svc_lst1"><ul class="gnb_first"><li><input type="checkbox" id="nsvc_game" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_game">게임</label></li><li><input type="checkbox" id="nsvc_weather" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_weather">날씨</label></li><li><input type="checkbox" id="nsvc_shopping" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_shopping">네이버쇼핑</label></li><li><input type="checkbox" id="nsvc_navercast" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_navercast">네이버캐스트</label></li><li><input type="checkbox" id="nsvc_cloud" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_cloud">네이버클라우드</label></li><li class="gnb_event"><input type="checkbox" id="nsvc_naverpay" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_naverpay">네이버페이</label><em class="ic_gnb_new">New</em></li><li><input type="checkbox" id="nsvc_news" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_news">뉴스</label></li><li><input type="checkbox" id="nsvc_comic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_comic">만화/웹툰</label></li><li><input type="checkbox" id="nsvc_memo" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_memo">메모</label></li><li><input type="checkbox" id="nsvc_mail" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_mail">메일</label></li><li><input type="checkbox" id="nsvc_music" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_music">뮤직</label></li><li><input type="checkbox" id="nsvc_land" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_land">부동산</label></li><li><input type="checkbox" id="nsvc_bookmark" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_bookmark">북마크</label></li></ul><ul class=""><li><input type="checkbox" id="nsvc_blog" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_blog">블로그</label></li><li><input type="checkbox" id="nsvc_dic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_dic">사전</label></li><li><input type="checkbox" id="nsvc_software" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_software">소프트웨어</label></li><li><input type="checkbox" id="nsvc_sports" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_sports">스포츠</label></li><li><input type="checkbox" id="nsvc_ya9" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_ya9">야구9단</label></li><li><input type="checkbox" id="nsvc_movie" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_movie">영화</label></li><li><input type="checkbox" id="nsvc_office" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_office">오피스</label></li><li><input type="checkbox" id="nsvc_novel" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_novel">웹소설</label></li><li><input type="checkbox" id="nsvc_auto" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_auto">자동차</label></li><li><input type="checkbox" id="nsvc_contact" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_contact">주소록</label></li><li><input type="checkbox" id="nsvc_finance" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_finance">증권(금융)</label></li><li><input type="checkbox" id="nsvc_map" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_map">지도</label></li><li><input type="checkbox" id="nsvc_kin" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_kin">지식iN</label></li></ul><ul class=""><li><input type="checkbox" id="nsvc_terms" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_terms">지식백과</label></li><li><input type="checkbox" id="nsvc_book" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_book">책</label></li><li><input type="checkbox" id="nsvc_cafe" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_cafe">카페</label></li><li><input type="checkbox" id="nsvc_calendar" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_calendar">캘린더</label></li><li><input type="checkbox" id="nsvc_photo" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_photo">포토갤러리</label></li><li><input type="checkbox" id="nsvc_nstore" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_nstore">N스토어</label></li><li><input type="checkbox" id="nsvc_navertv" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_navertv">네이버TV</label></li></ul></div><div class="svc_lst2"><div class="svc_spc gnb_first"><strong><a href="http://dic.naver.com/">어학사전</a></strong><ul class=""><li><input type="checkbox" id="nsvc_krdic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_krdic">국어사전</label></li><li><input type="checkbox" id="nsvc_endic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_endic">영어/영영사전</label></li><li><input type="checkbox" id="nsvc_hanja" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_hanja">한자사전</label></li><li><input type="checkbox" id="nsvc_jpdic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_jpdic">일어사전</label></li><li><input type="checkbox" id="nsvc_cndic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_cndic">중국어사전</label></li><li><input type="checkbox" id="nsvc_frdic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_frdic">프랑스어사전</label></li><li><input type="checkbox" id="nsvc_dedic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_dedic">독일어사전</label></li><li><input type="checkbox" id="nsvc_rudic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_rudic">러시아어사전</label></li><li><input type="checkbox" id="nsvc_vndic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_vndic">베트남어사전</label></li><li><input type="checkbox" id="nsvc_spdic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_spdic">스페인어사전</label></li><li><input type="checkbox" id="nsvc_translate" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_translate">번역기</label></li></ul></div><div class="svc_spc"><strong>인기/신규서비스</strong><ul class=""><li><input type="checkbox" id="nsvc_grafolio" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_grafolio">그라폴리오</label></li><li><input type="checkbox" id="nsvc_post" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_post">포스트</label></li><li><input type="checkbox" id="nsvc_luncherapp" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_luncherapp">도돌런처</label></li><li><input type="checkbox" id="nsvc_band" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_band">밴드</label></li><li><input type="checkbox" id="nsvc_line" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_line">라인</label></li></ul></div></div></div><div class="svc_btnwrp"><div class="svc_btns"><button class="gnb_save" onclick="if(gnbFavorite.addService()){gnbMoreLayer.clickToggleWhole()} return false;"><strong class="blind">확인</strong></button><button class="gnb_close" onclick="gnbFavorite.cancel(); return false;"><span class="blind">취소</span></button><button class="gnb_return" onclick="gnbFavorite.resetService(); return false;"><span class="blind">초기 설정으로 변경</span></button></div></div><div class="gnb_bg_btm"></div></div></div><iframe id="gnb_service_lyr_iframe" title="빈 프레임" class="gnb_pad_lyr" name="padding" width="0" height="0" scrolling="no" frameborder="0" style="display:none;top:34px;right:297px;width:585px;height:385px;opacity:0;-ms-filter:alpha(opacity=0)"></iframe><iframe id="gnb_svc_more_iframe" title="빈 프레임" class="gnb_pad_lyr" name="padding" width="0" height="0" scrolling="no" frameborder="0" style="display:none;top:34px;right:-4px;width:295px;height:385px;opacity:0;-ms-filter:alpha(opacity=0)"></iframe></li></ul>
				</div>
<%}%>
			</div>
			<!-- 검색창 -->
			<form id="jSearchForm" action="./movie_home.jspmovie/search/result.nhn" method="get" style="margin:0;display:none;">
				<input type="text" name="query" maxlength="100" title="영화검색">
				<input type="hidden" name="section" value="all">
				<input type="hidden" name="ie" value="utf8">
			</form>
			<fieldset id="jSearchArea" class="srch_area">
				<legend><span class="blind">영화검색 영역</span></legend>
				<div class="srch_field_on _view">
					<span class="ipt_srch">
						<label for="ipt_tx_srch" id="search_placeholder">네이버로 영화검색</label>
						<input type="text" id="ipt_tx_srch" class="ipt_tx_srch" name="query" maxlength="100" accesskey="s" style="ime-mode:active;" autocomplete="off">
						<span class="align"></span>
						<span class="auto_tx"><a href="./movie_home.jsp#" title="자동완성 펼치기"><img src="../img/movie/srch_arrow_down.gif" width="7" height="4" title="자동완성 펼치기" alt="자동완성 펼치기"></a></span>
					</span>
					<button type="submit" title="검색" class="btn_srch" onclick="clickcr(this,'GNB.search','','',event); delayed_submit(this);"><span class="blind">검색</span></button>
					 <!-- 자동 완성 영역임 #autocomplate_template-->
				</div>
			</fieldset>
			<!-- //검색창 -->
		</div>
	</div>
</div>
	<!-- //GNB -->
	<!-- header -->
<div id="header" style="bottom: 0px;">
		<a href="./movie_home.jspmovie/bi/mi/basic.nhn?code=152385#content" title="본문으로 이동" class="blind">본문 바로가기</a>
		<h1 class="svc_name">
			<a href="../index.jsp" title="barcodew로 바로가기" class="ci_logo" id="lnb_gonaver"><img src="../img/movie/logo_ci.png" width="62" height="13" alt="NAVER"></a><!-- N=a:LNB.naver -->
			<a href="./movie_home.jsp" title="영화서비스홈으로 바로가기" class="svc_logo"><img src="../img/movie/logo_svc.png" width="34" height="19" alt="영화"></a><!-- N=a:LNB.movie -->
		</h1>		<div id="scrollbar" class="scrollbar" style="width: 148px; height: 891px;">
			<div class="scrollbar-box" style="width: 148px; height: 891px;">
				<div class="scrollbar-content" style="top: 0px; width: 148px; height: auto;">
                    <div class="in_scroll">
                        <ul class="navi">
                        <li>
                            <a href="./movie_home.jsp" title="영화홈" class="menu01<%if(index==null&&cate==null){%>_on<%}%>"><strong>영화홈</strong></a><!-- N=a:LNB.home -->
                        </li>
                        <li>
                            <a href="<%=request.getRequestURI()%>?cate=1" title="상영작·예정작" class="menu02<%if(cate!=null&&cate.equals("1")){%>_on<%}%>"><strong>상영작·예정작</strong></a><!-- N=a:LNB.movies -->
                            <ul class="navi_sub" id="navi_movie" style="display:<%if(index==null&&cate==null||cate!=null&&cate.equals("2")){%>none<%}%>;">
                            <li><a href="<%=request.getRequestURI()%>?cate=1" title="현재 상영영화" class="sub2_1<%if(pre==null){%>_on<%}%>"><em>현재 상영영화</em></a><!-- N=a:LNB.now --></li>
                            <li><a href="<%=request.getRequestURI()%>?cate=1&&pre=1" title="개봉 예정영화" class="sub2_2<%if(pre!=null&&pre.equals("1")){%>_on<%}%>"><em>개봉 예정영화</em></a><!-- N=a:LNB.soon --></li>
                            </ul>
                        </li>
                        <li>
                            <a href="<%=request.getRequestURI()%>?cate=2" title="영화랭킹" class="menu03<%if(cate!=null&&cate.equals("2")){%>_on<%}%>"><strong>영화랭킹</strong></a><!-- N=a:LNB.db -->
                        </li>
                        </ul>
                    </div>
				</div>
			</div>
			<div class="scrollbar-v">
				<div class="scrollbar-button-up rollover"></div>
				<div class="scrollbar-track rollover">
					<div class="scrollbar-thumb S16891001 rollover" style="top: 0px; height: 0px;"></div>
				</div>
				<div class="scrollbar-button-down rollover"></div>
			</div>
		</div>
	</div>	
	<!-- container -->
	<div id="container">
			<!-- 상단 현재 상영작 썸네일 리스트 -->
<!-- content -->
<%if(index!=null){ %>
<div id="content">
	<div class="article">
<!-- 영화정보(wide) -->
<div class="wide_info_area" style="display: none;">
	<!-- 포스터 -->
	<div class="poster">
				<a href="./movie_home.jspmovie/bi/mi/basic.nhn?code=152385#" onclick="javascript:common.iwopen(&#39;152385&#39;);clickcr(this,&#39;ifo.img&#39;,&#39;&#39;,&#39;&#39;,event);return false;"><img src="./movie_home_files/movie_image.jpg" alt="<%=title%>" onerror="this.src=&#39;http://static.naver.net/movie/2012/06/dft_img77x110_1.png&#39;"><span>포스터 크게보기</span></a>
	</div>
	<!-- //포스터 -->
	<div class="mv_info">
		<h3 class="h_movie">
			<a><%=title%></a>
<%if(count<=0) {%>
					<a class="opening"><em>상영중</em></a>
<%}else{ %>
					<a class="dday_box"><em class="blind">개봉예정 D-day</em><span><span class="day2"><em>2</em></span><span class="day2"><em>2</em></span></span></a>
<%} %>
			<strong class="h_movie2" title=<%=subtitle%>><%=subtitle%></strong>
		</h3>
		<div class="main_score">
				<div class="score">
					<div class="uio_ntz_btn see">
						<span class="ntz _actualPointHelpWide">
							<em class="blind">관람객 평점</em>
							<a href="./movie_home.jspmovie/bi/mi/basic.nhn?code=152385#" id="actualPointHelpButtonWide" class="help _actualPointHelpWide">관람객 평점 도움말</a>
						</span>
						<div class="ly_ntz _actualPointHelpWide" id="actualPointHelpWide" style="display:none">
							<span></span>
							관람객 평점은 바코드영화에서<br>예매하고 실제 관람 후 이용자들이<br>작성한 평점입니다.
							<button type="button" class="btn_close _actualPointHelpWide" id="actualPointHelpCloseButtonWide"><em>닫기</em></button>
						</div>
						<div class="ly_count" id="actualPointCountWide" style="display:none">
							<span></span>
							참여 <em>3,587</em>명
						</div>
					</div>
					<a id="actualPointPersentWide" href="./movie_home.jspmovie/bi/mi/point.nhn?code=152385&amp;onlyActualPointYn=Y#pointAfterTab" class="ntz_score">
						<div class="star_score">
							<span class="st_off"><span class="st_on" style="width:83.7%">관람객 평점 8.37점</span></span><em class="num8">8</em><em class="dot">.</em><em class="num3">3</em><em class="num7">7</em>
						</div>
					</a><!-- N=a:ifo.mgrating -->
				</div>
				<div class="score">
					<div class="spc_score_area">
						<a href="./movie_home.jspmovie/bi/mi/point.nhn?code=152385#pointExpertTab" class="spc">
							<span class="spc_score"><em class="blind">기자 · 평론가 평점</em></span>
							<div class="star_score">
								<span class="st_off"><span class="st_on" style="width:44.0%"></span></span><em class="num4">4</em><em class="dot">.</em><em class="num4">4</em><em class="num0">0</em>
							</div>
						</a><!-- N=a:ifo.crating -->
					</div>
				</div>
			<div class="score">
				<div class="uio_ntz_btn">
					<span class="ntz">
						<em class="blind">네티즌 평점</em><a href="./movie_home.jspmovie/bi/mi/basic.nhn?code=152385#" class="help" id="pointHelpButtonWide" title="네티즌 평점 도움말 보기">네티즌 평점 도움말</a>
					</span>
					<div class="ly_ntz _pointHelpWide" id="pointHelpWide" style="display:none">
						<span></span>국내 개봉작입니다. 관람하신 영화에 대한<br> 평점을 남겨주세요. 140자평 뿐 아니라 블<br>로그 영화 리뷰작성 시 등록한 별점도 함께<br> 반영됩니다.
						<button type="button" class="btn_close _pointHelpWide" id="pointHelpCloseButtonWide"><em>닫기</em></button>
					</div>
					<div class="ly_count" id="pointNetizenCountWide" style="display:none">
						<span></span>
						참여 <em>10,325</em>명
					</div>
				</div>
				<div class="star_score ">
					<a id="pointNetizenPersentBasic">
						<span class="st_off"><span class="st_on" style="width:<%=Float.parseFloat(star)*10%>%"></span></span>
				<%for(int i=0;i<starS.length();i++){ if(starS.charAt(i)==".".charAt(0)) {%>
					<em class="dot"><%=starS.charAt(i)%></em> 
				<%}else{%>
						<em class="num<%=starS.charAt(i)%>"><%=starS.charAt(i)%></em>
				<%}}%>
					</a>
				</div>
			</div>
			<div id="noPointWide" class="score">
				<div class="my_score_area">
					<!--[D] 내평점이 없는경우 화살표를 없애기 위해 class="my"가 빠진다 -->
					<a href="<%=request.getRequestURI()%>?index=<%=idx%>&&num=2">
						<span class="my_score"><em class="blind">내 평점</em></span>
						<div class="star_score">
							<span class="st_off"><span class="st_on" style="width:0%">0점</span></span>
							<span class="btn_write">등록</span>
						</div>
					</a>
				</div>
			</div>
			<div id="existPointWide" class="score" style="display : none">
				<div class="my_score_area">
					<a href="javascript:pointWide.toggleMyPoint();" class="my">
						<span class="my_score">
							<em class="blind">내 평점</em>
						</span>
						<div id="starPointWide" class="star_score">
							<span class="st_off"><span id="pointStarWide" class="st_on" style="width:0%"></span></span>
						</div>
					</a><!-- N=a:ifo.marating -->
					<div class="ly_my" id="myPointLayerWide" style="display:none">
						<span id="pointTextWide"></span><a id="pointRemoveWide" href="javascript:checkAlreadyPointAfterExist(&#39;wide&#39;, );" class="btn_del">삭제</a>
						<a href="javascript:pointWide.toggleMyPoint();" class="btn_close"><em>닫기</em></a>
					</div>
				</div>
			</div>				
		</div>
		<p class="info_spec">
				<span>
				<a><%=genre %></a>
				</span>
				<span>
				<a><%=country %></a>
				</span>
				<span><%=runtime %></span>
				<span>
						<a><%=opendate %></a> 개봉
				</span>
				<span>
					<a><%=age %>세 관람가</a>
				</span>
		</p>
		<div class="info_spec2">
			<dl class="step1">
				<dt>감독</dt>
				<dd>
					<a><%=director %></a>
				</dd>
			</dl>
			<dl class="step2">
				<dt>출연</dt>
				<dd>
					<a><%=actor %></a>
				</dd>
			</dl>
		</div>
			<div class="end_btn_area">
				<ul>
					<li><a href="./movie_home.jspmovie/bi/mi/reserve.nhn?code=152385" title="예매하기" class="btn_rsv _reserveHelpWide" id="reserveWide"><em>예매하기</em></a>
						<div class="ly_mileage _reserveHelpWide" id="reserveHelpWide" style="display:none">
							<span></span>영화관람후 평점을 작성하시면 <em>바코드페이 포인트 500원</em>을 드립니다! <a href="./movie_home.jspmovie/bi/mi/basic.nhn?code=152385#" id="reserveHelpWideCloseButton" class="btn_close _reserveHelpWide"><em>닫기</em></a>
						</div>
					</li>
					<li><div class="u_likeit_module"><a href="#" class="u_likeit_btn off" onclick="nhn.LikeIt.config.nClicks(this, 'LIK.like', '', '', event);" "=""><span class="u_ico"></span><em class="u_cnt"><%=like %></em></a></div></li>
				</ul>
			</div>
		<div class="spi_area">
			<div id="wideSpiLayer" class="naver-splugin" data-style="standard-v1-text" data-me-display="off" data-oninitialize="movie_oninitialize()" splugin-id="543426733"><div class="_ly_spi spi_default" style="display: block;">	<ul class="_spi_lst spi_lst">		<li class="_spi_blog spi_btn_blog"><a href="file:///C:/Users/Soo/git/SearchPortal/Barcode/WebContent/movie/movie_home.html#" title="블로그 보내기" class="_spi_blog" target="_blank">블로그</a></li><li class="_spi_cafe spi_btn_cafe"><a href="file:///C:/Users/Soo/git/SearchPortal/Barcode/WebContent/movie/movie_home.html#" title="카페 보내기" class="_spi_cafe" target="_blank">카페</a></li><li class="_spi_bookmark spi_btn_bookmark"><a href="file:///C:/Users/Soo/git/SearchPortal/Barcode/WebContent/movie/movie_home.html#" title="북마크로 보내기" class="_spi_bookmark" target="_blank">북마크</a></li><li class="_spi_memo spi_btn_memo"><a href="file:///C:/Users/Soo/git/SearchPortal/Barcode/WebContent/movie/movie_home.html#" title="메모 보내기" class="_spi_memo" target="_blank">메모</a></li><li class="_spi_pholar spi_btn_pholar"><a href="file:///C:/Users/Soo/git/SearchPortal/Barcode/WebContent/movie/movie_home.html#" title="폴라 보내기" class="_spi_pholar" target="_blank">폴라</a></li><li class="_spi_release_cont _spi_release_btn spi_btn_release">	<a href="file:///C:/Users/Soo/git/SearchPortal/Barcode/WebContent/movie/movie_home.html#" class="_spi_release " title="기타 보내기 펼치기"><span class="_spi_release spi_bg_release"></span>보내기<em class="_spi_release " style="display: block"></em></a></li>	</ul>	<div class="_spi_ly_bmk_ok spi_ly_pop" style="display:none;left: -78px; top: 20px; width: 253px;">		<p class="spi_dsc">북마크 되었습니다.<br> <a href="http://me.naver.com/tab/bookmark.nhn" target="_blank" class="_ly_bmk_ok_cls _ly_bmk_lnk spi_impact">바코드 북마크 가기</a></p>		<button class="_ly_bmk_ok_cls spi_close" type="button"><span class="_ly_bmk_ok_cls" title="북마크 레이어 닫기"></span><em class="_ly_bmk_ok_cls">X</em></button>	</div>	<div class="_spi_ly_bmk_cnf spi_ly_pop spi_ly_pop_v2" style="display:none;left: -78px; top: 20px; width: 253px;">		<p class="spi_dsc">현재 북마크 되어 있습니다.<br>북마크를 해제하시겠습니까?</p>		<div class="spi_btn">			<a href="file:///C:/Users/Soo/git/SearchPortal/Barcode/WebContent/movie/movie_home.html#" class="_ly_bmk_cnf_y spi_y " target="_blank"><span class="_ly_bmk_cnf_y"></span>예</a>			<a href="file:///C:/Users/Soo/git/SearchPortal/Barcode/WebContent/movie/movie_home.html#" class="_ly_bmk_cnf_n spi_n " target="_blank"><span class="_ly_bmk_cnf_n"></span>아니오</a>		</div>		<button class="_ly_bmk_cnf_cls spi_close" type="button"><span class="_ly_bmk_cnf_cls" title="북마크 레이어 닫기"></span><em class="_ly_bmk_cnf_cls">X</em></button>	</div>	<div class="_spi_ly_bmk_err spi_ly_pop" style="display:none;left: -78px; top: 20px; width: 253px;">		<p class="spi_dsc">서버 접속이 원활하지 않습니다.<br> 잠시 후 다시 시도해 주십시오.</p>		<button class="_ly_bmk_err_cls spi_close" type="button"><span class="_ly_bmk_err_cls" title="북마크 레이어 닫기"></span><em class="_ly_bmk_err_cls">X</em></button>	</div>	<div class="_spi_ly_bmk_ros spi_ly_pop" style="display:none;left: -78px; top: 20px; width: 253px;">		<p class="spi_dsc">북마크 서비스 점검 중으로,<br>현재 북마크 읽기만 가능하오니<br>이용에 참고해 주시기 바랍니다.</p>		<button class="_ly_bmk_ros_cls spi_close" type="button"><span class="_ly_bmk_ros_cls" title="북마크 레이어 닫기"></span><em class="_ly_bmk_ros_cls">X</em></button>	</div>	<div class="_spi_ly_pop spi_ly_pop ly_pop_v1" style="display:none;top: -82px; left: 136px; width: 213px">		<p class="_ly_pop spi_dsc">이  마음에 드셨다면<br><a href="http://me.naver.com/" target="_blank" class="_ly_pop_lnk _ly_pop spi_impact">바코드me</a>에서 편하게 받아보세요.</p>		<div class="_ly_pop spi_ico_arr "></div>	</div></div></div>
		</div>
	</div>
	
</div>
<!-- //영화정보(wide) -->
<!-- 영화정보(basic) -->
<div class="mv_info_area" style="display: block;">
	<div class="mv_info">
		<h3 class="h_movie">
		
		<a><%=title%></a><!-- N=a:ifo.title --> 
<%if(count<=0) {%>
				<a class="opening"><em>상영중</em></a>
<%}else{ %>
				<a class="dday_box"><em class="blind">개봉예정 D-day</em><span>
	<%for(int i=0;i<(count+"").length();i++) {%>
				<span class="day<%=(count+"").charAt(i)%>"><em>(count+"").charAt(i)</em></span>
	<%} %>
				</span></a>
<%} %>
		</h3>
		<strong class="h_movie2" title="The Swindlers, 2017">The Swindlers, 2017</strong>
		<div class="main_score">		
			<div class="score score_left">
				<div class="uio_ntz_btn">
					<span class="ntz">
						<em class="blind">네티즌 평점</em><a href="./movie_home.jspmovie/bi/mi/basic.nhn?code=152385#" class="help" id="pointHelpButtonBasic" title="네티즌 평점 도움말 보기">네티즌 평점 도움말</a>
					</span>
					<div class="ly_ntz" id="pointHelpBasic" style="display:none" z-index="20">
						<span></span>
						<strong class="blind">네티즌 평점 도움말</strong>
								국내 개봉작입니다. 관람하신 영화에 대한<br> 평점을 남겨주세요. 140자평 뿐 아니라 블<br>로그 영화 리뷰작성 시 등록한 별점도 함께<br> 반영됩니다.
						<button type="button" class="btn_close" id="pointHelpCloseButtonBasic"><em>닫기</em></button>
					</div>
					<div class="ly_count" id="pointNetizenCountBasic" style="display: none;">
						<span></span>
						참여 <em>10,325</em>명
					</div>
				</div>
				<div class="star_score ">
					<a id="pointNetizenPersentBasic">
						<span class="st_off"><span class="st_on" style="width:<%=Float.parseFloat(star)*10%>%"></span></span>
				<%for(int i=0;i<starS.length();i++){ if(starS.charAt(i)==".".charAt(0)) {%>
					<em class="dot"><%=starS.charAt(i)%></em> 
				<%}else{%>
						<em class="num<%=starS.charAt(i)%>"><%=starS.charAt(i)%></em>
				<%}}%>
					</a>
				</div>
			</div>
				<div id="noPoint" class="score">
					<div class="my_score_area">
						<!--[D] 내평점이 없는경우 화살표를 없애기 위해 class="my"가 빠진다 -->
						<a href="<%=request.getRequestURI()%>?index=<%=idx%>&&num=2">
							<span class="my_score"><em class="blind">내 평점</em></span>
							<div class="star_score">
								<span class="st_off"><span class="st_on" style="width:0%">0점</span></span>
								<span class="btn_write">등록</span>
							</div>
						</a>
					</div>
				</div>
				<div id="existPoint" class="score" style="display : none">
					<div class="my_score_area">
						<a href="javascript:pointBasic.toggleMyPoint();" class="my">
							<span class="my_score">
								<em class="blind">내 평점</em>
							</span>
							<div id="starPoint" class="star_score">
								<span class="st_off"><span id="pointStar" class="st_on" style="width:0%"></span></span>
							</div>
						</a><!-- N=a:ifo.marating -->
						<div class="ly_my" id="myPointLayerBasic" style="display:none">
							<span id="pointText"></span><a id="pointRemove" href="javascript:checkAlreadyPointAfterExist(&#39;basic&#39;, );" class="btn_del">삭제</a>
							<a href="javascript:pointBasic.toggleMyPoint();" class="btn_close"><em>닫기</em></a>
						</div>
					</div>
				</div>
			
		</div>
				
		<dl class="info_spec">
			<dt class="step1"><em>개요()</em></dt>
			<dd>
				<p>
				
					<span>
					<a><%=genre %></a><!-- N=a:ifo.genre -->
					</span>
					<span>
					<a><%=country %></a><!-- N=a:ifo.nation -->
					</span>
					<span><%=runtime %>분 </span>
					<span>
						<a><%=opendate %></a><!-- N=a:ifo.day --> 개봉
					</span>
				</p>
			</dd>
			
				<dt class="step2"><em>감독</em></dt>
				<dd><p><a><%=director %></a><!-- N=a:ifo.director --></p></dd>
				<dt class="step3"><em>출연</em></dt>
				<dd><p><a><%=actor %></a></p><a title="더보기" class="more">...</a><!-- N=a:ifo.actmore --></dd>
				<dt class="step4"><em>등급</em></dt>
				<dd>
					<p>
						<a><%=age %>세 관람가</a><!-- N=a:ifo.filmrate -->
					</p>
				</dd>
		</dl>
		<div class="btn_sns">
			<div class="end_btn_area">
				<ul>
					<li>
						<div class="u_likeit_module"><a class="u_likeit_btn off"><span class="u_ico"></span><em class="u_cnt"><%=like %></em></a></div>
					</li>
				</ul>
			</div>
		</div>
	</div>

	<!-- 포스터 -->
	<div class="poster">
				<a><img src="./mainimg/movie_image<%=idx%>.jpg" alt="<%=title%>" onerror="this.src=&#39;http://static.naver.net/movie/2012/06/dft_img203x290.png&#39;"></a>
	</div>
	<!-- //포스터 -->
</div>
<!-- //영화정보(basic) -->
<a name="tab" id="tab"></a>
<div class="sub_tab_area">
	<!-- [D] on, off로 컨트롤 -->
	<ul id="movieEndTabMenu" class="end_sub_tab">
<%if(num.equals("1")) {%>
		<li><a href="#1" title="주요정보" class="tab01_on"><em>주요정보</em></a><!-- N=a:tab.main --></li>
<%}else{%>
		<li><a href="<%=request.getRequestURI()%>?index=<%=idx%>&&num=1" title="주요정보" class="tab01_off"><em>주요정보</em></a><!-- N=a:tab.main --></li>
<%}if(num.equals("2")) {%>
		<li><a href="#2" title="평점" class="tab05_on"><em>평점</em></a><!-- N=a:tab.ratereview --></li>
<%}else{%>
		<li><a href="<%=request.getRequestURI()%>?index=<%=idx%>&&num=2" title="평점" class="tab05_off"><em>평점</em></a><!-- N=a:tab.ratereview --></li>
<%}if(num.equals("3")) {%>
		<li><a href="#3" title="리뷰" class="tab06_on"><em>리뷰</em></a><!-- N=a:tab.ratereview --></li>
<%}else{%>
		<li><a href="<%=request.getRequestURI()%>?index=<%=idx%>&&num=3" title="리뷰" class="tab06_off"><em>리뷰</em></a><!-- N=a:tab.ratereview --></li>
<%}%>
	</ul>
</div>
<%if(num.equals("1")) {%>
	<div class="section_group section_group_frst">
			<div class="obj_section" id="1">
				<div class="video">
					<div class="story_area">
						<div class="title_area">
							<h4 class="h_story"><strong class="blind">줄거리</strong></h4>
						</div>
						<p class="con_tx"><%=content %></p>
							<!-- N=a:mai.story -->
					</div>
					<div class="making_note" id="makingNoteDiv" style="display:none">
						<p class="con_tx no_bt" id="makingnotePhase">[ABOUT MOVIE]<br>&nbsp;처음봤‘꾼’ <br>&nbsp;<br>&nbsp;#대한민국 최초! 사기꾼만 속이는 사기꾼 등장!<br>&nbsp;진짜 ‘꾼’들이 나타났다!<br>&nbsp;<br>&nbsp;&lt;꾼&gt;은 ‘희대의 사기꾼’을 잡기 위해 뭉친 사기꾼들의 예측불가 팀플레이를 다룬 범죄오락 영화다. “숨겨진 진실을 파헤치는 것은 영화적으로 흔히 사용하는 소재다. 하지만 이를 사기꾼들이 한다면? 타짜가 타짜를 알아보듯, 사기꾼은 사기꾼이 잡는 게 제격이다”는 생각에 다다른 장창원 감독은 사기꾼들이 다른 사기꾼을 잡기 위해 한자리에 모였다는 발칙한 상상에서 출발, 처음부터 끝까지 예측을 벗어나는 꾼들의 세계를 유쾌하게 그려내며 차별화된 재미를 추구했다. <br>&nbsp;<br>&nbsp;대한민국을 발칵 뒤집어놓고 급작스런 죽음을 맞이한 희대의 사기꾼 ‘장두칠’. 사기꾼만 노리는 지능형 사기꾼 ‘지성’은 그의 죽음 또한 사기라고 확신하고 검사 ‘박희수’에게 손을 내민다. 여기에 연기 좀 되는 베테랑꾼 ‘고석동’부터 거침없는 비주얼과 손기술로 상대를 매혹시키는 현혹꾼 ‘춘자’, 어떤 정보든 수집할 수 있는 뒷조사꾼 ‘김 과장’까지 한자리에 모이며 대한민국 최초 ‘사기꾼 잡는 사기꾼들’이라는 환상의 팀이 완성된다. 검사는 자신의 욕망을 위해 사기꾼과 손잡고 그들을 비공식 루트로 활용하며 정보를 수집하고, 사기꾼은 목적 달성을 위해 검사의 공식 루트를 이용하기도 한다. 서로를 속고 속이고 이용하는 것에 전혀 거리낌 없는 이들. 뛰는 사기꾼 위에 나는 사기꾼들, 진짜 ‘꾼’들이 나타났다. <br>&nbsp;<br>&nbsp;#데뷔 이래 최초! 사기꾼으로 변신한 현빈!<br>&nbsp;능청스럽고 섹시한 현빈을 기대하라!<br>&nbsp;<br>&nbsp;성실하고 올곧은 이미지였던 배우 현빈이 사기꾼으로 돌아온다. 작품 선택의 1순위 원칙이 ‘다름’이라는 그는 같은 장르나 설정이어도 캐릭터, 소재, 표현 등에서 다른 부분을 보여줄 수 있는 작품을 선택해왔다. 항상 새로운 변화를 갈망한다는 현빈, 그런 의미에서 &lt;꾼&gt;은 그의 데뷔 이후 가장 색다른 변신을 볼 수 있는 작품이다. 장창원 감독은 “좋은 캐스팅은 역할에 어울리는 것도 중요하지만, 관객들이 궁금하고 기대가 되게 만드는 것도 중요하다. 그런 의미에서 현빈은 너무 기대되고 잘 어울리는 캐스팅이었다”며 현빈의 새로운 모습에 대한 자부심을 드러내기도 하였다. <br>&nbsp;<br>&nbsp;현빈이 맡은 사기꾼 ‘지성’은 사기꾼만 골라 속이는 사기꾼들 중 전체 판을 기획하고 설계하는 브레인을 담당하는 인물로 두둑한 배짱은 기본, 완벽한 사기를 위해 특수 분장까지 소화하는 영리하고 세련된 사기꾼이다. “사기꾼들을 주도해나가는 사기꾼 ‘지성’의 리더십 있는 모습과 사기를 치지만 사기꾼만 골라 속인다는 캐릭터에 끌렸다”는 그는 때로는 거칠게 때로는 부드럽게 카멜레온처럼 변하는 ‘지성’의 모습을 완벽하게 표현해냈다. 장창원 감독은 “현빈은 장난꾸러기 같은 모습부터 진중한 모습까지 모두 표현이 가능한 배우다. 특히 귀여운 사기꾼으로 변신한 그의 모습은 계속 보고 싶을 정도다”라며 그의 캐릭터 변신에 엄지를 치켜세웠다. “지금까지 보여드린 연기와는 다르다. 조금 더 풀어진 모습을 보실 수 있을 것”이라는 현빈, 능청스러운 사기꾼으로 돌아온 그의 변신을 기대해도 좋다.<br>&nbsp;<br>&nbsp;<br>&nbsp;[ABOUT MOVIE]<br>&nbsp;신선하겠‘꾼’<br>&nbsp;<br>&nbsp;#현빈X유지태X배성우X박성웅X나나X안세하<br>&nbsp;이렇게 완벽한 매력‘꾼’의 조합! 그들이 펼치는 예측불허 팀플레이!<br>&nbsp;<br>&nbsp;&lt;꾼&gt;은 “모든 캐릭터가 살아있고 저마다 반전을 갖고 있다. 계속되는 반전 속에서 어느 누구의 시점을 따라가느냐에 따라 달라질 수 있는 영화”라고 자신 있게 추천하는 현빈의 말처럼 각양각색 매력을 지닌 꾼들의 신선한 조합과 이들이 펼치는 반전의 팀플레이가 돋보이는 영화다.<br>&nbsp;<br>&nbsp;저마다 살아 숨 쉬는 캐릭터를 잘 표현하기 위해서 가장 중요한 것은 완벽한 캐스팅 조합이었다. 장창원 감독은 목표는 같지만 목적은 다른 6명의 꾼들이 서로 예측불허 팀플레이를 펼쳐야 하므로 캐스팅과 캐릭터의 조합에서 의외성과 익숙함의 미묘한 균형을 맞추기 위해 고심했다. 먼저 현빈과 유지태, 박성웅은 기존의 이미지와는 다른 모습으로 신선함을 더했다. 현빈은 지능형 사기꾼 ‘지성’으로 분해 지금까지와는 다른 능청스럽고 풀어진 매력으로 시선을 사로잡는다. 유지태는 사기꾼을 잡기 위해 사기꾼을 이용하는 야망에 찬 ‘박희수’ 검사로 차가운 매력을 뿜어낸다. 박성웅은 이들의 목표인 희대의 사기꾼 ‘장두칠’의 오른팔 ‘곽승건’ 역을 맡아 팽팽한 긴장감을 불어넣으며 강렬한 존재감을 발휘한다. 여기에 배성우, 나나, 안세하가 ‘박희수’ 검사의 비공식 루트 사기꾼 3인방 ‘고석동’, ‘춘자’, ‘김 과장’ 역으로 가세, 더할 나위 없이 어울리는 캐스팅으로 극의 재미와 웃음을 책임진다. 비로소 장창원 감독이 원했던 완벽한 조합이 완성된 것이다.<br>&nbsp;<br>&nbsp;이렇게 빈틈없는 캐스팅과 캐릭터로 맞춰진 6인의 꾼들은 각자 매력을 맘껏 발산하며 팀플레이를 펼친다. 판을 설계하는 꾼들의 브레인 ‘지성’ 역의 현빈은 치밀하면서도 능글능글한 면모로 관객들마저 속아 넘어가게 만든다. 정의로운 검사 이미지 이면에 끝없는 권력욕을 지닌 검사 ‘박희수’로 분한 유지태는 선과 악을 넘나드는 연기로 시선을 잡아 끈다. 배성우는 연기꾼 ‘고석동’으로 사기인지 실제인지 헷갈릴 만큼 모두를 껌뻑 넘어가게 하는 연기로 분위기를 띄우고, ‘춘자’와 200% 이상의 싱크로율을 자랑하는 나나는 매혹적인 미모와 빠른 손기술로 보는 이를 현혹한다. 은밀하게 정보를 빼내는 뒷조사꾼 ‘김 과장’ 역의 안세하는 상상을 초월하는 애드리브로 은밀하지 않은 존재감을 발휘한다. 꾼들의 타깃이 되는 ‘곽승건’으로 분한 박성웅은 철두철미해 보이다가도 어설픈 유혹에 넘어가는 반전 매력으로 웃음을 선사한다. 시종일관 눈을 뗄 수 없는 이들의 유쾌 상쾌 통쾌한 예측불허 팀플레이, 이 영화가 가진 가장 큰 매력이 될 것이다.?<br>&nbsp;<br>&nbsp;<br>&nbsp;[PRODUCTION NOTE]<br>&nbsp;놀랍‘꾼’<br>&nbsp;<br>&nbsp;완벽한 사기를 돕는 현장의 꾼들이 말하다!<br>&nbsp;&lt;꾼&gt;의 의상, 분장, 장소 비하인드 공개!<br>&nbsp;<br>&nbsp;#꾼들의 의상<br>&nbsp;장창원 감독은 사기꾼들의 캐릭터 성격 자체가 확연히 다른 만큼 의상만 봐도 꾼들의 특징이 드러나야 한다고 생각했다. 시기와 장소, 사기 대상에 따라 팔색조 같은 변신을 거듭하는 ‘지성’은 아지트에서 모의할 때는 티셔츠 차림에 가죽 재킷을 매치해 편안하고 자유분방한 느낌을 연출했다. 사기가 시작되면 신뢰감을 줄 수 있도록 깔끔한 슈트에 행커치프를 더해 세련미에 화려함을 배가시켰다. ‘박희수’는 블랙과 그레이 컬러의 슈트로 야망을 좇는 차가운 이미지의 검사를 표현했다. 또한 가끔 보여지는 터틀넥 차림은 속내를 감추려 하는 캐릭터의 성격을 보여준다. 베테랑꾼 ‘고석동’은 전형적인 사기꾼의 이미지를 표현하고자 콤비 슈트와 프린트 셔츠로 가볍고 코믹한 이미지를 부여했다. 비주얼로 현혹하는 ‘춘자’는 미모가 돋보일 수 있도록 몸매가 드러나는 니트와 스키니진을 착용했다. 여기에 구제 빈티지 아이템을 접목해 이름에서 연상되는 이미지도 빠트리지 않았다. ‘김 과장’은 컴퓨터에 능한 해커로 연상되도록 캐주얼한 점퍼에 후드티, 안경을 착용하여 직업적인 전문성을 표현했다. 꾼들의 타깃이 되는 ‘곽승건’은 ‘춘자’에게 유혹당할 때는 니트 소재의 라운드 티셔츠로 의외의 어설픈 면모를 보여주고자 했고, 꾼들과 계약이 오갈 때는 각이 잡힌 슈트로 딱딱하고 날카로운 느낌을 주고자 했다. “사기꾼이지만 사기꾼처럼 보여서는 안 된다. 각 캐릭터의 매력을 살리되 과하지 않게 현실성 있는 컨셉으로 디자인했다. 의상만 봐도 캐릭터의 성격이 드러나 보는 재미가 남다를 것”이라는 심현섭 의상 감독의 말처럼 6인 6색 꾼들의 개성이 담긴 의상은 영화를 보는 또 다른 재미를 선사할 것이다.<br>&nbsp;<br>&nbsp;#꾼들의 분장<br>&nbsp;현빈이 맡은 ‘지성’ 캐릭터는 완벽한 사기를 위해 특수분장까지 하는 인물이다. 장창원 감독은 재미적인 요소와 자연스러운 요소를 모두 표현해 낼 수 있도록 대역을 쓰지 않고 현빈의 얼굴에 직접 특수 분장을 했다. 아무도 현빈임을 알아채지 못하도록 전혀 다른 사람으로 디자인했으나 특수 분장을 해도 잘생김이 묻어나는 현빈 때문에 당황했다는 장창원 감독. 결국 현빈은 초기 계획보다 훨씬 많은 살을 덧입힌 끝에 새로운 인물로 완벽하게 변신할 수 있었다. 그는 드라마 [눈의 여왕]에서 손 특수 분장을 경험한 바 있지만, 얼굴까지 다른 인물로 특수 분장을 시도한 것은 데뷔 후 첫 도전이다.<br>&nbsp;<br>&nbsp;#꾼들의 장소<br>&nbsp;영화에서 가장 주된 장소는 단연 꾼들의 아지트다. “보통 사기꾼의 아지트라고 했을 때 외딴 창고나 컨테이너 등을 쉽게 연상한다. 하지만 꾼들 사이에는 검사가 있다. 이를 활용해 차별화된 아지트를 보여주고 싶었다”는 장창원 감독은 검사가 자신의 욕망을 담아 바라보는 빌딩 숲 옥상을 꾼들의 비밀스러운 아지트로 설정했다. 탁 트인 도심 빌딩 위 옥상은 모든 것을 지켜보며 판을 짜는 꾼들과 완벽하게 어울린다. 또한 건물의 옥상은 많은 것을 좌지우지할 수 있는 권력과 돈에 가까운 검사를 등에 업은 사기꾼들의 모습과도 어울리는 장소다. 아지트에는 철두철미한 검사 ‘박희수’의 성격을 반영해 옥상으로 통하는 출입문 외에 별도의 철문도 추가했다. 외부와 단절된 느낌을 배가시키며 꾼들의 작전을 더욱 비밀스럽게 보여준다. <br>&nbsp;<br>&nbsp;또 하나의 메인 공간은 위장사무실이다. 꾼들이 먹잇감을 끌어들여 진짜처럼 믿게 만드는 무대다. 그 어떤 장소보다 번듯하고 있어 보여야 하는 곳이다. 처음부터 가짜 사무실로 소개되는 공간이기에 오히려 진짜 사무실이어야 더욱 호기심이 일 것 같다는 생각에 장창원 감독과 스태프들은 강남에 위치한 사무실을 수소문했다. &lt;꾼&gt; 촬영 장소 섭외 중 가장 어려운 장소로 꼽히는 이곳은 스태프들이 3개월간 발품을 판 덕에 실제 사무실에서 무사히 촬영할 수 있었다.</p>
						<a href="javascript:storyAndNote.moreMakingnote();" class="story_more" id="moreMakingnoteButton" onclick=""><em class="blind">펼쳐보기</em></a>
					</div>
				</div>
			</div>
		<div class="obj_section"  id="2">
			<!-- 기대지수 노출 -->
			<div class="score" style="display:none">
			        <div class="title_area">
						<h4 class="h_exp"><strong class="blind">기대지수</strong></h4>
			        </div>
			        <div class="exp_area">
			                <div class="exp_box">
			                        <button type="button" id="btn_interest_basic" class="btn_want">보고싶어요</button>
			                        <div class="exp_info">
			                                <h4 class="blind">기대지수 정보</h4>
			                                <span class="exp_cnt" id="interest_cnt_basic"><em class="blind">보고싶어요</em>6,730</span>
			                                <span class="exp_cnt" id="not_interest_cnt_basic"><em class="blind">글쎄요</em>1,063</span>
			                                <div class="exp_bar">
												<span id="preference_graph_basic" style="width:86.35955344539971%"></span>
			                                </div>
			                        </div>
			                        <button type="button" id="btn_notInterest_basic" class="btn_dnwant">글쎄요</button>
			                </div>
			        </div>
			</div>				
			<%Vector<PointBean> vlist= mmgr.getPointList(idx);%>
			<div class="score " style="display:block">
				<div class="title_area">
					<a href="<%=request.getRequestURI()%>?index=<%=idx%>&&num=2">
						<h4 class="h_score"><strong class="blind">평점</strong></h4>
						<span class="more"><span class="blind">더보기</span></span>
					</a>
				</div>
				<div class="score_total">
					<strong class="total"><span class="tit"><em class="blind">140자 평</em></span><span class="sp">|</span>총
						<em><%=vlist.size()%></em>건
					</strong>
				</div>
				<div class="score_result">
					<ul>
						
				        <%for(int i=0; i<(vlist.size()>5?5:vlist.size()); i++){
						bean = vlist.get(i);
						idx = bean.getPointnum();
						bean = mmgr.getPoint(idx);
						int pstar = bean.getStar();
						String redate = bean.getRedate();
						int good = bean.getGood();
						int bad = bean.getBad();
						String pcontent=bean.getContent();
						String writer = bean.getWriter();
						%>
						
						<li>
							<div class="star_score">
								<span class="st_off"><span class="st_on"
									style="width:<%=pstar*10%>%"></span></span><em><%=pstar %></em>
							</div>
							<div class="score_reple">
								<p>
									<span class="ico_best">BEST</span><%=pcontent %>
								</p>
								<dl>
									<dt>
										<em> <a
											href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#"
											onclick="javascript:showPointListByNid(13418993, &#39;after&#39;);parent.clickcr(this, &#39;ara.uid&#39;, &#39;&#39;, &#39;&#39;, event); return false;"
											target="_top"> <span><%=writer %></span>
										</a>
										</em> <em><%=redate %></em>
									</dt>
									<dd>
										<a
											href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#"
											onclick="parent.clickcr(this, &#39;ara.report&#39;, &#39;&#39;, &#39;&#39;, event); common.report(&#39;false&#39;,&#39;et45****&#39;, &#39;J1OP/gvXkRRgesQvv9qVnevMLmUhyx1ZipQmv8dsGPM=&#39;, &#39;진자  사기꾼이네요ㅋㅋ 제가사기당한거같아요 &#39;, &#39;13418993&#39;, &#39;point_after&#39;, true);return false;"
											class="go_report2"><em>신고</em></a>
									</dd>
								</dl>
							</div>
							<div class="btn_area">
								<a class="_sympathyButton"
									href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#"
									onclick="parent.clickcr(this, &#39;ara.sym&#39;, &#39;&#39;, &#39;&#39;, event);"><span
									class="blind">공감</span></a><strong><span
									class="sympathy_13418993 count"><%=good %></span></strong> <a
									class="_notSympathyButton"
									href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#"
									onclick="parent.clickcr(this, &#39;ara.opp&#39;, &#39;&#39;, &#39;&#39;, event);"><span
									class="blind">비공감</span></a><strong><span
									class="notSympathy_13418993 count v2"><%=bad %></span></strong>
							</div>
						</li>
						<%}%>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="section_group"  id="3">
		<div class="obj_section">
			<div class="review">
				<div class="title_area">
					<a  href="<%=request.getRequestURI()%>?index=<%=idx%>&&num=3">
						<h4 class="h_review"><strong class="blind">리뷰</strong></h4>
							<span class="more"><span class="blind">더보기</span></span>
					</a><!-- N=a:mre.more -->
					
					<div>
							<!-- N=a:mre.help -->
						<a href="<%=request.getRequestURI()%>?index=<%=idx%>&&num=3" class="wrt_review"><em>리뷰쓰기</em></a><!-- N=a:mre.write -->
					</div>
				</div>
					<div class="review_good ">
						<div class="review_title">
							<strong class="good"><em>좋아요</em></strong>
							<em class="num_good">
							<%for(int i=0; i<Integer.toString(mbean.getLike()).length(); i++) {%>
							<span class="n<%=Integer.toString(mbean.getLike()).charAt(i)%>"><span class="blind"><%=Integer.toString(mbean.getLike()).charAt(i) %></span></span>
							<%} %>
							<span class="cnt"><span class="blind">명</span></span></em>
						</div>
						<ul class="rvw_list_area rvw_list_mv">
			<%reviewlist = mmgr.getReviewList(idx); %>
								<li>
									<a href="./movie_home.jspmovie/bi/mi/reviewread.nhn?code=152385&amp;nid=4578391"><strong>&lt;꾼&gt; 야 이 사기꾼들!!!! 내 두시간을!!!!</strong><em class="hot">HOT</em></a><!-- N=a:mre.title -->
									<span class="user"><a href="./movie_home.jspmovie/board/review/list.nhn?st=nickname&amp;sword=4578391">acts****</a><!-- N=a:mre.uid --> <em>2017.11.14</em><em><span>추천</span> 10</em></span>
									<p><a href="./movie_home.jspmovie/bi/mi/reviewread.nhn?code=152385&amp;nid=4578391">        꾼      감독   장창원   출연   현빈, 유지태, 배성우, 박성웅, 나나, 안세하   개봉   2017 대한민국   평점                         리뷰보기         20171114왕십리 CGV 8-C-11익무인나눔 시사회2.5/5 ‘희대...</a><!-- N=a:mre.content --></p>
								</li>
								<li>
									<a href="./movie_home.jspmovie/bi/mi/reviewread.nhn?code=152385&amp;nid=4580360"><strong>[영화감상] <%=title%> (The Swindlers, 2017) </strong></a><!-- N=a:mre.title -->
									<span class="user"><a href="./movie_home.jspmovie/board/review/list.nhn?st=nickname&amp;sword=4580360">sakg****</a><!-- N=a:mre.uid --> <em>2017.11.22</em><em><span>추천</span> 9</em></span>
									<p><a href="./movie_home.jspmovie/bi/mi/reviewread.nhn?code=152385&amp;nid=4580360">어제 저녁 퇴근길에 들려서 '대구 CGV'에서 보고 온 '꾼'입니다..벌써 개봉했어? 하시겟지만, '유료시사회'였다는 ㅋㅋㅋㅋ정식개봉은 오늘일듯 싶어요..원래 제가 이런 '사기꾼'나오는 영화들 좋아해서, 넘 보고싶었는데.....</a><!-- N=a:mre.content --></p>
								</li>
						</ul>
							<span class="vs">VS</span>
					</div>
					<div class="review_bad">
						<div class="review_title">
							<strong class="bad"><em>글쎄요</em></strong>
							
							<em class="num_bad">
							<%for(int i=0; i<Integer.toString(mbean.getLike()).length(); i++) {%>
							<span class="n<%=Integer.toString(mbean.getLike()).charAt(i)%>"><span class="blind"><%=Integer.toString(mbean.getLike()).charAt(i) %></span></span>
							<%} %>
							<span class="cnt"><span class="blind">명</span></span></em>
						</div>
						<ul class="rvw_list_area rvw_list_mv">
							
								<li>
									<a href="./movie_home.jspmovie/bi/mi/reviewread.nhn?code=152385&amp;nid=4580778#tab"><strong><%=title%> : 유행(※사회비판)에 편승하느라 장르적 쾌감을 잃어버린 케이퍼 무비</strong><em class="hot">HOT</em></a>
									<span class="user"><a href="./movie_home.jspmovie/board/review/list.nhn?st=nickname&amp;sword=4580778">c106****</a> <em>2017.11.23</em><em><span>추천</span> 38</em></span>
									<p><a href="./movie_home.jspmovie/bi/mi/reviewread.nhn?code=152385&amp;nid=4580778#tab">장창원 감독 / 117분 / 15세 관람가현빈, 유지태, 배성우, 박성웅, 나나, 안세하..개인적인 평점 : 4점 (오락성 4점, 작품성 4점)     안녕하세요? 오늘은 어제(22일) 메가박스 북대구에서 관람하고 온 &lt;<%=title%>&gt; 이야기를...</a></p>
								</li>
							
								<li>
									<a href="./movie_home.jspmovie/bi/mi/reviewread.nhn?code=152385&amp;nid=4578736#tab"><strong>얼개가 꾸역꾸역 억지스러워요.</strong></a>
									<span class="user"><a href="./movie_home.jspmovie/board/review/list.nhn?st=nickname&amp;sword=4578736">alho****</a> <em>2017.11.16</em><em><span>추천</span> 15</em></span>
									<p><a href="./movie_home.jsp">반전이 있을 거란 예감이 계속 드는데 그걸 위한 복선이 너무 찌질찌질해요.범죄의 재구성처럼 연출에서 긴박감이 더 있었으면 좋았을 거 같아요. 아니면 반전을 납득할만한 개연성이 있던가요. 모든 얼개가 잘 안 맞아 떨...</a></p>
								</li>
						</ul>
					</div>
			</div>
		</div>
       </div>
<%}else if(num.equals("2")){%>
	<div class="section_group section_group_frst">
		<!-- 네티즌평점 -->
		<a name="pointAfterTab"></a>
		<div class="obj_section noline">
			<div class="ifr_module2">
				<iframe src="./point.jsp?index=<%=idx %>" id="pointAfterListIframe" name="pointAfterListIframe" width="100%" frameborder="0" scrolling="no" class="ifr" title="네티즌 평점 리스트" height="1434px"></iframe>
			</div>
		</div>
	</div>
<%}else if(num.equals("3")){ if(reviewnum==null||reviewnum.equals("")){%>
	<div class="section_group section_group_frst">
 	<%if(reviewrite!=null&&reviewrite.equals("1")) {%>
 		<%@include file="movie_reView.jsp"%>
 	<%}else{ %>
		<div class="obj_section">
			<div class="ifr_module2" id="reviewTab">
				<div class="ifr_area">
					<div class="review">
						<div class="title_area">
							<h4 class="h_review"><strong class="blind">리뷰</strong></h4>
							<a href= "<%=request.getRequestURI()%>?index=<%=idx%>&&num=3&&reviewrite=1" class="wrt_review" onclick="clickcr(this, 'rli.write', '', '', event); goWrite(); return false;"><em>리뷰쓰기</em></a>
						</div>
						<div class="top_behavior">
							<span class="cnt">총<em><%=reviewlist.size() %></em>건</span>
							<ul class="quarter_mode">
								<li>
									<div class="align_latest">
										<a href="#" id="orderButton" class="_reviewOrder" onclick="clickcr(this, 'rli.byrcm', '', '', event);">추천순<span></span></a>
										<div class="ly_lastest ly_lastest2" id="orderLayer" style="display:none">
											<ul>
												<li><a href="#" class="_reviewOrder" onclick="clickcr(this, 'rli.byrcm', '', '', event); dislplayOrder('goodcnt');">추천순</a></li>
												<li><a href="#" class="_reviewOrder" onclick="clickcr(this, 'rli.byrct', '', '', event); dislplayOrder('newest');">최신순</a></li>
											</ul>
										</div>
									</div>
								</li>
							</ul>
						</div>
						<ul class="rvw_list_area">
<%for(int i=0; i<reviewlist.size();i++) {
rbean = reviewlist.get(i);
int rnum = rbean.getReviewnum();
float rstar = rbean.getStar();
String rtitle= rbean.getTitle();
String rregdate = rbean.getRegdate();
int rviews = rbean.getViews();
int rgood = rbean.getGood();
String rcontent = rbean.getContent();
String rwriter = rbean.getWriter();
%>
								<li>
									<a href="<%=request.getRequestURI()%>?index=<%=idx%>&&num=3&&reviewnum=<%=rnum %>"><strong><%=rtitle %></strong></a>
									<span class="user"><a href="<%=request.getRequestURI()%>?index=<%=idx%>&&num=3&&reviewnum=<%=rnum %>"><%=rwriter %></a> <em><%=rregdate %></em><em>추천 <%=rgood %></em></span>
								</li>
<%} %>							</ul>
						<div class="paging">
							<div>
<%for(int i=0;i<reviewlist.size()/10+1;i++) {%>
								<a id="pagerTagAnchor<%=i+1%>" href="/movie/bi/mi/review.nhn?code=152385&amp;page=<%=i+1%>" onclick="clickcr(this, 'rli.page', '', '', event);"><span class="on"><%=i+1%></span></a>
<%}%>
								<a id="pagerTagAnchor2" href="/movie/bi/mi/review.nhn?code=152385&amp;page=2" title="다음" class="pg_next" onclick="clickcr(this, 'rli.page', '', '', event);"><em>다음</em></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
 	<%} %> 
<%}else{
	rbean = mmgr.getReview(Integer.parseInt(reviewnum));
	float rstar = rbean.getStar();
	String rtitle= rbean.getTitle();
	String rregdate = rbean.getRegdate();
	int rviews = rbean.getViews();
	int rgood = rbean.getGood();
	String rcontent = rbean.getContent();
	String rwriter = rbean.getWriter();
	Vector<ReBean> relist=mmgr.getReList(idx, Integer.parseInt(reviewnum));
%>
	<div class="obj_section noline center_obj">
			<div class="review">
				<div class="title_area">
					<h4 class="h_review" onclick="javascript:parent.showReviewList();"><strong class="blind">리뷰</strong></h4>
					<a href="<%=request.getRequestURI()%>?index=<%=idx%>&&num=3"class="review_list" return false;"><em>목록보기</em></a><!-- N=a:rvi.list -->
				</div>
				<div class="top_behavior">
					<div class="star_score">
						<span class="st_off"><span class="st_on" style="width:<%=rstar*10%>%"></span>
						</span><em class="num<%=(int)rstar%>"><%=(int)rstar%></em>
					</div>
					<strong class="h_lst_tx"><%=rtitle %></strong>
					<span class="wrt_date"><%=rregdate %></span>
				</div>
				<div class="board_title">
					<ul>
						<li><a><em><%=rwriter %></em>님의 리뷰</a></li>
					</ul>
					<div class="user_tx_info">
						<span>조회 <em><%=rviews %></em></span>
						<span>추천 <em id="goodReviewCount"><%=rgood %></em></span>
					</div>
				</div>
				<div class="user_tx_area">
<%=rcontent %>
				</div>
				<div class="from_blog">
					<a href="javascript:recommend(4580943);" class="btn_recomm2"><em class="blind">추천하기</em></a><!-- N=a:rvi.recomd -->
					<p class="ly_recomm" id="recommend_success" style="display:none"><span></span>추천하였습니다.</p>
				</div>
			</div>
			<!-- <div class="ifr_module">
				<iframe id="reviewCommentIframe" name="reviewCommentIframe" width="100%" frameborder="0" scrolling="no" class="ifr" height="300"></iframe>
			</div> -->

						<div id="cbox_module" class="u_cbox">
							<div class="u_cbox_wrap u_cbox_ko">
								<div class="u_cbox_head">
									<h5 class="u_cbox_title">댓글</h5>
									<span class="u_cbox_count"><%=relist.size() %></span>
									<div class="u_cbox_head_tools"></div>
								</div>
<%if(id == null || id.equals("")){%>
								<div class="u_cbox_write_wrap"><div class="u_cbox_write_box u_cbox_type_logged_out"><form><fieldset><legend class="u_vc">댓글 쓰기</legend><div class="u_cbox_write"><div class="u_cbox_write_inner"><div class="u_cbox_write_area"><strong class="u_vc">댓글 입력</strong><div class="u_cbox_inbox"><textarea id="cbox_module__write_textarea" class="u_cbox_text" rows="3" cols="30"></textarea><label onclick="logi()" class="u_cbox_guide" data-action="write#placeholder" data-param="@event">주제와 무관한 댓글, 악플은 삭제될 수 있습니다.</label></div></div><div class="u_cbox_upload_image" style="display:none"><span class="u_cbox_upload_image_wrap fileButton browsebutton _cboxImageSelect"><span class="u-cbox-browse-box"><input class="u-cbox-browse-file-input" type="file" name="browse" accept="image/*" title="이미지 추가"></span><a href="#" class="u_cbox_upload_thumb_link u-cbox-browse-button" data-log="RPP.add"><span class="u_cbox_upload_thumb_add">이미지 추가</span><span class="u_cbox_upload_thumb_mask"></span></a></span></div><div class="u_cbox_upload_sticker" style="display:none"></div><div class="u_cbox_write_count"><span class="u_vc">현재 입력한 글자수</span><strong class="u_cbox_count_num">0</strong>/<span class="u_vc">현재 입력한 글자수</span><span class="u_cbox_write_total">500</span></div><div class="u_cbox_upload"><div class="u_cbox_addition"></div><button type="button" class="u_cbox_btn_upload" data-action="write#request" data-log="RPC.write#RPC.reply"><span class="u_cbox_ico_upload"></span><span class="u_cbox_txt_upload">등록</span></button></div></div></div></fieldset></form></div></div>
<%}else{ %>
								<div class="u_cbox_write_wrap"> <div class="u_cbox_write_box u_cbox_type_logged_in"> <form> <fieldset> <legend class="u_vc">댓글 쓰기</legend> <div class="u_cbox_write"> <div class="u_cbox_write_inner"> <div class="u_cbox_profile_area"> <div class="u_cbox_profile"> <strong class="u_vc">로그인 정보</strong> <div class="u_cbox_box_name"> <span class="u_cbox_write_name">수수</span> </div> </div> </div> <div class="u_cbox_write_area"> <strong class="u_vc">댓글 입력</strong> <div class="u_cbox_inbox"> <textarea id="cbox_module__write_textarea" class="u_cbox_text" rows="3" cols="30"></textarea> <label for="cbox_module__write_textarea" class="u_cbox_guide" data-action="write#placeholder" data-param="@event" style="">주제와 무관한 댓글, 악플은 삭제될 수 있습니다.</label> </div> </div> <div class="u_cbox_upload_image" style="display: none"> <span class="u_cbox_upload_image_wrap fileButton browsebutton _cboxImageSelect"><span class="u-cbox-browse-box"><input class="u-cbox-browse-file-input" type="file" name="browse" accept="image/*" title="이미지 추가"></span><a href="#" class="u_cbox_upload_thumb_link u-cbox-browse-button" data-log="RPP.add"><span class="u_cbox_upload_thumb_add">이미지 추가</span><span class="u_cbox_upload_thumb_mask"></span></a></span> </div> <div class="u_cbox_upload_sticker" style="display: none"></div> <div class="u_cbox_write_count"> <span class="u_vc">현재 입력한 글자수</span><strong class="u_cbox_count_num">0</strong>/<span class="u_vc">현재 입력한 글자수</span><span class="u_cbox_write_total">500</span> </div> <div class="u_cbox_upload"> <div class="u_cbox_addition"></div> <button type="button" class="u_cbox_btn_upload" data-action="write#request" data-log="RPC.write#RPC.reply"> <span class="u_cbox_ico_upload"></span><span class="u_cbox_txt_upload">등록</span> </button> </div> </div> </div> </fieldset> </form> </div> </div>
<%} %>
								<div class="u_cbox_notice u_cbox_notice_none"
									style="display: none;"></div>
								<div class="u_cbox_content_wrap">
									<ul class="u_cbox_list">
<%for(int i=0;i<relist.size();i++) {
	rebean = relist.get(i);
	int renum = rebean.getRenum();
	String rewriter = rebean.getWriter();
	String recontent = rebean.getContent();
	String reregdate = rebean.getRegdate();
	int regood = rebean.getGood();
	int rebad = rebean.getBad();
	String[] rere= rebean.getRere().split(",");%>
										<li	class="u_cbox_comment cbox_module__comment_5235752 _user_id_no_6DB8H">
											<div class="u_cbox_comment_box">
												<div class="u_cbox_area">
													<div class="u_cbox_info">
														<span class="u_cbox_info_main"><span
															class="u_cbox_name"><span class="u_cbox_name_area"><span
																	class="u_cbox_nick_area"><span
																		class="u_cbox_nick"><%=rewriter %></span></span></span></span></span><span
															class="u_cbox_info_sub"></span>
													</div>
													<div class="u_cbox_text_wrap">
														<span class="u_cbox_contents" data-lang="ko"><%=recontent %></span>
													</div>
													<div class="u_cbox_info_base">
														<span class="u_cbox_date"><%=reregdate %></span>
													</div>
													<div class="u_cbox_tool">
														<a onclick="fold('a<%=i%>')" class="u_cbox_btn_reply u_cbox_btn_reply_on">
															<strong	class="u_cbox_reply_txt">답글</strong><span
															class="u_cbox_reply_cnt"><%=!(rere[0].equals(""))?rere.length:0 %></span></a>
														<div class="u_cbox_recomm_set">
															<strong class="u_vc">공감/비공감</strong><a class="u_cbox_btn_recomm"
																title="이 댓글을 공감합니다"><span class="u_cbox_ico_recomm">공감</span><em
																class="u_cbox_cnt_recomm"><%=regood %></em></a><a href="#" class="u_cbox_btn_unrecomm"
																title="이 댓글을 비공감합니다"><span
																class="u_cbox_ico_unrecomm">비공감</span><em
																class="u_cbox_cnt_unrecomm"><%=rebad %></em></a>
														</div>
													</div>
													<span class="u_cbox_comment_frame"><span
														class="u_cbox_ico_tip"></span><span
														class="u_cbox_comment_frame_top"><span
															class="u_cbox_comment_bg_r"></span><span
															class="u_cbox_comment_bg_l"></span></span><span
														class="u_cbox_comment_frame_bottom"><span
															class="u_cbox_comment_bg_r"></span><span
															class="u_cbox_comment_bg_l"></span></span></span>
												</div>
											</div>
											<div class="u_cbox_reply_area" style="display:none" id="a<%=i%>">
<%if((!(rere[0].equals(""))?rere.length:0)!=0) {%>
												<ul class="u_cbox_list">
	<%for(i=0;i<rere.length;i++) {
			rebean = mmgr.getRe(Integer.parseInt(rere[i]));
			rewriter = rebean.getWriter();
			recontent = rebean.getContent();
			reregdate = rebean.getRegdate();
			regood = rebean.getGood();
			rebad = rebean.getBad();
	%>
													<li	class="u_cbox_comment cbox_module__comment_5235899 _user_id_no_lGgm">
														<div class="u_cbox_comment_box">
															<span class="u_cbox_ico_reply"></span>
															<div class="u_cbox_area">
																<div class="u_cbox_info">
																	<span class="u_cbox_info_main"><span
																		class="u_cbox_name"><span
																			class="u_cbox_name_area"><span
																				class="u_cbox_nick_area"><span
																					class="u_cbox_nick"><%=rewriter %></span></span></span></span></span><span
																		class="u_cbox_info_sub"></span>
																</div>
																<div class="u_cbox_text_wrap">
																	<span class="u_cbox_contents" data-lang="ko"><%=recontent %></span>
																</div>
																<div class="u_cbox_info_base">
																	<span class="u_cbox_date"><%=reregdate %></span>
																</div>
																<div class="u_cbox_tool">
																	<div class="u_cbox_recomm_set">
																		<strong class="u_vc">공감/비공감</strong><a href="#"
																			class="u_cbox_btn_recomm" title="이 댓글을 공감합니다"><span
																			class="u_cbox_ico_recomm">공감</span><em
																			class="u_cbox_cnt_recomm"><%=regood %></em></a><a href="#"
																			class="u_cbox_btn_unrecomm" title="이 댓글을 비공감합니다"><span
																			class="u_cbox_ico_unrecomm">비공감</span><em
																			class="u_cbox_cnt_unrecomm"><%=rebad %></em></a>
																	</div>
																</div>
															</div>
														</div>
													</li>
<%} %>
												</ul>
<%} %>												
												<div class="u_cbox_write_wrap">
													<span class="u_cbox_ico_reply"></span>
													<div class="u_cbox_write_box u_cbox_type_logged_in">
														<form>
															<fieldset>
																<legend class="u_vc">댓글 쓰기</legend>
																<div class="u_cbox_write">
																	<div class="u_cbox_write_inner">
																		<div class="u_cbox_profile_area">
																			<div class="u_cbox_profile">
																				<strong class="u_vc">로그인 정보</strong>
																				<div class="u_cbox_box_name">
																					<span class="u_cbox_write_name">수수</span>
																				</div>
																			</div>
																		</div>
																		<div class="u_cbox_write_area">
																			<strong class="u_vc">댓글 입력</strong>
																			<div class="u_cbox_inbox">
																				<textarea id="cbox_module__reply_textarea_5235752"
																					class="u_cbox_text" rows="3" cols="30"></textarea>
																				<label for="cbox_module__reply_textarea_5235752"
																					class="u_cbox_guide"
																					data-action="reply#htContext#5235752#write#placeholder"
																					data-param="@event">주제와 무관한 댓글, 악플은 삭제될 수
																					있습니다.</label>
																			</div>
																		</div>
																		<div class="u_cbox_upload_image" style="display: none">
																			<span
																				class="u_cbox_upload_image_wrap fileButton browsebutton _cboxImageSelect"><span
																				class="u-cbox-browse-box"><input
																					class="u-cbox-browse-file-input" type="file"
																					name="browse" accept="image/*" title="이미지 추가"></span><a
																				href="#"
																				class="u_cbox_upload_thumb_link u-cbox-browse-button"
																				data-log="RPP.add"><span
																					class="u_cbox_upload_thumb_add">이미지 추가</span><span
																					class="u_cbox_upload_thumb_mask"></span></a></span>
																		</div>
																		<div class="u_cbox_upload_sticker"
																			style="display: none"></div>
																		<div class="u_cbox_write_count">
																			<span class="u_vc">현재 입력한 글자수</span><strong
																				class="u_cbox_count_num">0</strong>/<span
																				class="u_vc">현재 입력한 글자수</span><span
																				class="u_cbox_write_total">500</span>
																		</div>
																		<div class="u_cbox_upload">
																			<div class="u_cbox_addition"></div>
																			<button type="button" class="u_cbox_btn_upload"
																				data-action="reply#htContext#5235752#write#request"
																				data-log="RPC.write#RPC.reply">
																				<span class="u_cbox_ico_upload"></span><span
																					class="u_cbox_txt_upload">등록</span>
																			</button>
																		</div>
																	</div>
																</div>
															</fieldset>
														</form>
													</div>
												</div>
											</div></li>
<%} %>
									</ul>
								</div>
								<div class="u_cbox_paginate" style="">
									<div class="u_cbox_page_wrap">
										<span class="u_cbox_pre u_cbox_pre_end"
											title="첫 페이지 목록으로 이동하기"><span class="u_cbox_ico_page"></span><span
											class="u_cbox_cnt_page">맨앞</span><span class="u_vc">페이지
												목록으로 이동하기</span></span><span class="u_cbox_pre" title="이전 페이지 목록으로 이동하기"><span
											class="u_cbox_ico_page"></span><span class="u_cbox_cnt_page">이전</span><span
											class="u_vc">페이지 목록으로 이동하기</span></span><strong class="u_cbox_page"><span
											class="u_cbox_num_page">1</span><span class="u_vc">현재
												선택된 페이지</span></strong><span class="u_cbox_next" title="다음 페이지 목록으로 이동하기"><span
											class="u_cbox_cnt_page">다음</span><span
											class="u_cbox_ico_page"></span><span class="u_vc">페이지
												목록으로 이동하기</span></span><span class="u_cbox_next u_cbox_next_end"
											title="마지막 페이지 목록으로 이동하기"><span
											class="u_cbox_cnt_page">맨뒤</span><span
											class="u_cbox_ico_page"></span><span class="u_vc">페이지
												목록으로 이동하기</span></span>
									</div>
								</div>
							</div>
						</div>
						
						<div class="reple_btn_area">
				<a href="<%=request.getRequestURI()%>?index=<%=idx%>&&num=3&&reviewrite=1" class="go_btn_review"><em class="blind">리뷰쓰기</em></a><!-- N=a:rvi.write -->
				<a href="javascript:showReviewList();" class="go_btn_lst"><em class="blind">목록보기</em></a><!-- N=a:rvi.list -->
			</div>
			<div class="pre_reple_lst">
				<ul>
<%for(int i=0;i<(reviewlist.size()<5?reviewlist.size():5);i++) {
	rbean = reviewlist.get(i);
	int rnum = rbean.getReviewnum();
	rstar = rbean.getStar();
	rtitle= rbean.getTitle();
	rregdate = rbean.getRegdate();
	rviews = rbean.getViews();
	rgood = rbean.getGood();
	rcontent = rbean.getContent();
	rwriter = rbean.getWriter();%>
					<li>
<%if(i!=reviewlist.size()/2) {%>	<a href="<%=request.getRequestURI()%>?index=<%=idx%>&&num=1&&reviewnum=<%=rnum %>" class="lst_tit"><%=rtitle %></a><!-- N=a:rvi.title -->
<%}else {%>				<a href="<%=request.getRequestURI()%>?index=<%=idx%>&&num=1&&reviewnum=<%=rnum %>" class="lst_tit_on"><%=rtitle %></a><!-- N=a:rvi.title -->
<%} %>						<p class="reple_info"><span><a href="<%=request.getRequestURI()%>?index=<%=idx%>&&num=1&&reviewnum=<%=rnum %>"><%=rwriter %></a><!-- N=a:rvi.uid --></span><span>추천</span><em><%=rgood %></em></p>
					</li>
<%} %>
				</ul>
			</div>
		</div>
<%}}%>
	</div>
</div>
<%}else if(cate==null){ %>
<%@include file="movie_list.jsp"%>
<%}else if(cate.equals("1")){ %>
<%@include file="list.html"%>
<%}else{ %>
<%@include file="ranking.html"%>
<%} %>
<!-- //content -->
	</div>
	<!-- //container -->
	<!-- footer -->
	
	<div id="footer">
		<div class="in_footer">
			<div class="foot_con">
				<ul>
					<li class="first"><a
						href="http://www.naver.com/rules/service.html" target="rules">이용약관</a>
					<!-- N=a:fot.agreement --></li>
					<li><a href="http://www.naver.com/rules/privacy.html"
						target="rules"><strong>개인정보처리방침</strong></a>
					<!-- N=a:fot.privacy --></li>
					<li><a href="http://www.naver.com/rules/disclaimer.html"
						target="rules">책임의 한계와 법적고지</a>
					<!-- N=a:fot.disclaimer --></li>
					<li><a
						href="https://help.naver.com/support/service/main.nhn?serviceNo=800"
						target="customer">영화 고객센터</a>
					<!-- N=a:fot.help --></li>
				</ul>
				<p class="info">본 콘텐츠의 저작권은 저작권자 또는 제공처에 있으며, 이를 무단 이용하는 경우 저작권법
					등에 따라 법적 책임을 질 수 있습니다.</p>
				<p class="info">
					사업자등록번호 : 220-81-62517<span>통신판매업 신고번호</span> : 경기성남 제 2006 - 692호<span>대표이사
						: 한성숙</span><span><a
						href="http://www.ftc.go.kr/info/bizinfo/communicationList.jsp">사업자등록정보
							확인</a>
					<!-- N=a:fot.bizinfo --></span><br> 주소 : 경기도 성남시 분당구 불정로 6 바코드 그린팩토리
					<span>대표전화 : 1588-3820</span>
				</p>
				<address>
					<a href="http://www.navercorp.com/" target="_blank" class="logo"><img
						src="./movie_list_files/logo_naver.png" width="63" height="11"
						alt="NAVER"></a>
					<!-- N=a:fot.nhn -->
					<em>Copyright ©</em> <a href="http://www.navercorp.com/"
						target="_blank">NAVER Corp.</a>
					<!-- N=a:fot.corp -->
					<span>All Rights Reserved.</span>
				</address>
			</div>
		</div>
	</div>
</div>
