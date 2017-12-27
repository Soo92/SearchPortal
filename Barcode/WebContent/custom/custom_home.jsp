<%@page import="custom.CustomBean"%>
<%@page import="java.util.Vector"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="mgr" class="member.MemberMgr" />
<jsp:useBean id="cmgr" class="custom.CustomMgr"/>
<jsp:useBean id="cbean" class="custom.CustomBean"/>
<%
	request.setCharacterEncoding("euc-kr");
	String id = (String)session.getAttribute("idKey");	
	String email = mgr.getMember(id).getEmail();
	String name = mgr.getMember(id).getName();
	Vector<CustomBean> clist = cmgr.getCustomList();
%>
<!doctype>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta property="og:title" content="���ڵ� ������">
<title>���ڵ� ������</title>
<link rel="stylesheet" type="text/css" href="./custom_home_files/help.css">
<link rel="stylesheet" href="../css/gnb_style.css" type="text/css">
<body style="">
	<div id="wrap">
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
var gnb_service = "help";
var gnb_logout = encodeURIComponent(document.location);
var gnb_template = "gnb_utf8";
var gnb_searchbox = "off";
var gnb_shortnick = "off";
var gnb_brightness = 3;
var gnb_one_naver = 1;
var INIT_SEARCH_TEXT= "�ñ��� ���� �ִٸ� ������ �˻��� ������.";
function openSearch(form) {
	var searchText = form.searchText.value;
	var url = "";
	if (searchText == "" || searchText == INIT_SEARCH_TEXT) {
		alert("���Ͻô� �˻�� �Է��� �ּ���.");
		jQuery('#searchText').focus();
		return false;
	}
	if ("��������" == searchText) {
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
	if( jQuery("#searchKeyword").val()  == '' ) { //�˻�� �ִ� ��쿡�� ���񽺸��� ����� �ݿ�
		jQuery(totalSearchForm).find( "#searchText" ).val( jQuery("#searchName").val() );
	}
	jQuery(totalSearchForm).submit();
}
</script>
		<div id="header">
			<div class="gnb_area">
				<div class="Ngnb">
					<div class="Ngnb_inner">
						<a href="../index.jsp" class="Nlogo_link"> <img
							src="logo_ci.png" width="150" height="30"
							style="margin-top: 10px;"></a>
						<h1 class="Ngnb_service">
							<a href="https://help.naver.com/#" class="Nhome_link"><span
								class="Nhome">������</span></a>
						</h1>
					<div id="login">
	<%if(id == null || id.equals("")){%>
						<a href="../member/login.jsp">
							<table width="70px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px #b73400 solid; background:background:#ff5b1b; margin-bottom:7px;">
								<tr>
									<td height="30px;"><p>�α���</p></td>
								</tr>
							</table>
							</a>
	<%}else{%>
					<div id="gnb" class="gnb_dark_type2"><strong class="blind">����� ��ũ</strong><ul class="gnb_lst" id="gnb_lst" style="display: block;"><li class="gnb_login_li" id="gnb_login_layer" style="display: none;"><a class="gnb_btn_login" href="https://nid.naver.com/nidlogin.login" id="gnb_login_button"><span class="gnb_bg"></span><span class="gnb_bdr"></span><span class="gnb_txt">�α���</span></a></li><li class="gnb_my_li" id="gnb_my_layer" style="display: inline-block;"><div class="gnb_my_namebox" id="gnb_my_namebox" style="background-image: url(&quot;http://static.naver.net/common/gnb/2014/ico_arrow_wh.gif&quot;);"><a href="javascript:;" class="gnb_my" onclick="mypage()"><img id="gnb_profile_img" src="http://static.naver.net/common/myarea/myInfo.gif" width="26" height="26" alt="�� ������ �̹���" style="display: inline-block;"><span id="gnb_profile_filter_mask" class="filter_mask" style="display: inline-block;"></span> <span class="gnb_name" id="gnb_name1"><%=name %></span><em class="blind">������ ����</em><span class="ico_arrow"></span></a><a href="#" class="gnb_emp" id="gnb_emp" style="display: none;">(����������)</a></div><div class="gnb_my_lyr" id="gnb_my_lyr"><div class="gnb_my_content"><div class="gnb_img_area"><span class="gnb_mask"></span><img src="http://static.naver.net/common/myarea/myInfo.gif" width="80" height="80" alt=""><a href="https://nid.naver.com/user2/api/naverProfile.nhn?m=checkIdType" class="gnb_change"><span class="blind">������ ���� ����</span></a></div><div class="gnb_txt_area"><p class="gnb_account"><span class="gnb_name" id="gnb_name2"><a class="gnb_nick" href="https://nid.naver.com/user2/api/naverProfile.nhn?m=checkIdType"><%=name %></a>��</span><a class="gnb_btn_login" href="../member/logout.jsp"><span class="gnb_bg"></span><span class="gnb_bdr"></span><span class="gnb_txt">�α׾ƿ�</span></a></p><a href="http://mail.naver.com" class="gnb_mail_address"><%=email %></a><ul class="gnb_edit_lst"><li class="gnb_info"><a href="https://nid.naver.com/user2/help/myInfo.nhn?menu=home">������</a></li></ul><p class="gnb_pay_check" id="gnb_pay_check"><em>B Pay</em><a href="http://pay.naver.com" id="gnb_pay_point"><span>�� ��������Ʈ</span><strong>63,035��</strong></a></p></div></div><a href="#" class="gnb_my_interface" style="display:none"><span class="blind">ȯ�漳��</span></a></div></li><li class="gnb_notice_li" id="gnb_notice_layer" style="display: inline-block;"><a href="javascript:;" class="gnb_notice" onclick="alarm(); return false;"><span class="blind">�˸�</span><span class="gnb_icon"></span><em class="gnb_ico_num" id="gnb_me_menu" style="display:none"><span class="gnb_ico_new"><span class="gnb_count" id="gnb_me_count" style="display: inline-block;"></span></span></em><span class="ico_arrow"></span></a><div class="gnb_notice_lyr" id="gnb_notice_lyr"><div class="svc_noti svc_panel"><div class="svc_scroll"><div class="svc_head"><strong class="gnb_tit">��ü �˸�</strong><div class="task_right"><button onclick="gnbNaverMeLayer.deleteReadList(this, event);" id="gnb_btn_read_noti_del">���� �˸� ����</button><button onclick="gnbNaverMeLayer.showDeleteAlert();" id="gnb_btn_all_noti_del">��� ����</button></div></div><div class="svc_body" id="gnb_naverme_layer"></div></div><div class="gnb_ly_alert" id="gnb_ly_alert" style="display: none;"><p class="gnb_msg"><strong>�˸��� ��� �����Ͻðڽ��ϱ�?</strong></p><div class="gnb_btns"><button id="ly_alert_confirm" onclick="gnbNaverMeLayer.deleteAllList(this, event);">Ȯ��</button><button onclick="gnbNaverMeLayer.hideDeleteAlert();">���</button></div><button class="gnb_btn_close" onclick="gnbNaverMeLayer.hideDeleteAlert();"><i>���̾� �ݱ�</i></button></div><a href="http://me.naver.com/box/noti.nhn" class="gnb_notice_all">�� �˸� ��ü����</a></div></div><iframe id="gnb_notice_lyr_iframe" title="�� ������" class="gnb_pad_lyr" name="padding" width="0" height="0" scrolling="no" frameborder="0" style="top:34px;right:-4px;width:299px;height:332px;display:none;opacity:0;-ms-filter:alpha(opacity=0)"></iframe></li><li class="gnb_service_li" id="gnb_service_layer" style="display: inline-block;"><a href="javascript:;" class="gnb_service" onclick="service(); return false;"><span class="blind">���� ������</span><span class="gnb_icon"></span><span class="ico_arrow"></span></a><div class="gnb_service_lyr" id="gnb_service_lyr"><div class="gnb_favorite_search" id="gnb_favorite_search"><div class="gnb_favorite_area"><div class="gnb_favorite_lstwrp"><div class="gnb_first_visit" style="display:none"><span class="blind">������ ���ã�⸦ �߰��� ������!</span><a href="#" class="gnb_close"><span class="blind">�ݱ�</span></a></div><strong class="blind">���ã�� ����</strong><ul class="gnb_favorite_lst" id="gnb_favorite_lst"><li class="gnb_add"><a href="#"><span class="ic_add"></span>�߰�</a></li><li class="gnb_add"><a href="#"><span class="ic_add"></span>�߰�</a></li><li class="gnb_add"><a href="#"><span class="ic_add"></span>�߰�</a></li><li class="gnb_add"><a href="#"><span class="ic_add"></span>�߰�</a></li></ul><a href="#" class="gnb_my_interface" onclick="gnbMoreLayer.clickToggleWhole(); return false;"><span class="blind">���ã�� ����</span></a></div></div><div class="gnb_search_area"><div class="gnb_search_box" onmouseover="gnb_search.mouseOver(this);" onmouseout="gnb_search.mouseOut(this);"><input id="gnb_svc_search_input" type="text" title="���� �˻�" value="�� ���� ���񽺸� �����ϰ� �����ϼ���!" onfocus="gnb_search.clearInput(this);" onblur="gnb_search.resetInput(this);" onkeydown="gnb_search.keyDown(event);" onkeyup="gnb_search.keyUp(event);"><a href="#" class="gnb_del_txt" id="gnb_del_txt" style="display:none"><span class="blind">����</span></a><div class="gnb_pop_input" id="gnb_pop_input" tabindex="0" onfocus="gnb_search.searchPopOnMouse = true; return false;" onfocusout="gnb_search.searchPopOnMouse = false; return false;" onmouseover="gnb_search.searchPopOnMouse = true; return false;" onmouseout="gnb_search.searchPopOnMouse = false; return false;" style="display:none"><ul class="gnb_pop_lst"></ul></div></div><div class="gnb_search_lstwrp"><ul class="gnb_search_lst gnb_first"><li class="gnb_first"><a href="http://cafe.naver.com/">ī��</a></li><li><a href="http://news.naver.com/">����</a></li><li><a href="http://map.naver.com/">����</a></li><li><a href="http://sports.news.naver.com/">������</a></li><li><a href="http://game.naver.com/">����</a></li></ul><ul class="gnb_search_lst"><li class="gnb_first"><a href="http://section.blog.naver.com/">��α�</a></li><li><a href="http://post.naver.com/main.nhn">����Ʈ</a></li><li><a href="http://dic.naver.com/">����</a></li><li><a href="http://kin.naver.com/">����iN</a></li><li><a href="http://weather.naver.com/">����</a></li></ul><ul class="gnb_search_lst"><li class="gnb_first"><a href="http://mail.naver.com/">����</a></li><li><a href="http://stock.naver.com/">����</a></li><li><a href="http://land.naver.com/">�ε���</a></li><li><a href="http://music.naver.com/">����</a></li><li><a href="http://book.naver.com">å</a></li></ul><ul class="gnb_search_lst"><li class="gnb_first"><a href="http://shopping.naver.com/">����</a></li><li><a href="http://comic.naver.com/">����</a></li><li><a href="http://movie.naver.com/">��ȭ</a></li><li><a href="http://cloud.naver.com/">Ŭ����</a></li><li><a href="http://auto.naver.com/">�ڵ���</a></li></ul></div></div><div class="gnb_banner"><a href="http://campaign.naver.com/pointevent/" class="gnb_service_event"><img id="gnb_promo" alt="���̹����� | 12�� �̺�Ʈ" width="265" height="47" src="http://static.naver.net/common/gnb/banner/promo_npay_1712.png"></a></div><div class="gnb_linkwrp"><a href="http://www.naver.com/more.html" class="gnb_service_all" id="gnb_service_all">��ü ���� ����</a></div></div><div class="gnb_svc_more" id="gnb_svc_more" style="display: none;"><strong class="blind">���̹� �ֿ� ����</strong><div class="gnb_bg_top"></div><div class="gnb_svc_hd"><strong class="gnb_svc_tit">�ٷΰ��� ����</strong><span class="link"><a href="http://www.naver.com/more.html">��ü ���� ����</a></span></div><div class="gnb_svc_lstwrp"><div class="gnb_svc_lst1"><ul class="gnb_first"><li><input type="checkbox" id="nsvc_game" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_game">����</label></li><li><input type="checkbox" id="nsvc_weather" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_weather">����</label></li><li><input type="checkbox" id="nsvc_shopping" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_shopping">���̹�����</label></li><li><input type="checkbox" id="nsvc_navercast" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_navercast">���̹�ĳ��Ʈ</label></li><li><input type="checkbox" id="nsvc_cloud" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_cloud">���̹�Ŭ����</label></li><li class="gnb_event"><input type="checkbox" id="nsvc_naverpay" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_naverpay">���̹�����</label><em class="ic_gnb_new">New</em></li><li><input type="checkbox" id="nsvc_news" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_news">����</label></li><li><input type="checkbox" id="nsvc_comic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_comic">��ȭ/����</label></li><li><input type="checkbox" id="nsvc_memo" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_memo">�޸�</label></li><li><input type="checkbox" id="nsvc_mail" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_mail">����</label></li><li><input type="checkbox" id="nsvc_music" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_music">����</label></li><li><input type="checkbox" id="nsvc_land" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_land">�ε���</label></li><li><input type="checkbox" id="nsvc_bookmark" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_bookmark">�ϸ�ũ</label></li></ul><ul class=""><li><input type="checkbox" id="nsvc_blog" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_blog">��α�</label></li><li><input type="checkbox" id="nsvc_dic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_dic">����</label></li><li><input type="checkbox" id="nsvc_software" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_software">����Ʈ����</label></li><li><input type="checkbox" id="nsvc_sports" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_sports">������</label></li><li><input type="checkbox" id="nsvc_ya9" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_ya9">�߱�9��</label></li><li><input type="checkbox" id="nsvc_movie" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_movie">��ȭ</label></li><li><input type="checkbox" id="nsvc_office" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_office">���ǽ�</label></li><li><input type="checkbox" id="nsvc_novel" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_novel">���Ҽ�</label></li><li><input type="checkbox" id="nsvc_auto" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_auto">�ڵ���</label></li><li><input type="checkbox" id="nsvc_contact" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_contact">�ּҷ�</label></li><li><input type="checkbox" id="nsvc_finance" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_finance">����(����)</label></li><li><input type="checkbox" id="nsvc_map" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_map">����</label></li><li><input type="checkbox" id="nsvc_kin" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_kin">����iN</label></li></ul><ul class=""><li><input type="checkbox" id="nsvc_terms" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_terms">���Ĺ��</label></li><li><input type="checkbox" id="nsvc_book" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_book">å</label></li><li><input type="checkbox" id="nsvc_cafe" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_cafe">ī��</label></li><li><input type="checkbox" id="nsvc_calendar" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_calendar">Ķ����</label></li><li><input type="checkbox" id="nsvc_photo" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_photo">���䰶����</label></li><li><input type="checkbox" id="nsvc_nstore" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_nstore">N�����</label></li><li><input type="checkbox" id="nsvc_navertv" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_navertv">���̹�TV</label></li></ul></div><div class="svc_lst2"><div class="svc_spc gnb_first"><strong><a href="http://dic.naver.com/">���л���</a></strong><ul class=""><li><input type="checkbox" id="nsvc_krdic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_krdic">�������</label></li><li><input type="checkbox" id="nsvc_endic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_endic">����/��������</label></li><li><input type="checkbox" id="nsvc_hanja" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_hanja">���ڻ���</label></li><li><input type="checkbox" id="nsvc_jpdic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_jpdic">�Ͼ����</label></li><li><input type="checkbox" id="nsvc_cndic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_cndic">�߱������</label></li><li><input type="checkbox" id="nsvc_frdic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_frdic">�����������</label></li><li><input type="checkbox" id="nsvc_dedic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_dedic">���Ͼ����</label></li><li><input type="checkbox" id="nsvc_rudic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_rudic">���þƾ����</label></li><li><input type="checkbox" id="nsvc_vndic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_vndic">��Ʈ�������</label></li><li><input type="checkbox" id="nsvc_spdic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_spdic">�����ξ����</label></li><li><input type="checkbox" id="nsvc_translate" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_translate">������</label></li></ul></div><div class="svc_spc"><strong>�α�/�űԼ���</strong><ul class=""><li><input type="checkbox" id="nsvc_grafolio" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_grafolio">�׶�������</label></li><li><input type="checkbox" id="nsvc_post" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_post">����Ʈ</label></li><li><input type="checkbox" id="nsvc_luncherapp" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_luncherapp">������ó</label></li><li><input type="checkbox" id="nsvc_band" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_band">���</label></li><li><input type="checkbox" id="nsvc_line" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_line">����</label></li></ul></div></div></div><div class="svc_btnwrp"><div class="svc_btns"><button class="gnb_save" onclick="if(gnbFavorite.addService()){gnbMoreLayer.clickToggleWhole()} return false;"><strong class="blind">Ȯ��</strong></button><button class="gnb_close" onclick="gnbFavorite.cancel(); return false;"><span class="blind">���</span></button><button class="gnb_return" onclick="gnbFavorite.resetService(); return false;"><span class="blind">�ʱ� �������� ����</span></button></div></div><div class="gnb_bg_btm"></div></div></div><iframe id="gnb_service_lyr_iframe" title="�� ������" class="gnb_pad_lyr" name="padding" width="0" height="0" scrolling="no" frameborder="0" style="display:none;top:34px;right:297px;width:585px;height:385px;opacity:0;-ms-filter:alpha(opacity=0)"></iframe><iframe id="gnb_svc_more_iframe" title="�� ������" class="gnb_pad_lyr" name="padding" width="0" height="0" scrolling="no" frameborder="0" style="display:none;top:34px;right:-4px;width:295px;height:385px;opacity:0;-ms-filter:alpha(opacity=0)"></iframe></li></ul>
					</div>
	<%}%>
						</div>
					</div>
				</div>
			</div>
			<div class="sta Nsearch">
				<form id="searchForm" name="searchForm" method="get"
					action="https://help.naver.com/support/search/searchResultAll.nhn"
					target="_top"
					onsubmit="clickcr(this, 'tsn.search', '', '', event);return openSearch(this);"
					class="snb_search_box">
					<fieldset>
						<legend class="blind">���ڵ� ���� �˻� ����</legend>
						<div class="srch_area">
							<span class="srch_box"> <span class="ipt_box"> <!-- [D] input ��ҿ� ��Ŀ���� �� ��� Ŭ���� fcs �߰� �� value ���� -->
									<input id="searchText" name="searchText" type="text"
									title="���� �˻�" accesskey="w" value="�ñ��� ���� �ִٸ� ������ �˻��� ������."
									onfocus="this.value = '';"
									onblur="if(this.value == '') this.value = '�ñ��� ���� �ִٸ� ������ �˻��� ������.';"
									class="srch_kwd">
							</span> <!-- [D] button Ŭ���� ��� Ŭ���� active �߰� -->
							</span>
							<button id="ischButton" type="submit" title="�˻�" class="btn_srch">
								<span class="blind">�˻�</span>
							</button>
							<!-- [D] ���񽺸� input�� �ؽ�Ʈ �Է½� display:block ���� -->
							<div class="auto_kwd" style="display: none; z-index: 999999">
								<ul>
								</ul>
							</div>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
		<!-- //header -->
		<!-- container -->
		<div id="container">
			<!-- ticker notice -->
			<div class="spot_area">
				<div class="spot">
					<h3>��������</h3>
					<p>
						<a href="https://help.naver.com/#"
							onclick="clickcr(this, 'tsn.tick', '', '', event);">[����
							��] ~12/27 (��), '���ڵ� ��Ż' ���� �ϼ� ����.</a>
					</p>
				</div>
			</div>
			<!-- //ticker notice -->
			<div class="content_wrap main">
				<div id="content">
					<div class="m_section">
						<h2>
							<span class="blind">�����͸� ���� �ñ����� �ذ��ϼ���.</span>
						</h2>
						<!-- [D] �������� ��� li ��ҿ� Ŭ���� on ���� -->
						<div class="rep_area">
							<h3 class="blind">��ǥ����</h3>
							<ul class="lst_rep_servs">
<%for(int i=0;i<clist.size();i++) { %>
								<li><a href="./custom_detail.jsp?index=<%=clist.get(i).getIdx()%>"
									class="svs_ic<%=clist.get(i).getIcon()%>"><%=clist.get(i).getTitle()%></a></li>
<%} %>
							</ul>
						</div>
						<div class="all_area" style="display: none">
							<h3 class="blind">��ü���� - �����ټ�</h3>
							<div class="lst_all_area">
								<div class="lst_all">
									<h4>��</h4>
									<ul>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=744"
											onclick="clickcr(this, '', '', '', event);"
											title="�����">�����</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=17594"
											onclick="clickcr(this, '', '', '', event);"
											title="�����ڼ��� OpenAPI">�����ڼ��� OpenAPI</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=958"
											onclick="clickcr(this, '', '', '', event);"
											title="�Խ��ߴ�">�Խ��ߴ�</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=10576"
											onclick="clickcr(this, '1', '', '', event);"
											title="�׶�������">�׶�������</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=745"
											onclick="clickcr(this, 'lst.finance', '', '', event);"
											title="����/����">����/����</a></li>
									</ul>
									<h4>��</h4>
									<ul>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=5843"
											onclick="clickcr(this, 'lst.weather', '', '', event);"
											title="����">����</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=801"
											onclick="clickcr(this, 'lst.game', '', '', event);"
											title="���ڵ� PC����">���ڵ� PC����</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1044"
											onclick="clickcr(this, 'lst.qr', '', '', event);"
											title="���ڵ� QR�ڵ�">���ڵ� QR�ڵ�</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=18027"
											onclick="clickcr(this, '', '', '', event);"
											title="���ڵ� ����Ʈ����">���ڵ� ����Ʈ����</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=17063"
											onclick="clickcr(this, 'lst.nearo', '', '', event);"
											title="���ڵ� ���̵�� �α���">���ڵ� ���̵�� �α���</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1074"
											onclick="clickcr(this, 'lst.general', '', '', event);"
											title="���ڵ� ����">���ڵ� ����</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=636"
											onclick="clickcr(this, 'lst.ndrive', '', '', event);"
											title="���ڵ� Ŭ����">���ڵ� Ŭ����</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1037"
											onclick="clickcr(this, 'lst.cleaner', '', '', event);"
											title="���ڵ� Ŭ����">���ڵ� Ŭ����</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=705"
											onclick="clickcr(this, 'lst.tvcast', '', '', event);"
											title="���ڵ�TV">���ڵ�TV</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=984"
											onclick="clickcr(this, 'lst.me', '', '', event);"
											title="���ڵ�me">���ڵ�me</a></li>
										<li><a href="http://help.line.me/line/?lang=ko"
											onclick="clickcr(this, 'lst.line', '', '', event);"
											target="_blank" title="���ڵ����">���ڵ����</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1037"
											onclick="clickcr(this, 'lst.vaccine', '', '', event);"
											title="���ڵ���">���ڵ���</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1035"
											onclick="clickcr(this, 'lst.software', '', '', event);"
											title="���ڵ����Ʈ����">���ڵ����Ʈ����</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=747"
											onclick="clickcr(this, 'lst.shopping', '', '', event);"
											title="���ڵ����">���ڵ����</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=12270"
											onclick="clickcr(this, '', '', '', event);"
											title="���ڵ忹��">���ڵ忹��</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=11709"
											onclick="clickcr(this, '', '', '', event);"
											title="���ڵ忹�� ��Ʈ�ʼ���">���ڵ忹�� ��Ʈ�ʼ���</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=643"
											onclick="clickcr(this, 'lst.office', '', '', event);"
											title="���ڵ���ǽ�">���ڵ���ǽ�</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=996"
											onclick="clickcr(this, 'lst.cast', '', '', event);"
											title="���ڵ�ĳ��Ʈ">���ڵ�ĳ��Ʈ</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1037"
											onclick="clickcr(this, 'lst.capture', '', '', event);"
											title="���ڵ�ĸó">���ڵ�ĸó</a></li>
										<li><a href="http://help.pay.naver.com/"
											onclick="clickcr(this, 'lst.checkout', '', '', event);"
											target="_blank" title="���ڵ�����">���ڵ�����</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=16738"
											onclick="clickcr(this, '', '', '', event);"
											title="���ڵ���ǿ���">���ڵ���ǿ���</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=729"
											onclick="clickcr(this, '', '', '', event);"
											title="���ڵ�����Ʈ">���ڵ�����Ʈ</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=17688"
											onclick="clickcr(this, '', '', '', event);"
											title="����ī��">����ī��</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=997"
											onclick="clickcr(this, 'lst.news', '', '', event);"
											title="����">����</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=998"
											onclick="clickcr(this, '', '', '', event);"
											title="���� ���̺귯��">���� ���̺귯��</a></li>
									</ul>
								</div>
								<div class="lst_all">
									<h4>��</h4>
									<ul>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=3609"
											onclick="clickcr(this, 'lst.video', '', '', event);"
											title="������">������</a></li>
									</ul>
									<h4>��</h4>
									<ul>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=706"
											onclick="clickcr(this, '', '', '', event);"
											title="�Ű���ĳ��Ʈ">�Ű���ĳ��Ʈ</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=639"
											onclick="clickcr(this, 'lst.memo', '', '', event);"
											title="�޸�">�޸�</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=2342"
											onclick="clickcr(this, 'lst.mail', '', '', event);"
											title="����">����</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=644"
											onclick="clickcr(this, '', '', '', event);"
											title="���ڸ޽���">���ڸ޽���</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=572"
											onclick="clickcr(this, 'lst.music', '', '', event);"
											title="����">����</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1037"
											onclick="clickcr(this, 'lst.player', '', '', event);"
											title="�̵�� �÷��̾�">�̵�� �÷��̾�</a></li>
									</ul>
									<h4>��</h4>
									<ul>
										<li><a href="http://www.band.us/cs/#!/help"
											onclick="clickcr(this, 'lst.band', '', '', event);"
											title="���">���</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=746"
											onclick="clickcr(this, 'lst.land', '', '', event);"
											title="�ε���">�ε���</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=520"
											onclick="clickcr(this, 'lst.blog', '', '', event);"
											title="��α�">��α�</a></li>
									</ul>
									<h4>��</h4>
									<ul>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1000"
											onclick="clickcr(this, 'lst.dic', '', '', event);"
											title="����">����</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=5843"
											onclick="clickcr(this, 'lst.life', '', '', event);"
											title="��Ȱ������">��Ȱ������</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=607"
											onclick="clickcr(this, 'icn.register', '', '', event);"
											title="����Ʈ�÷��̽�">����Ʈ�÷��̽�</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1001"
											onclick="clickcr(this, 'lst.sports', '', '', event);"
											title="������">������</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=964"
											onclick="clickcr(this, '', '', '', event);"
											title="�Ű���">�Ű���</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=5843"
											onclick="clickcr(this, '', '', '', event);"
											title="�ſ�ī��">�ſ�ī��</a></li>
									</ul>
									<h4>��</h4>
									<ul>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=521"
											onclick="clickcr(this, 'lst.item', '', '', event);"
											title="���������丮">���������丮</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1042"
											onclick="clickcr(this, 'lst.analytics', '', '', event);"
											title="�ֳθ�ƽ��">�ֳθ�ƽ��</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=726"
											onclick="clickcr(this, 'lst.adpost', '', '', event);"
											title="�ֵ�����Ʈ">�ֵ�����Ʈ</a></li>
										<li><a
											href="http://hgcs.game.sports.news.naver.com/spring/content/gamecc/openPopup?serviceCode=ya9_n"
											onclick="clickcr(this, '', '', '', event);"
											target="_blank" title="�߱�9��">�߱�9��</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=3181"
											onclick="clickcr(this, '', '', '', event);"
											title="��������">��������</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=800"
											onclick="clickcr(this, 'lst.movie', '', '', event);"
											title="��ȭ">��ȭ</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=16978"
											onclick="clickcr(this, '', '', '', event);"
											title="�����Ŭ��">�����Ŭ��</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=724"
											onclick="clickcr(this, 'lst.opencast', '', '', event);"
											title="����ĳ��Ʈ">����ĳ��Ʈ</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=17568"
											onclick="clickcr(this, '', '', '', event);"
											title="����">����</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=14882"
											onclick="clickcr(this, '', '', '', event);"
											title="�������͵���">�������͵���</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=804"
											onclick="clickcr(this, '', '', '', event);"
											title="���Ҽ�">���Ҽ�</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=799"
											onclick="clickcr(this, 'lst.comic', '', '', event);"
											title="����/��ȭ">����/��ȭ</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=548"
											onclick="clickcr(this, 'lst.abuse', '', '', event);"
											title="�̿�����">�̿�����</a></li>
									</ul>
								</div>
								<div class="lst_all">
									<h4>��</h4>
									<ul>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=5843"
											onclick="clickcr(this, 'lst.auto', '', '', event);"
											title="�ڵ���">�ڵ���</a></li>
										<li><a
											href="https://help.naver.com/support/contents/contents.nhn?serviceNo=1074&amp;categoryNo=10027"
											onclick="clickcr(this, 'lst.ends', '', '', event);"
											title="���Ἥ��">���Ἥ��</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=986"
											onclick="clickcr(this, 'lst.contact', '', '', event);"
											title="�ּҷ�">�ּҷ�</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=768"
											onclick="clickcr(this, 'lst.map', '', '', event);"
											title="����">����</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1003"
											onclick="clickcr(this, 'lst.kin', '', '', event);"
											title="����iN">����iN</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1000&amp;categoryNo=2728"
											onclick="clickcr(this, '', '', '', event);"
											title="���Ĺ��">���Ĺ��</a></li>
									</ul>
									<h4>��</h4>
									<ul>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=987"
											onclick="clickcr(this, 'lst.note', '', '', event);"
											title="����">����</a></li>
									</ul>
									<h4>��</h4>
									<ul>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=702"
											onclick="clickcr(this, '', '', '', event);"
											title="å">å</a></li>
									</ul>
									<h4>��</h4>
									<ul>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=522"
											onclick="clickcr(this, 'lst.cafe', '', '', event);"
											title="ī��">ī��</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=635"
											onclick="clickcr(this, 'lst.calender', '', '', event);"
											title="Ķ����">Ķ����</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=18438"
											onclick="clickcr(this, '', '', '', event);"
											title="Ŭ�ι�">Ŭ�ι�</a></li>
									</ul>
									<h4>��</h4>
									<ul>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=11764"
											onclick="clickcr(this, '', '', '', event);"
											title="������Ʈ�ʼ���">������Ʈ�ʼ���</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=606"
											onclick="clickcr(this, 'lst.search', '', '', event);"
											title="���հ˻�">���հ˻�</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1036"
											onclick="clickcr(this, 'lst.tool', '', '', event);"
											title="����">����</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1037"
											onclick="clickcr(this, '', '', '', event);"
											title="����">����</a></li>
									</ul>
									<h4>��</h4>
									<ul>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=802"
											onclick="clickcr(this, 'lst.photo', '', '', event);"
											title="���䰶����">���䰶����</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1037"
											onclick="clickcr(this, 'lst.photoviewer', '', '', event);"
											title="������">������</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=640"
											onclick="clickcr(this, 'lst.photoprint', '', '', event);"
											title="������ȭ">������ȭ</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=11492"
											onclick="clickcr(this, '', '', '', event);"
											title="����">����</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1080"
											onclick="clickcr(this, 'lst.privacy', '', '', event);"
											title="�����̹��� ����">�����̹��� ����</a></li>
									</ul>
									<h4>��</h4>
									<ul>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1002"
											onclick="clickcr(this, 'lst.academic', '', '', event);"
											title="�м�����">�м�����</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=11270"
											onclick="clickcr(this, '', '', '', event);"
											title="�װ���">�װ���</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=770"
											onclick="clickcr(this, 'lst.happybean', '', '', event);"
											title="���Ǻ�">���Ǻ�</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=14445"
											onclick="clickcr(this, '', '', '', event);"
											title="ȣ��">ȣ��</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=532"
											onclick="clickcr(this, 'lst.id', '', '', event);"
											title="ȸ������">ȸ������</a></li>
									</ul>
								</div>
								<div class="lst_all">
									<h4>abc</h4>
									<ul>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=17925"
											onclick="clickcr(this, '', '', '', event);"
											title="DISCO">DISCO</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=14493"
											onclick="clickcr(this, 'lst.lab', '', '', event);"
											title="Data Lab">Data Lab</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=803"
											onclick="clickcr(this, 'lst.nstore', '', '', event);"
											title="N�����">N�����</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=17996"
											onclick="clickcr(this, '', '', '', event);"
											title="Papago">Papago</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=18229"
											onclick="clickcr(this, '', '', '', event);"
											title="Tarte">Tarte</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=12240"
											onclick="clickcr(this, '', '', '', event);"
											title="V LIVE">V LIVE</a></li>
										<li><a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=11452"
											onclick="clickcr(this, '', '', '', event);"
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
									onclick="clickcr(this, 'idm.lost', '', '', event)"><span
									class="blind">ȸ����������</span></a>
							</h2>
							<p>
								<span class="blind">�� ȸ�������� ���� ���ϰ� ������ �� �ֽ��ϴ�.</span>
							</p>
							<ul class="lst_md">
								<li><a href="../member/findid.jsp"
									onclick="clickcr(this, 'idm.lost', '', '', event)">��й�ȣ/ID ã��</a></li>
								<li><a href="../member/findpw.jsp"
									onclick="clickcr(this, 'idm.chpasswd', '', '', event)">��й�ȣ ����</a></li>
								<li><a href="../member/mypage.jsp"
									onclick="clickcr(this, 'idm.edit', '', '', event)">ȸ������ ����</a></li>
								<li><a href=""
									onclick="clickcr(this, 'idm.protect', '', '', event)">�α��� ��ȣ ����</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div id="aside">
					<div class="noti_section">
						<h3>
							<span class="blind">��������</span>
						</h3>
						<!-- [D] �������� ������ �������� ��ü ���� title �Ӽ��� ���� -->
						<ul class="lst_noti">
							<li><a
								href="http://help.naver.com/support/bbs/notice.nhn?docId=10000000000030659166"
								title="[�����Ϸ�] 11/26 (��), '�ε���'...">[�����Ϸ�] 11/26 (��),
									'�ε���'...</a></li>
							<li><a
								href="http://help.naver.com/support/bbs/notice.nhn?docId=10000000000030659138"
								title="[�����Ϸ�] 11/23 (��), '�ε���'...">[�����Ϸ�] 11/23 (��),
									'�ε���'...</a></li>
						</ul>
						<a href="Barcode_Notice.jsp" class="nt_more"><span
							class="blind">��������</span> ������</a>
					</div>
				</div>
			</div>
		</div>
		<!-- //container -->
		<script type="text/javascript"
			src="./custom_home_files/flashObject.js.�ٿ�ε�"></script>
		<div id="dimLayout" class="ly_dim" style="display: none"></div>
		<div id="kinPartnerLayout" class="ly_kin_partner"
			style="display: none">
			<div class="con">
				<h1 class="blind">������Ʈ�� Ȱ��ȭ�� �Ұ� ������</h1>
				<!-- �����󿵿� -->
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
				<!-- //�����󿵿� -->
				<a
					href="http://kin.naver.com/qna/list.nhn?m=noanswer&amp;dirId=10601"
					class="btn_drt"
					onclick="clickcr(this, 'rbk.banner', '', '', event)"
					target="_blank">����in "���ڵ� ����" �ٷΰ���</a> <a
					id="kinParterPopupCloseButton" class="btn_close"><span
					class="blind">�˾�â �ݱ�</span></a>
			</div>
		</div>
		<!-- layer kin bridge -->
		<div class="ly_dim" style="display: none;"></div>
		<div class="ly_kin_bridge" style="display: none">
			<div class="con">
				<h1 class="blind">�̿��ڵ鳢�� �ְ� �޴� ������ ���ڵ� ����</h1>
				<p class="blind">����iN���� �˻��ϰ� �������!</p>
				<h2 class="blind">���ڵ�� ������ �ñ��� ���� ���� ã�� �� �־��.</h2>
				<p class="blind">���ڵ������ ���� ����/�亯�� ���� 24����!! �Ϸ翡 ���ο� ���� �亯��
					200��!! ���� �ٷ� ����iN���� �ñ��� ���� ã�� ������.</p>
				<a
					href="http://kin.naver.com/qna/list.nhn?m=noanswer&amp;dirId=10601"
					onclick="clickcr(this, 'kbr.search', '', '', event)"
					class="srch" target="_blank"><span class="blind">����iN����
						���ڵ� ���� �˻��ϱ�</span></a>
				<h2 class="blind">ã���ô� ������ ���ٸ� ����iN�� �������.</h2>
				<p class="blind">�ٸ� �̿��ڿ� ����iN �����, ���ڵ� ������Ʈ�ʰ� ��Ȯ�ϰ� ������ �亯�մϴ�.
					�ñ��� ���� �����ø� ���� �ٷ� ����iN���� ������ ������.</p>
				<a
					href="http://kin.naver.com/qna/question.nhn?dirId=10601&amp;d1Id=1"
					onclick="clickcr(this, 'kbr.ask', '', '', event)"
					class="ask" target="_blank"><span class="blind">����iN����
						���ڵ� ���� �����ϱ�</span></a>
				<p class="blind">���� ������ ����Ͻ� �� �����ڵ�������� �������ֽø� ���� ��Ȯ�ϰ� ������ �亯
					���� �� �־��.</p>
				<p class="blind">��) ����Q&amp;A &gt; ��ǻ����� &gt; ���ͳ� &gt; ���ڵ����
					&gt; OOO (���� ��)</p>
				<a id="closeKinPopup" href="https://help.naver.com/#" class="close"><span
					class="blind">�ݱ�</span></a>
			</div>
		</div>
		<!-- footer -->
		<div id="footer_">
			<div id="footerWrap">
				<p class="a_">��������</p>
				<p class="a__">���� ��ü����</p>
			</div>
		</div>
		<div id="footer">
			<p class="Extra">Creators</p>
			<ul>
				<li>ũ��������</li>
				<li class="aaa">|</li>
				<li>��������Ͻ�</li>
			</ul>
			<p class="Extra">Partners</p>
			<ul>
				<li>�̼���</li>
				<li class="aaa">|</li>
				<li>�����</li>
				<li class="aaa">|</li>
				<li>���ؿ�</li>
				<li class="aaa">|</li>
				<li>������</li>
				<li class="aaa">|</li>
				<li>������</li>
			</ul>
			<p class="Extra">Developers</p>
			<ul>
				<li>���ڵ� ���߼���</li>
				<li class="aaa">|</li>
				<li>����API</li>
				<li class="aaa">|</li>
				<li>���¼ҽ�</li>
				<li class="aaa">|</li>
				<li>���ڵ� D2</li>
				<li class="aaa">|</li>
				<li>���ڵ� ����</li>
			</ul>
			<div id="ul_except">
				<ul>
					<li style="padding: 0;">ȸ��Ұ�</li>
					<li class="aaa">|</li>
					<li>����ä��</li>
					<li class="aaa">|</li>
					<li>��������</li>
					<li class="aaa">|</li>
					<li>�̿���</li>
					<li class="aaa">|</li>
					<li>��������ó����ħ</li>
					<li class="aaa">|</li>
					<li>û�ҳ⺸ȣ��å</li>
					<li class="aaa">|</li>
					<li>���ڵ���å</li>
					<li class="aaa">|</li>
					<li>������</li>
					<li class="aaa">|</li>
					<li>��Barcode Crop.</li>
				</ul>
			</div>
		</div>
		<!-- //footer -->
	</div>
	<script type="text/javascript" src="./custom_home_files/lcslog.js.�ٿ�ε�"></script>
	<script type="text/javascript">
var nsc = "help.main";
lcs_do();
</script>
</body>
</html>