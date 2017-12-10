<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
		request.setCharacterEncoding("euc-kr");
%>

<!doctype>
<!-- saved from url=(0128)file:///C:/Users/Soo/Desktop/%EC%95%84%EC%9D%B4%ED%8B%B0/%EB%B0%94%EC%BD%94%EB%93%9C%20%EA%B3%A0%EA%B0%9D%EC%84%BC%ED%84%B0.html -->
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko">
<head>
	<<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta property="og:title" content="諛�肄��� 怨�媛��쇳��">
<meta property="og:description"
	content="諛�肄��� 怨�媛��쇳�곕�� �듯�� 媛� ��鍮��� ����留��� ���명�대낫�몄��.">
<meta property="og:image"
	content="http://static.naver.net/help/img/img_logo_naver_200X200.png">
<meta property="og:image:secure_url"
	content="https://ssl.pstatic.net/static/help/img/img_logo_naver_200X200.png">
<meta property="og:type" content="website">
<title>諛�肄��� 怨�媛��쇳��</title>
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
var INIT_SEARCH_TEXT= "沅�湲��� ���� ���ㅻ㈃ ����留��� 寃����� 蹂댁�몄��.";
jQuery().ready(function(){
	if (jQuery('#searchText').val() == '') {
		jQuery('#searchText').val(INIT_SEARCH_TEXT);
	}
});
function openSearch(form) {
	var searchText = form.searchText.value;
	var url = "";
	if (searchText == "" || searchText == INIT_SEARCH_TEXT) {
		alert("�������� 寃����대�� ���ν�� 二쇱�몄��.");
		jQuery('#searchText').focus();
		return false;
	}
	if ("��寃⑹���" == searchText) {
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
	if( jQuery("#searchKeyword").val()  == '' ) { //寃����닿� ���� 寃쎌�곗���� ��鍮��ㅻ��� 吏��곌� 諛���
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
								class="Nhome">怨�媛��쇳��</span></a>
						</h1>
						<div class="Ngnb_common">
							<div id="gnb" class="gnb_one">
								<strong class="blind">�ъ�⑹�� 留���</strong>
								<ul class="gnb_lst" id="gnb_lst" style="display: block;">
									<li class="gnb_login_li" id="gnb_login_layer"
										style="display: none;"><a class="gnb_btn_login"
										href="https://nid.naver.com/nidlogin.login"
										id="gnb_login_button"><span class="gnb_bg"></span><span
											class="gnb_bdr"></span><span class="gnb_txt">濡�洹몄��</span></a></li>
									<li class="gnb_my_li" id="gnb_my_layer"
										style="display: inline-block;"><div
											class="gnb_my_namebox" id="gnb_my_namebox"
											style="background-image: url(&quot;https://ssl.pstatic.net/static/common/gnb/2014/ico_arrow_wh.gif&quot;);">
											<a href="javascript:;" class="gnb_my"
												onclick="gnbUserLayer.clickToggle(); return false;"><img
												id="gnb_profile_img" src="./custom_home_files/myInfo.gif"
												width="26" height="26" alt="�� ��濡��� �대�몄�"
												style="display: inline-block;"><span
												id="gnb_profile_filter_mask" class="filter_mask"
												style="display: inline-block;"></span> <span
												class="gnb_name" id="gnb_name1">����</span><em class="blind">�댁��蹂�
													蹂닿린</em><span class="ico_arrow"></span></a><a
												href="https://help.naver.com/#" class="gnb_emp" id="gnb_emp"
												style="display: none;">(��吏�������)</a>
										</div>
										<div class="gnb_my_lyr" id="gnb_my_lyr">
											<div class="gnb_my_content">
												<div class="gnb_img_area">
													<span class="gnb_mask"></span><img
														src="./custom_home_files/myInfo.gif" width="80"
														height="80" alt=""><a
														href="https://nid.naver.com/user2/api/naverProfile.nhn?m=checkIdType"
														class="gnb_change"><span class="blind">��濡��� �ъ�
															蹂�寃�</span></a>
												</div>
												<div class="gnb_txt_area">
													<p class="gnb_account">
														<span class="gnb_name" id="gnb_name2"><a
															class="gnb_nick"
															href="https://nid.naver.com/user2/api/naverProfile.nhn?m=checkIdType">����</a>��</span><a
															class="gnb_btn_login"
															href="https://nid.naver.com/nidlogin.logout?returl=https%3A%2F%2Fhelp.naver.com%2F"
															id="gnb_logout_button"><span class="gnb_bg"></span><span
															class="gnb_bdr"></span><span class="gnb_txt">濡�洹몄����</span></a>
													</p>
													<a href="http://mail.naver.com/" class="gnb_mail_address">dltjdtn321@naver.com</a>
													<ul class="gnb_edit_lst">
														<li class="gnb_info"><a
															href="https://nid.naver.com/user2/help/myInfo.nhn?menu=home">�댁��蹂�</a></li>
														<li class="gnb_secure" id="gnb_secure_lnk"><a
															href="https://nid.naver.com/user2/help/myInfo.nhn?m=viewSecurity&amp;menu=security">蹂댁���ㅼ��</a></li>
													</ul>
													<p class="gnb_pay_check" id="gnb_pay_check">
														<em>N Pay</em><a href="http://pay.naver.com/"
															id="gnb_pay_point"><span>�� ���댄�ъ�명��</span></a>
													</p>
												</div>
											</div>
											<div class="gnb_my_community">
												<a href="http://blog.naver.com/MyBlog.nhn" class="gnb_blog">��
													釉�濡�洹�</a><a href="http://section.cafe.naver.com/"
													class="gnb_cafe">媛����� 移댄��</a><a href="http://pay.naver.com/"
													class="gnb_pay"><span>N Pay</span></a>
											</div>
											<a href="https://help.naver.com/#" class="gnb_my_interface"
												style="display: none"><span class="blind">��寃쎌�ㅼ��</span></a>
										</div>
										<iframe id="gnb_my_lyr_iframe" title="鍮� ������"
											class="gnb_pad_lyr" name="padding" width="0" height="0"
											scrolling="no" frameborder="0"
											style="top: 55px; right: 10px; width: 320px; height: 174px; display: none; opacity: 0;"
											src="./custom_home_files/saved_resource.html"></iframe></li>
									<li class="gnb_notice_li" id="gnb_notice_layer"
										style="display: inline-block;"><a href="javascript:;"
										class="gnb_notice"
										onclick="gnbNaverMeLayer.clickToggle(); return false;"><span
											class="blind">��由�</span><span class="gnb_icon"></span><em
											class="gnb_ico_num" id="gnb_me_menu" style="display: none"><span
												class="gnb_ico_new"><span class="gnb_count"
													id="gnb_me_count" style="display: inline-block;"></span></span></em><span
											class="ico_arrow"></span></a>
									<div class="gnb_notice_lyr" id="gnb_notice_lyr">
											<div class="svc_noti svc_panel">
												<div class="svc_scroll">
													<div class="svc_head">
														<strong class="gnb_tit">��泥� ��由�</strong>
														<div class="task_right">
															<button
																onclick="gnbNaverMeLayer.deleteReadList(this, event);"
																id="gnb_btn_read_noti_del">�쎌�� ��由� ����</button>
															<button onclick="gnbNaverMeLayer.showDeleteAlert();"
																id="gnb_btn_all_noti_del">紐⑤�� ����</button>
														</div>
													</div>
													<div class="svc_body" id="gnb_naverme_layer"></div>
												</div>
												<div class="gnb_ly_alert" id="gnb_ly_alert"
													style="display: none;">
													<p class="gnb_msg">
														<strong>��由쇱�� 紐⑤�� ��������寃��듬��源�?</strong>
													</p>
													<div class="gnb_btns">
														<button id="ly_alert_confirm"
															onclick="gnbNaverMeLayer.deleteAllList(this, event);">����</button>
														<button onclick="gnbNaverMeLayer.hideDeleteAlert();">痍⑥��</button>
													</div>
													<button class="gnb_btn_close"
														onclick="gnbNaverMeLayer.hideDeleteAlert();">
														<i>���댁�� �リ린</i>
													</button>
												</div>
												<a href="http://me.naver.com/box/noti.nhn"
													class="gnb_notice_all">�� ��由� ��泥대낫湲�</a>
											</div>
										</div>
										<iframe id="gnb_notice_lyr_iframe" title="鍮� ������"
											class="gnb_pad_lyr" name="padding" width="0" height="0"
											scrolling="no" frameborder="0"
											style="top: 55px; right: 10px; width: 299px; height: 332px; display: none; opacity: 0;"
											src="./custom_home_files/saved_resource(1).html"></iframe></li>
									<li class="gnb_service_li" id="gnb_service_layer"
										style="display: inline-block;"><a href="javascript:;"
										class="gnb_service"
										onclick="gnbMoreLayer.clickToggle(); return false;"><span
											class="blind">��鍮��� ��蹂닿린</span><span class="gnb_icon"></span><span
											class="ico_arrow"></span></a>
									<div class="gnb_service_lyr" id="gnb_service_lyr">
											<div class="gnb_favorite_search" id="gnb_favorite_search">
												<div class="gnb_favorite_area">
													<div class="gnb_favorite_lstwrp">
														<div class="gnb_first_visit" style="display: none">
															<span class="blind">��留��� 利�寃⑥갼湲곕�� 異�媛��� 蹂댁�몄��!</span><a
																href="https://help.naver.com/#" class="gnb_close"><span
																class="blind">�リ린</span></a>
														</div>
														<strong class="blind">利�寃⑥갼�� ��鍮���</strong>
														<ul class="gnb_favorite_lst" id="gnb_favorite_lst">
															<li class="gnb_add"><a
																href="https://help.naver.com/#"><span class="ic_add"></span>異�媛�</a></li>
															<li class="gnb_add"><a
																href="https://help.naver.com/#"><span class="ic_add"></span>異�媛�</a></li>
															<li class="gnb_add"><a
																href="https://help.naver.com/#"><span class="ic_add"></span>異�媛�</a></li>
															<li class="gnb_add"><a
																href="https://help.naver.com/#"><span class="ic_add"></span>異�媛�</a></li>
														</ul>
														<a href="https://help.naver.com/#"
															class="gnb_my_interface"
															onclick="gnbMoreLayer.clickToggleWhole(); return false;"><span
															class="blind">利�寃⑥갼湲� �ㅼ��</span></a>
													</div>
												</div>
												<div class="gnb_search_area">
													<div class="gnb_search_box"
														onmouseover="gnb_search.mouseOver(this);"
														onmouseout="gnb_search.mouseOut(this);">
														<input id="gnb_svc_search_input" type="text"
															title="��鍮��� 寃���" value="�� 留��� ��鍮��ㅻ�� 媛��명��寃� �������몄��!"
															onfocus="gnb_search.clearInput(this);"
															onblur="gnb_search.resetInput(this);"
															onkeydown="gnb_search.keyDown(event);"
															onkeyup="gnb_search.keyUp(event);"><a
															href="https://help.naver.com/#" class="gnb_del_txt"
															id="gnb_del_txt" style="display: none"><span
															class="blind">����</span></a>
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
																href="http://cafe.naver.com/">移댄��</a></li>
															<li><a href="http://news.naver.com/">�댁��</a></li>
															<li><a href="http://map.naver.com/">吏���</a></li>
															<li><a href="http://sports.news.naver.com/">�ㅽ�ъ�</a></li>
															<li><a href="http://game.naver.com/">寃���</a></li>
														</ul>
														<ul class="gnb_search_lst">
															<li class="gnb_first"><a
																href="http://section.blog.naver.com/">釉�濡�洹�</a></li>
															<li><a href="http://post.naver.com/main.nhn">�ъ�ㅽ��</a></li>
															<li><a href="http://dic.naver.com/">�ъ��</a></li>
															<li><a href="http://kin.naver.com/">吏���iN</a></li>
															<li><a href="http://weather.naver.com/">����</a></li>
														</ul>
														<ul class="gnb_search_lst">
															<li class="gnb_first"><a
																href="http://mail.naver.com/">硫���</a></li>
															<li><a href="http://stock.naver.com/">利�沅�</a></li>
															<li><a href="http://land.naver.com/">遺�����</a></li>
															<li><a href="http://music.naver.com/">裕ㅼ�</a></li>
															<li><a href="http://book.naver.com/">梨�</a></li>
														</ul>
														<ul class="gnb_search_lst">
															<li class="gnb_first"><a
																href="http://shopping.naver.com/">�쇳��</a></li>
															<li><a href="http://comic.naver.com/">�뱁��</a></li>
															<li><a href="http://movie.naver.com/">����</a></li>
															<li><a href="http://cloud.naver.com/">�대�쇱�곕��</a></li>
															<li><a href="http://auto.naver.com/">����李�</a></li>
														</ul>
													</div>
												</div>
												<div class="gnb_banner">
													<a href="http://campaign.naver.com/pointevent/"
														class="gnb_service_event"><img id="gnb_promo"
														alt="諛�肄������� | 12�� �대깽��" width="265" height="47"
														src="./custom_home_files/promo_npay_1712.png"></a>
												</div>
												<div class="gnb_linkwrp">
													<a href="http://www.naver.com/more.html"
														class="gnb_service_all" id="gnb_service_all">��泥� ��鍮��� 蹂닿린</a>
												</div>
											</div>
											<div class="gnb_svc_more" id="gnb_svc_more"
												style="display: none;">
												<strong class="blind">諛�肄��� 二쇱�� ��鍮���</strong>
												<div class="gnb_bg_top"></div>
												<div class="gnb_svc_hd">
													<strong class="gnb_svc_tit">諛�濡�媛�湲� �ㅼ��</strong><span
														class="link"><a
														href="http://www.naver.com/more.html">��泥� ��鍮��� 蹂닿린</a></span>
												</div>
												<div class="gnb_svc_lstwrp">
													<div class="gnb_svc_lst1">
														<ul class="gnb_first">
															<li><input type="checkbox" id="nsvc_game"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_game">寃���</label></li>
															<li><input type="checkbox" id="nsvc_weather"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_weather">����</label></li>
															<li><input type="checkbox" id="nsvc_shopping"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_shopping">諛�肄����쇳��</label></li>
															<li><input type="checkbox" id="nsvc_navercast"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_navercast">諛�肄���罹��ㅽ��</label></li>
															<li><input type="checkbox" id="nsvc_cloud"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_cloud">諛�肄����대�쇱�곕��</label></li>
															<li class="gnb_event"><input type="checkbox"
																id="nsvc_naverpay" name="selmenu"
																class="gnb_input_check" value=""> <label
																for="nsvc_naverpay">諛�肄�������</label><em class="ic_gnb_new">New</em></li>
															<li><input type="checkbox" id="nsvc_news"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_news">�댁��</label></li>
															<li><input type="checkbox" id="nsvc_comic"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_comic">留���/�뱁��</label></li>
															<li><input type="checkbox" id="nsvc_memo"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_memo">硫�紐�</label></li>
															<li><input type="checkbox" id="nsvc_mail"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_mail">硫���</label></li>
															<li><input type="checkbox" id="nsvc_music"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_music">裕ㅼ�</label></li>
															<li><input type="checkbox" id="nsvc_land"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_land">遺�����</label></li>
															<li><input type="checkbox" id="nsvc_bookmark"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_bookmark">遺�留���</label></li>
														</ul>
														<ul class="">
															<li><input type="checkbox" id="nsvc_blog"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_blog">釉�濡�洹�</label></li>
															<li><input type="checkbox" id="nsvc_dic"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_dic">�ъ��</label></li>
															<li><input type="checkbox" id="nsvc_software"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_software">�����몄�⑥��</label></li>
															<li><input type="checkbox" id="nsvc_sports"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_sports">�ㅽ�ъ�</label></li>
															<li><input type="checkbox" id="nsvc_ya9"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_ya9">�쇨뎄9��</label></li>
															<li><input type="checkbox" id="nsvc_movie"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_movie">����</label></li>
															<li><input type="checkbox" id="nsvc_office"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_office">�ㅽ�쇱��</label></li>
															<li><input type="checkbox" id="nsvc_novel"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_novel">�뱀����</label></li>
															<li><input type="checkbox" id="nsvc_auto"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_auto">����李�</label></li>
															<li><input type="checkbox" id="nsvc_contact"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_contact">二쇱��濡�</label></li>
															<li><input type="checkbox" id="nsvc_finance"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_finance">利�沅�(湲���)</label></li>
															<li><input type="checkbox" id="nsvc_map"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_map">吏���</label></li>
															<li><input type="checkbox" id="nsvc_kin"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_kin">吏���iN</label></li>
														</ul>
														<ul class="">
															<li><input type="checkbox" id="nsvc_terms"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_terms">吏���諛깃낵</label></li>
															<li><input type="checkbox" id="nsvc_book"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_book">梨�</label></li>
															<li><input type="checkbox" id="nsvc_cafe"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_cafe">移댄��</label></li>
															<li><input type="checkbox" id="nsvc_calendar"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_calendar">罹�由곕��</label></li>
															<li><input type="checkbox" id="nsvc_photo"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_photo">�ы��媛ㅻ�щ━</label></li>
															<li><input type="checkbox" id="nsvc_nstore"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_nstore">N�ㅽ����</label></li>
															<li><input type="checkbox" id="nsvc_navertv"
																name="selmenu" class="gnb_input_check" value="">
																<label for="nsvc_navertv">諛�肄���TV</label></li>
														</ul>
													</div>
													<div class="svc_lst2">
														<div class="svc_spc gnb_first">
															<strong><a href="http://dic.naver.com/">�댄���ъ��</a></strong>
															<ul class="">
																<li><input type="checkbox" id="nsvc_krdic"
																	name="selmenu" class="gnb_input_check" value="">
																	<label for="nsvc_krdic">援��댁�ъ��</label></li>
																<li><input type="checkbox" id="nsvc_endic"
																	name="selmenu" class="gnb_input_check" value="">
																	<label for="nsvc_endic">����/�����ъ��</label></li>
																<li><input type="checkbox" id="nsvc_hanja"
																	name="selmenu" class="gnb_input_check" value="">
																	<label for="nsvc_hanja">�����ъ��</label></li>
																<li><input type="checkbox" id="nsvc_jpdic"
																	name="selmenu" class="gnb_input_check" value="">
																	<label for="nsvc_jpdic">�쇱�댁�ъ��</label></li>
																<li><input type="checkbox" id="nsvc_cndic"
																	name="selmenu" class="gnb_input_check" value="">
																	<label for="nsvc_cndic">以�援��댁�ъ��</label></li>
																<li><input type="checkbox" id="nsvc_frdic"
																	name="selmenu" class="gnb_input_check" value="">
																	<label for="nsvc_frdic">�����ㅼ�댁�ъ��</label></li>
																<li><input type="checkbox" id="nsvc_dedic"
																	name="selmenu" class="gnb_input_check" value="">
																	<label for="nsvc_dedic">���쇱�댁�ъ��</label></li>
																<li><input type="checkbox" id="nsvc_rudic"
																	name="selmenu" class="gnb_input_check" value="">
																	<label for="nsvc_rudic">�ъ�����댁�ъ��</label></li>
																<li><input type="checkbox" id="nsvc_vndic"
																	name="selmenu" class="gnb_input_check" value="">
																	<label for="nsvc_vndic">踰��몃�⑥�댁�ъ��</label></li>
																<li><input type="checkbox" id="nsvc_spdic"
																	name="selmenu" class="gnb_input_check" value="">
																	<label for="nsvc_spdic">�ㅽ���몄�댁�ъ��</label></li>
																<li><input type="checkbox" id="nsvc_translate"
																	name="selmenu" class="gnb_input_check" value="">
																	<label for="nsvc_translate">踰���湲�</label></li>
															</ul>
														</div>
														<div class="svc_spc">
															<strong>�멸린/��洹���鍮���</strong>
															<ul class="">
																<li><input type="checkbox" id="nsvc_grafolio"
																	name="selmenu" class="gnb_input_check" value="">
																	<label for="nsvc_grafolio">洹몃�쇳�대━��</label></li>
																<li><input type="checkbox" id="nsvc_post"
																	name="selmenu" class="gnb_input_check" value="">
																	<label for="nsvc_post">�ъ�ㅽ��</label></li>
																<li><input type="checkbox" id="nsvc_luncherapp"
																	name="selmenu" class="gnb_input_check" value="">
																	<label for="nsvc_luncherapp">�����곗�</label></li>
																<li><input type="checkbox" id="nsvc_band"
																	name="selmenu" class="gnb_input_check" value="">
																	<label for="nsvc_band">諛대��</label></li>
																<li><input type="checkbox" id="nsvc_line"
																	name="selmenu" class="gnb_input_check" value="">
																	<label for="nsvc_line">�쇱��</label></li>
															</ul>
														</div>
													</div>
												</div>
												<div class="svc_btnwrp">
													<div class="svc_btns">
														<button class="gnb_save"
															onclick="if(gnbFavorite.addService()){gnbMoreLayer.clickToggleWhole()} return false;">
															<strong class="blind">����</strong>
														</button>
														<button class="gnb_close"
															onclick="gnbFavorite.cancel(); return false;">
															<span class="blind">痍⑥��</span>
														</button>
														<button class="gnb_return"
															onclick="gnbFavorite.resetService(); return false;">
															<span class="blind">珥�湲� �ㅼ���쇰� 蹂�寃�</span>
														</button>
													</div>
												</div>
												<div class="gnb_bg_btm"></div>
											</div>
										</div>
										<iframe id="gnb_service_lyr_iframe" title="鍮� ������"
											class="gnb_pad_lyr" name="padding" width="0" height="0"
											scrolling="no" frameborder="0"
											style="display: none; top: 55px; right: 311px; width: 585px; height: 385px; opacity: 0;"
											src="./custom_home_files/saved_resource(2).html"></iframe>
										<iframe id="gnb_svc_more_iframe" title="鍮� ������"
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
						<legend class="blind">諛�肄��� ����留� 寃��� ����</legend>
						<div class="srch_area">
							<span class="srch_box"> <span class="ipt_box"> <!-- [D] input ������ �ъ빱�ㅺ� 媛� 寃쎌�� �대���� fcs 異�媛� 諛� value ���� -->
									<input id="searchText" name="searchText" type="text"
									title="����留� 寃���" accesskey="w" value="沅�湲��� ���� ���ㅻ㈃ ����留��� 寃����� 蹂댁�몄��."
									onfocus="this.value = &#39;&#39;;"
									onblur="if(this.value == &#39;&#39;) this.value = &#39;沅�湲��� ���� ���ㅻ㈃ ����留��� 寃����� 蹂댁�몄��.&#39;;"
									class="srch_kwd">
							</span>
							<!-- [D] button �대┃�� 寃쎌�� �대���� active 異�媛� -->
							</span>
							<button id="ischButton" type="submit" title="寃���" class="btn_srch">
								<span class="blind">寃���</span>
							</button>
							<!-- [D] ��鍮��ㅻ� input�� ���ㅽ�� ���μ�� display:block 蹂�寃� -->
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
					<h3>怨듭��ы��</h3>
					<p>
						<a href="https://help.naver.com/#"
							onclick="clickcr(this, &#39;tsn.tick&#39;, &#39;&#39;, &#39;&#39;, event);">[����
							以�] ~12/27 (��), '諛�肄��� �ы��' ��鍮��� ���� ����.</a>
					</p>
				</div>
			</div>

			<!-- //ticker notice -->
			<div class="content_wrap main">
				<div id="content">
					<div class="m_section">
						<h2>
							<span class="blind">怨�媛��쇳�곕�� �듯�� 沅�湲�利��� �닿껐���몄��.</span>
						</h2>
						<!-- [D] �������� 寃쎌�� li ������ �대���� on ���� -->
						<div class="rep_area">
							<h3 class="blind">������鍮���</h3>
							<ul class="lst_rep_servs">
								<li><a
									href="https://help.naver.com/support/service/main.nhn?serviceNo=532"
									onclick="clickcr(this, &#39;icn.id&#39;, &#39;&#39;, &#39;&#39;, event)"
									class="svs_ic">������蹂�</a></li>
								<li><a
									href="https://help.naver.com/support/service/main.nhn?serviceNo=606"
									onclick="clickcr(this, &#39;icn.usrc&#39;, &#39;&#39;, &#39;&#39;, event)"
									class="svs_ic6">�듯�⑷���</a></li>
								<li><a href="http://help.pay.naver.com/"
									onclick="clickcr(this, &#39;lst.checkout&#39;, &#39;&#39;, &#39;&#39;, event)"
									target="_blank" class="svs_ic20">諛�肄�������</a></li>
								<li><a
									href="https://help.naver.com/support/service/main.nhn?serviceNo=747"
									onclick="clickcr(this, &#39;lst.shopping&#39;, &#39;&#39;, &#39;&#39;, event)"
									class="svs_ic19">諛�肄����쇳��</a></li>
								<li><a
									href="https://help.naver.com/support/service/main.nhn?serviceNo=607"
									onclick="clickcr(this, &#39;icn.register&#39;, &#39;&#39;, &#39;&#39;, event)"
									class="svs_ic14">諛�肄���<br>�����댁��
								</a></li>
								<li><a
									href="https://help.naver.com/support/service/main.nhn?serviceNo=768"
									onclick="clickcr(this, &#39;icn.map&#39;, &#39;&#39;, &#39;&#39;, event)"
									class="svs_ic15">吏���</a></li>
							</ul>
						</div>
						<div class="all_area" style="display: none">
							<h3 class="blind">��泥대낫湲� - 媛����ㅼ��</h3>
							<div class="lst_all_area">
								<div class="lst_all">
									<h4>��</h4>
									<ul>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=744"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="媛�怨�遺�">媛�怨�遺�</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=17594"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="媛�諛����쇳�� OpenAPI">媛�諛����쇳�� OpenAPI</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=958"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="寃���以���">寃���以���</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=10576"
											onclick="clickcr(this, &#39;1&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="洹몃�쇳�대━��">洹몃�쇳�대━��</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=745"
											onclick="clickcr(this, &#39;lst.finance&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="湲���/利�沅�">湲���/利�沅�</a></li>
									</ul>
									<h4>��</h4>
									<ul>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=5843"
											onclick="clickcr(this, &#39;lst.weather&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="����">����</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=801"
											onclick="clickcr(this, &#39;lst.game&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="諛�肄��� PC寃���">諛�肄��� PC寃���</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1044"
											onclick="clickcr(this, &#39;lst.qr&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="諛�肄��� QR肄���">諛�肄��� QR肄���</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=18027"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="諛�肄��� �ㅻ��몃낫��">諛�肄��� �ㅻ��몃낫��</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=17063"
											onclick="clickcr(this, &#39;lst.nearo&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="諛�肄��� ���대��濡� 濡�洹몄��">諛�肄��� ���대��濡� 濡�洹몄��</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1074"
											onclick="clickcr(this, &#39;lst.general&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="諛�肄��� ��諛�">諛�肄��� ��諛�</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=636"
											onclick="clickcr(this, &#39;lst.ndrive&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="諛�肄��� �대�쇱�곕��">諛�肄��� �대�쇱�곕��</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1037"
											onclick="clickcr(this, &#39;lst.cleaner&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="諛�肄��� �대━��">諛�肄��� �대━��</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=705"
											onclick="clickcr(this, &#39;lst.tvcast&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="諛�肄���TV">諛�肄���TV</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=984"
											onclick="clickcr(this, &#39;lst.me&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="諛�肄���me">諛�肄���me</a></li>













										<li><a href="http://help.line.me/line/?lang=ko"
											onclick="clickcr(this, &#39;lst.line&#39;, &#39;&#39;, &#39;&#39;, event);"
											target="_blank" title="諛�肄����쇱��">諛�肄����쇱��</a></li>
















										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1037"
											onclick="clickcr(this, &#39;lst.vaccine&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="諛�肄���諛깆��">諛�肄���諛깆��</a></li>



										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1035"
											onclick="clickcr(this, &#39;lst.software&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="諛�肄��������몄�⑥��">諛�肄��������몄�⑥��</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=747"
											onclick="clickcr(this, &#39;lst.shopping&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="諛�肄����쇳��">諛�肄����쇳��</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=12270"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="諛�肄�������">諛�肄�������</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=11709"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="諛�肄������� ���몃���쇳��">諛�肄������� ���몃���쇳��</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=643"
											onclick="clickcr(this, &#39;lst.office&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="諛�肄����ㅽ�쇱��">諛�肄����ㅽ�쇱��</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=996"
											onclick="clickcr(this, &#39;lst.cast&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="諛�肄���罹��ㅽ��">諛�肄���罹��ㅽ��</a></li>















										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1037"
											onclick="clickcr(this, &#39;lst.capture&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="諛�肄���罹≪�">諛�肄���罹≪�</a></li>


















										<li><a href="http://help.pay.naver.com/"
											onclick="clickcr(this, &#39;lst.checkout&#39;, &#39;&#39;, &#39;&#39;, event);"
											target="_blank" title="諛�肄�������">諛�肄�������</a></li>


										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=16738"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="諛�肄�����������">諛�肄�����������</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=729"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="諛�肄����ъ�ㅽ��">諛�肄����ъ�ㅽ��</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=17688"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="�ㅼ��移대��">�ㅼ��移대��</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=997"
											onclick="clickcr(this, &#39;lst.news&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="�댁��">�댁��</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=998"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="�댁�� �쇱�대��щ━">�댁�� �쇱�대��щ━</a></li>









									</ul>




								</div>
								<div class="lst_all">



									<h4>��</h4>
									<ul>





										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=3609"
											onclick="clickcr(this, &#39;lst.video&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="������">������</a></li>









									</ul>





									<h4>��</h4>
									<ul>





										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=706"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="留ㅺ굅吏�罹��ㅽ��">留ㅺ굅吏�罹��ㅽ��</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=639"
											onclick="clickcr(this, &#39;lst.memo&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="硫�紐�">硫�紐�</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=2342"
											onclick="clickcr(this, &#39;lst.mail&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="硫���">硫���</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=644"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="臾몄��硫���吏�">臾몄��硫���吏�</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=572"
											onclick="clickcr(this, &#39;lst.music&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="裕ㅼ�">裕ㅼ�</a></li>















										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1037"
											onclick="clickcr(this, &#39;lst.player&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="誘몃���� �����댁��">誘몃���� �����댁��</a></li>











									</ul>





									<h4>��</h4>
									<ul>



										<li><a href="http://www.band.us/cs/#!/help"
											onclick="clickcr(this, &#39;lst.band&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="諛대��">諛대��</a></li>



										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=746"
											onclick="clickcr(this, &#39;lst.land&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="遺�����">遺�����</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=520"
											onclick="clickcr(this, &#39;lst.blog&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="釉�濡�洹�">釉�濡�洹�</a></li>









									</ul>





									<h4>��</h4>
									<ul>





										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1000"
											onclick="clickcr(this, &#39;lst.dic&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="�ъ��">�ъ��</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=5843"
											onclick="clickcr(this, &#39;lst.life&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="��������鍮���">��������鍮���</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=607"
											onclick="clickcr(this, &#39;icn.register&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="�ㅻ��명�����댁��">�ㅻ��명�����댁��</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1001"
											onclick="clickcr(this, &#39;lst.sports&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="�ㅽ�ъ�">�ㅽ�ъ�</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=964"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="��怨��쇳��">��怨��쇳��</a></li>















										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=5843"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="���⑹뭅��">���⑹뭅��</a></li>
									</ul>





									<h4>��</h4>
									<ul>





										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=521"
											onclick="clickcr(this, &#39;lst.item&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="���댄���⑺��由�">���댄���⑺��由�</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1042"
											onclick="clickcr(this, &#39;lst.analytics&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="����由ы�깆��">����由ы�깆��</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=726"
											onclick="clickcr(this, &#39;lst.adpost&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="�����ъ�ㅽ��">�����ъ�ㅽ��</a></li>
















										<li><a
											href="http://hgcs.game.sports.news.naver.com/spring/content/gamecc/openPopup?serviceCode=ya9_n"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											target="_blank" title="�쇨뎄9��">�쇨뎄9��</a></li>


										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=3181"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="�대┛�곕��">�대┛�곕��</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=800"
											onclick="clickcr(this, &#39;lst.movie&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="����">����</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=16978"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="�ㅻ���ㅽ�대┰">�ㅻ���ㅽ�대┰</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=724"
											onclick="clickcr(this, &#39;lst.opencast&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="�ㅽ��罹��ㅽ��">�ㅽ��罹��ㅽ��</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=17568"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="�⑥��">�⑥��</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=14882"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="�밸��ㅽ�곕��援�">�밸��ㅽ�곕��援�</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=804"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="�뱀����">�뱀����</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=799"
											onclick="clickcr(this, &#39;lst.comic&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="�뱁��/留���">�뱁��/留���</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=548"
											onclick="clickcr(this, &#39;lst.abuse&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="�댁�⑹����">�댁�⑹����</a></li>









									</ul>




								</div>
								<div class="lst_all">



									<h4>��</h4>
									<ul>



										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=5843"
											onclick="clickcr(this, &#39;lst.auto&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="����李�">����李�</a></li>

















										<li><a
											href="https://help.naver.com/support/contents/contents.nhn?serviceNo=1074&amp;categoryNo=10027"
											onclick="clickcr(this, &#39;lst.ends&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="醫�猷���鍮���">醫�猷���鍮���</a></li>



										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=986"
											onclick="clickcr(this, &#39;lst.contact&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="二쇱��濡�">二쇱��濡�</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=768"
											onclick="clickcr(this, &#39;lst.map&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="吏���">吏���</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1003"
											onclick="clickcr(this, &#39;lst.kin&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="吏���iN">吏���iN</a></li>















										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1000&amp;categoryNo=2728"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="吏���諛깃낵">吏���諛깃낵</a></li>











									</ul>





									<h4>��</h4>
									<ul>





										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=987"
											onclick="clickcr(this, &#39;lst.note&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="履쎌�">履쎌�</a></li>









									</ul>





									<h4>��</h4>
									<ul>





										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=702"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="梨�">梨�</a></li>









									</ul>





									<h4>��</h4>
									<ul>





										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=522"
											onclick="clickcr(this, &#39;lst.cafe&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="移댄��">移댄��</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=635"
											onclick="clickcr(this, &#39;lst.calender&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="罹�由곕��">罹�由곕��</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=18438"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="�대�諛�">�대�諛�</a></li>









									</ul>





									<h4>��</h4>
									<ul>





										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=11764"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="�≫�≫���몃���쇳��">�≫�≫���몃���쇳��</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=606"
											onclick="clickcr(this, &#39;lst.search&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="�듯�⑷���">�듯�⑷���</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1036"
											onclick="clickcr(this, &#39;lst.tool&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="�대�">�대�</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1037"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="�댁�">�댁�</a></li>









									</ul>





									<h4>��</h4>
									<ul>





										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=802"
											onclick="clickcr(this, &#39;lst.photo&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="�ы��媛ㅻ�щ━">�ы��媛ㅻ�щ━</a></li>















										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1037"
											onclick="clickcr(this, &#39;lst.photoviewer&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="�ы��酉곗��">�ы��酉곗��</a></li>



										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=640"
											onclick="clickcr(this, &#39;lst.photoprint&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="�ы���명��">�ы���명��</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=11492"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="�대��">�대��</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1080"
											onclick="clickcr(this, &#39;lst.privacy&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="���쇱�대��� �쇳��">���쇱�대��� �쇳��</a></li>









									</ul>





									<h4>��</h4>
									<ul>





										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1002"
											onclick="clickcr(this, &#39;lst.academic&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="������蹂�">������蹂�</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=11270"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="��怨듦�">��怨듦�</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=770"
											onclick="clickcr(this, &#39;lst.happybean&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="�댄�쇰�">�댄�쇰�</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=14445"
											onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="�명��">�명��</a></li>

										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=532"
											onclick="clickcr(this, &#39;lst.id&#39;, &#39;&#39;, &#39;&#39;, event);"
											title="������蹂�">������蹂�</a></li>









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
											title="N�ㅽ����">N�ㅽ����</a></li>

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
									class="blind">������蹂닿�由�</span></a>
							</h2>
							<p>
								<span class="blind">�� ������蹂대�� �쎄� �명��寃� 愿�由ы�� �� ���듬����.</span>
							</p>
							<ul class="lst_md">
								<li><a
									href="https://nid.naver.com/user2/help/idInquiry.nhn?menu=idinquiry"
									onclick="clickcr(this, &#39;idm.lost&#39;, &#39;&#39;, &#39;&#39;, event)">鍮�諛�踰���/ID
										李얘린</a></li>
								<li><a
									href="https://nid.naver.com/user/help.nhn?todo=getNewPw"
									onclick="clickcr(this, &#39;idm.chpasswd&#39;, &#39;&#39;, &#39;&#39;, event)">鍮�諛�踰���
										蹂�寃�</a></li>
								<li><a
									href="https://nid.naver.com/user/help.nhn?todo=changeMain&amp;menu=nid1_sub_m1"
									onclick="clickcr(this, &#39;idm.edit&#39;, &#39;&#39;, &#39;&#39;, event)">������蹂�
										����</a></li>
								<li><a
									href="https://nid.naver.com/user2/help/userLoginSafety.nhn?menu=nid2_sub_m8"
									onclick="clickcr(this, &#39;idm.protect&#39;, &#39;&#39;, &#39;&#39;, event)">濡�洹몄��
										蹂댄�� �ㅼ��</a></li>
							</ul>
						</div>
						<div class="md_area">
							<h2>
								<a href="https://help.naver.com/#"
									onclick="return PAGE.change(&#39;reportCenter/home.nhn&#39;)"><span
									class="blind">��怨��쇳��</span></a>
							</h2>
							<p>
								<span class="blind">���닿���臾� ���� 沅�由ъ묠�� 寃���臾쇱�� 諛�寃� �� 諛�濡� ��怨��� 二쇱�몄��.</span>
							</p>
							<ul class="lst_md">
								<li><a
									href="https://help.naver.com/support/contents/contents.nhn?serviceNo=964&amp;categoryNo=2826"
									onclick="clickcr(this, &#39;rpt.abuse&#39;, &#39;&#39;, &#39;&#39;, event)">����
										寃���臾� ��怨�</a></li>
								<li><a
									href="https://cpc.naver.com/cpc/claim.nhn?m=claimRequest"
									onclick="clickcr(this, &#39;rpt.copyrp&#39;, &#39;&#39;, &#39;&#39;, event)">����沅�
										移⑦�� 寃���臾� ��怨�</a></li>
								<li><a
									href="https://help.naver.com/support/alias/contents2/naverhome/naverhome_2.naver"
									onclick="clickcr(this, &#39;&#39;, &#39;&#39;, &#39;&#39;, event)">寃곗������
										��怨�</a></li>
								<li><a
									href="http://inoti.naver.com/inoti/claim.nhn?m=purpose"
									onclick="clickcr(this, &#39;rpt.honor&#39;, &#39;&#39;, &#39;&#39;, event)">紐����쇱��
										寃���臾� ��怨�</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div id="aside">

					<div class="noti_section">
						<h3>
							<span class="blind">怨듭��ы��</span>
						</h3>
						<!-- [D] 怨듭��ы�� 留�以��� ���⑹�쇰� ��泥� ��紐� title ���깆�� ���� -->
						<ul class="lst_noti">


							<li><a
								href="http://help.naver.com/support/bbs/notice.nhn?docId=10000000000030659166"
								title="[蹂듦뎄��猷�] 11/26 (��), &#39;遺�����&#39;..."
								onclick="clickcr(this, &#39;rnt.list&#39;, &#39;&#39;, &#39;&#39;, event);">[蹂듦뎄��猷�]
									11/26 (��), '遺�����'...</a></li>

							<li><a
								href="http://help.naver.com/support/bbs/notice.nhn?docId=10000000000030659138"
								title="[蹂듦뎄��猷�] 11/23 (湲�), &#39;遺�����&#39;..."
								onclick="clickcr(this, &#39;rnt.list&#39;, &#39;&#39;, &#39;&#39;, event);">[蹂듦뎄��猷�]
									11/23 (湲�), '遺�����'...</a></li>

						</ul>
						<a href="http://help.naver.com/support/bbs/notice.nhn"
							onclick="clickcr(this, &#39;rnt.more&#39;, &#39;&#39;, &#39;&#39;, event);"
							class="nt_more"><span class="blind">怨듭��ы��</span> ��蹂닿린</a>
					</div>


				</div>
			</div>
		</div>
		<!-- //container -->







		<script type="text/javascript"
			src="./custom_home_files/flashObject.js.�ㅼ�대���"></script>
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
				<h1 class="blind">吏������몃�� ���깊���� ��媛� ������</h1>
				<!-- ���������� -->
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
				<!-- //���������� -->
				<a
					href="http://kin.naver.com/qna/list.nhn?m=noanswer&amp;dirId=10601"
					class="btn_drt"
					onclick="clickcr(this, &#39;rbk.banner&#39;, &#39;&#39;, &#39;&#39;, event)"
					target="_blank">吏���in "諛�肄��� �ъ�⑸�" 諛�濡�媛�湲�</a> <a
					id="kinParterPopupCloseButton" class="btn_close"><span
					class="blind">����李� �リ린</span></a>
			</div>
		</div>







		<!-- layer kin bridge -->
		<div class="ly_dim" style="display: none;"></div>
		<div class="ly_kin_bridge" style="display: none">
			<div class="con">
				<h1 class="blind">�댁�⑹���ㅻ�쇰━ 二쇨� 諛��� ������ 諛�肄��� �ъ�⑸�</h1>
				<p class="blind">吏���iN���� 寃�����怨� 臾쇱�대낫�몄��!</p>
				<h2 class="blind">諛�肄����� 愿��⑦�� 沅�湲��� ���� �쎄� 李얠�� �� ���댁��.</h2>
				<p class="blind">諛�肄����ъ�⑸��� ���� 吏�臾�/�듬��� 臾대�� 24留�媛�!! ��猷⑥�� ��濡��� 吏�臾� �듬���
					200媛�!! 吏�湲� 諛�濡� 吏���iN���� 沅�湲��� ���� 李얠�� 蹂댁�몄��.</p>
				<a
					href="http://kin.naver.com/qna/list.nhn?m=noanswer&amp;dirId=10601"
					onclick="clickcr(this, &#39;kbr.search&#39;, &#39;&#39;, &#39;&#39;, event)"
					class="srch" target="_blank"><span class="blind">吏���iN����
						諛�肄��� �ъ�⑸� 寃�����湲�</span></a>
				<h2 class="blind">李얠�쇱���� �댁�⑹�� ���ㅻ㈃ 吏���iN�� 臾쇱�대낫�몄��.</h2>
				<p class="blind">�ㅻⅨ �댁�⑹���� 吏���iN 怨�����, 諛�肄��� 吏������몃��媛� ������怨� 鍮�瑜닿� �듬��⑸����.
					沅�湲��� ���� ���쇱��硫� 吏�湲� 諛�濡� 吏���iN���� 吏�臾명�� 蹂댁�몄��.</p>
				<a
					href="http://kin.naver.com/qna/question.nhn?dirId=10601&amp;d1Id=1"
					onclick="clickcr(this, &#39;kbr.ask&#39;, &#39;&#39;, &#39;&#39;, event)"
					class="ask" target="_blank"><span class="blind">吏���iN����
						諛�肄��� �ъ�⑸� 吏�臾명��湲�</span></a>
				<p class="blind">吏�臾� �댁�⑹�� �깅����� �� ��諛�肄����ъ�⑸����� �����댁＜��硫� ���� ������怨� 鍮�瑜닿� �듬�
					諛��� �� ���댁��.</p>
				<p class="blind">��) 吏���Q&amp;A &gt; 而댄�⑦�고�듭�� &gt; �명�곕�� &gt; 諛�肄����ъ�⑸�
					&gt; OOO (��鍮��� 紐�)</p>
				<a id="closeKinPopup" href="https://help.naver.com/#" class="close"><span
					class="blind">�リ린</span></a>
			</div>
		</div>
		<!-- //layer kin bridge -->
		<script>
jQuery(document).ready(function(){
	
	/**
	 * 吏����� �ъ�⑸� ���명�� 蹂닿린
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

	<script type="text/javascript" src="./custom_home_files/lcslog.js.�ㅼ�대���"></script>
	<script type="text/javascript">
var nsc = "help.main";
lcs_do();
</script>

body>
</html>