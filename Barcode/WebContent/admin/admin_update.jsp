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
		
		int index = Integer.parseInt(request.getParameter("index"));
 		bean = shop_mgr.shoppingAdminSelect(index);

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
%>

<!doctype>
<html>
<head>
<meta charset="utf-8">
<title></title>
<link rel="stylesheet" href="../css/admin_style.css" type="text/css">
<link rel="stylesheet" href="../css/gnb_style.css" type="text/css">
<script src="https://code.jquery.com/jquery-1.7.0.min.js"></script>
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
	function proAddCheck() {
		p = document.proAdd_;
		/* if(p.Seller.value.length==0){
			alert("판매자 아이디를 입력하세요.");
			p.Seller.focus();
			return;
		}
		if(p.title.value.length==0){
			alert("상품명을 입력하세요.");
			p.title.focus();
			return;
		}
		if(p.price.value.length==0){
			alert("가격을 입력하세요.");
			p.price.focus();
			return;
		}
		if(p.account.value.length==0){
			alert("상세설명을 입력하세요.");
			p.account.focus();
			return;
		}
		if(p.shipAccount.value.length==0){
			alert("배송비를 입력하세요.");
			p.shipAccount.focus();
			return;
		}
		if(p.shipDate.value.length==0){
			alert("배송날짜를 입력하세요.");
			p.shipDate.focus();
			return;
		}
		if(p.maxBuy.value.length==0){
			alert("최대구매수량을 입력하세요.");
			p.maxBuy.focus();
			return;
		}
		if(p.origin.value.length==0){
			alert("원산지를 입력하세요.");
			p.origin.focus();
			return;
		}
		if(p.stock.value.length==0){
			alert("재고수를 입력하세요.");
			p.stock.focus();
			return;
		}
		if(p.option.value.length==0){
			alert("옵션을 입력하세요.");
			p.option.focus();
			return;
		}
		if(p.proAdd.value.length==0){
			alert("추가상품을 입력하세요.");
			p.proAdd.focus();
			return;
		}
		if(p.s_adr.value.length==0){
			alert("판매자 주소를 입력하세요.");
			p.s_adr.focus();
			return;
		} 
		if(p.mainImg.value==0){
			alert(p.mainImg.value);
			alert("메인이미지를 등록하세요.");
			return;
		}
		if(p.listImg.value.length==0){
			alert("리스트 이미지를 등록하세요.");
			p.listImg.focus();
			return;
		}
		if(p.detailImg.value.length==0){
			alert("상세이미지를 등록하세요.");
			p.detailImg.focus();
			return;
		} */
		p.submit();
	}
	
</script>
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
					<div id="subject"><p><span>상품</span> &nbsp;등록 Corner</p></div>
					</a>
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
			
			<div id="nav">
				<div id="wrap2">
					<div id="navLeft">
						<ul>
							<li><a href="product_new.jsp">중고세상</a></li><li class="ulul" id="aaa">|</li>
							<li class="ulul"><a href="product_used.jsp">술집맛집</a></li><li class="ulul" id="aaa">|</li>
							<li class="ulul"><a href="product_review.jsp">영화나라</a></li><li class="ulul" id="aaa">|</li>
							<li class="ulul"><a href="product_notice.jsp">공지사항</a></li><li class="ulul" id="aaa">|</li>
							<li class="ulul"><a href="product_QnA.jsp">Q&A </a></li>
						</ul>
					</div>
					<div id="navRight">
						<table border="0">
							<tr>
								<td><a href="basket.jsp">장바구니</a></td>
							</tr>
						</table>
					</div>
				</div>
				
			</div>
		</div>
</div>

	<div id="title_admin">
			<div id="space_box"></div>
			<h2>상품등록</h2>
			<p>중고 &gt; 패션 &gt; 뷰티/네일</p>
	</div>
	<div id="admin_reg">
	<form name="proAdd_" method="post" action="admin_updateProc.jsp?index=<%=index%>" enctype="multipart/form-data">
		 <table width="867" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff; text-indent:10px;">
			<tr>
				<td colspan="6" style="height:80px;">
				<p>판매자 아이디</p>
				<input type="text" name="Seller" value="<%=Seller %>" placeholder=" 판매자아이디" style="margin-left:10px; float:left;" readonly="readonly">
				<p style="float:right; margin-top:-15px; margin-right:30px; color:lightgray; font-size:18px;">
				바코드를 이용해주셔서 항상 감사드립니다 :-)
				</p>
				</td>
				
			</tr>
			
			<tr>
				<td colspan="4" style="height:80px;">
					<p>상품명</p>
					<input type="text" name="title" value="<%=title %>" placeholder=" 상품명" style="width:525px; margin-left:10px;">
				</td>
				
				<td colspan="2" style="height:80px;">
					<p>상품가격</p>
					<input type="text" name="price" value="<%=price %>" placeholder=" 숫자로만 입력하세요." style="width:250px; margin-left:10px;">
					<span style="font-weight:bold; font-size:14px; color:gray; margin-left:-5px;">원</span>
				</td>
			</tr>
						
			<tr>
				<td colspan="6" style="height:80px;">
				<p>상품간략설명</p>
					<input type="text" name="account" value="<%=account %>" placeholder=" 36자 내로 적어주세요." style="width:525px; height:30px;margin-left:10px;">
				</td>
			</tr>
			
			<tr>
				<td width="60" style="background:#efefef"><p>배송비</p></td>
				<td><input type="text" name="shipAccount" value="<%=shipAccount %>" placeholder=" 36자 내로 적어주세요."style="width:200px;"></td>
				<td width="60" style="text-align:center; text-indent:0;background:#efefef"><p>배송일</p></td>
					<td>
						<select name="shipDate" style="width:200px;height:30px; font-family: 'Nanum Gothic', son-serif; ">
							<option value="">선택하세요.</option>
							<option value="now">당일배송</option>
							<option value="day">2~3일</option>
							<option value="week">1~2주</option>
							<option value="month">한달이상</option>
						</select>
					</td>
					
				<td rowspan="2" width="100" style="text-align:center; text-indent:0;background:#efefef"><p>최대구매수량</p></td>
				<td rowspan="2"><input type="text" name="maxBuy" value="<%=maxBuy %>" placeholder=" 숫자만 적어주세요." style="width:180;"></td>
			</tr>
			
			<tr>
				<td style="background:#efefef"><p>원산지</p></td>
					<td>
						<select name="origin" style="width:200px;height:30px; font-family: 'Nanum Gothic', son-serif; ">
							<option value="">선택하세요.</option>
							<option value="korea">대한민국</option>
							<option value="china">중국</option>
							<option value="japan">일본</option>
							<option value="USA">미국</option>
						</select>
					</td>
				
				<td style="text-align:center; text-indent:0;background:#efefef"><p>재고</p></td>
				<td><input type="text" name="stock" value="<%=stock %>" placeholder=" 숫자만 적어주세요."style="width:200px;"></td>
			</tr>
			<tr>
				<td colspan="6" style="height:80px;">
				<p>옵션</p>
					<input type="text" name="opt" value="<%=option %>" placeholder=" 쉼표',' 단위로 저장됩니다. 띄어쓰기를 하시면 입력이 안될 수 도 있습니다." style="width:98%;margin-left:10px;">
				</td>
			</tr>
		
			<tr>
				<td colspan="6" style="height:80px;">
				<p>추가구성</p>
					<input type="text" name="proAdd" value="<%=proAdd %>" placeholder=" 쉼표',' 단위로 저장됩니다. 띄어쓰기를 하시면 입력이 안될 수 도 있습니다."style="width:98%;margin-left:10px;">
				</td>
			</tr>
		
			<tr>
				<td colspan="6" style="height:80px;">
				<p style="float:left;">판매자 주소</p><input type="checkbox"  value="" style="display:inline;float:left; margin-left:20px;cursor:pointer">
				<p style="float:left; margin-left:-15px;font-size:12px; font-weight:normal; color:gray">회원정보와 동일</p>
					<input type="text" name="s_adr" value="<%=s_adr%>" placeholder=" 회원정보와 동일하다면 상단의 check box를 클릭하세요 :-)"style="width:98%;">
				</td>
			</tr>
			
		</table>
		 <table width="867" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff; text-indent:10px; margin-top:10px;">
			<tr>
				<td style="height:80px;">
				<p>메인이미지</p>
				<script type="text/javascript">
				function eventOccur(evEle, evType){
				 if (evEle.fireEvent) {
				 evEle.fireEvent('on' + evType);
				 } else {
				 //MouseEvents가 포인트 그냥 Events는 안됨~ ??
				 var mouseEvent = document.createEvent('MouseEvents');
				 /* API문서 initEvent(type,bubbles,cancelable) */
				 mouseEvent.initEvent(evType, true, false);
				 var transCheck = evEle.dispatchEvent(mouseEvent);
				 if (!transCheck) {
				 //만약 이벤트에 실패했다면
				 console.log("클릭 이벤트 발생 실패!");
					 }
				 }
				}
				/** 대체버튼 클릭시 강제 이벤트 발생**/
				function check(){
				 eventOccur(document.getElementById('orgFile'),'click');
				 /* alert(orgFile.value); 이벤트 처리가 끝나지 않은 타이밍이라 값 확인 안됨! 시간차 문제 */
				}
			</script>
				<input type="file" multiple id="orgFile" class="upload" name="mainImg" value="11" style="margin-left:20px;">
				<!-- 파일을 첨부하세요. (작업사이즈 : 400*400 px) -->
				</td>
			</tr>
			
			<tr>
				<td style="height:450px;">
					<div id="main_img">
						<%
						if(mainImg==null){ 
						%>
						<p>아직 지정된 이미지가 존재하지 않습니다.</p>
						<%}else{ %>
						<img src="../product/newShopImg/<%=mainImg %>" style="margin-left:-10px;" width="100%">
						<%} %>
					</div>
				</td>
			</tr>
			</table>
<script>
	var upload = $('#orgFile');
	var holder = $('#main_img');
	upload.change(function(e){
	  e.preventDefault();
	  var file = upload[0].files[0],
	      reader = new FileReader();
	  reader.onload = function (event) {
	    var img = new Image();
	    img.src = event.target.result;
	    // note: no onload required since we've got the dataurl...I think! :)
	    if (img.width > 560) { // holder width
	      img.width = 560;
	    }
	    holder.empty();
	    holder.width('560px');
	    holder.height('100%');
	    holder.append(img);
	  };
	  reader.readAsDataURL(file);
	  return false;
	});
</script>
			
			<table width="867" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff; text-indent:10px; margin-top:10px;">
				<tr>
					<td style="height:80px;">
					<p>리스트이미지</p>
					<input type="text" name="listImg" value="" placeholder=" 파일을 첨부하세요. (작업사이즈 : 328*229 px)" style="width:85%;margin-left:10px;">
					<input type="button" value="파일첨부" style="height:30px;">	
					</td>
				</tr>
				
				<tr>
					<td style="height:279px;">
						<div id="list_img">
							<p>아직 지정된 이미지가 존재하지 않습니다.</p>
						</div>
					</td>
				</tr>
			</table>
			
			<table width="867" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff; text-indent:10px; margin-top:10px;">
			<tr>
				<td style="height:80px;">
				<p>상세이미지</p>
				<input type="text" name="detailImg" value="" placeholder=" 파일을 첨부하세요. (작업사이즈 : 1100*auto px)" style="width:85%;margin-left:10px;">
				<input type="button" value="파일첨부" style="height:30px;">	
				</td>
			</tr>
			
			<tr>
				<td style="height:570px">
					<div id="detail_img">
						<p>아직 지정된 이미지가 존재하지 않습니다.</p>
					</div>
				</td>
			</tr>
			</table>
			
			<div id="last_button">
				<input type="button" value="상품등록" style="height:30px;" onclick="proAddCheck()">
				<input type="button" value="다시작성" style="height:30px;">	
				<input type="button" value="취     소" style="height:30px;">	
			</div>
		</form>
	</div>
	<div id="footerWrap_">
		<div id="footer_">
		<div id="footerWrap">
			<p class="a_">공지사항</p>
			<p class="a__">서비스 전체보기</p>
		</div>
	</div>
	
	
	<div id="footer">
		<p class="Extra">Creators</p>
		
		<ul>
			<li>크리에이터</li><li class="aaa">|</li>
			<li>스몰비즈니스</li>
		</ul>
		
		<p class="Extra">Partners</p>
		<ul>
			<li>이성수</li><li class="aaa">|</li>
			<li>김민정</li><li class="aaa">|</li>
			<li>박준영</li><li class="aaa">|</li>
			<li>육동주</li><li class="aaa">|</li>
			<li>조성수</li>
		</ul>
		
		<p class="Extra">Developers</p>
		<ul>
			<li>바코드 개발센터</li><li class="aaa">|</li>
			<li>오픈API</li><li class="aaa">|</li>
			<li>오픈소스</li><li class="aaa">|</li>
			<li>바코드 D2</li><li class="aaa">|</li>
			<li>바코드 랩스</li>
		</ul>
		
		<div id="ul_except">
			<ul>
				<li style="padding:0;">회사소개</li><li class="aaa">|</li>
				<li>인재채용</li><li class="aaa">|</li>
				<li>제휴제안</li><li class="aaa">|</li>
				<li>이용약관</li><li class="aaa">|</li>
				<li>개인정보처리방침</li><li class="aaa">|</li>
				<li>청소년보호정책</li><li class="aaa">|</li>
				<li>바코드정책</li><li class="aaa">|</li>
				<li>고객센터</li><li class="aaa">|</li>
				<li>ⓒBarcode Crop.</li>
			</ul>
		</div>
	</div>
	</div>
	d
</body>
</html>