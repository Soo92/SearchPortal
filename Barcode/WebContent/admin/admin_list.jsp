<%@page import="product.ShoppingBean"%>
<%@page import="java.util.Vector"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="shop_mgr" class="product.ShoppingMgr"/>
<jsp:useBean id="bean" class="product.ShoppingBean"/>
<jsp:useBean id="mgr" class="member.MemberMgr"/>
<%
		request.setCharacterEncoding("euc-kr");
		String id=(String) session.getAttribute("idKey");
		String email = mgr.getMember(id).getEmail();
		String name = mgr.getMember(id).getName();
		Vector<ShoppingBean> vlist = shop_mgr.getShoppingList(id);
%>

<!doctype>
<html>
<meta charset="utf-8">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="../css/gnb_style.css" type="text/css">
<script>
$(document).ready(function(){
  
  $("a").on('click', function(event) {

  
    if (this.hash !== "") {
  
      event.preventDefault();
      var hash = this.hash;
      $('html, body').animate({
        scrollTop: $(hash).offset().top-140
      }, 800, function(){  
        window.location.hash = hash;
      });
    }
  });
});
</script>

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
	<script type="text/javascript">
$(document).ready(function(){
    $("#checkall").click(function(){ 								//�ֻ�� üũ�ڽ� Ŭ��
    	if($("#checkall").prop("checked")){ 						//Ŭ���Ǿ�����
    		$("input[name=chkList]").prop("checked",true); 				//input�±��� name�� chk�� �±׵��� ã�Ƽ� checked�ɼ��� true�� ����
    	}else{ 														//Ŭ���� �ȵ�������
  		 	$("input[name=chkList]").prop("checked",false); 			//input�±��� name�� chk�� �±׵��� ã�Ƽ� checked�ɼ��� false�� ����
        }
    })
})
function go_modify(){
  if( $(":checkbox[name='chkList']:checked").length>1 
		  || $(":checkbox[name='chkList']:checked").length==0 ){
    alert("������ �׸��� �ϳ� üũ���ּ���.");
    return;
  }else{
	  $("#modi").val(get_chked_values());
	  document.modif.submit();
  }
}
function go_delete(){
  if( $(":checkbox[name='chkList']:checked").length==0 ){
    alert("������ �׸��� �ϳ��̻� üũ���ּ���.");
    return;
  }else{
	  $("#del").val(get_chked_values());
	  document.delf.submit();
  }
}
function get_chked_values(){
  var chked_val = "";
  $(":checkbox[name='chkList']:checked").each(function(pi,po){
    chked_val += ","+po.value;
  });
  if(chked_val!="")chked_val = chked_val.substring(1);
  return chked_val;
}
</script>
<head>
<title>��ǰ ���������</title>
<link rel="stylesheet" href="../css/admin_style.css" type="text/css">
   </head>
   <body>
      <div id="all">
      <div id="header_">
         <div id="header">
            <div id="wrap2">
               <a href="../index.jsp">
               <div id="logo"><img src="../img/barcode_logo__.png" height="100%" alt="barcode"></div>
               </a>
               
               <a href="product_home.jsp">
               <div id="subject"><p><span>��ǰ</span> &nbsp;��� Corner</p></div>
               </a>
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
                     <li><a href="product_new.jsp">�߰���</a></li><li class="ulul" id="aaa">|</li>
                     <li class="ulul"><a href="product_used.jsp">��������</a></li><li class="ulul" id="aaa">|</li>
                     <li class="ulul"><a href="product_review.jsp">��ȭ����</a></li><li class="ulul" id="aaa">|</li>
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
   
      <div id="title_admin" style="width:1100px;">
         <div id="space_box"></div>
         <h2>��ǰ��� List</h2>
         <p><%=id %> ��! ȯ���մϴ�:-) ���õ� �����Ϸ�Ǽ���!</p>
   </div>
   
   <div id="proList">
      <table width="1100px" cellpadding="5" cellspacing="0" border="0" align="center" style="border-collapse:collapse; background:background:#ff5b1b; margin-bottom:7px;">
         <tr>
            <th><input type="checkbox" id="checkall" style="width:25px" value=""></th>
            <th style="width:60px;">��ȣ</th>
            <th>����</th>
            <th>����</th>
            <th>�Ǹ���</th>
            <th>����</th>
            <th>���</th>
            <th>������</th>
         </tr>
         <%
         	for(int i=0; i<vlist.size(); i++){
         		bean = vlist.get(i);
         		int idx = bean.getIndex();
         		bean = shop_mgr.getShopping(idx);
         		String Seller=bean.getSeller();
         		String title=bean.getTitle();
         		String price=bean.getPrice();
         		String account=bean.getAccount();
         		String shipAccount=bean.getShipAccount();
         		String shipDate=bean.getShipDate();
         		int maxBuy=bean.getMaxBuy();
         		String origin=bean.getOrigin();
         		String stock=bean.getStock();
         		String option=bean.getOpt();
         		String proAdd=bean.getProAdd();
         		String s_adr=bean.getS_adr();
         		String mainImg=bean.getMainImg();
         		String listImg=bean.getListImg();
         		String detailImg=bean.getDetailImg();
         		if(i%2==0){
         %>
        <tr>
         <%}else{ %><tr style="background:#efefef"><%} 
       
         %>
            <td><input onclick="get_chked_values()" name="chkList" type="checkbox" value="<%=vlist.get(i).getIndex()%>"></td>
            <td><%=i+1 %></td>
            <td style="width:120px;">
            <div id="adminListImg">
               <img src="../product/newShopImg/<%=mainImg %>" width="100px" height="100">
            </div>
         </td>
         <td class="three">
         <p style="font-size:18px; font-weight:bold;">
         <%=title %>
         </p>
         <p style="color:#ff4800"><%=account %></p>
         <p style="color:gray"><%=option %></p>
         </td>
            <td><%=Seller %></td>
            <td><%=price %>��</td>
            <td><%=stock %>��</td>
            <td style="width:90px;">
                 <a href="admin_update.jsp?index=<%=idx%>">
                <input type="button" value="����" name="">
                </a>
                <a href="admin_delete.jsp?index=<%=idx%>">
                 <input type="button" value="����" name="" style="margin-top:10px;">
                 </a>
            </td>
         </tr>
         <%} %>
             
      </table>
      
      			<div id="last_button">
      			<a href="admin_pro.jsp">
					<input type="button" value="��ǰ���" style="height:30px;" onclick="proAddCheck()">
				</a>	
					<input type="button" onclick="go_modify()"  value="��     ��" style="height:30px; margin-left:10px;">	
					<input name="index" type="button" onclick="go_delete()"  value="��     ��" style="height:30px; margin-left:10px;">	
				<form name="modif" action="admin_update.jsp">
					<input name="index" id="modi" type="hidden">
				</form>
				<form name="delf" action="admin_delete.jsp">
					<input name="index" id="del" type="hidden">
				</form>
			</div>
      
     </div>
     
     
        <div id="footerWrap_">
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
   </div>
     
     
   </body>
</html>