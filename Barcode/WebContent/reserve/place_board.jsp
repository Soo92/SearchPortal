<%@page import="place.PlaceBoardBean"%>
<%@page import="place.PlaceBean"%>
<%@page import="java.util.Vector"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:useBean id="mgr" class="member.MemberMgr"/>
<jsp:useBean id="pbean" class="place.PlaceBoardBean"/>
<jsp:useBean id="pmgr" class="place.PlaceMgr"/>
<%
		request.setCharacterEncoding("utf-8");
		String id = (String)session.getAttribute("idKey");	
		String email = mgr.getMember(id).getEmail();
		String name = mgr.getMember(id).getName();
		String boardnum = request.getParameter("placenum");
		
		String idx = request.getParameter("index");
		Vector<PlaceBoardBean> vlist = pmgr.getPlaceBoardList(idx);
		pbean = pmgr.getPlaceBoard(idx);
		String title = pbean.getTitle();
		String writer = pbean.getWriter();
		String enddate = pbean.getEnddate();
		String regdate = pbean.getRegdate();
		String content = pbean.getContent();
		String mainpic = pbean.getMainpic();
		String place = pbean.getPlace();
%>
<!DOCTYPE html>
<!-- saved from url=(0116)https://m.blog.naver.com/PostView.nhn?blogId=ssagaji629&logNo=221155564632&proxyReferer=https%3A%2F%2Fm.naver.com%2F -->
<html lang="ko"
	data-useragent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36">
<head prefix="og: http://ogp.me/ns# article: http://ogp.me/ns/article#">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
</script>
<link rel="stylesheet" href="../css/product_style.css" type="text/css">
<link rel="stylesheet" href="../css/gnb_style.css" type="text/css">
<link rel="stylesheet" type="text/css"	href="./place_files/w_g17122108.css">
<link rel="stylesheet" type="text/css"	href="./place_files/e_g150402.css">
<link rel="stylesheet" type="text/css" href="./place_board_files/lego_w-172107688_https.css" charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./place_board_files/se_viewer_blog_mobile.css">
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
	function clickon(a){
		//document.getElementById("pointStarRatingValue").innerHTML=a.title;
		for(i=0;i<11;i++){
			if(document.getElementById("star"+i).className.match(' on')){
				document.getElementById("star"+i).className = document.getElementById("star"+i).className.replace(' on','');
			}
		}
		a.className=a.className+" on";
	};
	</script>
<title><%=title %></title>
</head>
<body id="body" class="tablet_end" style="">
		<div id="header_">
			<div id="header">
				<div id="wrap2">
					<div id="logo" onclick="location.href='../index.jsp'"><img src="../img/barcode_logo__.png" width=100% height=100% alt="바코드"></div>
					<div id="subject">
					<a href="./geo_proc.jsp?location=<%=session.getAttribute("location")==null||session.getAttribute("location").equals("null")?"한국":session.getAttribute("location")%>">
						<p><span>동네 소식</span></p>
					</a>
					</div>
					<div id="search_box" style="margin-left:150px;float:left">
					<input type="text" style="width:420px; height:30px; margin:5px 0px 0px 10px; border:0px; font-size:16px;" align="center"
									placeholder="검색해보세용!">
						<div id="search_button">
							<img src="../img/search_icon.png" width="45px" height="45px">
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
				<div id="gnb" class="gnb_dark_type2"><strong class="blind">사용자 링크</strong><ul class="gnb_lst" id="gnb_lst" style="display: block;"><li class="gnb_login_li" id="gnb_login_layer" style="display: none;"><a class="gnb_btn_login" href="https://nid.naver.com/nidlogin.login" id="gnb_login_button"><span class="gnb_bg"></span><span class="gnb_bdr"></span><span class="gnb_txt">로그인</span></a></li><li class="gnb_my_li" id="gnb_my_layer" style="display: inline-block;"><div class="gnb_my_namebox" id="gnb_my_namebox" style="background-image: url(&quot;http://static.naver.net/common/gnb/2014/ico_arrow_wh.gif&quot;);"><a href="javascript:;" class="gnb_my" onclick="mypage()"><img id="gnb_profile_img" src="http://static.naver.net/common/myarea/myInfo.gif" width="26" height="26" alt="내 프로필 이미지" style="display: inline-block;"><span id="gnb_profile_filter_mask" class="filter_mask" style="display: inline-block;"></span> <span class="gnb_name" id="gnb_name1"><%=name %></span><em class="blind">내정보 보기</em><span class="ico_arrow"></span></a><a href="#" class="gnb_emp" id="gnb_emp" style="display: none;">(임직원혜택)</a></div><div class="gnb_my_lyr" id="gnb_my_lyr"><div class="gnb_my_content"><div class="gnb_img_area"><span class="gnb_mask"></span><img src="http://static.naver.net/common/myarea/myInfo.gif" width="80" height="80" alt=""><a href="https://nid.naver.com/user2/api/naverProfile.nhn?m=checkIdType" class="gnb_change"><span class="blind">프로필 사진 변경</span></a></div><div class="gnb_txt_area"><p class="gnb_account"><span class="gnb_name" id="gnb_name2"><a class="gnb_nick" href="https://nid.naver.com/user2/api/naverProfile.nhn?m=checkIdType"><%=name %></a>님</span><a class="gnb_btn_login" href="../member/logout.jsp"><span class="gnb_bg"></span><span class="gnb_bdr"></span><span class="gnb_txt">로그아웃</span></a></p><a href="http://mail.naver.com" class="gnb_mail_address"><%=email %></a><ul class="gnb_edit_lst"><li class="gnb_info"><a href="https://nid.naver.com/user2/help/myInfo.nhn?menu=home">내정보</a></li></ul><p class="gnb_pay_check" id="gnb_pay_check"><em>B Pay</em><a href="http://pay.naver.com" id="gnb_pay_point"><span>내 페이포인트</span><strong>63,035원</strong></a></p></div></div><a href="#" class="gnb_my_interface" style="display:none"><span class="blind">환경설정</span></a></div></li><li class="gnb_notice_li" id="gnb_notice_layer" style="display: inline-block;"><a href="javascript:;" class="gnb_notice" onclick="alarm(); return false;"><span class="blind">알림</span><span class="gnb_icon"></span><em class="gnb_ico_num" id="gnb_me_menu" style="display:none"><span class="gnb_ico_new"><span class="gnb_count" id="gnb_me_count" style="display: inline-block;"></span></span></em><span class="ico_arrow"></span></a><div class="gnb_notice_lyr" id="gnb_notice_lyr"><div class="svc_noti svc_panel"><div class="svc_scroll"><div class="svc_head"><strong class="gnb_tit">전체 알림</strong><div class="task_right"><button onclick="gnbNaverMeLayer.deleteReadList(this, event);" id="gnb_btn_read_noti_del">읽은 알림 삭제</button><button onclick="gnbNaverMeLayer.showDeleteAlert();" id="gnb_btn_all_noti_del">모두 삭제</button></div></div><div class="svc_body" id="gnb_naverme_layer"></div></div><div class="gnb_ly_alert" id="gnb_ly_alert" style="display: none;"><p class="gnb_msg"><strong>알림을 모두 삭제하시겠습니까?</strong></p><div class="gnb_btns"><button id="ly_alert_confirm" onclick="gnbNaverMeLayer.deleteAllList(this, event);">확인</button><button onclick="gnbNaverMeLayer.hideDeleteAlert();">취소</button></div><button class="gnb_btn_close" onclick="gnbNaverMeLayer.hideDeleteAlert();"><i>레이어 닫기</i></button></div><a href="http://me.naver.com/box/noti.nhn" class="gnb_notice_all">내 알림 전체보기</a></div></div><iframe id="gnb_notice_lyr_iframe" title="빈 프레임" class="gnb_pad_lyr" name="padding" width="0" height="0" scrolling="no" frameborder="0" style="top:34px;right:-4px;width:299px;height:332px;display:none;opacity:0;-ms-filter:alpha(opacity=0)"></iframe></li><li class="gnb_service_li" id="gnb_service_layer" style="display: inline-block;"><a href="javascript:;" class="gnb_service" onclick="service(); return false;"><span class="blind">서비스 더보기</span><span class="gnb_icon"></span><span class="ico_arrow"></span></a><div class="gnb_service_lyr" id="gnb_service_lyr"><div class="gnb_favorite_search" id="gnb_favorite_search"><div class="gnb_favorite_area"><div class="gnb_favorite_lstwrp"><div class="gnb_first_visit" style="display:none"><span class="blind">나만의 즐겨찾기를 추가해 보세요!</span><a href="#" class="gnb_close"><span class="blind">닫기</span></a></div><strong class="blind">즐겨찾는 서비스</strong><ul class="gnb_favorite_lst" id="gnb_favorite_lst"><li class="gnb_add"><a href="#"><span class="ic_add"></span>추가</a></li><li class="gnb_add"><a href="#"><span class="ic_add"></span>추가</a></li><li class="gnb_add"><a href="#"><span class="ic_add"></span>추가</a></li><li class="gnb_add"><a href="#"><span class="ic_add"></span>추가</a></li></ul><a href="#" class="gnb_my_interface" onclick="gnbMoreLayer.clickToggleWhole(); return false;"><span class="blind">즐겨찾기 설정</span></a></div></div><div class="gnb_search_area"><div class="gnb_search_box" onmouseover="gnb_search.mouseOver(this);" onmouseout="gnb_search.mouseOut(this);"><input id="gnb_svc_search_input" type="text" title="서비스 검색" value="더 많은 서비스를 간편하게 시작하세요!" onfocus="gnb_search.clearInput(this);" onblur="gnb_search.resetInput(this);" onkeydown="gnb_search.keyDown(event);" onkeyup="gnb_search.keyUp(event);"><a href="#" class="gnb_del_txt" id="gnb_del_txt" style="display:none"><span class="blind">삭제</span></a><div class="gnb_pop_input" id="gnb_pop_input" tabindex="0" onfocus="gnb_search.searchPopOnMouse = true; return false;" onfocusout="gnb_search.searchPopOnMouse = false; return false;" onmouseover="gnb_search.searchPopOnMouse = true; return false;" onmouseout="gnb_search.searchPopOnMouse = false; return false;" style="display:none"><ul class="gnb_pop_lst"></ul></div></div><div class="gnb_search_lstwrp"><ul class="gnb_search_lst gnb_first"><li class="gnb_first"><a href="http://cafe.naver.com/">카페</a></li><li><a href="http://news.naver.com/">뉴스</a></li><li><a href="http://map.naver.com/">지도</a></li><li><a href="http://sports.news.naver.com/">스포츠</a></li><li><a href="http://game.naver.com/">게임</a></li></ul><ul class="gnb_search_lst"><li class="gnb_first"><a href="http://section.blog.naver.com/">블로그</a></li><li><a href="http://post.naver.com/main.nhn">포스트</a></li><li><a href="http://dic.naver.com/">사전</a></li><li><a href="http://kin.naver.com/">지식iN</a></li><li><a href="http://weather.naver.com/">날씨</a></li></ul><ul class="gnb_search_lst"><li class="gnb_first"><a href="http://mail.naver.com/">메일</a></li><li><a href="http://stock.naver.com/">증권</a></li><li><a href="http://land.naver.com/">부동산</a></li><li><a href="http://music.naver.com/">뮤직</a></li><li><a href="http://book.naver.com">책</a></li></ul><ul class="gnb_search_lst"><li class="gnb_first"><a href="http://shopping.naver.com/">쇼핑</a></li><li><a href="http://comic.naver.com/">웹툰</a></li><li><a href="http://movie.naver.com/">영화</a></li><li><a href="http://cloud.naver.com/">클라우드</a></li><li><a href="http://auto.naver.com/">자동차</a></li></ul></div></div><div class="gnb_banner"><a href="http://campaign.naver.com/pointevent/" class="gnb_service_event"><img id="gnb_promo" alt="바코드페이 | 12월 이벤트" width="265" height="47" src="http://static.naver.net/common/gnb/banner/promo_npay_1712.png"></a></div><div class="gnb_linkwrp"><a href="http://www.naver.com/more.html" class="gnb_service_all" id="gnb_service_all">전체 서비스 보기</a></div></div><div class="gnb_svc_more" id="gnb_svc_more" style="display: none;"><strong class="blind">바코드 주요 서비스</strong><div class="gnb_bg_top"></div><div class="gnb_svc_hd"><strong class="gnb_svc_tit">바로가기 설정</strong><span class="link"><a href="http://www.naver.com/more.html">전체 서비스 보기</a></span></div><div class="gnb_svc_lstwrp"><div class="gnb_svc_lst1"><ul class="gnb_first"><li><input type="checkbox" id="nsvc_game" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_game">게임</label></li><li><input type="checkbox" id="nsvc_weather" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_weather">날씨</label></li><li><input type="checkbox" id="nsvc_shopping" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_shopping">바코드쇼핑</label></li><li><input type="checkbox" id="nsvc_navercast" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_navercast">바코드캐스트</label></li><li><input type="checkbox" id="nsvc_cloud" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_cloud">바코드클라우드</label></li><li class="gnb_event"><input type="checkbox" id="nsvc_naverpay" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_naverpay">바코드페이</label><em class="ic_gnb_new">New</em></li><li><input type="checkbox" id="nsvc_news" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_news">뉴스</label></li><li><input type="checkbox" id="nsvc_comic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_comic">만화/웹툰</label></li><li><input type="checkbox" id="nsvc_memo" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_memo">메모</label></li><li><input type="checkbox" id="nsvc_mail" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_mail">메일</label></li><li><input type="checkbox" id="nsvc_music" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_music">뮤직</label></li><li><input type="checkbox" id="nsvc_land" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_land">부동산</label></li><li><input type="checkbox" id="nsvc_bookmark" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_bookmark">북마크</label></li></ul><ul class=""><li><input type="checkbox" id="nsvc_blog" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_blog">블로그</label></li><li><input type="checkbox" id="nsvc_dic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_dic">사전</label></li><li><input type="checkbox" id="nsvc_software" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_software">소프트웨어</label></li><li><input type="checkbox" id="nsvc_sports" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_sports">스포츠</label></li><li><input type="checkbox" id="nsvc_ya9" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_ya9">야구9단</label></li><li><input type="checkbox" id="nsvc_movie" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_movie">영화</label></li><li><input type="checkbox" id="nsvc_office" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_office">오피스</label></li><li><input type="checkbox" id="nsvc_novel" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_novel">웹소설</label></li><li><input type="checkbox" id="nsvc_auto" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_auto">자동차</label></li><li><input type="checkbox" id="nsvc_contact" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_contact">주소록</label></li><li><input type="checkbox" id="nsvc_finance" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_finance">증권(금융)</label></li><li><input type="checkbox" id="nsvc_map" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_map">지도</label></li><li><input type="checkbox" id="nsvc_kin" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_kin">지식iN</label></li></ul><ul class=""><li><input type="checkbox" id="nsvc_terms" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_terms">지식백과</label></li><li><input type="checkbox" id="nsvc_book" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_book">책</label></li><li><input type="checkbox" id="nsvc_cafe" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_cafe">카페</label></li><li><input type="checkbox" id="nsvc_calendar" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_calendar">캘린더</label></li><li><input type="checkbox" id="nsvc_photo" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_photo">포토갤러리</label></li><li><input type="checkbox" id="nsvc_nstore" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_nstore">N스토어</label></li><li><input type="checkbox" id="nsvc_navertv" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_navertv">바코드TV</label></li></ul></div><div class="svc_lst2"><div class="svc_spc gnb_first"><strong><a href="http://dic.naver.com/">어학사전</a></strong><ul class=""><li><input type="checkbox" id="nsvc_krdic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_krdic">국어사전</label></li><li><input type="checkbox" id="nsvc_endic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_endic">영어/영영사전</label></li><li><input type="checkbox" id="nsvc_hanja" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_hanja">한자사전</label></li><li><input type="checkbox" id="nsvc_jpdic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_jpdic">일어사전</label></li><li><input type="checkbox" id="nsvc_cndic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_cndic">중국어사전</label></li><li><input type="checkbox" id="nsvc_frdic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_frdic">프랑스어사전</label></li><li><input type="checkbox" id="nsvc_dedic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_dedic">독일어사전</label></li><li><input type="checkbox" id="nsvc_rudic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_rudic">러시아어사전</label></li><li><input type="checkbox" id="nsvc_vndic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_vndic">베트남어사전</label></li><li><input type="checkbox" id="nsvc_spdic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_spdic">스페인어사전</label></li><li><input type="checkbox" id="nsvc_translate" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_translate">번역기</label></li></ul></div><div class="svc_spc"><strong>인기/신규서비스</strong><ul class=""><li><input type="checkbox" id="nsvc_grafolio" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_grafolio">그라폴리오</label></li><li><input type="checkbox" id="nsvc_post" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_post">포스트</label></li><li><input type="checkbox" id="nsvc_luncherapp" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_luncherapp">도돌런처</label></li><li><input type="checkbox" id="nsvc_band" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_band">밴드</label></li><li><input type="checkbox" id="nsvc_line" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_line">라인</label></li></ul></div></div></div><div class="svc_btnwrp"><div class="svc_btns"><button class="gnb_save" onclick="if(gnbFavorite.addService()){gnbMoreLayer.clickToggleWhole()} return false;"><strong class="blind">확인</strong></button><button class="gnb_close" onclick="gnbFavorite.cancel(); return false;"><span class="blind">취소</span></button><button class="gnb_return" onclick="gnbFavorite.resetService(); return false;"><span class="blind">초기 설정으로 변경</span></button></div></div><div class="gnb_bg_btm"></div></div></div><iframe id="gnb_service_lyr_iframe" title="빈 프레임" class="gnb_pad_lyr" name="padding" width="0" height="0" scrolling="no" frameborder="0" style="display:none;top:34px;right:297px;width:585px;height:385px;opacity:0;-ms-filter:alpha(opacity=0)"></iframe><iframe id="gnb_svc_more_iframe" title="빈 프레임" class="gnb_pad_lyr" name="padding" width="0" height="0" scrolling="no" frameborder="0" style="display:none;top:34px;right:-4px;width:295px;height:385px;opacity:0;-ms-filter:alpha(opacity=0)"></iframe></li></ul>
				</div>
					<%}%>
					</div>
				</div>
			</div>
		</div>
	<div id="_post_area" class="ct_wrap">
		<div id="ct" class="end" role="main" style="overflow: hidden;">
			<div class="_postView">
				<div class="post_ct   se3_view " id="viewTypeSelector">
					<div id="SEDOC-1512435852797-79644447"
						class="se_doc_viewer se_body_wrap se_theme_transparent se_m"
						data-docversion="">
						<div class="se_component_wrap">
							<div
								class="se_component se_documentTitle documentTitle_blog  is-fill">
								<div class="se_sectionArea is-fill se_align-left">
									<!-- SE_DOC_HEADER_TITLE_TOP-->
									<div id="SEDOC-1512435852797-79644447_se_doc_title_top"
										class="se_doc_title_top"></div>
									<div class="se_editArea">
										<div class="se_viewArea se_ff_nanumgothic se_fs_D3">
											<div class="se_editView se_title">
												<div class="se_textView">
													<h3 class="se_textarea">
														<!-- -->
														<span class="pcol3"> <%=title %></span>
														<!-- -->
													</h3>
												</div>
											</div>
										</div>
									</div>
									<!-- SE_DOC_HEADER_TITLE_MIDDLE-->
									<!-- SE_DOC_HEADER_CONTENTS_START -->
									<!-- -->
									<div class="se_authorArea">
										<a href="" class="se_thumbnail">
											<span class="img"><img src="./place_board_files/1500271546767.jpg" width="35" height="35" alt="프로필"></span>
										</a>
										<div class="se_author">
											<a href=""><strong class="ell"><%=writer%></strong></a>
										</div>
										<p class="se_date"><%=regdate%></p>
									</div>
									<!-- //본문 기타 기능 -->
									<!-- -->
									<!-- SE_DOC_HEADER_CONTENTS_END -->
									<!-- SE_DOC_HEADER_TITLE_BOTTOM-->
									<div id="SEDOC-1512435852797-79644447_se_doc_title_bottom"
										class="se_doc_title_bottom"></div>
								</div>
							</div>
						</div>
						<!-- {{{$SE3-CONTENTS_HEADER}}} -->
						<!-- SE_DOC_HEADER_END -->
						<div class="se_doc_header_end"
							id="SEDOC-1512435852797-79644447_se_doc_header_end"></div>
						<div class="se_doc_contents_start"
							id="SEDOC-1512435852797-79644447_se_doc_contents_start"></div>
						<!-- SE_DOC_CONTENTS_START -->
						<%=content %>
						<!-- SE_DOC_CONTENTS_END -->
						<div class="__se_doc_title_end" id="se_doc_contents_end"></div>
						<div id="SEDOC-1512435852797-79644447_se_doc_footer"
							class="se_doc_footer"></div>
					</div>
				</div>
				<div class="section_t1">
					<div class="section_w">
						<div class="btn_r">
							<a href="" class="btn_reply">
								<span class="sp ico">댓글</span> <em>8</em>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="social_plugin_property" style="display: none">{"title":"<%=title %>","source":"http://blog.naver.com/ssagaji629/221155564632","blogName":"<%=writer %>님..","blogId":"ssagaji629","logNo":221155564632,"smartEditorVersion":3,"outsideDisplay":false,"cafeDisplay":true,"blogDisplay":true,"meDisplay":true,"lineDisplay":true}</div>
			<div class="btn_top">
				<a href=""><span class="sp"></span> 맨위로</a>
			</div>
			<div id="POST_VIEW_BOTTOM_WEB" class="btm_banner"></div>
		</div>
		<div id="_loading2" class="rego_loading loading_end"
			style="display: none">
			<div class="align">
				<span class="dot"></span><span class="dot"></span><span class="dot"></span>
			</div>
		</div>
		<div id="_div_categorylist" class="lyr_category_lst1"
			style="display: none;">
			<div class="head">
				<a href="" class="btn_close _closeCategoryList"><span class="sp">닫기</span></a>
				<div class="table">
					<div class="td">
						<h2 class="title" style="margin-left: 50px;">
							<span class="ell">카테고리</span>
						</h2>
					</div>
					<div class="td btn_area">
						<a href="" class="btn_bloghome"><span
							class="sp"></span> 이 블로그 홈</a>
					</div>
				</div>
			</div>
			<ul id="_ul_categorylist" class="lst_t4"></ul>
		</div>
	</div>
	<div class="lst_t17 tablet_aside _relatedCategoryPostListArea" style="">
		<div class="post_writer_area">
			<a href="" class="link">
				<span class="thumb_area"> <span class="thumb"> 
					<span class="img"><img src="./place_board_files/1500271546767.jpg" width="48" height="48" alt="<%=writer%>"></span>
				</span>
			</span> <span class="txt_area"><strong class="writer ell"><%=writer%></strong></span>
			</a>
		</div>
		<h2 class="tit_h2">
			<a href="" class="link sp_after">
				<span class="td">이 글&nbsp;</span> <span class="td tit">
				<strong class="ell"><%=writer %></strong></span> <span class="td">의 다른 글</span>
			</a>
		</h2>
		<div class="lst_w">
			<div class="_flickingContainer _flicking_tablet"
				id="_flickingContainer_tablet"
				style="overflow: hidden; touch-action: pan-y pinch-zoom; height: 364px;">
				<div class="_flickingScroll _flicking_tablet"
					id="_flickingScroll_tablet"
					style="transition-timing-function: cubic-bezier(0.1, 0.57, 0.1, 1); transition-duration: 0ms; transform: translate(0px, 0px) translateZ(0px); width: 255px; height: 364px;">
					<ul class="_category_post_list"
						id="_relatedCategoryPostListFlickingPage_0_tablet"
						style="width: 255px; float: left;">
		<%Vector<PlaceBoardBean> pwlist = pmgr.getPlaceWriterList(pmgr.getPlaceBoard(idx).getWriter());
		for(int i=0; i<pwlist.size();i++){ %>
						<li>
							<div class="lst_detail_t17 <%if(pwlist.get(i).getIdx().equals(idx)){%>visited<%}%>">
								<a href="<%=request.getRequestURI()%>?index=<%=pwlist.get(i).getIdx() %>" class="link">
									<div class="txt_area">
										<div class="txt_align">
											<div class="tit ell"><%=pwlist.get(i).getTitle()%></div>
											<div class="meta_data">
												<span class="td"> <span class="ell"><%=pwlist.get(i).getRegdate() %></span>
												</span>
											</div>
										</div>
									</div>
								</a>
							</div>
						</li>
		<%} %>	
					</ul>
				</div>
			</div>
			<div class="paginate _categoryPostListPagingBtnArea"
				style="display: none;">
				<span class="btn_prev" style=""><i class="sp_before">이전</i></span> <a
					href=""
					class="btn_prev _category_post_list_btn _returnFalse"
					onclick="nclk(this, &#39;pst.prev&#39;, &#39;&#39;, &#39;&#39;);"
					style="display: none;"><i class="sp_before">이전</i></a> <a
					href=""
					class="btn_next _category_post_list_btn _returnFalse"
					onclick="nclk(this, &#39;pst.next&#39;, &#39;&#39;, &#39;&#39;);"
					style="display: none;"><i class="sp_before">다음</i></a> <span
					class="btn_next" style=""><i class="sp_before">다음</i></span>
			</div>
		</div>
	</div>
	<!-- 플로팅 메뉴 -->
	<div class="floating_menu" style="">
		<div class="btn_area">
			<div class="btn_r">
				<a href=""
					class="btn_reply"
					onclick="nclk(this, &#39;flo.reply&#39;, &#39;&#39;, &#39;&#39;);">
					<span class="sp ico">댓글</span> <em>8</em>
				</a>
			</div>
		</div>
	</div>
</body>
</html>