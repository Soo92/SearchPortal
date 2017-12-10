<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
		request.setCharacterEncoding("euc-kr");
%>

<!doctype>
<!-- saved from url=(0128)file:///C:/Users/Soo/Desktop/%EC%95%84%EC%9D%B4%ED%8B%B0/%EB%B0%94%EC%BD%94%EB%93%9C%20%EA%B3%A0%EA%B0%9D%EC%84%BC%ED%84%B0.html -->
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta property="og:title" content="바코드 고객센터">
<meta property="og:description"
	content="바코드 고객센터를 통해 각 서비스 도움말을 확인해보세요.">
<meta property="og:image"
	content="http://static.naver.net/help/img/img_logo_naver_200X200.png">
<meta property="og:image:secure_url"
	content="https://ssl.pstatic.net/static/help/img/img_logo_naver_200X200.png">
<meta property="og:type" content="website">
<title>바코드 고객센터</title>
<link rel="shortcut icon" type="image/x-icon"
	href="https://ssl.pstatic.net/static/help/common/favicon.ico">
<link rel="stylesheet" type="text/css"
	href="./custom_home_files/help.css">
<script type="text/javascript">
		var topPath = "/support/";
		var ccsrv = "cc.naver.com";
	</script>
<link rel="stylesheet" href="../css/gnb_style.css" type="text/css">
<body onload="getGNB();" style="">
	<div id="wrap">
		<script type="text/javascript">
var gnb_service = "help";
var gnb_logout = encodeURIComponent(document.location);
var gnb_template = "gnb_utf8";
var gnb_searchbox = "off";
var gnb_shortnick = "off";
var gnb_brightness = 3;
var gnb_one_naver = 1;
var INIT_SEARCH_TEXT= "궁금한 점이 있다면 도움말을 검색해 보세요.";
jQuery().ready(function(){
	if (jQuery('#searchText').val() == '') {
		jQuery('#searchText').val(INIT_SEARCH_TEXT);
	}
});
function openSearch(form) {
	var searchText = form.searchText.value;
	var url = "";
	if (searchText == "" || searchText == INIT_SEARCH_TEXT) {
		alert("원하시는 검색어를 입력해 주세요.");
		jQuery('#searchText').focus();
		return false;
	}
	if ("원격지원" == searchText) {
        url = 'https://help.naver.com' + "/support/contents/contents.nhn?serviceNo=1074&categoryNo=15260";
		form.action = url;
		form.method = "post";
		return true;
	}
	if (checkKeywordSearchSize(searchText) > 600) {
		searchText = checkKeywordCut(searchText, 600);
	}
	form.searchText.value = searchText;
	form.method = "get";
	return true;
}
function reSearchParamChange(){
	var totalSearchForm = jQuery.find("#searchForm");
	jQuery(totalSearchForm).find( "#serviceName" ).val('');
	jQuery(totalSearchForm).find( "#searchText" ).val(jQuery("#searchKeyword").val());
	if( jQuery("#searchKeyword").val()  == '' ) { //검색어가 있는 경우에는 서비스명을 지우고 반영
		jQuery(totalSearchForm).find( "#searchText" ).val( jQuery("#searchName").val() );
	}
	jQuery(totalSearchForm).submit();
}
</script>
		<div id="header">
			<div class="gnb_area">
				<div class="Ngnb">
					<div class="Ngnb_inner">
						<a href="https://help.naver.com/index.jsp" class="Nlogo_link"><span
							class="Nlogo">BARCODE</span></a>
						<h1 class="Ngnb_service">
							<a href="https://help.naver.com/#" class="Nhome_link"><span
								class="Nhome">고객센터</span></a>
						</h1>
						<div class="Ngnb_common">
							<div id="gnb" class="gnb_one">
								<strong class="blind">사용자 링크</strong>
								<ul class="gnb_lst" id="gnb_lst" style="display: block;">
									<li class="gnb_login_li" id="gnb_login_layer"
										style="display: none;"><a class="gnb_btn_login"
										href="https://nid.naver.com/nidlogin.login"
										id="gnb_login_button"><span class="gnb_bg"></span><span
											class="gnb_bdr"></span><span class="gnb_txt">로그인</span></a></li>
									<li class="gnb_my_li" id="gnb_my_layer"
										style="display: inline-block;"><div
											class="gnb_my_namebox" id="gnb_my_namebox"
											style="background-image: url(&quot;https://ssl.pstatic.net/static/common/gnb/2014/ico_arrow_wh.gif&quot;);">
											<a href="javascript:;" class="gnb_my"
												onclick="gnbUserLayer.clickToggle(); return false;"><img
												id="gnb_profile_img" src="./custom_home_files/myInfo.gif"
												width="26" height="26" alt="내 프로필 이미지"
												style="display: inline-block;"><span
												id="gnb_profile_filter_mask" class="filter_mask"
												style="display: inline-block;"></span> <span
												class="gnb_name" id="gnb_name1">수수</span><em class="blind">내정보
													보기</em><span class="ico_arrow"></span></a><a
												href="https://help.naver.com/#" class="gnb_emp" id="gnb_emp"
												style="display: none;">(임직원혜택)</a>
										</div>
										<div class="gnb_my_lyr" id="gnb_my_lyr">
											<div class="gnb_my_content">
												<div class="gnb_img_area">
													<span class="gnb_mask"></span><img
														src="./custom_home_files/myInfo.gif" width="80"
														height="80" alt=""><a
														href="https://nid.naver.com/user2/api/naverProfile.nhn?m=checkIdType"
														class="gnb_change"><span class="blind">프로필 사진
															변경</span></a>
												</div>
												<div class="gnb_txt_area">
													<p class="gnb_account">
														<span class="gnb_name" id="gnb_name2"><a
															class="gnb_nick"
															href="https://nid.naver.com/user2/api/naverProfile.nhn?m=checkIdType">수수</a>님</span><a
															class="gnb_btn_login"
															href="https://nid.naver.com/nidlogin.logout?returl=https%3A%2F%2Fhelp.naver.com%2F"
															id="gnb_logout_button"><span class="gnb_bg"></span><span
															class="gnb_bdr"></span><span class="gnb_txt">로그아웃</span></a>
													</p>
													<a href="http://mail.naver.com/" class="gnb_mail_address">dltjdtn321@naver.com</a>
													<ul class="gnb_edit_lst">
														<li class="gnb_info"><a
															href="https://nid.naver.com/user2/help/myInfo.nhn?menu=home">내정보</a></li>
														<li class="gnb_secure" id="gnb_secure_lnk"><a
															href="https://nid.naver.com/user2/help/myInfo.nhn?m=viewSecurity&amp;menu=security">보안설정</a></li>
													</ul>
													<p class="gnb_pay_check" id="gnb_pay_check">
														<em>N Pay</em><a href="http://pay.naver.com/"
															id="gnb_pay_point"><span>내 페이포인트</span></a>
													</p>
												</div>
											</div>
											<div class="gnb_my_community">
												<a href="http://blog.naver.com/MyBlog.nhn" class="gnb_blog">내
													블로그</a><a href="http://section.cafe.naver.com/"
													class="gnb_cafe">가입한 카페</a><a href="http://pay.naver.com/"
													class="gnb_pay"><span>N Pay</span></a>
											</div>
											<a href="https://help.naver.com/#" class="gnb_my_interface"
												style="display: none"><span class="blind">환경설정</span></a>
										</div>
										<iframe id="gnb_my_lyr_iframe" title="빈 프레임"
											class="gnb_pad_lyr" name="padding" width="0" height="0"
											scrolling="no" frameborder="0"
											style="top: 55px; right: 10px; width: 320px; height: 174px; display: none; opacity: 0;"
											src="./custom_home_files/saved_resource.html"></iframe></li>
									<li class="gnb_notice_li" id="gnb_notice_layer"
										style="display: inline-block;"><a href="javascript:;"
										class="gnb_notice"
										onclick="gnbNaverMeLayer.clickToggle(); return false;"><span
											class="blind">알림</span><span class="gnb_icon"></span><em
											class="gnb_ico_num" id="gnb_me_menu" style="display: none"><span
												class="gnb_ico_new"><span class="gnb_count"
													id="gnb_me_count" style="display: inline-block;"></span></span></em><span
											class="ico_arrow"></span></a>
									<div class="gnb_notice_lyr" id="gnb_notice_lyr">
											<div class="svc_noti svc_panel">
												<div class="svc_scroll">
													<div class="svc_head">
														<strong class="gnb_tit">전체 알림</strong>
														<div class="task_right">
															<button
																onclick="gnbNaverMeLayer.deleteReadList(this, event);"
																id="gnb_btn_read_noti_del">읽은 알림 삭제</button>
															<button onclick="gnbNaverMeLayer.showDeleteAlert();"
																id="gnb_btn_all_noti_del">모두 삭제</button>
														</div>
													</div>
													<div class="svc_body" id="gnb_naverme_layer"></div>
												</div>
												<div class="gnb_ly_alert" id="gnb_ly_alert"
													style="display: none;">
													<p class="gnb_msg">
														<strong>알림을 모두 삭제하시겠습니까?</strong>
													</p>
													<div class="gnb_btns">
														<button id="ly_alert_confirm"
															onclick="gnbNaverMeLayer.deleteAllList(this, event);">확인</button>
														<button onclick="gnbNaverMeLayer.hideDeleteAlert();">취소</button>
													</div>
													<button class="gnb_btn_close"
														onclick="gnbNaverMeLayer.hideDeleteAlert();">
														<i>레이어 닫기</i>
													</button>
												</div>
												<a href="http://me.naver.com/box/noti.nhn"
													class="gnb_notice_all">내 알림 전체보기</a>
											</div>
										</div>
										<iframe id="gnb_notice_lyr_iframe" title="빈 프레임"
											class="gnb_pad_lyr" name="padding" width="0" height="0"
											scrolling="no" frameborder="0"
											style="top: 55px; right: 10px; width: 299px; height: 332px; display: none; opacity: 0;"
											src="./custom_home_files/saved_resource(1).html"></iframe></li>
									<li class="gnb_service_li" id="gnb_service_layer"
										style="display: inline-block;"><a href="javascript:;"
										class="gnb_service"
										onclick="gnbMoreLayer.clickToggle(); return false;"><span
											class="blind">서비스 더보기</span><span class="gnb_icon"></span><span
											class="ico_arrow"></span></a>
									<div class="gnb_service_lyr" id="gnb_service_lyr">
											<div class="gnb_favorite_search" id="gnb_favorite_search">
												<div class="gnb_favorite_area">
													<div class="gnb_favorite_lstwrp">
														<div class="gnb_first_visit" style="display: none">
															<span class="blind">나만의 즐겨찾기를 추가해 보세요!</span><a
																href="https://help.naver.com/#" class="gnb_close"><span
																class="blind">닫기</span></a>
														</div>
														<strong class="blind">즐겨찾는 서비스</strong>
														<ul class="gnb_favorite_lst" id="gnb_favorite_lst">
															<li class="gnb_add"><a
																href="https://help.naver.com/#"><span class="ic_add"></span>추가</a></li>
															<li class="gnb_add"><a
																href="https://help.naver.com/#"><span class="ic_add"></span>추가</a></li>
															<li class="gnb_add"><a
																href="https://help.naver.com/#"><span class="ic_add"></span>추가</a></li>
															<li class="gnb_add"><a
																href="https://help.naver.com/#"><span class="ic_add"></span>추가</a></li>
														</ul>
														<a href="https://help.naver.com/#"
															class="gnb_my_interface"
															onclick="gnbMoreLayer.clickToggleWhole(); return false;"><span
															class="blind">즐겨찾기 설정</span></a>
													</div>
												</div>
												<div class="gnb_search_area">
													<div class="gnb_search_box"
														onmouseover="gnb_search.mouseOver(this);"
														onmouseout="gnb_search.mouseOut(this);">
														<input id="gnb_svc_search_input" type="text"
															title="서비스 검색" value="더 많은 서비스를 간편하게 시작하세요!"
															onfocus="gnb_search.clearInput(this);"
															onblur="gnb_search.resetInput(this);"
															onkeydown="gnb_search.keyDown(event);"
															onkeyup="gnb_search.keyUp(event);"><a
															href="https://help.naver.com/#" class="gnb_del_txt"
															id="gnb_del_txt" style="display: none"><span
															class="blind">삭제</span></a>
														<div class="gnb_pop_input" id="gnb_pop_input" tabindex="0"
															onfocus="gnb_search.searchPopOnMouse = true; return false;"
															onfocusout="gnb_search.searchPopOnMouse = false; return false;"
															onmouseover="gnb_search.searchPopOnMouse = true; return false;"
															onmouseout="gnb_search.searchPopOnMouse = false; return false;"
															style="display: none">
															<ul class="gnb_pop_lst"></ul>
														</div>
													</div>
													<div class="gnb_search_lstwrp">
														<ul class="gnb_search_lst gnb_first">
															<li class="gnb_first"><a
																href="http://cafe.naver.com/">카페</a></li>
															<li><a href="http://news.naver.com/">뉴스</a></li>
															<li><a href="http://map.naver.com/">지도</a></li>
															<li><a href="http://sports.news.naver.com/">스포츠</a></li>
															<li><a href="http://game.naver.com/">게임</a></li>
														</ul>
														<ul class="gnb_search_lst">
															<li class="gnb_first"><a
																href="http://section.blog.naver.com/">블로그</a></li>
															<li><a href="http://post.naver.com/main.nhn">포스트</a></li>
															<li><a href="http://dic.naver.com/">사전</a></li>
															<li><a href="http://kin.naver.com/">지식iN</a></li>
															<li><a href="http://weather.naver.com/">날씨</a></li>
														</ul>
														<ul class="gnb_search_lst">
															<li class="gnb_first"><a
																href="http://mail.naver.com/">메일</a></li>
															<li><a href="http://stock.naver.com/">증권</a></li>
															<li><a href="http://land.naver.com/">부동산</a></li>
															<li><a href="http://music.naver.com/">뮤직</a></li>
															<li><a href="http://book.naver.com/">책</a></li>
														</ul>
														<ul class="gnb_search_lst">
															<li class="gnb_first"><a
																href="http://shopping.naver.com/">쇼핑</a></li>
															<li><a href="http://comic.naver.com/">웹툰</a></li>
															<li><a href="http://movie.naver.com/">영화</a></li>
															<li><a href="http://cloud.naver.com/">클라우드</a></li>
															<li><a href="http://auto.naver.com/">자동차</a></li>
														</ul>
													</div>
												</div>
												<div class="gnb_banner">
													<a href="http://campaign.naver.com/pointevent/"
														class="gnb_service_event"><img id="gnb_promo"
														alt="바코드페이 | 12월 이벤트" width="265" height="47"
														src="./custom_home_files/promo_npay_1712.png"></a>
												</div>
												<div class="gnb_linkwrp">
													<a href="http://www.naver.com/more.html"
														class="gnb_service_all" id="gnb_service_all">전체 서비스 보기</a>
												</div>
											</div>
											<div class="gnb_svc_more" id="gnb_svc_more"
												style="display: none;">
												<strong class="blind">바코드 주요 서비스</strong>
												<div class="gnb_bg_top"></div>
												<div class="gnb_svc_hd">
													<strong class="gnb_svc_tit">바로가기 설정</strong><span
														class="link"><a
														href="http://www.naver.com/more.html">전체 서비스 보기</a></span>
												</div>
												<div class="gnb_svc_lstwrp">
													<div class="gnb_svc_lst1">
														<ul class="gnb_first">
															<li><input type="checkbox" id="nsvc_game"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_game">게임</label></li>
															<li><input type="checkbox" id="nsvc_weather"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_weather">날씨</label></li>
															<li><input type="checkbox" id="nsvc_shopping"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_shopping">바코드쇼핑</label></li>
															<li><input type="checkbox" id="nsvc_navercast"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_navercast">바코드캐스트</label></li>
															<li><input type="checkbox" id="nsvc_cloud"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_cloud">바코드클라우드</label></li>
															<li class="gnb_event"><input type="checkbox"
																id="nsvc_naverpay" name="selmenu"
																class="gnb_input_check" value=""> <label
																for="nsvc_naverpay">바코드페이</label><em class="ic_gnb_new">New</em></li>
															<li><input type="checkbox" id="nsvc_news"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_news">뉴스</label></li>
															<li><input type="checkbox" id="nsvc_comic"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_comic">만화/웹툰</label></li>
															<li><input type="checkbox" id="nsvc_memo"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_memo">메모</label></li>
															<li><input type="checkbox" id="nsvc_mail"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_mail">메일</label></li>
															<li><input type="checkbox" id="nsvc_music"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_music">뮤직</label></li>
															<li><input type="checkbox" id="nsvc_land"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_land">부동산</label></li>
															<li><input type="checkbox" id="nsvc_bookmark"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_bookmark">북마크</label></li>
														</ul>
														<ul class="">
															<li><input type="checkbox" id="nsvc_blog"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_blog">블로그</label></li>
															<li><input type="checkbox" id="nsvc_dic"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_dic">사전</label></li>
															<li><input type="checkbox" id="nsvc_software"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_software">소프트웨어</label></li>
															<li><input type="checkbox" id="nsvc_sports"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_sports">스포츠</label></li>
															<li><input type="checkbox" id="nsvc_ya9"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_ya9">야구9단</label></li>
															<li><input type="checkbox" id="nsvc_movie"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_movie">영화</label></li>
															<li><input type="checkbox" id="nsvc_office"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_office">오피스</label></li>
															<li><input type="checkbox" id="nsvc_novel"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_novel">웹소설</label></li>
															<li><input type="checkbox" id="nsvc_auto"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_auto">자동차</label></li>
															<li><input type="checkbox" id="nsvc_contact"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_contact">주소록</label></li>
															<li><input type="checkbox" id="nsvc_finance"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_finance">증권(금융)</label></li>
															<li><input type="checkbox" id="nsvc_map"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_map">지도</label></li>
															<li><input type="checkbox" id="nsvc_kin"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_kin">지식iN</label></li>
														</ul>
														<ul class="">
															<li><input type="checkbox" id="nsvc_terms"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_terms">지식백과</label></li>
															<li><input type="checkbox" id="nsvc_book"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_book">책</label></li>
															<li><input type="checkbox" id="nsvc_cafe"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_cafe">카페</label></li>
															<li><input type="checkbox" id="nsvc_calendar"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_calendar">캘린더</label></li>
															<li><input type="checkbox" id="nsvc_photo"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_photo">포토갤러리</label></li>
															<li><input type="checkbox" id="nsvc_nstore"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_nstore">N스토어</label></li>
															<li><input type="checkbox" id="nsvc_navertv"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_navertv">바코드TV</label></li>
														</ul>
													</div>
													<div class="svc_lst2">
														<div class="svc_spc gnb_first">
															<strong><a href="http://dic.naver.com/">어학사전</a></strong>
															<ul class="">
																<li><input type="checkbox" id="nsvc_krdic"
																	name="selmenu" class="gnb_input_check" value="">
																	<label for="nsvc_krdic">국어사전</label></li>
																<li><input type="checkbox" id="nsvc_endic"
																	name="selmenu" class="gnb_input_check" value="">
																	<label for="nsvc_endic">영어/영영사전</label></li>
																<li><input type="checkbox" id="nsvc_hanja"
																	name="selmenu" class="gnb_input_check" value="">
																	<label for="nsvc_hanja">한자사전</label></li>
																<li><input type="checkbox" id="nsvc_jpdic"
																	name="selmenu" class="gnb_input_check" value="">
																	<label for="nsvc_jpdic">일어사전</label></li>
																<li><input type="checkbox" id="nsvc_cndic"
																	name="selmenu" class="gnb_input_check" value="">
																	<label for="nsvc_cndic">중국어사전</label></li>
																<li><input type="checkbox" id="nsvc_frdic"
																	name="selmenu" class="gnb_input_check" value="">
																	<label for="nsvc_frdic">프랑스어사전</label></li>
																<li><input type="checkbox" id="nsvc_dedic"
																	name="selmenu" class="gnb_input_check" value="">
																	<label for="nsvc_dedic">독일어사전</label></li>
																<li><input type="checkbox" id="nsvc_rudic"
																	name="selmenu" class="gnb_input_check" value="">
																	<label for="nsvc_rudic">러시아어사전</label></li>
																<li><input type="checkbox" id="nsvc_vndic"
																	name="selmenu" class="gnb_input_check" value="">
																	<label for="nsvc_vndic">베트남어사전</label></li>
																<li><input type="checkbox" id="nsvc_spdic"
																	name="selmenu" class="gnb_input_check" value="">
																	<label for="nsvc_spdic">스페인어사전</label></li>
																<li><input type="checkbox" id="nsvc_translate"
																	name="selmenu" class="gnb_input_check" value="">
																	<label for="nsvc_translate">번역기</label></li>
															</ul>
														</div>
														<div class="svc_spc">
															<strong>인기/신규서비스</strong>
															<ul class="">
																<li><input type="checkbox" id="nsvc_grafolio"
																	name="selmenu" class="gnb_input_check" value="">
																	<label for="nsvc_grafolio">그라폴리오</label></li>
																<li><input type="checkbox" id="nsvc_post"
																	name="selmenu" class="gnb_input_check" value="">
																	<label for="nsvc_post">포스트</label></li>
																<li><input type="checkbox" id="nsvc_luncherapp"
																	name="selmenu" class="gnb_input_check" value="">
																	<label for="nsvc_luncherapp">도돌런처</label></li>
																<li><input type="checkbox" id="nsvc_band"
																	name="selmenu" class="gnb_input_check" value="">
																	<label for="nsvc_band">밴드</label></li>
																<li><input type="checkbox" id="nsvc_line"
																	name="selmenu" class="gnb_input_check" value="">
																	<label for="nsvc_line">라인</label></li>
															</ul>
														</div>
													</div>
												</div>
												<div class="svc_btnwrp">
													<div class="svc_btns">
														<button class="gnb_save"
															onclick="if(gnbFavorite.addService()){gnbMoreLayer.clickToggleWhole()} return false;">
															<strong class="blind">확인</strong>
														</button>
														<button class="gnb_close"
															onclick="gnbFavorite.cancel(); return false;">
															<span class="blind">취소</span>
														</button>
														<button class="gnb_return"
															onclick="gnbFavorite.resetService(); return false;">
															<span class="blind">초기 설정으로 변경</span>
														</button>
													</div>
												</div>
												<div class="gnb_bg_btm"></div>
											</div>
										</div>
										<iframe id="gnb_service_lyr_iframe" title="빈 프레임"
											class="gnb_pad_lyr" name="padding" width="0" height="0"
											scrolling="no" frameborder="0"
											style="display: none; top: 55px; right: 311px; width: 585px; height: 385px; opacity: 0;"
											src="./custom_home_files/saved_resource(2).html"></iframe>
										<iframe id="gnb_svc_more_iframe" title="빈 프레임"
											class="gnb_pad_lyr" name="padding" width="0" height="0"
											scrolling="no" frameborder="0"
											style="display: none; top: 55px; right: 10px; width: 295px; height: 385px; opacity: 0;"
											src="./custom_home_files/saved_resource(3).html"></iframe></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="sta Nsearch">
				<form id="searchForm" name="searchForm" method="get"
					action="https://help.naver.com/support/search/searchResultAll.nhn"
					target="_top"
					onsubmit="clickcr(this, &#39;tsn.search&#39;, &#39;&#39;, &#39;&#39;, event);return openSearch(this);"
					class="snb_search_box">
					<fieldset>
						<legend class="blind">바코드 도움말 검색 영역</legend>
						<div class="srch_area">
							<span class="srch_box"> <span class="ipt_box"> <!-- [D] input 요소에 포커스가 갈 경우 클래스 fcs 추가 및 value 삭제 -->
									<input id="searchText" name="searchText" type="text"
									title="도움말 검색" accesskey="w" value="궁금한 점이 있다면 도움말을 검색해 보세요."
									onfocus="this.value = &#39;&#39;;"
									onblur="if(this.value == &#39;&#39;) this.value = &#39;궁금한 점이 있다면 도움말을 검색해 보세요.&#39;;"
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

		<script type="text/javascript">
jQuery(function () {
	jQuery(document.body).click(function (event){
		if(jQuery(event.target).parents("#gnb").length > 0) {
			return;
		}

		if (gnbAllLayerClose != 'undefined') {
			gnbAllLayerClose();
		}
	});
});
</script>
		<!-- //header -->
		<!-- container -->
		<div id="container">
			<!-- ticker notice -->
			<div class="spot_area">
				<div class="spot">
					<h3>공지사항</h3>
					<p>
						<a href="https://help.naver.com/#"
							onclick="clickcr(this, &#39;tsn.tick&#39;, &#39;&#39;, &#39;&#39;, event);">[제작
							중] ~12/27 (수), '바코드 포탈' 서비스 완성 예정.</a>
					</p>
				</div>
			</div>

			<!-- //ticker notice -->
			<div class="content_wrap main">
				<div id="content">
					<div class="m_section">
						<h2>
							<span class="blind">고객센터를 통해 궁금증을 해결하세요.</span>
						</h2>
						<!-- [D] 선택탭의 경우 li 요소에 클래스 on 적용 -->
						<div class="rep_area">
							<h3 class="blind">대표서비스</h3>
							<ul class="lst_rep_servs">
								<li><a
									href="https://help.naver.com/support/service/main.nhn?serviceNo=532"
									onclick="clickcr(this, &#39;icn.id&#39;, &#39;&#39;, &#39;&#39;, event)"
									class="svs_ic">회원정보</a></li>
								<li><a
									href="https://help.naver.com/support/service/main.nhn?serviceNo=606"
									onclick="clickcr(this, &#39;icn.usrc&#39;, &#39;&#39;, &#39;&#39;, event)"
									class="svs_ic6">통합검색</a></li>
								<li><a href="http://help.pay.naver.com/"
									onclick="clickcr(this, &#39;lst.checkout&#39;, &#39;&#39;, &#39;&#39;, event)"
									target="_blank" class="svs_ic20">바코드페이</a></li>
								<li><a
									href="https://help.naver.com/support/service/main.nhn?serviceNo=747"
									onclick="clickcr(this, &#39;lst.shopping&#39;, &#39;&#39;, &#39;&#39;, event)"
									class="svs_ic19">바코드쇼핑</a></li>
								<li><a
									href="https://help.naver.com/support/service/main.nhn?serviceNo=607"
									onclick="clickcr(this, &#39;icn.register&#39;, &#39;&#39;, &#39;&#39;, event)"
									class="svs_ic14">바코드<br>플레이스
								</a></li>
								<li><a
									href="https://help.naver.com/support/service/main.nhn?serviceNo=768"
									onclick="clickcr(this, &#39;icn.map&#39;, &#39;&#39;, &#39;&#39;, event)"
									class="svs_ic15">지도</a></li>
							</ul>
						</div>
						<div class="all_area" style="display: none">
							<h3 class="blind">전체보기 - 가나다순</h3>
							<div class="lst_all_area">
								<div class="lst_all">
									<h4>ㄱ</h4>
									<ul>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=744"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="가계부">가계부</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=17594"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="개발자센터 OpenAPI">개발자센터 OpenAPI</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=958"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="게시중단">게시중단</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=10576"
											onclick="clickcr(this, &#39;1&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="그라폴리오">그라폴리오</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=745"
											onclick="clickcr(this, &#39;lst.finance&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="금융/증권">금융/증권</a></li>
									</ul>
									<h4>ㄴ</h4>
									<ul>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=5843"
											onclick="clickcr(this, &#39;lst.weather&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="날씨">날씨</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=801"
											onclick="clickcr(this, &#39;lst.game&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="바코드 PC게임">바코드 PC게임</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1044"
											onclick="clickcr(this, &#39;lst.qr&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="바코드 QR코드">바코드 QR코드</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=18027"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="바코드 스마트보드">바코드 스마트보드</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=17063"
											onclick="clickcr(this, &#39;lst.nearo&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="바코드 아이디로 로그인">바코드 아이디로 로그인</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1074"
											onclick="clickcr(this, &#39;lst.general&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="바코드 전반">바코드 전반</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=636"
											onclick="clickcr(this, &#39;lst.ndrive&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="바코드 클라우드">바코드 클라우드</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1037"
											onclick="clickcr(this, &#39;lst.cleaner&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="바코드 클리너">바코드 클리너</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=705"
											onclick="clickcr(this, &#39;lst.tvcast&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="바코드TV">바코드TV</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=984"
											onclick="clickcr(this, &#39;lst.me&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="바코드me">바코드me</a></li>













										<li><a href="http://help.line.me/line/?lang=ko"
											onclick="clickcr(this, &#39;lst.line&#39;, &#39;&#39;, &#39;&#39;, event);"
											target="_blank" title="바코드라인">바코드라인</a></li>
















										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1037"
											onclick="clickcr(this, &#39;lst.vaccine&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="바코드백신">바코드백신</a></li>



										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1035"
											onclick="clickcr(this, &#39;lst.software&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="바코드소프트웨어">바코드소프트웨어</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=747"
											onclick="clickcr(this, &#39;lst.shopping&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="바코드쇼핑">바코드쇼핑</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=12270"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="바코드예약">바코드예약</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=11709"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="바코드예약 파트너센터">바코드예약 파트너센터</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=643"
											onclick="clickcr(this, &#39;lst.office&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="바코드오피스">바코드오피스</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=996"
											onclick="clickcr(this, &#39;lst.cast&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="바코드캐스트">바코드캐스트</a></li>















										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1037"
											onclick="clickcr(this, &#39;lst.capture&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="바코드캡처">바코드캡처</a></li>


















										<li><a href="http://help.pay.naver.com/"
											onclick="clickcr(this, &#39;lst.checkout&#39;, &#39;&#39;, &#39;&#39;, event);"
											target="_blank" title="바코드페이">바코드페이</a></li>


										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=16738"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="바코드펜션예약">바코드펜션예약</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=729"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="바코드포스트">바코드포스트</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=17688"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="네임카드">네임카드</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=997"
											onclick="clickcr(this, &#39;lst.news&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="뉴스">뉴스</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=998"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="뉴스 라이브러리">뉴스 라이브러리</a></li>









									</ul>




								</div>
								<div class="lst_all">



									<h4>ㄷ</h4>
									<ul>





										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=3609"
											onclick="clickcr(this, &#39;lst.video&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="동영상">동영상</a></li>









									</ul>





									<h4>ㅁ</h4>
									<ul>





										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=706"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="매거진캐스트">매거진캐스트</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=639"
											onclick="clickcr(this, &#39;lst.memo&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="메모">메모</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=2342"
											onclick="clickcr(this, &#39;lst.mail&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="메일">메일</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=644"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="문자메시지">문자메시지</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=572"
											onclick="clickcr(this, &#39;lst.music&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="뮤직">뮤직</a></li>















										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1037"
											onclick="clickcr(this, &#39;lst.player&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="미디어 플레이어">미디어 플레이어</a></li>











									</ul>





									<h4>ㅂ</h4>
									<ul>



										<li><a href="http://www.band.us/cs/#!/help"
											onclick="clickcr(this, &#39;lst.band&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="밴드">밴드</a></li>



										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=746"
											onclick="clickcr(this, &#39;lst.land&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="부동산">부동산</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=520"
											onclick="clickcr(this, &#39;lst.blog&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="블로그">블로그</a></li>









									</ul>





									<h4>ㅅ</h4>
									<ul>





										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1000"
											onclick="clickcr(this, &#39;lst.dic&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="사전">사전</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=5843"
											onclick="clickcr(this, &#39;lst.life&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="생활형서비스">생활형서비스</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=607"
											onclick="clickcr(this, &#39;icn.register&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="스마트플레이스">스마트플레이스</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1001"
											onclick="clickcr(this, &#39;lst.sports&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="스포츠">스포츠</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=964"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="신고센터">신고센터</a></li>















										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=5843"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="신용카드">신용카드</a></li>
									</ul>





									<h4>ㅇ</h4>
									<ul>





										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=521"
											onclick="clickcr(this, &#39;lst.item&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="아이템팩토리">아이템팩토리</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1042"
											onclick="clickcr(this, &#39;lst.analytics&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="애널리틱스">애널리틱스</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=726"
											onclick="clickcr(this, &#39;lst.adpost&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="애드포스트">애드포스트</a></li>
















										<li><a
											href="http://hgcs.game.sports.news.naver.com/spring/content/gamecc/openPopup?serviceCode=ya9_n"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											target="_blank" title="야구9단">야구9단</a></li>


										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=3181"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="열린연단">열린연단</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=800"
											onclick="clickcr(this, &#39;lst.movie&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="영화">영화</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=16978"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="오디오클립">오디오클립</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=724"
											onclick="clickcr(this, &#39;lst.opencast&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="오픈캐스트">오픈캐스트</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=17568"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="웨일">웨일</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=14882"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="웹마스터도구">웹마스터도구</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=804"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="웹소설">웹소설</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=799"
											onclick="clickcr(this, &#39;lst.comic&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="웹툰/만화">웹툰/만화</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=548"
											onclick="clickcr(this, &#39;lst.abuse&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="이용제한">이용제한</a></li>









									</ul>




								</div>
								<div class="lst_all">



									<h4>ㅈ</h4>
									<ul>



										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=5843"
											onclick="clickcr(this, &#39;lst.auto&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="자동차">자동차</a></li>

















										<li><a
											href="https://help.naver.com/support/contents/contents.nhn?serviceNo=1074&amp;categoryNo=10027"
											onclick="clickcr(this, &#39;lst.ends&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="종료서비스">종료서비스</a></li>



										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=986"
											onclick="clickcr(this, &#39;lst.contact&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="주소록">주소록</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=768"
											onclick="clickcr(this, &#39;lst.map&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="지도">지도</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1003"
											onclick="clickcr(this, &#39;lst.kin&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="지식iN">지식iN</a></li>















										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1000&amp;categoryNo=2728"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="지식백과">지식백과</a></li>











									</ul>





									<h4>ㅉ</h4>
									<ul>





										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=987"
											onclick="clickcr(this, &#39;lst.note&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="쪽지">쪽지</a></li>









									</ul>





									<h4>ㅊ</h4>
									<ul>





										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=702"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="책">책</a></li>









									</ul>





									<h4>ㅋ</h4>
									<ul>





										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=522"
											onclick="clickcr(this, &#39;lst.cafe&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="카페">카페</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=635"
											onclick="clickcr(this, &#39;lst.calender&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="캘린더">캘린더</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=18438"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="클로바">클로바</a></li>









									</ul>





									<h4>ㅌ</h4>
									<ul>





										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=11764"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="톡톡파트너센터">톡톡파트너센터</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=606"
											onclick="clickcr(this, &#39;lst.search&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="통합검색">통합검색</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1036"
											onclick="clickcr(this, &#39;lst.tool&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="툴바">툴바</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1037"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="툴즈">툴즈</a></li>









									</ul>





									<h4>ㅍ</h4>
									<ul>





										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=802"
											onclick="clickcr(this, &#39;lst.photo&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="포토갤러리">포토갤러리</a></li>















										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1037"
											onclick="clickcr(this, &#39;lst.photoviewer&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="포토뷰어">포토뷰어</a></li>



										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=640"
											onclick="clickcr(this, &#39;lst.photoprint&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="포토인화">포토인화</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=11492"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="폴라">폴라</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1080"
											onclick="clickcr(this, &#39;lst.privacy&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="프라이버시 센터">프라이버시 센터</a></li>









									</ul>





									<h4>ㅎ</h4>
									<ul>





										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1002"
											onclick="clickcr(this, &#39;lst.academic&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="학술정보">학술정보</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=11270"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="항공권">항공권</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=770"
											onclick="clickcr(this, &#39;lst.happybean&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="해피빈">해피빈</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=14445"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="호텔">호텔</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=532"
											onclick="clickcr(this, &#39;lst.id&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="회원정보">회원정보</a></li>









									</ul>




								</div>
								<div class="lst_all">



									<h4>abc</h4>
									<ul>





										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=17925"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="DISCO">DISCO</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=14493"
											onclick="clickcr(this, &#39;lst.lab&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="Data Lab">Data Lab</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=803"
											onclick="clickcr(this, &#39;lst.nstore&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="N스토어">N스토어</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=17996"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="Papago">Papago</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=18229"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="Tarte">Tarte</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=12240"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="V LIVE">V LIVE</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=11452"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="modoo!">modoo!</a></li>





									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="l_line"></div>
					<div class="m_section2">
						<div class="md_area">
							<h2>
								<a
									href="https://nid.naver.com/user2/help/idInquiry.nhn?menu=idinquiry"
									onclick="clickcr(this, &#39;idm.lost&#39;, &#39;&#39;, &#39;&#39;, event)"><span
									class="blind">회원정보관리</span></a>
							</h2>
							<p>
								<span class="blind">내 회원정보를 쉽고 편하게 관리할 수 있습니다.</span>
							</p>
							<ul class="lst_md">
								<li><a
									href="https://nid.naver.com/user2/help/idInquiry.nhn?menu=idinquiry"
									onclick="clickcr(this, &#39;idm.lost&#39;, &#39;&#39;, &#39;&#39;, event)">비밀번호/ID
										찾기</a></li>
								<li><a
									href="https://nid.naver.com/user/help.nhn?todo=getNewPw"
									onclick="clickcr(this, &#39;idm.chpasswd&#39;, &#39;&#39;, &#39;&#39;, event)">비밀번호
										변경</a></li>
								<li><a
									href="https://nid.naver.com/user/help.nhn?todo=changeMain&amp;menu=nid1_sub_m1"
									onclick="clickcr(this, &#39;idm.edit&#39;, &#39;&#39;, &#39;&#39;, event)">회원정보
										수정</a></li>
								<li><a
									href="https://nid.naver.com/user2/help/userLoginSafety.nhn?menu=nid2_sub_m8"
									onclick="clickcr(this, &#39;idm.protect&#39;, &#39;&#39;, &#39;&#39;, event)">로그인
										보호 설정</a></li>
							</ul>
						</div>
						<div class="md_area">
							<h2>
								<a href="https://help.naver.com/#"
									onclick="return PAGE.change(&#39;reportCenter/home.nhn&#39;)"><span
									class="blind">신고센터</span></a>
							</h2>
							<p>
								<span class="blind">유해게시물 또는 권리침해 게시물은 발견 시 바로 신고해 주세요.</span>
							</p>
							<ul class="lst_md">
								<li><a
									href="https://help.naver.com/support/contents/contents.nhn?serviceNo=964&amp;categoryNo=2826"
									onclick="clickcr(this, &#39;rpt.abuse&#39;, &#39;&#39;, &#39;&#39;, event)">유해
										게시물 신고</a></li>
								<li><a
									href="https://cpc.naver.com/cpc/claim.nhn?m=claimRequest"
									onclick="clickcr(this, &#39;rpt.copyrp&#39;, &#39;&#39;, &#39;&#39;, event)">저작권
										침해 게시물 신고</a></li>
								<li><a
									href="https://help.naver.com/support/alias/contents2/naverhome/naverhome_2.naver"
									onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event)">결제도용
										신고</a></li>
								<li><a
									href="http://inoti.naver.com/inoti/claim.nhn?m=purpose"
									onclick="clickcr(this, &#39;rpt.honor&#39;, &#39;&#39;, &#39;&#39;, event)">명예훼손
										게시물 신고</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div id="aside">

					<div class="noti_section">
						<h3>
							<span class="blind">공지사항</span>
						</h3>
						<!-- [D] 공지사항 말줄임 적용으로 전체 제목 title 속성에 대입 -->
						<ul class="lst_noti">


							<li><a
								href="http://help.naver.com/support/bbs/notice.nhn?docId=10000000000030659166"
								title="[복구완료] 11/26 (일), &#39;부동산&#39;..."
								onclick="clickcr(this, &#39;rnt.list&#39;, &#39;&#39;, &#39;&#39;, event);">[복구완료]
									11/26 (일), '부동산'...</a></li>

							<li><a
								href="http://help.naver.com/support/bbs/notice.nhn?docId=10000000000030659138"
								title="[복구완료] 11/23 (금), &#39;부동산&#39;..."
								onclick="clickcr(this, &#39;rnt.list&#39;, &#39;&#39;, &#39;&#39;, event);">[복구완료]
									11/23 (금), '부동산'...</a></li>

						</ul>
						<a href="http://help.naver.com/support/bbs/notice.nhn"
							onclick="clickcr(this, &#39;rnt.more&#39;, &#39;&#39;, &#39;&#39;, event);"
							class="nt_more"><span class="blind">공지사항</span> 더보기</a>
					</div>


				</div>
			</div>
		</div>
		<!-- //container -->







		<script type="text/javascript"
			src="./custom_home_files/flashObject.js.다운로드"></script>
		<script type="text/javascript">
	jQuery(document).ready(function(){
		jQuery("#kinParterBanner").click(function(event){
			jQuery("#dimLayout").show();
			jQuery("#kinPartnerLayout").show();
			return false;
		});

		jQuery("#kinParterPopupCloseButton").click(function(event){
			nhn.FlashObject.find('player').flashStop();
			jQuery("#dimLayout").hide();
			jQuery("#kinPartnerLayout").hide();
			return false;
		});
	});
</script>
		<div id="dimLayout" class="ly_dim" style="display: none"></div>
		<div id="kinPartnerLayout" class="ly_kin_partner"
			style="display: none">
			<div class="con">
				<h1 class="blind">지식파트너 활성화용 소개 동영상</h1>
				<!-- 동영상영역 -->
				<div class="kin_mov">
					<script type="text/javascript">
				var param = {"flashVars" : "isautoplay=false&imgurl=https://ssl.pstatic.net/static/help/support/img_pnmov.jpg&flvurl=/support/static/kin_partner.flv&volume=0.2&contentWidth=720&contentHeight=405"};
				nhn.FlashObject.show("/support/static/player.swf", "player", 720, 405, param, "middle", "11,3,378,5");
			</script>
					<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
						codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=11,3,378,5"
						class="F1512870088832850538_undefined"
						style="position: relative !important;" "="" width="720"
						height="405" id="player" align="middle">
						<param name="movie" value="/support/static/player.swf">
						<param name="quality" value="high">
						<param name="bgColor" value="#FFFFFF">
						<param name="allowScriptAccess" value="always">
						<param name="wmode" value="window">
						<param name="menu" value="false">
						<param name="allowFullScreen" value="true">
						<param name="flashVars"
							value="isautoplay=false&amp;imgurl=https://ssl.pstatic.net/static/help/support/img_pnmov.jpg&amp;flvurl=/support/static/kin_partner.flv&amp;volume=0.2&amp;contentWidth=720&amp;contentHeight=405&amp;__flashID=player">
						<embed width="720" height="405" name="player"
							class="F1512870088832850538_undefined"
							style="position: relative !important;"
							"="" src="/support/static/player.swf" align="middle"
							quality="high" bgcolor="#FFFFFF" allowscriptaccess="always"
							wmode="window" menu="false" allowfullscreen="true"
							flashvars="isautoplay=false&amp;imgurl=https://ssl.pstatic.net/static/help/support/img_pnmov.jpg&amp;flvurl=/support/static/kin_partner.flv&amp;volume=0.2&amp;contentWidth=720&amp;contentHeight=405&amp;__flashID=player"
							type="application/x-shockwave-flash"
							pluginspage="http://www.macromedia.com/go/getflashplayer">
					</object>
					<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
						codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=11,3,378,5"
						class="F1512869196744193352_undefined"
						style="position: relative !important;" "="" width="720"
						height="405" id="player" align="middle">
						<param name="movie" value="/support/static/player.swf">
						<param name="quality" value="high">
						<param name="bgColor" value="#FFFFFF">
						<param name="allowScriptAccess" value="always">
						<param name="wmode" value="window">
						<param name="menu" value="false">
						<param name="allowFullScreen" value="true">
						<param name="flashVars"
							value="isautoplay=false&amp;imgurl=https://ssl.pstatic.net/static/help/support/img_pnmov.jpg&amp;flvurl=/support/static/kin_partner.flv&amp;volume=0.2&amp;contentWidth=720&amp;contentHeight=405&amp;__flashID=player">
						<embed width="720" height="405" name="player"
							class="F1512869196744193352_undefined"
							style="position: relative !important;"
							"="" src="/support/static/player.swf" align="middle"
							quality="high" bgcolor="#FFFFFF" allowscriptaccess="always"
							wmode="window" menu="false" allowfullscreen="true"
							flashvars="isautoplay=false&amp;imgurl=https://ssl.pstatic.net/static/help/support/img_pnmov.jpg&amp;flvurl=/support/static/kin_partner.flv&amp;volume=0.2&amp;contentWidth=720&amp;contentHeight=405&amp;__flashID=player"
							type="application/x-shockwave-flash"
							pluginspage="http://www.macromedia.com/go/getflashplayer">
					</object>
				</div>
				<!-- //동영상영역 -->
				<a
					href="http://kin.naver.com/qna/list.nhn?m=noanswer&amp;dirId=10601"
					class="btn_drt"
					onclick="clickcr(this, &#39;rbk.banner&#39;, &#39;&#39;, &#39;&#39;, event)"
					target="_blank">지식in "바코드 사용법" 바로가기</a> <a
					id="kinParterPopupCloseButton" class="btn_close"><span
					class="blind">팝업창 닫기</span></a>
			</div>
		</div>







		<!-- layer kin bridge -->
		<div class="ly_dim" style="display: none;"></div>
		<div class="ly_kin_bridge" style="display: none">
			<div class="con">
				<h1 class="blind">이용자들끼리 주고 받는 생생한 바코드 사용법</h1>
				<p class="blind">지식iN에서 검색하고 물어보세요!</p>
				<h2 class="blind">바코드와 관련한 궁금한 점을 쉽게 찾을 수 있어요.</h2>
				<p class="blind">바코드사용법에 대한 질문/답변이 무려 24만개!! 하루에 새로운 질문 답변이
					200개!! 지금 바로 지식iN에서 궁금한 점을 찾아 보세요.</p>
				<a
					href="http://kin.naver.com/qna/list.nhn?m=noanswer&amp;dirId=10601"
					onclick="clickcr(this, &#39;kbr.search&#39;, &#39;&#39;, &#39;&#39;, event)"
					class="srch" target="_blank"><span class="blind">지식iN에서
						바코드 사용법 검색하기</span></a>
				<h2 class="blind">찾으시는 내용이 없다면 지식iN에 물어보세요.</h2>
				<p class="blind">다른 이용자와 지식iN 고수들, 바코드 지식파트너가 정확하고 빠르게 답변합니다.
					궁금한 점이 있으시면 지금 바로 지식iN에서 질문해 보세요.</p>
				<a
					href="http://kin.naver.com/qna/question.nhn?dirId=10601&amp;d1Id=1"
					onclick="clickcr(this, &#39;kbr.ask&#39;, &#39;&#39;, &#39;&#39;, event)"
					class="ask" target="_blank"><span class="blind">지식iN에서
						바코드 사용법 질문하기</span></a>
				<p class="blind">질문 내용을 등록하신 후 ‘바코드사용법’을 선택해주시면 더욱 정확하고 빠르게 답변
					받을 수 있어요.</p>
				<p class="blind">예) 지식Q&amp;A &gt; 컴퓨터통신 &gt; 인터넷 &gt; 바코드사용법
					&gt; OOO (서비스 명)</p>
				<a id="closeKinPopup" href="https://help.naver.com/#" class="close"><span
					class="blind">닫기</span></a>
			</div>
		</div>
		<!-- //layer kin bridge -->
		<script>
jQuery(document).ready(function(){
	
	/**
	 * 지식인 사용법 자세히 보기
	 */
	var $ly_dim   = jQuery(".ly_dim");
	var $ly_kin_bridge = jQuery(".ly_kin_bridge");	 
	 
	jQuery("#openKinPopup").click(function(event){
		
		PAGE.nClickForNoLink("rbk.detail", event);
		
		$ly_dim.show(); 
		$ly_kin_bridge.show();
		return false;
	});
	
	jQuery("#closeKinPopup").click(function(event){
		PAGE.nClickForNoLink("kbr.close", event);
		$ly_dim.hide(); 
		$ly_kin_bridge.hide();
		return false;
	});
	
});
</script>
		<!-- footer -->
		<div id="footer">
			<div class="rel_area"></div>











		</div>
		<!-- //footer -->
	</div>

	<script type="text/javascript" src="./custom_home_files/lcslog.js.다운로드"></script>
	<script type="text/javascript">
var nsc = "help.main";
lcs_do();
</script>

</body>
</html>