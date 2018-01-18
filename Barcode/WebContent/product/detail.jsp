<%-- <%@page import="jdk.nashorn.internal.parser.TokenStream"%> --%>
<%@page import="java.util.HashMap"%>
<%@page import="product.ShoppingBean"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="product.ReviewBean"%>
<%@page import="java.util.Vector"%>
<%@page import="java.util.StringTokenizer"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="mgr_shop" class="product.ShoppingMgr"/>
<jsp:useBean id="bean" class="product.ShoppingBean"/>
<jsp:useBean id="mgr_review" class="product.ReviewMgr"/>
<jsp:useBean id="bean_re" class="product.ReviewBean"/>
<jsp:useBean id="mgr" class="member.MemberMgr"/>
<%
		String idx=request.getParameter("index");
		
		int maxCookid = 5;
		Cookie [] ck = request.getCookies();
		if (ck != null) {
			int countc=0;
		    for (int i=ck.length-1;i>=0;i--) {
		        if (ck[i].getName().indexOf("sname") != -1) {
		            countc++;
		            if(countc>maxCookid){
		            	ck[i].setMaxAge(0);
		            	response.addCookie(ck[i]);
		            }
		        }
		    }
		}

	    Calendar cal = Calendar.getInstance();

        Cookie c = new Cookie("sname"+cal.getTimeInMillis(),idx);
        c.setMaxAge(60*60*24);
        response.addCookie(c);
        
        int index = Integer.parseInt(idx);	
		bean = mgr_shop.getShopping(index);
		String title = bean.getTitle();
		String account = bean.getAccount();
		String stock = bean.getStock();
		String price = bean.getPrice();
		String shipAccount = bean.getShipAccount();
		String shipDate = bean.getShipDate();
		String origin = bean.getOrigin();
		String option = bean.getOpt();
		String proAdd = bean.getProAdd();
		int maxBuy = bean.getMaxBuy();
		String mainImg = bean.getMainImg();
		String listImg = bean.getListImg();
		String detailImg = bean.getDetailImg();
		double proStar = bean.getProStar();
		int reviewNum = bean.getReviewNum();
		int likeNum = bean.getLikeNum();
		String Seller = bean.getSeller();
		
		Vector<ReviewBean> vlist = mgr_review.getReviewList(index);
		
		request.setCharacterEncoding("euc-kr");
		String id = (String)session.getAttribute("idKey");	
		String email = mgr.getMember(id).getEmail();
		String name = mgr.getMember(id).getName();
%>

<!doctype>
<html>
<meta charset="utf-8">
<head>
	<title>상품코너</title>
		<link rel="stylesheet" href="../css/common.css" type="text/css">
	<link rel="stylesheet" href="../css/default.css" type="text/css">
	<link rel="stylesheet" href="../css/detail_style.css" type="text/css">
	<link rel="stylesheet" href="../css/gnb_style.css" type="text/css">
	<script src="http://code.jquery.com/jquery-1.7.0.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
	<style>
	#getMainImg img{width:400px; height:400px;}
	</style>
	
</head>

<body id="w_rap"  onscroll="myFunction()"  onload="nextImg()">
<div id="all">
		<div id="header_">
			<div id="header">
				<div id="wrap2">
					<div id="logo" onclick="location.href='../index.jsp'"><img src="../img/barcode_logo__.png" width=100% height=100% alt="바코드"></div>
					<div id="subject"><a href="product_home.jsp"><p><span>중고</span> &nbsp;상품 Corner</p></a></div>
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
			<div id="nav">
				<div id="wrap2">
					<div id="navLeft">
						<ul>
							<li><a href="product_used.jsp">중고세상</a></li><li class="ulul" id="aaa">|</li>
							<li class="ulul"><a href="product_best100.jsp">베스트100</a></li><li class="ulul" id="aaa">|</li>
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


<div id="wrap_">
	<div id="wrap2" >
		<div id="search">
			<div id="search_box">
				<input type="text" style="width:420px; height:30px; margin:5px 0px 0px 10px; border:0px; font-size:16px;" align="center"
				placeholder="검색해보세용!">
				<div id="search_button">
					<img src="../img/search_icon.png" width="45px" height="45px">
				</div>
			</div>
		</div>
	</div>
</div>

<!-- detail_header -->

<script type="text/javascript">
 function pro_submit1(){
	 document.getElementById("hiddenMainImg").value=
		 document.getElementById("getMainImg").innerHTML;
	 document.getElementById("hiddenSeller").value=
		 document.getElementById("getSeller").innerHTML;
	 document.getElementById("hiddenTitle").value=
		 document.getElementById("getTitle").innerHTML;
	 document.getElementById("hiddenOpt").value=
		 document.getElementById("getOpt").innerHTML;
	 document.getElementById("hiddenProAdd").value=
		 document.getElementById("getProAdd").innerHTML;
	 document.getElementById("hiddenPrice").value=
		 document.getElementById("getPrice").innerHTML;
	 document.getElementById("hiddenShipAccount").value=
		 document.getElementById("getShipAccount").innerHTML;
	 /* 반복해야됨 */
	 document.pro_submit.submit();
 }
 function pro_submit2(){
	 document.getElementById("hiddenEA").value=
			Number($('._total_price').html())/Number(<%=price%>);
	 document.pro_submit22.submit();
 }
</script>

<div id ="wrap3">
	<div id="detail_header">
		<div id="detail_header_">
			<table width="1080px" height="180px" cellpadding="5" cellspacing="0" border="0" align="center"
								style="border-collapse:collapse; border:none; background:#fff;
								margin-left:10px; margin-top:10px; float:left; text-align:left; font-size:14px;">
				<tr>
					<td colspan="5" height="50px" style="font-weight:bold; font-size:18px; border-bottom:1px lightgray solid;">
						[<span id="getTitle"><%=title %></span>] <%=account %>
					</td>
					<td  height="36px"style="font-size:16px; font-weight:bold; text-align:right; margin-right:30px; border-bottom:1px lightgray solid;">
						<p style="margin-right:10px;">[<sapn id="getSeller"><%=Seller %></sapn>] / 재고:<%=stock %>개</p>
					</td>
				</tr>
				
				<tr>
					<td colspan="5" height="30px;"></td>
					<td   height="36px" width="270px;"></td>
				</tr>
				
				<tr>
					<td rowspan="9" width="400px" height="400px" id="getMainImg">
						<img src="./newShopImg/<%=mainImg %>">
					</td>
					<td   height="36px" width="30px;" rowspan="9" style="border-right:1px lightgray solid;"></td>
					<td   height="36px" width="30px;"></td>
					<td   colspan="2" height="60px">
						<p style="font-size:18px; font-weight:bold;">가격 : 
						<span style="font-size:30px; color:#ff4800;" id="getPrice"><%=price %></span>
						<span style="color:#ff4800">원</span></p>
					</td>
					<td   height="36px" width="270px;"></td>
				</tr>
				
				<tr>
					<td   height="36px" width="30px;"></td>
					<td colspan="3" height="120px" rowspan="3" style="border-bottom:1px lightgray dotted">
						<p style="line-height:25px;">배송비 : <span id="getShipAccount"><%=shipAccount %></span>원</p>
						<p style="line-height:25px;">배송일 : <span><%=shipDate %>일 소요</span></p>
						<p style="line-height:25px;">원산지 : <span><%=origin %></span></p>
					</td>
				</tr>
		
				<tr>
					<td   height="36px" width="30px;"></td>
				</tr>
				
				<tr>
					<td   height="36px" width="30px;"></td>
				</tr>
					
				<tr>
					<td   height="36px" width="30px;"></td>
					<td colspan="3" rowspan="3" height="120px">
						<p style="margin-top:10px;">옵션</p>
						<select style="margin:10px 0px 10px 0px; width:300px; height:30px;">
							<option>옵션을 선택하시오.</option>
							<% StringTokenizer opt=new StringTokenizer(option,",");
									for(int i=0;opt.hasMoreElements();i++){
										String opt1=opt.nextToken();
							%>
								<option id="getOpt" value="<%=opt1 %>"><%=opt1%></option>
							<%}%>
						</select>
						
						<p>추가구성</p>
						<select style="margin:10px 0px 10px 0px; width:300px; height:30px;">
							<option>추가구성을 선택하시오.</option>
							<%if(proAdd!=null){StringTokenizer prA = new StringTokenizer(proAdd,",");
									for(int x=0;prA.hasMoreElements();x++){
										String opt2=prA.nextToken();
							%>
							<option id="getProAdd" value="<%=opt2 %>"><%=opt2 %></option>
							<%}} %>
						</select>
					</td>
				</tr>
				
				<tr>
					<td height="36px" width="30px;"></td>
				</tr>
				
				<tr>
					<td height="36px" width="30px;"></td>
				</tr>
				
				<tr>
					<td height="36px" width="30px;"></td>
					<td colspan="3" height="50px"style="border-top:1px lightgray dotted;padding-right: 20px;">
						<div class="opt_price">
							<ul class="_add_option_product_area">
								<li class="dummy" style="height:30px;margin:10px 0;border-bottom:1px lightgray dotted;display:none;">
									<em class="dummy_title">Product Title</em>
									<div style=" float: right;">
										<input id="OptNum" type="text" maxlength="3" style="border:1px solid #c8c8c8" value="1" onkeydown="return showKeyCode(event)">
										<span class="ea">
											<a onclick="numCh(1,this)" title="수량 올림" class=""><img src="./newShopImg/up.png" height="5px"></a>
											<a onclick="numCh(-1,this)" title="수량 내림" class=""><img src="./newShopImg/down.png" height="5px"></a>
										</span>
										<span class="price"><span class="dummy_price">0</span>원</span>
										<a onclick="dellist($(this).parent().parent())" title="삭제" class=""><img src="./newShopImg/del.png" height="10px"></a>
									</div>
								</li>
							</ul>
						</div>
						<div class="sum_total" style=" margin-bottom: 10px;text-align: right;"><em>총 상품금액</em>
							<strong class="fc_point"><span class="_total_price">0</span><span class="won">원</span></strong>
						</div>
					</td>
				</tr>
				<tr>
					<td height="36px" width="30px;"></td>
					<td colspan="2" height="50px"style="border-top:1px lightgray dotted;">
						<p>최대구매수량 : <%=maxBuy %>개&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;★★★★☆ <%=proStar %></p>
					</td>
					
					<!--별점 / 상품리뷰 (건)/ 좋아요 / 공유 -->
					<td  height="36px" width="270px;">
						<table width="300px" height="20px" cellpadding="5" cellspacing="0" border="0" align="center"
									style="border-collapse:collapse; border:none; background:#fff;
									 float:left; text-align:left; font-size:12px; text-align:center;">
							<tr>
										
								<td width="90" style="border-right:1px lightgray solid">
									<p>리뷰 <span><%=reviewNum %> 건</span></p>
								</td>
								<td width="90">
									<p>
										<a href="#">
										♡ <span><%=likeNum %></span>
										</a>
									</p>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				

			</table>
		
			<div id="button_sns">
				<div id="insta"><a href="#"><img src="../img/insta.png"></a></div>
				<div id="fb"><a href="#"><img src="../img/fb.png"></a></div>
			</div>
<form name="pro_submit" method="post" action="buy_info.jsp">
			<div id="detail_button">
						<input type="hidden" value="<%=mainImg%>" name="pro_MainImg" id="hiddenMainImg">
						<input type="hidden" value="<%=Seller%>"  name="pro_Seller" id="hiddenSeller">
						<input type="hidden" value="<%=title%>"  name="pro_Title" id="hiddenTitle">
						<input type="hidden" value="<%=opt%>" name="pro_Opt" id="hiddenOpt">
						<input type="hidden" value="<%=proAdd%>" name="pro_ProAdd" id="hiddenProAdd">
						<input type="hidden" value="<%=price%>" name="pro_Price" id="hiddenPrice">
						<input type="hidden" value="<%=shipAccount%>" name="pro_ShipAccount" id="hiddenShipAccount">
</form>
<form name="pro_submit22" method="post" action="cartProc.jsp">
						<input type="hidden" value="<%=index%>"  name="pronum">
						<input type="hidden" value="1" name="ea" id="hiddenEA">
						<input type="hidden" value="<%=id%>" name="userid">
</form>
				<a onclick="pro_submit1()">
					<div id="buy_">
						<p>구매하기</p>
					</div>
				</a>
				<a onclick="pro_submit2()">
					<div id="detail_basket">
						<p>장바구니</p>
					</div>
				</a>
			</div>
		
		</div><!-- detail_header_ -->
	</div><!-- detail_header -->
</div><!-- wrap3 -->
<!-- detail_slider -->

<script type="text/javascript">
	function dellist(a){
		$(a).remove();
	}
	
	function numCh(i,a){
		$(a).parent().siblings('input').val((Number($(a).parent().siblings('input').val())+Number(i)));
		if(Number($(a).parent().siblings('input').val())<1) $(a).parent().siblings('input').val(1);
		$(a).parent().siblings('.price').children('.dummy_price').html($(a).parent().siblings('input').val()*<%=price%>);
		var total = 0;
		for(var i=1;i<$('.dummy_price').length;i++){
			total=total+Number($('.dummy_price:eq('+i+')').html());
		}
		$('._total_price').html(total);
	}
	
	$("#OptNum").bind("change paste keyup", function() {
	   if(Number($(this).val())<1)
		   $(this).val(1); 
		$(this).siblings('.price').children('.dummy_price').html($(this).val()*<%=price%>);
		var total = 0;
		for(var i=1;i<$('.dummy_price').length;i++){
			total=total+Number($('.dummy_price:eq('+i+')').html());
		}
		$('._total_price').html(total);
	});
	
	function showKeyCode(event) {
		event = event || window.event;
		var keyID = (event.which) ? event.which : event.keyCode;
		if( ( keyID >=48 && keyID <= 57 ) || ( keyID >=96 && keyID <= 105 ) )
		{
			return;
		}
		else
		{
			return false;
		}
	}
	var ad = $('._add_option_product_area');
	$('select').on('change', function() {
		var total = 0;
		for(var i=1;i<$('.dummy_price').length;i++){
			total=total+Number($('.dummy_price:eq('+i+')').html());
		}
		$('._total_price').html(total);
		if(this.value.indexOf("선택") == -1){
			var d = $('.dummy').clone(true);
			d.find('.dummy_title').html(this.value);
			d.find('.dummy_price').html(<%=price %>);
			ad.append(d.removeClass('dummy').attr('class', 'Opt').show());
		}
	})
	
       var pos = 0;
       var a=0;
       var term = 31;
     
	 function aa(){
         
         var imgNext = document.getElementById("detail_slider_");
         var id = setInterval(frame1, 5);
         
         function frame1(){
            clearInterval(sliderAuto);
            
               if(pos < term*0 && pos > term*-1){
                   pos++;
                   imgNext.style.left =pos*5+'px';
                      
                   if(pos==0){
                    clearInterval(id);
                    } //0이되면 멈춰라
               }// 0 보단 작고 -200보단 클때 왼쪽으로 이동해라.
               
               else if (pos <= term*-1 && pos > term*-2) {
                   pos++;
                   imgNext.style.left =pos*5+'px';
            
                   if(pos== term*-1){
                       clearInterval(id);
                      
                         }   //   function frame1. else if. if
                     }

               else if (pos <= term*-2 && pos > term*-3) {
                   pos++;
                   imgNext.style.left =pos*5+'px';
                
                   if(pos== term*-2){
                       clearInterval(id);
                      
                         }   //   function frame1. else if. if
                     }

               else if (pos <= term*-3) {
                   pos++;
                   imgNext.style.left =pos*5+'px';
            
                   if(pos== term*-3){
                       clearInterval(id);
                      
                         }   //   function frame1. else if. if
                     }
              
               }   //   function frame1()
               
            setInterval(sliderAuto);
            
            }        

	   function bb(){
             var imgNext = document.getElementById("detail_slider_");
             var id = setInterval(frame1, 5);
                function frame1(){
            //clearInterval(sliderAuto);
                   if(pos > 0){
                       pos--;
                       imgNext.style.left =pos*5+'px';
                       if(pos==0){
                           clearInterval(id);
                       }
                   }
                   else if (pos > term*-1) {
                       pos--;
                       imgNext.style.left =pos*5+'px';
                       if(pos== term*-1){
                           clearInterval(id);
                       }
                   }
                   else if (pos > term*-2) {
                       pos--;
                       imgNext.style.left =pos*5+'px';
                       /* console.log(a);
                       console.log(pos);
                       console.log("b"); */
                       if(pos==term*-2){
                           clearInterval(id);
                       }
                   }
                   else if (pos > term*-3) {
                       pos--;
                       imgNext.style.left =pos*5+'px';
          
                       if(pos==term*-3){
                           clearInterval(id);
                       }
                   }
                   else if (pos > term*-4) {
                       pos--;
                       imgNext.style.left =pos*5+'px';
                       if(pos==term*-4){
                           clearInterval(id);
                       }
                   }
             }
          setInterval(sliderAuto);
      }
      function nextImg(){
             sliderAuto = setInterval(bb, 2036);
      }
</script>

<div id="wrap" style="padding-top:20px;">
	<div id="wrap2">
		<div id="detail_slider">판매자의 다른 상품		
			<div id="button_slider">
				<div id="next_button" onclick="bb()"></div>
				<div id="pre_button" onclick="aa()"></div>
			</div>
			<div id="detail_slider_">	
<%Vector<ShoppingBean> slist = mgr_shop.getShoppingList(Seller); 
for(int i=0;i<slist.size();i++){%>	
				<div id="product_box"><a href="./detail.jsp?index=<%=slist.get(i).getIndex()%>"><img width=100% src="./newShopImg/<%=slist.get(i).getMainImg()%>"></a></div>
<%} %>
			</div>
		</div><!-- detail_slider -->
	
		<div id="nav_2">
			<ul>
				<li><a href="#detail_p_info">상품정보</a></li><li id="navSpace" class="nav_2_ul">|</li>
				<li class="nav_2_ul"><a href="#detail_review">상품리뷰</a></li><li id="navSpace" class="nav_2_ul">|</li>
				<li class="nav_2_ul"><a href="#detail_QnA">상품 QnA</a></li><li id="navSpace" class="nav_2_ul">|</li>
				<li class="nav_2_ul"><a href="#detail_s_info">판매자 정보</a></li>
			</ul>
		</div><!-- nav_2 -->


	<script type="text/javascript">
		function myFunction(){
		var elmnt = document.getElementById("w_rap");
		var y = elmnt.scrollTop;
			if(y<945){
				document.getElementById("nav_2").className = "unfixed";
			}else{
				document.getElementById("nav_2").className = "fixed";
			}
		}
	</script>
	
<!-- contents -->
	<div id="detail_img">
		<div id="detail_p_info">
			<img src="./<%=detailImg %>">
		</div>
	</div><!-- detail_img -->
	
	<div id="detail_review">
		<div id="detail_QnA_header">
			<div id="spaceBox"></div>
			<h1>Review</h1>
			<h3>현재 상품에 대한 리뷰</h3>
			<p>저희 제품의 만족도는 어떠셨나요? ÷) 
				<span style="font-weight:900">평점을 남겨주세요!</span>
			</p>
		</div>
		
		<div id="detail_QnA_contents">
			<table id="bl_table" border="0" cellpadding="0" cellspacing="0" width="95%" style="margin:0 auto;margin-top:30px; table-layout:fixed">
				<tbody>
					<tr>
						<th id="bl_title_no" class="bl_title_bl_no" width="85">NO.</th>
						<th class="bl_title_bl_icon" width="27">&nbsp;</th>
						<th class="bl_title_bl_product" width="84">Product</th>
						<th class="bl_title_bl_subject" width="80">CONTENT</th>
						<th class="bl_title_bl_star" width="144">STAR</th>
						<th class="bl_title_bl_name" width="139">NAME</th>
						<th class="bl_title_bl_date" width="80">DATE</th>
						<th id="bl_title_hits" class="bl_title_bl_hits" width="77">HITS</th>
					</tr>
					<!-- INLINE NOTICE -->
	
					<tr class="bl_noticeline">
						<td class="bl_no">:::</td>
						<td class="bl_icon"><img src="../img/b2_notice.gif"></td>
						<td class="  lt" colspan="6">제품/배송 등의 문의사항을 남겨주세요! 전화보다 신속하게 답변드리도록 하겠습니다!</td>
					</tr>
					<!-- LIST REPEAT -->
	
					<tr class="bl_noticeline">
						<td class="bl_no">:::</td>
						<td class="bl_icon"><img src="../img/b2_notice.gif"></td>
						<td class="bl_subject_lt" colspan="2"><img src="../img/b2_head.gif" style="margin-right:5px;" align="absmiddle"><span class="BoardBrandName"></span><a href="">교환/반품 시 꼭 확인해 주세요!</a>&nbsp;&nbsp;</td>
						<td class="bl_star">★★★★★</td>
						<td class="bl_name"><div style="padding-left:2px; padding-right:2px;"><img src="../img/b2_adminimg.gif" border="0"></div></td>
						<td class="bl_date"><span class="bl_oldcontent">2016/06/02</span></td>
						<td class="bl_hits">1844</td>
					</tr>
				<% for(int i=0;i<vlist.size();i++) {
					bean_re = vlist.get(i);
					int no = bean_re.getNo();
					String pro_title = bean_re.getPro_title();
					String rTitle = bean_re.getTitle();
					double rStar = bean_re.getStar();
					String rName = bean_re.getName();
					String rDate = bean_re.getDate();
					int rView = bean_re.getView();
					String rImg = bean_re.getImg();
					String rContent = bean_re.getContent();
				%>
						<tr onclick="reView('tr<%=i%>')" class="bl_evenline">
							<td class="bl_no"><%=i+1 %></td>
							<td class="bl_icon"><img src="../img/b2_lock.gif" border="0"></td>
							<td class=" "></td>
							<td class="bl_subject_lt" colspan="1" width="276">
								<img src="../img/b2_head.gif" style="margin-right:5px;" align="absmiddle">
									<span class="BoardBrandName"></span>
									<a style="cursor:pointer;" onclick="reView()"><%=rTitle %></a>&nbsp;&nbsp;
									<img src="../img/b2_new.gif" border="0" align="absmiddle"></td>
							<td class="bl_star"><%=rStar %></td>
							<td class="bl_name"><div style="padding-left:2px; padding-right:2px;"><%=rName %></div></td>
							<td class="bl_date"><span class="bl_newcontent"><%=rDate %></span></td>
							<td class="bl_hits"><%=rView %></td>
						</tr>
						<tr id="tr<%=i %>" style="display:none">
							<th style="background:#efefef; border-bottom:1px lightgray solid"><p>[<%=pro_title %>]<br/> 리뷰작성</p></th>
							<td colspan="2" id="review_img" width="700px" style=" border-bottom:1px lightgray solid">
								<!--<img src="" width="500px" height="500px">-->
							</td>
							<td colspan="5" style="border-bottom:1px lightgray solid"><!--text-->
								<p style="margin:20px; text-indent:0;line-height:1.5;">
								<%=rContent %>
								</p>
							</td>
						</tr>
					<%} %>
					</tbody>
				</table>
			</div>			
	
		<script type="text/javascript">
		function reView(a) {
		if( document.getElementById(a).style.display == "none")
		    document.getElementById(a).style.display = "";
			else
		    document.getElementById(a).style.display = "none";
		}
		</script> 
		<!-- LIST REPEAT END -->
	
	 <form name="review_wri" method="post" action="reviewProc.jsp?index=<%=index %>" enctype="multipart/form-data">		 
	 	<input type="hidden" name="idx" value="<%=idx %>">
	 	<input type="hidden" name="name" value="<%=id %>">
	 	<input type="hidden" name="pro_title" value="<%=title %>">
		<div id="review_wri">
			<div id="review_wri_">
				<table width="992px" height="150px" cellpadding="5" cellspacing="0" border="1" align="center"
								style="border-collapse:collapse; border:1px lightgray solid; background:#fff;
								text-indent:0; text-align:left; font-size:14px;">
					<tr>
						<th colspan="2" style="background:#333; color:#fff">리뷰를 작성하세용!</th>
					</tr>
					<tr>
						<th>제목</th>
						<td><input type="text" name="title" id="titi"></td>
					</tr>
					<tr>
						<th>별점</th>
						<td>
							<select name="star">
								<option value="1">★☆☆☆☆</option>
								<option value="2">★★☆☆☆</option>
								<option value="3">★★★☆☆</option>
								<option value="4">★★★★☆</option>
								<option value="5">★★★★★</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>이미지</th>
						<td><input type="file" name="img"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td>
							<textarea rows="4" cols="50" name="content"></textarea>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</form>
	<script type="text/javascript">
			function reViewWrite() {
			re = document.review_wri;
				if( document.getElementById("review_wri_").style.display == ""){
					document.getElementById("review_wri_").style.display = "block";
				}else{	
					document.getElementById("review_wri_").style.display = "";
					console.log(document.getElementById("titi").value);
					if(document.getElementById("titi").value!=null) {
						document.review_wri.submit();
					}
			    }
			}
	</script> 
				
			<div id="detail_QnA_bottom">	
				<div id="detail_QnA_nextNpre">
					<table border="0" cellpadding="0" cellspacing="0" width="150px" style="margin:0 auto;margin-top:30px;">
						<tr>
							<td width="15px" style="text-align:center;"><a href="#">1</a></td>
							<td width="15px" style="text-align:center;"><a href="#">2</a></td>
							<td width="15px" style="text-align:center;"><a href="#">3</a></td>
							<td width="15px" style="text-align:center;"><a href="#">4</a></td>
							<td width="15px" style="text-align:center;"><a href="#">5</a></td>
							<td width="15px" style="text-align:center;"><a href="#">6</a></td>
							<td width="15px" style="text-align:center;"><a href="#">7</a></td>
							<td width="15px" style="text-align:center;"><a href="#">8</a></td>
							<td width="15px" style="text-align:center;"><a href="#">9</a></td>
							<td width="15px" style="text-align:center;"><a href="#">10</a></td>
							<td><a href="#"><img src="../img/next.jpg" width="15px" height="15px"></a></td>
						</tr>
					</table>
				</div><!-- detail_QnA_nextNpre -->
			
				<div id="detail_QnA_radio">
					<input type="radio" id="detail_QnA_radioButton" name="QnA_search"><label class="radioSpace">제목</label>
					<input type="radio" id="detail_QnA_radioButton" name="QnA_search"><label class="radioSpace">이름</label>
					<input type="radio" id="detail_QnA_radioButton" name="QnA_search"><label class="radioSpace">내용</label>
					<input type="text" id="QnAsearchBox">
				</div>
			
				<div id="detail_QnA_Writer">
					<input type="button" class="button" value="작성하기" onclick="reViewWrite()">
				</div>
				

			</div><!-- detail_QnA_bottom -->
		</div><!-- detail_review -->
	<!--review-->
	
	
	
	<div id="detail_QnA">
		<div id="detail_QnA_header">
			<div id="spaceBox"></div>
			<h1>QnA</h1>
			<h3>현재 상품에 대한 문의</h3>
			<p>상품에 대해 궁금하신점이 있으시다면
			<span style="font-weight:900">친절하게 답변</span>해 드리겠습니다 ^-^</p>
		</div>
		
		<div id="detail_QnA_contents">
			<table id="bl_table" border="0" cellpadding="0" cellspacing="0" width="95%" style="margin:0 auto;margin-top:30px; table-layout:fixed">
				<tbody>
					<tr>
						<th id="bl_title_no" class="bl_title_bl_no" width="85">NO.</th>
						<th class="bl_title_bl_icon" width="27">&nbsp;</th>
						<th class="bl_title_bl_product" width="84">Product</th>
						<th class="bl_title_bl_subject" width="224" colspan="2">CONTENT</th>
						<th class="bl_title_bl_name" width="139">NAME</th>
						<th class="bl_title_bl_date" width="80">DATE</th>
						<th id="bl_title_hits" class="bl_title_bl_hits" width="77">HITS</th>
					</tr>
					<!-- INLINE NOTICE -->
							<tr class="bl_noticeline">
						<td class="bl_no">:::</td>
						<td class="bl_icon"><img src="../img/b2_notice.gif"></td>
						<td class="  lt" colspan="6">제품/배송 등의 문의사항을 남겨주세요! 전화보다 신속하게 답변드리도록 하겠습니다!</td>
					</tr>
							<!-- LIST REPEAT -->
					<tr class="bl_noticeline">
						<td class="bl_no">:::</td>
						<td class="bl_icon">
							<img src="../img/b2_notice.gif">
						</td>
						<td class="bl_subject_lt" colspan="3">
							<img src="../img/b2_head.gif" style="margin-right:5px;" align="absmiddle">
							<span class="BoardBrandName"></span>
							<a href=""> 교환/반품 시 꼭 확인해 주세요! </a>&nbsp;&nbsp;
						</td>
						<td class="bl_name">
							<div style="padding-left:2px; padding-right:2px;">
							<img src="../img/b2_adminimg.gif" border="0">
							</div>
						</td>
						<td class="bl_date">
							<span class="bl_oldcontent">2016/06/02</span>
						</td>
						<td class="bl_hits">1844</td>
					</tr>
					
					<%for(int i=0;i<10;i++) {%>
					<tr onclick="reView('tra<%=i%>')" class="bl_evenline">
						<td class="bl_no">27003</td>
						<td class="bl_icon"><img src="../img/b2_lock.gif" border="0"></td>
						<td class=" "></td>
						<td class="bl_subject_lt" colspan="2" width="276">
							<img src="../img/b2_head.gif" style="margin-right:5px;" align="absmiddle">
							<span class="BoardBrandName"></span>
							<a style="cursor:pointer;" onclick="reView()">주문취소</a>&nbsp;&nbsp;
							<img src="../img/b2_new.gif" border="0" align="absmiddle"></td>
						<td class="bl_name"><div style="padding-left:2px; padding-right:2px;">ne24285</div></td>
						<td class="bl_date"><span class="bl_newcontent">2017/12/10</span></td>
						<td class="bl_hits">0</td>
					</tr>
					
					<tr id="tra<%=i %>" style="display:none">
						<th style="background:#efefef; border-bottom:1px lightgray solid"><p>본문</p></th>
						<td colspan="2" id="review_img" width="700px" style=" border-bottom:1px lightgray solid">
							<!--<img src="" width="500px" height="500px">-->
						</td>
						<td colspan="5" style="border-bottom:1px lightgray solid"><!--text-->
							<p style="margin:20px; text-indent:0;line-height:1.5;">
							진짜 진기한씨는 엄기준씨가 해주셔야 해요ㅋㅋ저번 드라마 sbs에서 방영 되었던'유령'에서 근엄하고 무게있는 카리스마무언가 심오함과 냉철? 차가운 느낌에서 정말 인상깊었는데요만약 이번 영화에 출연 된다면 엄기준씨의 차가운 이미지 보다는 캐릭터 진기한에 맞게 해주셔도 제격일 것 같아요.
							옥황상제는 이순재나 신구가 해주면 코미디로 바뀔 것 같은 우스꽝 스런 농담도 해봅니다. 하하하하하하하하
							하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하
							</p>
						</td>
					</tr>
				<%} %>
			</table>
		</div><!-- detail_QnA_contents -->			
		
		<script type="text/javascript">
			function QnAWrite() {
			if( dument.getElementById("review_wri_q_").style.display == "none")
			    document.getElementById("review_wri_q_").style.display = "block";
				else
			    document.getElementById("review_wri_q_").style.display = "none";
			}
		</script> 
				
		<div id="detail_QnA_bottom">	ㄴ
			<div id="detail_QnA_nextNpre">
				<table border="0" cellpadding="0" cellspacing="0" width="150px" style="margin:0 auto;margin-top:30px;">
					<tr>
						<td width="15px" style="text-align:center;"><a href="#">1</a></td>
						<td width="15px" style="text-align:center;"><a href="#">2</a></td>
						<td width="15px" style="text-align:center;"><a href="#">3</a></td>
						<td width="15px" style="text-align:center;"><a href="#">4</a></td>
						<td width="15px" style="text-align:center;"><a href="#">5</a></td>
						<td width="15px" style="text-align:center;"><a href="#">6</a></td>
						<td width="15px" style="text-align:center;"><a href="#">7</a></td>
						<td width="15px" style="text-align:center;"><a href="#">8</a></td>
						<td width="15px" style="text-align:center;"><a href="#">9</a></td>
						<td width="15px" style="text-align:center;"><a href="#">10</a></td>
						<td><a href="#"><img src="../img/next.jpg" width="15px" height="15px"></a></td>
					</tr>
				</table>
			</div>
				
			<div id="detail_QnA_radio">
				<input type="radio" id="detail_QnA_radioButton" name="QnA_search"><label class="radioSpace">제목</label>
				<input type="radio" id="detail_QnA_radioButton" name="QnA_search"><label class="radioSpace">이름</label>
				<input type="radio" id="detail_QnA_radioButton" name="QnA_search"><label class="radioSpace">내용</label>
				<input type="text" id="QnAsearchBox">
			</div>
				
			<div id="detail_QnA_Writer">
				<input type="button" class="button" value="작성하기" onclick="QnAWrite()">
			</div>
		</div><!-- detail_QnA_bottom -->

		<div id="review_wri">
			<div id="review_wri_q_">
				<table width="992px" height="150px" cellpadding="5" cellspacing="0" border="1" align="center"
								style="border-collapse:collapse; border:1px lightgray solid; background:#fff;
								text-indent:0; text-align:left; font-size:14px;">
					<tr>
						<th colspan="2" style="background:#333; color:#fff">상품명</th>
					</tr>
					<tr>
						<th>제목</th>
						<td><input type="text"></td>
					</tr>
					<tr>
						<th>별점</th>
						<td>
							<select>
								<option value="1">★☆☆☆☆</option>
								<option value="2">★★☆☆☆</option>
								<option value="3">★★★☆☆</option>
								<option value="4">★★★★☆</option>
								<option value="5">★★★★★</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>이미지</th>
						<td><input type="file"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td>
							<textarea rows="4" cols="50">
							
							</textarea>
						</td>
					</tr>
				</table>
			</div>
		</div><!-- QnA작성 -->
	</div>
	<!-- detail_QnA -->
		
		
		<div id="detail_s_info">
			<table border="1">
				<caption></caption>
				<colgroup><col style="width:18%"><col style="width:32%"><col style="width:18%"><col style="width:32%"></colgroup>	
					<tbody>
						<tr>
							<th scope="row">판매자명</th>
							<td>리바트키친</td>
							<th scope="row">연락처</th>
							<td>031-1577-3332</td>
						</tr>
						<tr>
							<th scope="row">반품/교환 배송비</th>
							<td colspan="3">(구매자귀책) 0원/0원 / 초기배송비 무료시 반품배송비 부과방법 : 왕복(편도x2)</td>
						</tr>
						<tr>
							<th scope="row">반품/교환지 주소</th>
							<td colspan="3">보내실 곳: 449884 경기도 용인시 처인구 남사면 북리 54-10</td>
						</tr>
						<tr>
							<th scope="row">반품/교환 안내</th>
							<td colspan="3">시스템 주방 제품은 최종계약 후 주문생산이 진행되므로 취소/변경/환불이 불가합니다.</td>
						</tr>
						<tr height="200">
							<th scope="row">반품/교환 기준</th>
							<td colspan="3">상품 수령 후 7일 이내에 신청하실 수 있습니다. 단, 제품이 표시광고 내용과 다르거나 불량 등 계약과 다르게 이행된 경우는 제품 수령일부터 3개월 이내, 그 사실을 안 날 <span style="margin-left:20px;"></span>또는 알 수 있었던 날부터 30일이내에 교환/반품이 가능합니다
								<ul class="dot">
									<li>추가적으로 다음의 경우 해당하는 반품/교환은 신청이 불가능할 수 있습니다.
										<ul class="dash">
											<li>소비자의 책임 있는 사유로 상품 등이 멸실 또는 훼손된 경우 (단지, 상품 확인을 위한 포장 훼손 제외)</li>
											<li>소비자의 사용 또는 소비에 의해 상품 등의 가치가 현저히 감소한 경우</li>
											<li>시간의 경과에 의해 재판매가 곤란할 정도로 상품 등의 가치가 현저히 감소한 경우</li>
											<li>복제가 가능한 상품 등의 포장을 훼손한 경우</li>
											<li>소비자의 주문에 따라 개별적으로 생산되는 상품이 제작에 들어간 경우</li>
										</ul>
									</li>
								</ul>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		<!--detail_s_info 정보-->
	</div><!--QnA-->
	
	
	<div class="blank"></div>
	
</div><!-- wrap -->


<!-- scrolling -->

	<script type="text/javascript">
	(function($) {
		  var $doc = $(document);
		  var $win = $(window);
		  $.fn.scrollFollower = function (options){
		    var options = $.extend({}, $.fn.scrollFollower.defaults, options);
				if (options.pageWidth)
					var pageWidth    = parseInt(options.pageWidth);
				else
				{
					return false;
				}
		    var $layer = $(this);
		    var varType      = options.varType;
		    var pageAlign    = options.pageAlign;
		    var offset       = pageWidth/2;
		    var layerPositon = options.type;
		    var margin       = parseInt(options.margin);
		    var speed        = parseInt(options.speed);
		    var easing       = options.easing;
		    var topMargin    = parseInt(options.topMargin);
		    var minTop       = parseInt(options.minTop);
		    var marginResult = offset + margin;
		    $layer.css('z-index', options.zindex);
		    $layer.css("position","absolute");
		    if (layerPositon === 'left')
		     varType = 'right';
		    function resetXPosition()
		    {
		      if (pageAlign === 'center')
		      {
		        var $screenSize = $('body').width();
		        var halfScreenSize = $screenSize/2;
		        xPosition = halfScreenSize + marginResult;
		      }
		      else if (pageAlign === 'left')
		      {
		        varType   = 'left';
		        xPosition = pageWidth + margin;
		      }
		      $layer.css(varType, xPosition);
		    }
		    resetXPosition();
		    $layer.css('top',topMargin);
		    $win.resize(resetXPosition);
		    $win.scroll(function(){
		      $top = $doc.scrollTop();
		      if ($top > 300)
		        yPosition = $top + minTop;
		      else
		        yPosition = topMargin;
		      $layer.animate({"top":yPosition }, {duration:speed, easing:easing, queue:false});
		    });	
		  };
		  $.fn.scrollFollower.defaults = {
		    varType:'left',
		    pageAlign:'left',
		    type:'left',
		    topMargin:0,
		    minTop:0,
		    margin:0,
		    speed:400,
		    easing:'linear',
		    zindex:10
		    };
		})( jQuery );
	</script>
	
	<script type="text/javascript">
		$(document).ready(function(){
				var speed = 500; //스크롤속도
				$(".gotop").css("cursor","pointer").click(function(){
					$('body','html').animate({scrollTop:0},speed);
				});
			});
	</script>
	<script type="text/javascript">
		$(document).ready(function(){
			$('#float').scrollFollower({
				pageAlign:'center',
				pageWidth:1000,
				type:'right',
				topMargin:380,
				minTop:180,
				margin:80,
				speed:500,
				easing:'swing',
				zindex:10
			});
		});
	</script>
	
	<div id="float">
		<div id="view_product">
			<p>최근 본 상품</p>
			<div id="Recent" style="height:210px; overflow:hidden;">
<%		if (ck != null) {
		    for (int i=ck.length-1;i>=0;i--) {
		        if (ck[i].getName().indexOf("sname") != -1) {
		            %>
			<a href="detail.jsp?index=<%=ck[i].getValue()%>">
				<div id="view_product_link"><img width="100%" src="./newShopImg/<%=mgr_shop.getShopping(Integer.parseInt(ck[i].getValue())).getMainImg() %>"></div>
			</a>
<%		        } }  }%>
			</div>
			<script type="text/javascript">
				function prev(){
					console.log($('#Recent').children());
				}
			</script>
			<div id="button" class="top_space">
				<table width="40" cellpadding="5" cellspacing="0" border="1" align="center"
							style="border-collapse:collapse; border:1px lightgray solid; background:#fff;
							valign:center; margin-top:10px;">
					<tr>
						<td height="20px">
							<a href="javascript:prev()">
								<p><</p>
							</a>
						</td>
						<td height="20px">
							<a href="javascript:next()">
								<p>></p>
							</a>
						</td>
					</tr>
				</table>
			</div>			
		</div>
		
		<div id="recom_pro">
			<p>추천 상품</p>
			<%int randomIdx=((int)(mgr_shop.getShoppingList().size()*Math.random()))-1;%>
			<a href="detail.jsp?index=<%=mgr_shop.getShoppingList().get(randomIdx).getIndex()%>">
				<div id="view_product_link"><img width="100%" src="./newShopImg/<%=mgr_shop.getShoppingList().get(randomIdx).getMainImg() %>"></div>
			</a>
		</div>
		
		<div id="google">
			<p>광고 상품</p>
			<%randomIdx=((int)(mgr_shop.getShoppingList().size()*Math.random()))-1;%>
			<a href="detail.jsp?index=<%=mgr_shop.getShoppingList().get(randomIdx).getIndex()%>">
				<div id="view_product_link"><img width="100%" src="./newShopImg/<%=mgr_shop.getShoppingList().get(randomIdx).getMainImg() %>"></div>
			</a>
		</div>
		
		<div id="top" onclick="scrolling()">
			<p> ▲ Top</p>
		</div>
		
		<script type="text/javascript">
			function scrolling(){
				$('html, body').stop().animate({scrollTop:'0'}, 700);
			}
		</script>
		
	</div>


<!-- footer -->
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

</body>
</html>