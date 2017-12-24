<%@page import="member.MemberBean"%>
<%@page import="java.util.Vector"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:useBean id="mgr" class="member.MemberMgr"/>
<jsp:useBean id="bean" class="member.MemberBean"/>

<%
		request.setCharacterEncoding("utf-8");
		String id = (String)session.getAttribute("idKey");	
		String email = mgr.getMember(id).getEmail();
		String name = mgr.getMember(id).getName();
		Vector<MemberBean> vlist = mgr.getMemberList();
		String phonenum = mgr.getMember(id).getPhonenum();
		String addres = mgr.getMember(id).getAddress();
		
		//////////////////update//////////////////
		String cname = bean.getName();
		String cphonenum = bean.getPhonenum();
		String cemail = bean.getEmail();
		
%>
<%
		request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<!-- saved from url=(0075)file:///C:/Users/Soo/git/SearchPortal/Barcode/WebContent/member/mypage.html -->
<html lang="ko"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
	function fold(a) {
		if(document.getElementById(a).style.display=="none"){
			document.getElementById(a).style.display="block";
		}else{
			document.getElementById	(a).style.display="none";
		}
	}
	function toggle(a) {
		if(document.getElementById("p_"+a).style.display=="none"){
			document.getElementById("p_"+a).style.display="block";
			document.getElementById("i_"+a).className = document.getElementById("i_"+a).className.replace('dn','up');
		}else{
			document.getElementById	("p_"+a).style.display="none";
			document.getElementById("i_"+a).className = document.getElementById("i_"+a).className.replace('up','dn');
		}
	}
	function changeName() {
		if(document.getElementById("btn_updateName").value=="수정"){
			var e = document.getElementById("changeNameText");
			var d = document.createElement('input');
			d.id = 'changeNameText';
			alert(e.innerHTML);
			d.innerHTML = e.innerHTML;
			e.parentNode.replaceChild(d, e);
	
			
			document.getElementById("btn_updateName").value="등록";
			document.getElementById("btn_updateName").innerHTML="등록";
		}else{
			var e = document.getElementById("changeNameText");
			var d = document.createElement('p');
			d.innerHTML = e.innerHTML;
			e.parentNode.replaceChild(d, e);
			
			document.getElementById("btn_updateName").value="수정";
			document.getElementById("btn_updateName").innerHTML="수정";
		}
	}
	function changePhonenum() {
		var e = document.getElementById("p_txt_phoneNo");

		var d = document.createElement('input');
		d.innerHTML = e.innerHTML;
		e.parentNode.replaceChild(d, e);

		document.getElementById("btn_updatepn").value="등록";
		document.getElementById("btn_updatepn").innerHTML="등록";
	
	}

	</script>
	<link rel="stylesheet" href="../css/product_style.css" type="text/css">
<link rel="stylesheet" type="text/css" href="./mypage_files/help_member.css">
<link rel="stylesheet" href="./mypage_files/gnb_style.css" type="text/css">
</head><body id="mainBody" class="skin_main">
	<div id="wrap">
			<div id="header">
				<div id="wrap2">
					<div id="logo" onclick="location.href='../index.jsp'"><img src="../img/movie/logo_ci.png" width=100% height=100% alt="바코드"></div>
					<div id="subject"><p><span>마이 페이지</span> &nbsp;내 정보</p></div>
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
				<div id="gnb" class="gnb_dark_type2"><strong class="blind">사용자 링크</strong><ul class="gnb_lst" id="gnb_lst" style="display: block;"><li class="gnb_login_li" id="gnb_login_layer" style="display: none;"><a class="gnb_btn_login" href="https://nid.naver.com/nidlogin.login" id="gnb_login_button"><span class="gnb_bg"></span><span class="gnb_bdr"></span><span class="gnb_txt">로그인</span></a></li><li class="gnb_my_li" id="gnb_my_layer" style="display: inline-block;"><div class="gnb_my_namebox" id="gnb_my_namebox" style="background-image: url(&quot;http://static.naver.net/common/gnb/2014/ico_arrow_wh.gif&quot;);"><a href="javascript:;" class="gnb_my" onclick="mypage()"><img id="gnb_profile_img" src="http://static.naver.net/common/myarea/myInfo.gif" width="26" height="26" alt="내 프로필 이미지" style="display: inline-block;"><span id="gnb_profile_filter_mask" class="filter_mask" style="display: inline-block;"></span> <span class="gnb_name" id="gnb_name1"><%=name %></span><em class="blind">내정보 보기</em><span class="ico_arrow"></span></a><a href="#" class="gnb_emp" id="gnb_emp" style="display: none;">(임직원혜택)</a></div><div class="gnb_my_lyr" id="gnb_my_lyr"><div class="gnb_my_content"><div class="gnb_img_area"><span class="gnb_mask"></span><img src="http://static.naver.net/common/myarea/myInfo.gif" width="80" height="80" alt=""><a href="https://nid.naver.com/user2/api/naverProfile.nhn?m=checkIdType" class="gnb_change"><span class="blind">프로필 사진 변경</span></a></div><div class="gnb_txt_area"><p class="gnb_account"><span class="gnb_name" id="gnb_name2"><a class="gnb_nick" href="https://nid.naver.com/user2/api/naverProfile.nhn?m=checkIdType"><%=name %></a>님</span><a class="gnb_btn_login" href="../member/logout.jsp"><span class="gnb_bg"></span><span class="gnb_bdr"></span><span class="gnb_txt">로그아웃</span></a></p><a href="http://mail.naver.com" class="gnb_mail_address"><%=email %></a><ul class="gnb_edit_lst"><li class="gnb_info"><a href="https://nid.naver.com/user2/help/myInfo.nhn?menu=home">내정보</a></li></ul><p class="gnb_pay_check" id="gnb_pay_check"><em>B Pay</em><a href="http://pay.naver.com" id="gnb_pay_point"><span>내 페이포인트</span><strong>63,035원</strong></a></p></div></div><a href="#" class="gnb_my_interface" style="display:none"><span class="blind">환경설정</span></a></div></li><li class="gnb_notice_li" id="gnb_notice_layer" style="display: inline-block;"><a href="javascript:;" class="gnb_notice" onclick="alarm(); return false;"><span class="blind">알림</span><span class="gnb_icon"></span><em class="gnb_ico_num" id="gnb_me_menu" style="display:none"><span class="gnb_ico_new"><span class="gnb_count" id="gnb_me_count" style="display: inline-block;"></span></span></em><span class="ico_arrow"></span></a><div class="gnb_notice_lyr" id="gnb_notice_lyr"><div class="svc_noti svc_panel"><div class="svc_scroll"><div class="svc_head"><strong class="gnb_tit">전체 알림</strong><div class="task_right"><button onclick="gnbNaverMeLayer.deleteReadList(this, event);" id="gnb_btn_read_noti_del">읽은 알림 삭제</button><button onclick="gnbNaverMeLayer.showDeleteAlert();" id="gnb_btn_all_noti_del">모두 삭제</button></div></div><div class="svc_body" id="gnb_naverme_layer"></div></div><div class="gnb_ly_alert" id="gnb_ly_alert" style="display: none;"><p class="gnb_msg"><strong>알림을 모두 삭제하시겠습니까?</strong></p><div class="gnb_btns"><button id="ly_alert_confirm" onclick="gnbNaverMeLayer.deleteAllList(this, event);">확인</button><button onclick="gnbNaverMeLayer.hideDeleteAlert();">취소</button></div><button class="gnb_btn_close" onclick="gnbNaverMeLayer.hideDeleteAlert();"><i>레이어 닫기</i></button></div><a href="http://me.naver.com/box/noti.nhn" class="gnb_notice_all">내 알림 전체보기</a></div></div><iframe id="gnb_notice_lyr_iframe" title="빈 프레임" class="gnb_pad_lyr" name="padding" width="0" height="0" scrolling="no" frameborder="0" style="top:34px;right:-4px;width:299px;height:332px;display:none;opacity:0;-ms-filter:alpha(opacity=0)"></iframe></li><li class="gnb_service_li" id="gnb_service_layer" style="display: inline-block;"><a href="javascript:;" class="gnb_service" onclick="service(); return false;"><span class="blind">서비스 더보기</span><span class="gnb_icon"></span><span class="ico_arrow"></span></a><div class="gnb_service_lyr" id="gnb_service_lyr"><div class="gnb_favorite_search" id="gnb_favorite_search"><div class="gnb_favorite_area"><div class="gnb_favorite_lstwrp"><div class="gnb_first_visit" style="display:none"><span class="blind">나만의 즐겨찾기를 추가해 보세요!</span><a href="#" class="gnb_close"><span class="blind">닫기</span></a></div><strong class="blind">즐겨찾는 서비스</strong><ul class="gnb_favorite_lst" id="gnb_favorite_lst"><li class="gnb_add"><a href="#"><span class="ic_add"></span>추가</a></li><li class="gnb_add"><a href="#"><span class="ic_add"></span>추가</a></li><li class="gnb_add"><a href="#"><span class="ic_add"></span>추가</a></li><li class="gnb_add"><a href="#"><span class="ic_add"></span>추가</a></li></ul><a href="#" class="gnb_my_interface" onclick="gnbMoreLayer.clickToggleWhole(); return false;"><span class="blind">즐겨찾기 설정</span></a></div></div><div class="gnb_search_area"><div class="gnb_search_box" onmouseover="gnb_search.mouseOver(this);" onmouseout="gnb_search.mouseOut(this);"><input id="gnb_svc_search_input" type="text" title="서비스 검색" value="더 많은 서비스를 간편하게 시작하세요!" onfocus="gnb_search.clearInput(this);" onblur="gnb_search.resetInput(this);" onkeydown="gnb_search.keyDown(event);" onkeyup="gnb_search.keyUp(event);"><a href="#" class="gnb_del_txt" id="gnb_del_txt" style="display:none"><span class="blind">삭제</span></a><div class="gnb_pop_input" id="gnb_pop_input" tabindex="0" onfocus="gnb_search.searchPopOnMouse = true; return false;" onfocusout="gnb_search.searchPopOnMouse = false; return false;" onmouseover="gnb_search.searchPopOnMouse = true; return false;" onmouseout="gnb_search.searchPopOnMouse = false; return false;" style="display:none"><ul class="gnb_pop_lst"></ul></div></div><div class="gnb_search_lstwrp"><ul class="gnb_search_lst gnb_first"><li class="gnb_first"><a href="http://cafe.naver.com/">카페</a></li><li><a href="http://news.naver.com/">뉴스</a></li><li><a href="http://map.naver.com/">지도</a></li><li><a href="http://sports.news.naver.com/">스포츠</a></li><li><a href="http://game.naver.com/">게임</a></li></ul><ul class="gnb_search_lst"><li class="gnb_first"><a href="http://section.blog.naver.com/">블로그</a></li><li><a href="http://post.naver.com/main.nhn">포스트</a></li><li><a href="http://dic.naver.com/">사전</a></li><li><a href="http://kin.naver.com/">지식iN</a></li><li><a href="http://weather.naver.com/">날씨</a></li></ul><ul class="gnb_search_lst"><li class="gnb_first"><a href="http://mail.naver.com/">메일</a></li><li><a href="http://stock.naver.com/">증권</a></li><li><a href="http://land.naver.com/">부동산</a></li><li><a href="http://music.naver.com/">뮤직</a></li><li><a href="http://book.naver.com">책</a></li></ul><ul class="gnb_search_lst"><li class="gnb_first"><a href="http://shopping.naver.com/">쇼핑</a></li><li><a href="http://comic.naver.com/">웹툰</a></li><li><a href="http://movie.naver.com/">영화</a></li><li><a href="http://cloud.naver.com/">클라우드</a></li><li><a href="http://auto.naver.com/">자동차</a></li></ul></div></div><div class="gnb_banner"><a href="http://campaign.naver.com/pointevent/" class="gnb_service_event"><img id="gnb_promo" alt="네이버페이 | 12월 이벤트" width="265" height="47" src="http://static.naver.net/common/gnb/banner/promo_npay_1712.png"></a></div><div class="gnb_linkwrp"><a href="http://www.naver.com/more.html" class="gnb_service_all" id="gnb_service_all">전체 서비스 보기</a></div></div><div class="gnb_svc_more" id="gnb_svc_more" style="display: none;"><strong class="blind">네이버 주요 서비스</strong><div class="gnb_bg_top"></div><div class="gnb_svc_hd"><strong class="gnb_svc_tit">바로가기 설정</strong><span class="link"><a href="http://www.naver.com/more.html">전체 서비스 보기</a></span></div><div class="gnb_svc_lstwrp"><div class="gnb_svc_lst1"><ul class="gnb_first"><li><input type="checkbox" id="nsvc_game" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_game">게임</label></li><li><input type="checkbox" id="nsvc_weather" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_weather">날씨</label></li><li><input type="checkbox" id="nsvc_shopping" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_shopping">네이버쇼핑</label></li><li><input type="checkbox" id="nsvc_navercast" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_navercast">네이버캐스트</label></li><li><input type="checkbox" id="nsvc_cloud" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_cloud">네이버클라우드</label></li><li class="gnb_event"><input type="checkbox" id="nsvc_naverpay" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_naverpay">네이버페이</label><em class="ic_gnb_new">New</em></li><li><input type="checkbox" id="nsvc_news" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_news">뉴스</label></li><li><input type="checkbox" id="nsvc_comic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_comic">만화/웹툰</label></li><li><input type="checkbox" id="nsvc_memo" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_memo">메모</label></li><li><input type="checkbox" id="nsvc_mail" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_mail">메일</label></li><li><input type="checkbox" id="nsvc_music" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_music">뮤직</label></li><li><input type="checkbox" id="nsvc_land" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_land">부동산</label></li><li><input type="checkbox" id="nsvc_bookmark" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_bookmark">북마크</label></li></ul><ul class=""><li><input type="checkbox" id="nsvc_blog" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_blog">블로그</label></li><li><input type="checkbox" id="nsvc_dic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_dic">사전</label></li><li><input type="checkbox" id="nsvc_software" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_software">소프트웨어</label></li><li><input type="checkbox" id="nsvc_sports" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_sports">스포츠</label></li><li><input type="checkbox" id="nsvc_ya9" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_ya9">야구9단</label></li><li><input type="checkbox" id="nsvc_movie" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_movie">영화</label></li><li><input type="checkbox" id="nsvc_office" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_office">오피스</label></li><li><input type="checkbox" id="nsvc_novel" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_novel">웹소설</label></li><li><input type="checkbox" id="nsvc_auto" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_auto">자동차</label></li><li><input type="checkbox" id="nsvc_contact" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_contact">주소록</label></li><li><input type="checkbox" id="nsvc_finance" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_finance">증권(금융)</label></li><li><input type="checkbox" id="nsvc_map" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_map">지도</label></li><li><input type="checkbox" id="nsvc_kin" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_kin">지식iN</label></li></ul><ul class=""><li><input type="checkbox" id="nsvc_terms" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_terms">지식백과</label></li><li><input type="checkbox" id="nsvc_book" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_book">책</label></li><li><input type="checkbox" id="nsvc_cafe" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_cafe">카페</label></li><li><input type="checkbox" id="nsvc_calendar" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_calendar">캘린더</label></li><li><input type="checkbox" id="nsvc_photo" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_photo">포토갤러리</label></li><li><input type="checkbox" id="nsvc_nstore" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_nstore">N스토어</label></li><li><input type="checkbox" id="nsvc_navertv" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_navertv">네이버TV</label></li></ul></div><div class="svc_lst2"><div class="svc_spc gnb_first"><strong><a href="http://dic.naver.com/">어학사전</a></strong><ul class=""><li><input type="checkbox" id="nsvc_krdic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_krdic">국어사전</label></li><li><input type="checkbox" id="nsvc_endic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_endic">영어/영영사전</label></li><li><input type="checkbox" id="nsvc_hanja" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_hanja">한자사전</label></li><li><input type="checkbox" id="nsvc_jpdic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_jpdic">일어사전</label></li><li><input type="checkbox" id="nsvc_cndic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_cndic">중국어사전</label></li><li><input type="checkbox" id="nsvc_frdic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_frdic">프랑스어사전</label></li><li><input type="checkbox" id="nsvc_dedic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_dedic">독일어사전</label></li><li><input type="checkbox" id="nsvc_rudic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_rudic">러시아어사전</label></li><li><input type="checkbox" id="nsvc_vndic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_vndic">베트남어사전</label></li><li><input type="checkbox" id="nsvc_spdic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_spdic">스페인어사전</label></li><li><input type="checkbox" id="nsvc_translate" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_translate">번역기</label></li></ul></div><div class="svc_spc"><strong>인기/신규서비스</strong><ul class=""><li><input type="checkbox" id="nsvc_grafolio" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_grafolio">그라폴리오</label></li><li><input type="checkbox" id="nsvc_post" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_post">포스트</label></li><li><input type="checkbox" id="nsvc_luncherapp" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_luncherapp">도돌런처</label></li><li><input type="checkbox" id="nsvc_band" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_band">밴드</label></li><li><input type="checkbox" id="nsvc_line" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_line">라인</label></li></ul></div></div></div><div class="svc_btnwrp"><div class="svc_btns"><button class="gnb_save" onclick="if(gnbFavorite.addService()){gnbMoreLayer.clickToggleWhole()} return false;"><strong class="blind">확인</strong></button><button class="gnb_close" onclick="gnbFavorite.cancel(); return false;"><span class="blind">취소</span></button><button class="gnb_return" onclick="gnbFavorite.resetService(); return false;"><span class="blind">초기 설정으로 변경</span></button></div></div><div class="gnb_bg_btm"></div></div></div><iframe id="gnb_service_lyr_iframe" title="빈 프레임" class="gnb_pad_lyr" name="padding" width="0" height="0" scrolling="no" frameborder="0" style="display:none;top:34px;right:297px;width:585px;height:385px;opacity:0;-ms-filter:alpha(opacity=0)"></iframe><iframe id="gnb_svc_more_iframe" title="빈 프레임" class="gnb_pad_lyr" name="padding" width="0" height="0" scrolling="no" frameborder="0" style="display:none;top:34px;right:-4px;width:295px;height:385px;opacity:0;-ms-filter:alpha(opacity=0)"></iframe></li></ul>
				</div>
					<%}%>
					</div>
				</div>
			</div>

		<div id="container" style="height: 749px;">
			<!-- CONTENTS -->
			<div id="content" class="section_home">
				<div class="column">
					<!-- 프로필 설정 -->
					<div class="sh_group">
						<div class="sh_header">
							<h2>네이버 프로필</h2>
							<a href="javascript:toggle(&#39;profile&#39;);" class="link_help"><i id="i_profile" class="spico ico_arr3_dn">도움말</i></a>
							<!-- [D] 감추기 보이기 dislay:none/block -->
							<p id="p_profile" class="contxt" style="display: none">
								네이버에서의 <em>'나'를 표현하는 프로필</em> 정보입니다. <br> 수정 화면에서 프로필 사진과
								별명을 변경하세요.
							</p>
						</div>
						<div class="sh_content">
							<dl class="sh_lst">
								<dt class="blind">프로필 사진</dt>
								<dd class="pic_desc">
									<a href="https://nid.naver.com/user2/help/myInfo.nhn?lang=ko_KR#" onclick="changeImage();clickcr(this,&#39;imn.prfmodify&#39;,&#39;&#39;,&#39;&#39;,event);">
										<img src="./mypage_files/default.png" width="80" height="80" alt=""> <span class="spimg img_frame"></span>
									</a>
								</dd>
								<dt class="blind">&nbsp;</dt>
								<dd class="intro_desc">&nbsp;</dd>
								<dt class="nic_tit">별명</dt>
								<dd class="nic_desc"><%=name %></dd>
							</dl>
						</div>
						<p class="btn_area_btm">
							<a onclick="onclick=&quot;fold(1)&quot;" class="btn_model"><b class="btn2" onclick="fold(&#39;a1&#39;)">수정</b></a>
						</p>
					</div>
				</div>
				<div class="column">
					<!-- 일반아이디 연락처 -->
					<div class="sh_group ">
						<div class="sh_header">
							<h2>연락처</h2>
							<a href="javascript:toggle(&#39;userInfo&#39;);" class="link_help"><i id="i_userInfo" class="spico ico_arr3_dn">도움말</i></a>
							<p id="p_userInfo" class="contxt" style="display: none">
								네이버에서 <em>중요 내용을 알려드릴 때 사용</em>하는 연락처 정보입니다. 보다 안전한 정보 보호를 위해
								등록된 연락처의 일부만 보여드립니다. 이름 및 정확한 연락처 정보는 수정 화면에서 확인 가능합니다.
							</p>
						</div>
						<div class="sh_content">
							<dl class="sh_lst2">
								<dt>기본 이메일</dt>
								<dd><%=email %></dd>
								<dt>본인확인 이메일</dt>
								<dd><%=email %></dd>
								<dt>휴대전화</dt>
								<dd>+82 <%=phonenum %></dd>
							</dl>
						</div>
						<p class="btn_area_btm">
							<a onclick="onclick=&quot;fold(2)&quot;" class="btn_model"><b class="btn2" onclick="fold(&#39;a2&#39;)">수정</b></a>
						</p>
					</div>
					<!-- 가입된 단체아이디 -->
				</div>
				<div class="column">
					<!-- 지역 설정 -->
					<div class="sh_group">
						<div class="sh_header">
							<h2>지역 설정</h2>
							<a href="javascript:toggle(&#39;region&#39;);" class="link_help"><i id="i_region" class="spico ico_arr3_dn">도움말</i></a>
							<p id="p_region" class="contxt" style="display: none">
								네이버 서비스에서 <em>공통으로 사용되는 지역 정보</em>입니다. <br> 설정되어 있는 모든 지역을
								보거나 수정하시려면 설정하기를 클릭하세요.
							</p>
						</div>
						<div class="sh_content">
							<p class="contxt">
								설정된 지역이 없습니다.<br>지금 내 주변의 관심지역을 설정하세요!
							</p>
						</div>
						<p class="btn_area_btm">
							<a onclick="fold(3)" class="btn_model"><b class="btn2" onclick="fold(&#39;a3&#39;)">설정</b></a>
						</p>
					</div>
				</div>
				<div class="desc_sub">
				
				<div class="1" id="a1" style="display: none;">
    <div class="c_header">
        <h2>프로필 수정</h2>
        <p class="contxt">네이버 대표 프로필과 별명을 수정 하실 수 있습니다.</p>
    </div>
    <form id="profileForm" method="post" enctype="multipart/form-data">
        <input type="hidden" id="helpToken" name="token_help" value="G9BYba4BnZEtYid2">
        <input type="hidden" id="deleteYn" name="deleteYn" value="N">
        <input type="hidden" id="ieLessThan9Yn" name="ieLessThan9Yn" value="N">
        <fieldset>
            <legend>프로필 수정</legend>
            <table border="0" class="tbl_model">
                <caption><span class="blind">프로필 수정</span></caption>
                <colgroup>
                    <col style="width:22%"><col>
                </colgroup>
                <tbody>
                <tr>
                    <th scope="row">
                        <div class="thcell">프로필 사진</div>
                    </th>
                    <td>
                        <div class="tdcell">
                            <div class="profile_photo">
                                <img id="imgThumb" src="./mypage_files/default(1).png" width="100" height="100">
                                <span class="mask"></span>
                            </div>
                            <p class="btn_area_btm">
                                <span class="btn_file">
                                    <label for="inputImage" class="btn_model"><b id="btnChangeProfile" class="btn2">사진변경</b></label>
                                    <input type="file" id="inputImage" name="profileImage" accept="image/*">
                                </span>
                                <a href="javascript:;" class="btn_model"><b id="btnDelete" class="btn2 btn_disable">삭제</b></a>
                            </p>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th scope="row">
                        <div class="thcell"><label for="inpNickname">별명</label></div>
                    </th>
                    <td>
                        <div class="tdcell">
                            <p class="contxt_webctrl nickname">
                                <input type="text" name="nickname" id="inpNickname" value="<%=name %>" style="width:254px">
                                <!-- Enter 입력으로 submit이 되는걸 방지하기 위한 Input -->
                                <input type="text" style="display: none;">
                            </p>
                        </div>
                    </td>
                </tr>
                </tbody>
            </table>
            <div class="btn_wrap">
                <a href="javascript:;" class="btn_model"><b id="btnConfirm" class="btn8 btn_disable">적용</b></a>
                <a href="javascript:;" class="btn_model"><b id="btnCancel" class="btn2">취소</b></a>
            </div>
        </fieldset>
    </form>
</div>

				<div class="2" id="a2" style="display: none;"> 
				        <div class="c_header"> 
							<h2>연락처 수정</h2>
							<p class="contxt"><strong><%=email %></strong>님의 연락처 정보입니다.<br>
							회원정보는 개인정보처리방침에 따라 안전하게 보호되며, 회원님의 명백한 동의 없이 공개 또는 제 3자에게 제공되지 않습니다. <a href="http://policy.naver.com/policy/privacy.html" target="_blank" onclick="clickcr(this,&#39;inf.privacy&#39;,&#39;&#39;,&#39;&#39;,event);">개인정보처리방침</a></p>
						</div>
						<form id="fm" name="fm">
							
							
							
							
							
							
							
							<fieldset>
								<table border="0" class="tbl_model">
								<caption><span class="blind">연락처 수정 입력</span></caption>
								<colgroup>
								<col style="width:22%"><col>
								</colgroup>
								<tbody>
								<tr>
									<th scope="row">
										<div class="thcell">
										     	  사용자 <span class="word_br">이름</span>
										     </div>
									</th>
									<td>
										<div class="tdcell">
											<p class="contxt_tit" id="changeNameText" ><%=name %></p>
													<p class="contxt_desc">실명 정보(이름, 생년월일, 성별, 개인 고유 식별 정보)가 변경된 경우 본인 확인을 통해 정보를 수정하실 수 있습니다.</p>
													<p class="btn_area_btm">
														<a href="javascript:changeName();" class="btn_model"><b id="btn_updateName" class="btn2">수정</b></a>
													</p>
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row">
										<div class="thcell">휴대전화</div>
									</th>
									<td>
										<div class="tdcell">
											<p id="p_txt_phoneNo" class="contxt_tit">+82 <%=phonenum %></p>
											<p class="contxt_desc">아이디, 비밀번호 찾기 등 본인확인이 필요한 경우 또는 유료 결제 등 네이버로부터 알림을 받을 때 사용할 휴대전화입니다.</p>
											<div id="d_phoneNo" style="display:none">
												<p id="p_txt_phoneNo_changeYn" class="contxt_tit2"><label for="phoneNo">변경할 휴대전화</label></p>
												<p class="contxt_webctrl">
													<select id="internationalCode" name="internationalCode" class="country_drop" onchange="javascript:setInternationalCode(&#39;internationalCode&#39;,&#39;input_internationalCode&#39;, &#39;&#39;);">
															  	 	<option value="233">가나</option>
															  	 	<option value="241">가봉</option>
															  	 	<option value="592">가이아나</option>
															  	 	<option value="220">감비아</option>
															  	 	<option value="502">과테말라</option>
															  	 	<option value="1671">괌</option>
															  	 	<option value="1473">그레나다</option>
															  	 	<option value="30">그리스</option>
															  	 	<option value="224">기니</option>
															  	 	<option value="245">기니비사우</option>
															  	 	<option value="264">나미비아</option>
															  	 	<option value="674">나우루</option>
															  	 	<option value="234">나이지리아</option>
															  	 	<option value="672">남극,오스트레일리아의외</option>
															  	 	<option value="27">남아프리카공화국</option>
															  	 	<option value="31">네덜란드</option>
															  	 	<option value="599">네덜란드령보네르</option>
															  	 	<option value="297">네덜란드령아루바</option>
															  	 	<option value="977">네팔</option>
															  	 	<option value="47">노르웨이</option>
															  	 	<option value="64">뉴질랜드</option>
															  	 	<option value="683">뉴질랜드령니우에</option>
															  	 	<option value="690">뉴질랜드령토켈라우제도</option>
															  	 	<option value="227">니제르</option>
															  	 	<option value="505">니카라과</option>
															  	 	<option value="82">대한민국</option>
															  	 	<option value="45">덴마크</option>
															  	 	<option value="299">덴마크령그린란드</option>
															  	 	<option value="298">덴마크령페로제도</option>
															  	 	<option value="1809">도미니카공화국</option>
															  	 	<option value="1829">도미니카공화국 2</option>
															  	 	<option value="1849">도미니카공화국 3</option>
															  	 	<option value="49">독일</option>
															  	 	<option value="670">동티모르</option>
															  	 	<option value="856">라오스</option>
															  	 	<option value="231">라이베리아</option>
															  	 	<option value="371">라트비아</option>
															  	 	<option value="7">러시아/카자흐스탄</option>
															  	 	<option value="961">레바논</option>
															  	 	<option value="266">레소토</option>
															  	 	<option value="40">루마니아</option>
															  	 	<option value="352">룩셈부르크</option>
															  	 	<option value="250">르완다</option>
															  	 	<option value="218">리비아</option>
															  	 	<option value="370">리투아니아</option>
															  	 	<option value="423">리히텐슈타인</option>
															  	 	<option value="261">마다가스카르</option>
															  	 	<option value="692">마셜제도공화국</option>
															  	 	<option value="691">마이크로네시아연방</option>
															  	 	<option value="853">마카오</option>
															  	 	<option value="389">마케도니아공화국</option>
															  	 	<option value="265">말라위</option>
															  	 	<option value="60">말레이시아</option>
															  	 	<option value="223">말리</option>
															  	 	<option value="52">멕시코</option>
															  	 	<option value="377">모나코</option>
															  	 	<option value="212">모로코</option>
															  	 	<option value="230">모리셔스</option>
															  	 	<option value="222">모리타니아</option>
															  	 	<option value="258">모잠비크</option>
															  	 	<option value="382">몬테네그로</option>
															  	 	<option value="373">몰도바</option>
															  	 	<option value="960">몰디브</option>
															  	 	<option value="356">몰타</option>
															  	 	<option value="976">몽골</option>
															  	 	<option value="1">미국/캐나다</option>
															  	 	<option value="1670">미국령북마리아나제도</option>
															  	 	<option value="95">미얀마</option>
															  	 	<option value="678">바누아투</option>
															  	 	<option value="973">바레인</option>
															  	 	<option value="1246">바베이도스</option>
															  	 	<option value="1242">바하마</option>
															  	 	<option value="880">방글라데시</option>
															  	 	<option value="229">베냉</option>
															  	 	<option value="58">베네수엘라</option>
															  	 	<option value="84">베트남</option>
															  	 	<option value="32">벨기에</option>
															  	 	<option value="375">벨라루스</option>
															  	 	<option value="501">벨리즈</option>
															  	 	<option value="387">보스니아헤르체고비나</option>
															  	 	<option value="267">보츠와나</option>
															  	 	<option value="591">볼리비아</option>
															  	 	<option value="257">부룬디</option>
															  	 	<option value="226">부르키나파소</option>
															  	 	<option value="975">부탄</option>
															  	 	<option value="359">불가리아</option>
															  	 	<option value="55">브라질</option>
															  	 	<option value="673">브루나이</option>
															  	 	<option value="685">사모아</option>
															  	 	<option value="966">사우디아라비아</option>
															  	 	<option value="378">산마리노</option>
															  	 	<option value="239">상투메프린시페</option>
															  	 	<option value="221">세네갈</option>
															  	 	<option value="381">세르비아</option>
															  	 	<option value="248">세이셀</option>
															  	 	<option value="1784">세인트빈센트그레나딘</option>
															  	 	<option value="252">소말리아</option>
															  	 	<option value="677">솔로몬제도</option>
															  	 	<option value="249">수단</option>
															  	 	<option value="597">수리남</option>
															  	 	<option value="94">스리랑카</option>
															  	 	<option value="268">스와질랜드</option>
															  	 	<option value="46">스웨덴</option>
															  	 	<option value="41">스위스</option>
															  	 	<option value="34">스페인</option>
															  	 	<option value="421">슬로바키아</option>
															  	 	<option value="386">슬로베니아</option>
															  	 	<option value="963">시리아</option>
															  	 	<option value="232">시에라리온</option>
															  	 	<option value="65">싱가포르</option>
															  	 	<option value="971">아랍에미리트</option>
															  	 	<option value="374">아르메니아</option>
															  	 	<option value="54">아르헨티나</option>
															  	 	<option value="1684">아메리칸사모아</option>
															  	 	<option value="354">아이슬란드</option>
															  	 	<option value="509">아이티</option>
															  	 	<option value="353">아일랜드</option>
															  	 	<option value="994">아제르바이잔</option>
															  	 	<option value="93">아프가니스탄</option>
															  	 	<option value="376">안도라</option>
															  	 	<option value="355">알바니아</option>
															  	 	<option value="213">알제리</option>
															  	 	<option value="244">앙골라</option>
															  	 	<option value="251">에디오피아</option>
															  	 	<option value="291">에리트레아</option>
															  	 	<option value="372">에스토니아</option>
															  	 	<option value="593">에콰도르</option>
															  	 	<option value="503">엘살바도르</option>
															  	 	<option value="44">영국</option>
															  	 	<option value="290">영국령세인트헬레나</option>
															  	 	<option value="246">영국령인도양지역</option>
															  	 	<option value="350">영국령지브롤터</option>
															  	 	<option value="500">영국령포클랜드제도</option>
															  	 	<option value="967">예멘</option>
															  	 	<option value="968">오만</option>
															  	 	<option value="43">오스트리아</option>
															  	 	<option value="504">온두라스</option>
															  	 	<option value="962">요르단</option>
															  	 	<option value="256">우간다</option>
															  	 	<option value="598">우루과이</option>
															  	 	<option value="998">우즈베키스탄</option>
															  	 	<option value="380">우크라이나</option>
															  	 	<option value="964">이라크</option>
															  	 	<option value="98">이란</option>
															  	 	<option value="972">이스라엘</option>
															  	 	<option value="20">이집트</option>
															  	 	<option value="39">이탈리아</option>
															  	 	<option value="91">인도</option>
															  	 	<option value="62">인도네시아</option>
															  	 	<option value="81">일본</option>
															  	 	<option value="1876">자메이카</option>
															  	 	<option value="260">잠비아</option>
															  	 	<option value="240">적도기니</option>
															  	 	<option value="995">조지아</option>
															  	 	<option value="86">중국</option>
															  	 	<option value="236">중앙아프리카공화국</option>
															  	 	<option value="253">지부티</option>
															  	 	<option value="263">짐바브웨</option>
															  	 	<option value="235">차드</option>
															  	 	<option value="420">체코</option>
															  	 	<option value="56">칠레</option>
															  	 	<option value="237">카메룬</option>
															  	 	<option value="238">카보베르데</option>
															  	 	<option value="974">카타르</option>
															  	 	<option value="855">캄보디아왕국</option>
															  	 	<option value="254">케냐</option>
															  	 	<option value="269">코모로,마요트</option>
															  	 	<option value="506">코스타리카</option>
															  	 	<option value="225">코트디부아르</option>
															  	 	<option value="57">콜롬비아</option>
															  	 	<option value="242">콩고</option>
															  	 	<option value="243">콩고민주공화국</option>
															  	 	<option value="53">쿠바</option>
															  	 	<option value="965">쿠웨이트</option>
															  	 	<option value="682">쿡제도</option>
															  	 	<option value="385">크로아티아</option>
															  	 	<option value="996">키르기스스탄</option>
															  	 	<option value="686">키리바시</option>
															  	 	<option value="357">키프로스</option>
															  	 	<option value="886">타이완</option>
															  	 	<option value="992">타지키스탄</option>
															  	 	<option value="255">탄자니아</option>
															  	 	<option value="66">태국</option>
															  	 	<option value="90">터키</option>
															  	 	<option value="228">토고</option>
															  	 	<option value="676">통가</option>
															  	 	<option value="993">투르크메니스탄</option>
															  	 	<option value="216">튀니지</option>
															  	 	<option value="1868">트리니다드토바고</option>
															  	 	<option value="507">파나마</option>
															  	 	<option value="595">파라과이</option>
															  	 	<option value="92">파키스탄</option>
															  	 	<option value="675">파푸아뉴기니</option>
															  	 	<option value="680">팔라우</option>
															  	 	<option value="970">팔레스타인</option>
															  	 	<option value="51">페루</option>
															  	 	<option value="351">포르투갈</option>
															  	 	<option value="48">폴란드</option>
															  	 	<option value="1787">푸에르토리코</option>
															  	 	<option value="33">프랑스</option>
															  	 	<option value="590">프랑스령과들루프</option>
															  	 	<option value="594">프랑스령기아나</option>
															  	 	<option value="687">프랑스령뉴칼레도니아</option>
															  	 	<option value="262">프랑스령레위니옹</option>
															  	 	<option value="596">프랑스령마르티니크</option>
															  	 	<option value="508">프랑스령생피에르미클롱</option>
															  	 	<option value="681">프랑스령월리스푸투나제</option>
															  	 	<option value="689">프랑스령폴리네시아</option>
															  	 	<option value="679">피지</option>
															  	 	<option value="358">핀란드</option>
															  	 	<option value="63">필리핀</option>
															  	 	<option value="36">헝가리</option>
															  	 	<option value="61">호주</option>
															  	 	<option value="852">홍콩</option>
													</select>	
												    <span class="country_code_w"> 
				                                        <span id="input_internationalCode" class="country_code">+82</span> 
														<input type="text" id="phoneNo" name="phoneNo" maxlength="14" onkeydown="check_num_ajax2(&#39;phoneNo&#39;, &#39;2&#39;, &#39;e_phoneNo&#39;,&#39;e_authNo&#39;);">
				                                    </span> 
													<a href="file:///C:/Users/DISKSMART/git/searchportal/Barcode/WebContent/member/mypage.html#" onclick="sendSmsForChangePhoneNo();return false;" class="btn_model"><span class="btn4">인증</span></a>
												</p>
												<p id="e_phoneNo" class="contxt_alert"></p>
					
												<p class="contxt_tit2"><label for="authNo">인증번호 입력</label></p>
												<p class="contxt_webctrl">
													<input type="text" id="authNo" name="authNo" value="" maxlength="6" onkeydown="check_num_ajax2(&#39;authNo&#39;, &#39;2&#39;, &#39;e_authNo&#39;,&#39;e_phoneNo&#39;);" disabled="" class="focus" style="width:254px">
												</p>
												<p id="e_authNo" class="contxt_alert"></p>
					
												<p class="btn_area_btm">
													<a href="file:///C:/Users/DISKSMART/git/searchportal/Barcode/WebContent/member/mypage.html#" onclick="checkAuthNoForChangePhoneNo();return false;" class="btn_model"><b id="b_txt_phoneNo_reg" class="btn3">수정완료</b></a>
													<a href="file:///C:/Users/DISKSMART/git/searchportal/Barcode/WebContent/member/mypage.html#" onclick="cancelChange(&#39;phoneNo&#39;);return false;" class="btn_model"><b id="b_txt_phoneNo_cncl" class="btn2">수정취소</b></a>
												</p>
											</div>
											<p id="p_phoneNo" class="btn_area_btm">
												<a href="javascript:changePhonenum()" class="btn_model"><b class="btn2" id="btn_updatepn">수정</b></a>
											</p>
									</div>
								</td>
							</tr>
							
							
										
							<tr>
								<th scope="row">
									<div class="thcell">
										     	  기본 <span class="word_br">이메일</span>
										     </div>
								</th>
								<td>
									<div class="tdcell">
										<p id="p_txt_myLetterEmail" class="contxt_tit"><%=email %></p>
										<p class="contxt_desc">이벤트 등 다양한 네이버의 소식 및 알림을 받기 위해 사용할 이메일 주소입니다.</p>
										<p class="contxt_webctrl2">
											<input type="checkbox" id="isEmsCheck" name="isEmsCheck" onclick="setEmsCheck();"><label for="isEmsCheck">네이버의 이벤트 등 프로모션 관련 안내 메일을 수신하겠습니다.</label>
											<a href="file:///C:/Users/DISKSMART/git/searchportal/Barcode/WebContent/member/mypage.html#" onclick="toggle(&#39;emsCheck&#39;);return false;" class="link_more"><i id="i_emsCheck" class="spico ico_arr4_dn">더보기</i></a>
										</p>
										<p id="p_emsCheck" style="display:none" class="contxt_desc">
										     	  네이버페이 서비스는 해당 서비스의 마이페이지에서 수신 여부를 설정할 수 있습니다. 주요 공지사항 및 이벤트 당첨 안내등은 수신 <em>동의 여부에 관계없이 발송</em>되며, 이메일 수신동의 상태의 반영은 최대 2일이 소요될 수 있습니다.
										     </p>
										<div id="d_myLetterEmail" style="display: block;">
											<p class="contxt_tit2"><label for="myLetterEmail">변경할 이메일</label></p>
											<p class="contxt_desc">변경할 이메일 주소를 입력하세요.(예 : abc@naver.com)</p>							
											<p class="contxt_webctrl">
												<input type="text" name="myLetterEmail" id="myLetterEmail" value="" style="width:254px">
											</p>
											<p id="e_myLetterEmail" class="contxt_alert"></p>
											<p class="btn_area_btm">
												<a href="file:///C:/Users/DISKSMART/git/searchportal/Barcode/WebContent/member/mypage.html#" onclick="setEmail();return false;" class="btn_model"><b class="btn3">수정완료</b></a>
												<a href="file:///C:/Users/DISKSMART/git/searchportal/Barcode/WebContent/member/mypage.html#" onclick="cancelChange(&#39;myLetterEmail&#39;);return false;" class="btn_model"><b class="btn2">수정취소</b></a>
											</p>
										</div>
										<p id="p_myLetterEmail" class="btn_area_btm" style="display: none;">
											<a href="file:///C:/Users/DISKSMART/git/searchportal/Barcode/WebContent/member/mypage.html#" onclick="display(&#39;myLetterEmail&#39;);return false;" class="btn_model"><b class="btn2">수정</b></a>
										</p>
									</div>
								</td>
							</tr>	
							</tbody>
							</table>
						</fieldset>
					</form>
				</div>
				
				<div class="3" id="a3" style="display: none;">
						<div class="c_header">
							<h2>지역설정</h2>
							<p class="contxt">네이버 서비스에서 공통으로 사용하고 있는 지역 목록입니다.</p>
						</div>
					<form name="fm" id="fm" action="file:///C:/Users/Soo/git/SearchPortal/Barcode/WebContent/member/mypage.html" method="post" onsubmit="return false;">
						<!-- 지역설정 테이블 -->
						<div id="localTable" style="display: block;">
						  <table border="0" class="localset_list" summary="추가된 관심지를 변경하거나 삭제 할 수 있습니다.">
							<caption class="blind">지역설정 내역</caption>
								<colgroup>
								<col><col>
								</colgroup>
							<thead>
							<tr>
								<th scope="col" class="fir">지역명</th>
								<th scope="col">지역내용</th>
							</tr>
						</thead>			
							<tbody id="tl">
							<tr id="del735" class=""><td id="ntd1735" class="tbtit edit"><div id="chk735" style="display:none;">    <label id="nameTag735" for="tyrd2">관심지 1</label></div><div class="edit" id="rNm735" style="display:block">     <input type="text" maxlength="10" onfocus="onClassName(&#39;rName735&#39;);" onkeydown="displayArr(735);" onclick="displayObj(&#39;arr2735&#39;);hiddenObj(&#39;arr1735&#39;);onClassName(&#39;rName735&#39;);" onkeyup="checkRegionName(&#39;regionsetting1&#39;, 735);checkLength(10,735);" onblur="hiddenObj(&#39;arr2735&#39;);hiddenObj(&#39;arr1735&#39;);offClassName(&#39;rName735&#39;);" class="inp_txt" id="rName735" name="rName735" value="주소 입력" title="관심지 제목 입력">     <span id="arr2735" class="ly_localnotify_arrow" style="display: none;">     <span class="txt">위치명을 입력해주세요. (최대 <strong>10자</strong>)<br>예시) 집, 회사</span>     <span class="arrow"></span>     </span>     <span id="arr1735" class="ly_localnotify_arrow" style="display:none">     <span class="txt"><strong>동일한 위치명이 존재합니다.</strong></span>     <span class="arrow"></span>     </span></div></td><td id="ntd2735" class="edit"><div id="mod735" style="display:block">    <span id="s1735"><a href="file:///C:/Users/DISKSMART/git/searchportal/Barcode/WebContent/member/mypage.html#" onclick="changeClassName(&#39;rInput1735&#39;, &#39;rInput2735&#39;, &#39;rInput3735&#39;);getSubRegionList(&#39;region0&#39;,&#39;rHidden1735&#39;,&#39;rInput1735&#39;,735);return false;" value="" id="rInput1735" class="select fir">부산광역시</a><input type="hidden" id="rHidden1735" value="08"></span>    <div id="areaA735" class="area_layer" style="display: none;"><ul class="fir"><li class=""><a href="javascript:inputData(&#39;09&#39;,&#39;서울특별시&#39;,&#39;rHidden1735&#39;,&#39;rInput1735&#39;, 735);">서울특별시</a></li><li class=""><a href="javascript:inputData(&#39;08&#39;,&#39;부산광역시&#39;,&#39;rHidden1735&#39;,&#39;rInput1735&#39;, 735);">부산광역시</a></li><li class="selected"><a href="javascript:inputData(&#39;11&#39;,&#39;인천광역시&#39;,&#39;rHidden1735&#39;,&#39;rInput1735&#39;, 735);">인천광역시</a></li><li class=""><a href="javascript:inputData(&#39;06&#39;,&#39;대구광역시&#39;,&#39;rHidden1735&#39;,&#39;rInput1735&#39;, 735);">대구광역시</a></li><li class=""><a href="javascript:inputData(&#39;05&#39;,&#39;광주광역시&#39;,&#39;rHidden1735&#39;,&#39;rInput1735&#39;, 735);">광주광역시</a></li><li class=""><a href="javascript:inputData(&#39;07&#39;,&#39;대전광역시&#39;,&#39;rHidden1735&#39;,&#39;rInput1735&#39;, 735);">대전광역시</a></li><li class=""><a href="javascript:inputData(&#39;10&#39;,&#39;울산광역시&#39;,&#39;rHidden1735&#39;,&#39;rInput1735&#39;, 735);">울산광역시</a></li></ul><ul><li class=""><a href="javascript:inputData(&#39;17&#39;,&#39;세종특별자치시&#39;,&#39;rHidden1735&#39;,&#39;rInput1735&#39;, 735);">세종특별자치시</a></li><li class=""><a href="javascript:inputData(&#39;02&#39;,&#39;경기도&#39;,&#39;rHidden1735&#39;,&#39;rInput1735&#39;, 735);">경기도</a></li><li class=""><a href="javascript:inputData(&#39;01&#39;,&#39;강원도&#39;,&#39;rHidden1735&#39;,&#39;rInput1735&#39;, 735);">강원도</a></li><li class=""><a href="javascript:inputData(&#39;15&#39;,&#39;충청남도&#39;,&#39;rHidden1735&#39;,&#39;rInput1735&#39;, 735);">충청남도</a></li><li class=""><a href="javascript:inputData(&#39;16&#39;,&#39;충청북도&#39;,&#39;rHidden1735&#39;,&#39;rInput1735&#39;, 735);">충청북도</a></li><li class=""><a href="javascript:inputData(&#39;04&#39;,&#39;경상북도&#39;,&#39;rHidden1735&#39;,&#39;rInput1735&#39;, 735);">경상북도</a></li><li class=""><a href="javascript:inputData(&#39;03&#39;,&#39;경상남도&#39;,&#39;rHidden1735&#39;,&#39;rInput1735&#39;, 735);">경상남도</a></li></ul><ul class="end"><li class=""><a href="javascript:inputData(&#39;13&#39;,&#39;전라북도&#39;,&#39;rHidden1735&#39;,&#39;rInput1735&#39;, 735);">전라북도</a></li><li class=""><a href="javascript:inputData(&#39;12&#39;,&#39;전라남도&#39;,&#39;rHidden1735&#39;,&#39;rInput1735&#39;, 735);">전라남도</a></li><li class=""><a href="javascript:inputData(&#39;14&#39;,&#39;제주도&#39;,&#39;rHidden1735&#39;,&#39;rInput1735&#39;, 735);">제주도</a></li></ul><a href="javascript:hiddenObj(&#39;areaA735&#39;);" onclick="clickcr(this, closeLayer ,&#39;&#39;,&#39;&#39;,window.event);" class="close"><span class="blind">특별시/도 선택창 닫기</span></a></div>    <span id="s2735"><a href="file:///C:/Users/DISKSMART/git/searchportal/Barcode/WebContent/member/mypage.html#" onclick="changeClassName(&#39;rInput2735&#39;, &#39;rInput1735&#39;, &#39;rInput3735&#39;);getSubRegionList(&#39;rHidden1735&#39;,&#39;rHidden2735&#39;,&#39;rInput2735&#39;, 735);return false;" value="" id="rInput2735" class="select">북구</a><input type="hidden" id="rHidden2735" style="width:50px" value="08320"></span>    <div id="areaB735" class="area_layer" style="display: none;"><ul class="fir"><li class=""><a href="javascript:inputData(&#39;08440&#39;,&#39;강서구&#39;,&#39;rHidden2735&#39;,&#39;rInput2735&#39;, 735);">강서구</a></li><li class=""><a href="javascript:inputData(&#39;08410&#39;,&#39;금정구&#39;,&#39;rHidden2735&#39;,&#39;rInput2735&#39;, 735);">금정구</a></li><li class=""><a href="javascript:inputData(&#39;08710&#39;,&#39;기장군&#39;,&#39;rHidden2735&#39;,&#39;rInput2735&#39;, 735);">기장군</a></li><li class=""><a href="javascript:inputData(&#39;08290&#39;,&#39;남구&#39;,&#39;rHidden2735&#39;,&#39;rInput2735&#39;, 735);">남구</a></li><li class=""><a href="javascript:inputData(&#39;08170&#39;,&#39;동구&#39;,&#39;rHidden2735&#39;,&#39;rInput2735&#39;, 735);">동구</a></li><li class=""><a href="javascript:inputData(&#39;08260&#39;,&#39;동래구&#39;,&#39;rHidden2735&#39;,&#39;rInput2735&#39;, 735);">동래구</a></li></ul><ul><li class=""><a href="javascript:inputData(&#39;08230&#39;,&#39;부산진구&#39;,&#39;rHidden2735&#39;,&#39;rInput2735&#39;, 735);">부산진구</a></li><li class=""><a href="javascript:inputData(&#39;08320&#39;,&#39;북구&#39;,&#39;rHidden2735&#39;,&#39;rInput2735&#39;, 735);">북구</a></li><li class=""><a href="javascript:inputData(&#39;08530&#39;,&#39;사상구&#39;,&#39;rHidden2735&#39;,&#39;rInput2735&#39;, 735);">사상구</a></li><li class=""><a href="javascript:inputData(&#39;08380&#39;,&#39;사하구&#39;,&#39;rHidden2735&#39;,&#39;rInput2735&#39;, 735);">사하구</a></li><li class=""><a href="javascript:inputData(&#39;08140&#39;,&#39;서구&#39;,&#39;rHidden2735&#39;,&#39;rInput2735&#39;, 735);">서구</a></li><li class=""><a href="javascript:inputData(&#39;08500&#39;,&#39;수영구&#39;,&#39;rHidden2735&#39;,&#39;rInput2735&#39;, 735);">수영구</a></li></ul><ul class="end"><li class=""><a href="javascript:inputData(&#39;08470&#39;,&#39;연제구&#39;,&#39;rHidden2735&#39;,&#39;rInput2735&#39;, 735);">연제구</a></li><li class=""><a href="javascript:inputData(&#39;08200&#39;,&#39;영도구&#39;,&#39;rHidden2735&#39;,&#39;rInput2735&#39;, 735);">영도구</a></li><li class=""><a href="javascript:inputData(&#39;08110&#39;,&#39;중구&#39;,&#39;rHidden2735&#39;,&#39;rInput2735&#39;, 735);">중구</a></li><li class=""><a href="javascript:inputData(&#39;08350&#39;,&#39;해운대구&#39;,&#39;rHidden2735&#39;,&#39;rInput2735&#39;, 735);">해운대구</a></li></ul><a href="javascript:hiddenObj(&#39;areaB735&#39;);" onclick="clickcr(this, closeLayer ,&#39;&#39;,&#39;&#39;,window.event);" class="close"><span class="blind">시/군/구 선택창 닫기</span></a></div>    <span id="s3735"><a href="file:///C:/Users/DISKSMART/git/searchportal/Barcode/WebContent/member/mypage.html#" onclick="changeClassName(&#39;rInput3735&#39;, &#39;rInput1735&#39;, &#39;rInput2735&#39;);getSubRegionList(&#39;rHidden2735&#39;,&#39;rHidden3735&#39;,&#39;rInput3735&#39;,735);return false;" value="" id="rInput3735" class="select end on">읍/면/동</a><input type="hidden" id="rHidden3735" value=""></span>    <div id="areaC735" class="area_layer" style="display: none;"><ul class="fir"><li class=""><a href="javascript:inputData(&#39;000000&#39;,&#39;전체&#39;,&#39;rHidden3735&#39;,&#39;rInput3735&#39;, 735);">전체</a></li><li class=""><a href="javascript:inputData(&#39;08320510&#39;,&#39;구포1동&#39;,&#39;rHidden3735&#39;,&#39;rInput3735&#39;, 735);">구포1동</a></li><li class=""><a href="javascript:inputData(&#39;08320520&#39;,&#39;구포2동&#39;,&#39;rHidden3735&#39;,&#39;rInput3735&#39;, 735);">구포2동</a></li><li class=""><a href="javascript:inputData(&#39;08320521&#39;,&#39;구포3동&#39;,&#39;rHidden3735&#39;,&#39;rInput3735&#39;, 735);">구포3동</a></li><li class=""><a href="javascript:inputData(&#39;08320105&#39;,&#39;구포동&#39;,&#39;rHidden3735&#39;,&#39;rInput3735&#39;, 735);">구포동</a></li><li class=""><a href="javascript:inputData(&#39;08320101&#39;,&#39;금곡동&#39;,&#39;rHidden3735&#39;,&#39;rInput3735&#39;, 735);">금곡동</a></li></ul><ul><li class=""><a href="javascript:inputData(&#39;08320550&#39;,&#39;덕천1동&#39;,&#39;rHidden3735&#39;,&#39;rInput3735&#39;, 735);">덕천1동</a></li><li class=""><a href="javascript:inputData(&#39;08320560&#39;,&#39;덕천2동&#39;,&#39;rHidden3735&#39;,&#39;rInput3735&#39;, 735);">덕천2동</a></li><li class=""><a href="javascript:inputData(&#39;08320561&#39;,&#39;덕천3동&#39;,&#39;rHidden3735&#39;,&#39;rInput3735&#39;, 735);">덕천3동</a></li><li class=""><a href="javascript:inputData(&#39;08320104&#39;,&#39;덕천동&#39;,&#39;rHidden3735&#39;,&#39;rInput3735&#39;, 735);">덕천동</a></li><li class=""><a href="javascript:inputData(&#39;08320571&#39;,&#39;만덕1동&#39;,&#39;rHidden3735&#39;,&#39;rInput3735&#39;, 735);">만덕1동</a></li><li class=""><a href="javascript:inputData(&#39;08320572&#39;,&#39;만덕2동&#39;,&#39;rHidden3735&#39;,&#39;rInput3735&#39;, 735);">만덕2동</a></li></ul><ul class="end"><li class=""><a href="javascript:inputData(&#39;08320573&#39;,&#39;만덕3동&#39;,&#39;rHidden3735&#39;,&#39;rInput3735&#39;, 735);">만덕3동</a></li><li class=""><a href="javascript:inputData(&#39;08320103&#39;,&#39;만덕동&#39;,&#39;rHidden3735&#39;,&#39;rInput3735&#39;, 735);">만덕동</a></li><li class=""><a href="javascript:inputData(&#39;08320541&#39;,&#39;화명1동&#39;,&#39;rHidden3735&#39;,&#39;rInput3735&#39;, 735);">화명1동</a></li><li class=""><a href="javascript:inputData(&#39;08320542&#39;,&#39;화명2동&#39;,&#39;rHidden3735&#39;,&#39;rInput3735&#39;, 735);">화명2동</a></li><li class=""><a href="javascript:inputData(&#39;08320543&#39;,&#39;화명3동&#39;,&#39;rHidden3735&#39;,&#39;rInput3735&#39;, 735);">화명3동</a></li><li class=""><a href="javascript:inputData(&#39;08320102&#39;,&#39;화명동&#39;,&#39;rHidden3735&#39;,&#39;rInput3735&#39;, 735);">화명동</a></li></ul><a href="javascript:hiddenObj(&#39;areaC735&#39;);" onclick="clickcr(this, closeLayer ,&#39;&#39;,&#39;&#39;,window.event);" class="close"><span class="blind">읍/면/동 선택창 닫기</span></a></div>    <span class="btn_area" id="save735">        <a href="javascript:getServiceNameForModify(&#39;regionsetting1&#39;,&#39;&#39;, 735);" onclick="clickcr(this, save ,&#39;&#39;,&#39;&#39;,window.event);" class="btn_model"><span class="btn6">저장</span></a>        <a href="javascript:delRow(&#39;del735&#39;,&#39;myinfo&#39;);	changeDisplayDimmed();" onclick="clickcr(this, cancel ,&#39;&#39;,&#39;&#39;,window.event);" class="btn_model"><span class="btn6">취소</span></a>    </span><div id="str735" style="display:none;">    <span id="s4735"></span>    <span id="s5735"></span>    <span id="s6735"></span>    <span class="btn_area" id="modifyLayer735" style="display:block">        <a href="javascript:changeDisplay(&#39;ntd1735&#39;,&#39;ntd2735&#39;,735);" onclick="clickcr(this, edit ,&#39;&#39;,&#39;&#39;,window.event);" class="btn_model"><span class="btn6">변경</span></a>        <a href="javascript:getServiceName(&#39;regionsetting1&#39;,&#39;del735&#39;,&#39;myinfo&#39;);" onclick="clickcr(this, del ,&#39;&#39;,&#39;&#39;,window.event);" class="btn_model"><span class="btn6">삭제</span></a>    </span></div></div></td></tr></tbody>
						</table>
						</div>
					<!-- //지역설정 테이블 -->
					<div id="viewlist" style="display: none;">
					<h3 class="service_tit">지역 적용 서비스</h3>
						<table border="1" class="service_tbl" summary="지역 적용 서비스">
						<caption><span class="blind">지역 적용 서비스 내역</span></caption>
						<colgroup>
						<col><col>
						</colgroup>
						<thead class="blind">
							<tr>
								<th scope="col" class="fir">지역명</th>
								<th scope="col">지역내용</th>
							</tr>
						</thead>	
						<tbody id="vl">
								<tr id="del0">
									<th scope="row"></th>
									<td>&nbsp;&nbsp;</td>
								</tr>
						</tbody>
						</table>
					</div>
				</form>
				<div class="resize-triggers"><div class="contract-trigger"></div></div></div>

				</div>
				<p class="desc_sub">
					소중한 개인정보 이용내역이 궁금하다면 <a href="https://nid.naver.com/user2/help/privacyInfo.nhn" class="more" target="_blank">개인정보 이용내역 보기</a>
				</p>
				<p class="desc_sub">
					네이버를 더 이상 이용하지 않는다면 <a href="https://nid.naver.com/user2/help/leaveId.nhn?menu=nid&amp;lang=ko_KR" onclick="clickcr(this,&#39;imn.memberout&#39;,&#39;&#39;,&#39;&#39;,event);" class="more">회원탈퇴 바로가기</a>
				</p>
			</div>
			<!-- //CONTENTS -->
		</div>
		
	</div>
	<script type="text/javascript">
window.onresize = function() {
	setContainerHeight(document.getElementById('content').clientHeight);
}
</script>
</body></html>