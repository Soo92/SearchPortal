<%@page import="product.CartBean"%>
<%@page import="product.ShoppingBean"%>
<%@page import="java.util.Vector"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="mgr" class="member.MemberMgr"/>
<jsp:useBean id="mgr_shop" class="product.ShoppingMgr"/>
<jsp:useBean id="mgr_cart" class="product.CartMgr"/>
<jsp:useBean id="bean" class="product.ShoppingBean"/>
<%
		request.setCharacterEncoding("euc-kr");
		Vector<ShoppingBean> vlist=mgr_shop.getShoppingList();
		String id = (String)session.getAttribute("idKey");	
		String email = mgr.getMember(id).getEmail();
		String name = mgr.getMember(id).getName();
		if(id==null){
			response.sendRedirect("../member/login.jsp");
		}
		Vector<CartBean> cartlist =  mgr_cart.getCartList(id);
%>

<!doctype>
<html>
<meta charset="utf-8">
<head>
	<title>��ǰ�ڳ�</title>
	<link rel="stylesheet" href="../css/swiper.min.css" type="text/css">
	<script src="https://code.jquery.com/jquery-1.7.0.min.js"></script>
	<script type="text/javascript" src="../js/swiper.min.js"></script>
	<link rel="stylesheet" href="../css/product_style.css" type="text/css">
	<link rel="stylesheet" href="../css/gnb_style.css" type="text/css">
	<script src="../js/clickcrd.js" id="gnb_clickcrD" charset="utf-8"></script>
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
	</script>
</head>
<body>
<div id="all">
		<div id="header_">
			<div id="header">
				<div id="wrap2">
					<div id="logo" onclick="location.href='../index.jsp'"><img src="../img/barcode_logo__.png" width=100% height=100% alt="���ڵ�"></div>
					<div id="subject"><a href="product_home.jsp"><p><span>�߰�</span> &nbsp;��ǰ Corner</p></a></div>
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
				<div id="gnb" class="gnb_dark_type2"><strong class="blind">����� ��ũ</strong><ul class="gnb_lst" id="gnb_lst" style="display: block;"><li class="gnb_login_li" id="gnb_login_layer" style="display: none;"><a class="gnb_btn_login" href="https://nid.naver.com/nidlogin.login" id="gnb_login_button"><span class="gnb_bg"></span><span class="gnb_bdr"></span><span class="gnb_txt">�α���</span></a></li><li class="gnb_my_li" id="gnb_my_layer" style="display: inline-block;"><div class="gnb_my_namebox" id="gnb_my_namebox" style="background-image: url(&quot;http://static.naver.net/common/gnb/2014/ico_arrow_wh.gif&quot;);"><a href="javascript:;" class="gnb_my" onclick="mypage()"><img id="gnb_profile_img" src="http://static.naver.net/common/myarea/myInfo.gif" width="26" height="26" alt="�� ������ �̹���" style="display: inline-block;"><span id="gnb_profile_filter_mask" class="filter_mask" style="display: inline-block;"></span> <span class="gnb_name" id="gnb_name1"><%=name %></span><em class="blind">������ ����</em><span class="ico_arrow"></span></a><a href="#" class="gnb_emp" id="gnb_emp" style="display: none;">(����������)</a></div><div class="gnb_my_lyr" id="gnb_my_lyr"><div class="gnb_my_content"><div class="gnb_img_area"><span class="gnb_mask"></span><img src="http://static.naver.net/common/myarea/myInfo.gif" width="80" height="80" alt=""><a href="https://nid.naver.com/user2/api/naverProfile.nhn?m=checkIdType" class="gnb_change"><span class="blind">������ ���� ����</span></a></div><div class="gnb_txt_area"><p class="gnb_account"><span class="gnb_name" id="gnb_name2"><a class="gnb_nick" href="https://nid.naver.com/user2/api/naverProfile.nhn?m=checkIdType"><%=name %></a>��</span><a class="gnb_btn_login" href="../member/logout.jsp"><span class="gnb_bg"></span><span class="gnb_bdr"></span><span class="gnb_txt">�α׾ƿ�</span></a></p><a href="http://mail.naver.com" class="gnb_mail_address"><%=email %></a><ul class="gnb_edit_lst"><li class="gnb_info"><a href="https://nid.naver.com/user2/help/myInfo.nhn?menu=home">������</a></li></ul><p class="gnb_pay_check" id="gnb_pay_check"><em>B Pay</em><a href="http://pay.naver.com" id="gnb_pay_point"><span>�� ��������Ʈ</span><strong>63,035��</strong></a></p></div></div><a href="#" class="gnb_my_interface" style="display:none"><span class="blind">ȯ�漳��</span></a></div></li><li class="gnb_notice_li" id="gnb_notice_layer" style="display: inline-block;"><a href="javascript:;" class="gnb_notice" onclick="alarm(); return false;"><span class="blind">�˸�</span><span class="gnb_icon"></span><em class="gnb_ico_num" id="gnb_me_menu" style="display:none"><span class="gnb_ico_new"><span class="gnb_count" id="gnb_me_count" style="display: inline-block;"></span></span></em><span class="ico_arrow"></span></a><div class="gnb_notice_lyr" id="gnb_notice_lyr"><div class="svc_noti svc_panel"><div class="svc_scroll"><div class="svc_head"><strong class="gnb_tit">��ü �˸�</strong><div class="task_right"><button onclick="gnbNaverMeLayer.deleteReadList(this, event);" id="gnb_btn_read_noti_del">���� �˸� ����</button><button onclick="gnbNaverMeLayer.showDeleteAlert();" id="gnb_btn_all_noti_del">��� ����</button></div></div><div class="svc_body" id="gnb_naverme_layer"></div></div><div class="gnb_ly_alert" id="gnb_ly_alert" style="display: none;"><p class="gnb_msg"><strong>�˸��� ��� �����Ͻðڽ��ϱ�?</strong></p><div class="gnb_btns"><button id="ly_alert_confirm" onclick="gnbNaverMeLayer.deleteAllList(this, event);">Ȯ��</button><button onclick="gnbNaverMeLayer.hideDeleteAlert();">���</button></div><button class="gnb_btn_close" onclick="gnbNaverMeLayer.hideDeleteAlert();"><i>���̾� �ݱ�</i></button></div><a href="http://me.naver.com/box/noti.nhn" class="gnb_notice_all">�� �˸� ��ü����</a></div></div><iframe id="gnb_notice_lyr_iframe" title="�� ������" class="gnb_pad_lyr" name="padding" width="0" height="0" scrolling="no" frameborder="0" style="top:34px;right:-4px;width:299px;height:332px;display:none;opacity:0;-ms-filter:alpha(opacity=0)"></iframe></li><li class="gnb_service_li" id="gnb_service_layer" style="display: inline-block;"><a href="javascript:;" class="gnb_service" onclick="service(); return false;"><span class="blind">���� ������</span><span class="gnb_icon"></span><span class="ico_arrow"></span></a><div class="gnb_service_lyr" id="gnb_service_lyr"><div class="gnb_favorite_search" id="gnb_favorite_search"><div class="gnb_favorite_area"><div class="gnb_favorite_lstwrp"><div class="gnb_first_visit" style="display:none"><span class="blind">������ ���ã�⸦ �߰��� ������!</span><a href="#" class="gnb_close"><span class="blind">�ݱ�</span></a></div><strong class="blind">���ã�� ����</strong><ul class="gnb_favorite_lst" id="gnb_favorite_lst"><li class="gnb_add"><a href="#"><span class="ic_add"></span>�߰�</a></li><li class="gnb_add"><a href="#"><span class="ic_add"></span>�߰�</a></li><li class="gnb_add"><a href="#"><span class="ic_add"></span>�߰�</a></li><li class="gnb_add"><a href="#"><span class="ic_add"></span>�߰�</a></li></ul><a href="#" class="gnb_my_interface" onclick="gnbMoreLayer.clickToggleWhole(); return false;"><span class="blind">���ã�� ����</span></a></div></div><div class="gnb_search_area"><div class="gnb_search_box" onmouseover="gnb_search.mouseOver(this);" onmouseout="gnb_search.mouseOut(this);"><input id="gnb_svc_search_input" type="text" title="���� �˻�" value="�� ���� ���񽺸� �����ϰ� �����ϼ���!" onfocus="gnb_search.clearInput(this);" onblur="gnb_search.resetInput(this);" onkeydown="gnb_search.keyDown(event);" onkeyup="gnb_search.keyUp(event);"><a href="#" class="gnb_del_txt" id="gnb_del_txt" style="display:none"><span class="blind">����</span></a><div class="gnb_pop_input" id="gnb_pop_input" tabindex="0" onfocus="gnb_search.searchPopOnMouse = true; return false;" onfocusout="gnb_search.searchPopOnMouse = false; return false;" onmouseover="gnb_search.searchPopOnMouse = true; return false;" onmouseout="gnb_search.searchPopOnMouse = false; return false;" style="display:none"><ul class="gnb_pop_lst"></ul></div></div><div class="gnb_search_lstwrp"><ul class="gnb_search_lst gnb_first"><li class="gnb_first"><a href="http://cafe.naver.com/">ī��</a></li><li><a href="http://news.naver.com/">����</a></li><li><a href="http://map.naver.com/">����</a></li><li><a href="http://sports.news.naver.com/">������</a></li><li><a href="http://game.naver.com/">����</a></li></ul><ul class="gnb_search_lst"><li class="gnb_first"><a href="http://section.blog.naver.com/">��α�</a></li><li><a href="http://post.naver.com/main.nhn">����Ʈ</a></li><li><a href="http://dic.naver.com/">����</a></li><li><a href="http://kin.naver.com/">����iN</a></li><li><a href="http://weather.naver.com/">����</a></li></ul><ul class="gnb_search_lst"><li class="gnb_first"><a href="http://mail.naver.com/">����</a></li><li><a href="http://stock.naver.com/">����</a></li><li><a href="http://land.naver.com/">�ε���</a></li><li><a href="http://music.naver.com/">����</a></li><li><a href="http://book.naver.com">å</a></li></ul><ul class="gnb_search_lst"><li class="gnb_first"><a href="http://shopping.naver.com/">����</a></li><li><a href="http://comic.naver.com/">����</a></li><li><a href="http://movie.naver.com/">��ȭ</a></li><li><a href="http://cloud.naver.com/">Ŭ����</a></li><li><a href="http://auto.naver.com/">�ڵ���</a></li></ul></div></div><div class="gnb_banner"><a href="http://campaign.naver.com/pointevent/" class="gnb_service_event"><img id="gnb_promo" alt="���ڵ����� | 12�� �̺�Ʈ" width="265" height="47" src="http://static.naver.net/common/gnb/banner/promo_npay_1712.png"></a></div><div class="gnb_linkwrp"><a href="http://www.naver.com/more.html" class="gnb_service_all" id="gnb_service_all">��ü ���� ����</a></div></div><div class="gnb_svc_more" id="gnb_svc_more" style="display: none;"><strong class="blind">���ڵ� �ֿ� ����</strong><div class="gnb_bg_top"></div><div class="gnb_svc_hd"><strong class="gnb_svc_tit">�ٷΰ��� ����</strong><span class="link"><a href="http://www.naver.com/more.html">��ü ���� ����</a></span></div><div class="gnb_svc_lstwrp"><div class="gnb_svc_lst1"><ul class="gnb_first"><li><input type="checkbox" id="nsvc_game" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_game">����</label></li><li><input type="checkbox" id="nsvc_weather" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_weather">����</label></li><li><input type="checkbox" id="nsvc_shopping" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_shopping">���ڵ����</label></li><li><input type="checkbox" id="nsvc_navercast" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_navercast">���ڵ�ĳ��Ʈ</label></li><li><input type="checkbox" id="nsvc_cloud" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_cloud">���ڵ�Ŭ����</label></li><li class="gnb_event"><input type="checkbox" id="nsvc_naverpay" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_naverpay">���ڵ�����</label><em class="ic_gnb_new">New</em></li><li><input type="checkbox" id="nsvc_news" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_news">����</label></li><li><input type="checkbox" id="nsvc_comic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_comic">��ȭ/����</label></li><li><input type="checkbox" id="nsvc_memo" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_memo">�޸�</label></li><li><input type="checkbox" id="nsvc_mail" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_mail">����</label></li><li><input type="checkbox" id="nsvc_music" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_music">����</label></li><li><input type="checkbox" id="nsvc_land" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_land">�ε���</label></li><li><input type="checkbox" id="nsvc_bookmark" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_bookmark">�ϸ�ũ</label></li></ul><ul class=""><li><input type="checkbox" id="nsvc_blog" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_blog">��α�</label></li><li><input type="checkbox" id="nsvc_dic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_dic">����</label></li><li><input type="checkbox" id="nsvc_software" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_software">����Ʈ����</label></li><li><input type="checkbox" id="nsvc_sports" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_sports">������</label></li><li><input type="checkbox" id="nsvc_ya9" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_ya9">�߱�9��</label></li><li><input type="checkbox" id="nsvc_movie" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_movie">��ȭ</label></li><li><input type="checkbox" id="nsvc_office" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_office">���ǽ�</label></li><li><input type="checkbox" id="nsvc_novel" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_novel">���Ҽ�</label></li><li><input type="checkbox" id="nsvc_auto" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_auto">�ڵ���</label></li><li><input type="checkbox" id="nsvc_contact" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_contact">�ּҷ�</label></li><li><input type="checkbox" id="nsvc_finance" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_finance">����(����)</label></li><li><input type="checkbox" id="nsvc_map" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_map">����</label></li><li><input type="checkbox" id="nsvc_kin" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_kin">����iN</label></li></ul><ul class=""><li><input type="checkbox" id="nsvc_terms" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_terms">���Ĺ��</label></li><li><input type="checkbox" id="nsvc_book" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_book">å</label></li><li><input type="checkbox" id="nsvc_cafe" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_cafe">ī��</label></li><li><input type="checkbox" id="nsvc_calendar" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_calendar">Ķ����</label></li><li><input type="checkbox" id="nsvc_photo" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_photo">���䰶����</label></li><li><input type="checkbox" id="nsvc_nstore" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_nstore">N�����</label></li><li><input type="checkbox" id="nsvc_navertv" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_navertv">���ڵ�TV</label></li></ul></div><div class="svc_lst2"><div class="svc_spc gnb_first"><strong><a href="http://dic.naver.com/">���л���</a></strong><ul class=""><li><input type="checkbox" id="nsvc_krdic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_krdic">�������</label></li><li><input type="checkbox" id="nsvc_endic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_endic">����/��������</label></li><li><input type="checkbox" id="nsvc_hanja" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_hanja">���ڻ���</label></li><li><input type="checkbox" id="nsvc_jpdic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_jpdic">�Ͼ����</label></li><li><input type="checkbox" id="nsvc_cndic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_cndic">�߱������</label></li><li><input type="checkbox" id="nsvc_frdic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_frdic">�����������</label></li><li><input type="checkbox" id="nsvc_dedic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_dedic">���Ͼ����</label></li><li><input type="checkbox" id="nsvc_rudic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_rudic">���þƾ����</label></li><li><input type="checkbox" id="nsvc_vndic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_vndic">��Ʈ�������</label></li><li><input type="checkbox" id="nsvc_spdic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_spdic">�����ξ����</label></li><li><input type="checkbox" id="nsvc_translate" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_translate">������</label></li></ul></div><div class="svc_spc"><strong>�α�/�űԼ���</strong><ul class=""><li><input type="checkbox" id="nsvc_grafolio" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_grafolio">�׶�������</label></li><li><input type="checkbox" id="nsvc_post" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_post">����Ʈ</label></li><li><input type="checkbox" id="nsvc_luncherapp" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_luncherapp">������ó</label></li><li><input type="checkbox" id="nsvc_band" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_band">���</label></li><li><input type="checkbox" id="nsvc_line" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_line">����</label></li></ul></div></div></div><div class="svc_btnwrp"><div class="svc_btns"><button class="gnb_save" onclick="if(gnbFavorite.addService()){gnbMoreLayer.clickToggleWhole()} return false;"><strong class="blind">Ȯ��</strong></button><button class="gnb_close" onclick="gnbFavorite.cancel(); return false;"><span class="blind">���</span></button><button class="gnb_return" onclick="gnbFavorite.resetService(); return false;"><span class="blind">�ʱ� �������� ����</span></button></div></div><div class="gnb_bg_btm"></div></div></div><iframe id="gnb_service_lyr_iframe" title="�� ������" class="gnb_pad_lyr" name="padding" width="0" height="0" scrolling="no" frameborder="0" style="display:none;top:34px;right:297px;width:585px;height:385px;opacity:0;-ms-filter:alpha(opacity=0)"></iframe><iframe id="gnb_svc_more_iframe" title="�� ������" class="gnb_pad_lyr" name="padding" width="0" height="0" scrolling="no" frameborder="0" style="display:none;top:34px;right:-4px;width:295px;height:385px;opacity:0;-ms-filter:alpha(opacity=0)"></iframe></li></ul>
				</div>
					<%}%>
					</div>
				</div>
			</div>
			<div id="nav">
				<div id="wrap2">
					<div id="navLeft">
						<ul>
							<li><a href="product_used.jsp">�߰���</a></li><li class="ulul" id="aaa">|</li>
							<li class="ulul"><a href="product_best100.jsp">����Ʈ100</a></li><li class="ulul" id="aaa">|</li>
							<li class="ulul"><a href="product_notice.jsp">��������</a></li><li class="ulul" id="aaa">|</li>
							<li class="ulul"><a href="product_QnA.jsp">Q&A </a></li>
						</ul>
					</div>
					<div id="navRight">
						<table border="0">
							<tr>
								<td><a href="basket.jsp">��ٱ���</a></td>
							</tr>
						</table>
					</div>
				</div>
				
			</div>
		</div>
</div>
	
	<div id="wrap_">
		<div id="wrap2" >
			<div id="search">
				<div id="search_box">
				<input type="text" style="width:420px; height:30px; margin:5px 0px 0px 10px; border:0px; font-size:16px;" align="center"
								placeholder="�˻��غ�����!">
					<div id="search_button">
						<img src="../img/search_icon.png" width="45px" height="45px">
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div id="all">
		<div id="wrap2" style="margin-bottom:20px;">
			<img src="../img/basket.jpg">
		</div>
	</div>
	
	<div id="wrap">
		<div id="blank"></div>
<%if(cartlist.size()>0) {%>
			<!-- for�� Strat *****��ٱ��� ��ǰ ���� ��� -->
			<div id="basket">
	<%for(int i=0;i<cartlist.size();i++) {
		ShoppingBean Shopp = mgr_shop.getShopping(cartlist.get(i).getPronum());
		int ea = cartlist.get(i).getEa();%>
					<div id="basket_">
							<table width="1080px" height="180px" cellpadding="5" cellspacing="0" border="1" align="center"
							style="border-collapse:collapse; border:1px lightgray solid; background:#fff;
							margin-left:10px; margin-top:10px;float:left;  text-indent:0; text-align:center; font-size:14px;">
								<tr>
									<th colspan="2" height="36px">��ǰ/�ɼ�����</th>
									<th height="36px" width="100px">����</th>
									<th height="36px">��ǰ�ݾ�</th>
									<th height="36px">���αݾ�</th>
									<th height="36px">��������ݾ�</th>
									<th height="36px">��ۺ�</th>
									<th height="36px">�ֹ�</th>
								</tr>
								<tr>
									<td rowspan="4" height="36px" width="150px"><img style="width:100%" src="./newShopImg/<%=Shopp.getMainImg()%>"></td>
									<td  height="46px" style="text-indent:20; text-align:left;border:none;font-size:16px;">
									<b>[<%=Shopp.getSeller()%>]</b> <%=Shopp.getTitle()%></td>
									<td rowspan="2" height="36px">
									<select style="width:56px;">
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
									</select>
									</td>
									<td rowspan="4" height="36px"><%=Shopp.getPrice()%>��</td>
									<td rowspan="4" height="36px">0��</td>
									<td rowspan="4" height="36px"><%=Shopp.getPrice()%>��</td>
									<td rowspan="4" height="36px"><%=Shopp.getShipAccount()%>��</td>
									<td rowspan="2" height="36px">
										<button class="order_button">�ֹ��ϱ�</button>
									</td>
								</tr>
								<tr>
									<td height="26px" style="text-indent:20; text-align:left;border:none;">
									�ɼ� : -</td>
								</tr>
								
								<tr>
									<td height="26px" style="text-indent:20; text-align:left;border:none;">�߰���ǰ : -</td>
									<td rowspan="2" height="36px">
										<button class="delete_button">����</button>
									</td>
									<td rowspan="2" height="36px">
									<a href="./basket_del_proc.jsp?index=<%=cartlist.get(i).getIdx() %>" onclick="return confirm('�����ұ��?')">
										<button class="delete_button">�����ϱ�</button>
									</a>
									</td>
								</tr>
								
								<tr>
									<td height="46px" style="text-indent:20; text-align:left;border:none;">
									<button class="order_button">�ɼǺ���/�߰�</button>
									</td>
								</tr>
							</table>
							
					</div>
	<%} %>
				</div>
				<div id="blank"></div>
			<!-- for�� End -->
<%}else{ %>			
			<!-- for�� Strat *****��ٱ��� ��ǰ ���� ��� -->
			<div id="basket">
					<div id="basket_">
							<table width="1080px" height="180px" cellpadding="5" cellspacing="0" border="1" align="center"
							style="border-collapse:collapse; border:1px lightgray solid; background:#fff;
							margin-left:10px; margin-top:10px;float:left;  text-indent:0; text-align:center; font-size:14px;">
								<tr>
									<th colspan="2" height="36px" width="500px">��ǰ/�ɼ�����</th>
									<th height="36px" width="100px">����</th>
									<th height="36px" width="84px">��ǰ�ݾ�</th>
									<th height="36px" width="84px">���αݾ�</th>
									<th height="36px" width="100px">��������ݾ�</th>
									<th height="36px" width="84px">��ۺ�</th>
									<th height="36px" width="128px">�ֹ�</th>
								</tr>
								<tr>
									<td colspan="8" height="145px" width="150px">
										<h3>��ٱ��Ͽ� ��� ��ǰ�� �����ϴ�.</h3>
										<br/>
									</td>
								</tr>
							</table>
							
					</div>
				</div>
<%} %>			
				

				<div id="blank"></div>
			<!-- for�� End -->
			
			
		<div id="blank"></div>
	</div>
	<div id="footer_">
		<div id="footerWrap">
			<p class="a_">��������</p>
			<p class="a__">���� ��ü����</p>
		</div>
	</div>
	

	<div id="footer">
		<p class="Extra">Creators</p>
		
		<ul>
			<li>ũ��������</li><li class="aaa">|</li>
			<li>��������Ͻ�</li>
		</ul>
		
		<p class="Extra">Partners</p>
		<ul>
			<li>�̼���</li><li class="aaa">|</li>
			<li>�����</li><li class="aaa">|</li>
			<li>���ؿ�</li><li class="aaa">|</li>
			<li>������</li><li class="aaa">|</li>
			<li>������</li>
		</ul>
		
		<p class="Extra">Developers</p>
		<ul>
			<li>���ڵ� ���߼���</li><li class="aaa">|</li>
			<li>����API</li><li class="aaa">|</li>
			<li>���¼ҽ�</li><li class="aaa">|</li>
			<li>���ڵ� D2</li><li class="aaa">|</li>
			<li>���ڵ� ����</li>
		</ul>
		
		<div id="ul_except">
			<ul>
				<li style="padding:0;">ȸ��Ұ�</li><li class="aaa">|</li>
				<li>����ä��</li><li class="aaa">|</li>
				<li>��������</li><li class="aaa">|</li>
				<li>�̿���</li><li class="aaa">|</li>
				<li>��������ó����ħ</li><li class="aaa">|</li>
				<li>û�ҳ⺸ȣ��å</li><li class="aaa">|</li>
				<li>���ڵ���å</li><li class="aaa">|</li>
				<li>������</li><li class="aaa">|</li>
				<li>��Barcode Crop.</li>
			</ul>
		</div>
	</div>

</body>
</html>