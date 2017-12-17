<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:useBean id="pmgr" class="member.PlaceNearNewMgr" />
<jsp:useBean id="pbean" class="member.PlaceNearNewBean" />
<%
	request.setCharacterEncoding("utf-8");
	String id = (String) session.getAttribute("idKey");

	int index = Integer.parseInt(request.getParameter("index"));
	pbean = pmgr.getMember(index);
	String lname = pbean.getLname();
	String sname = pbean.getSname();
	String writer = pbean.getWriter();
	String content = pbean.getContent();
	String regdate = pbean.getRegdate();
	String blogname = pbean.getBlogname();
%>
<%
	request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<!-- saved from url=(0049)https://m.blog.naver.com/playganghwa/221160729137 -->
<html lang="ko" data-useragent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36"><head prefix="og: http://ogp.me/ns# article: http://ogp.me/ns/article#"><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><style type="text/css">@charset "UTF-8";[ng\:cloak],[ng-cloak],[data-ng-cloak],[x-ng-cloak],.ng-cloak,.x-ng-cloak,.ng-hide:not(.ng-hide-animate){display:none !important;}ng\:form{display:block;}.ng-animate-shim{visibility:hidden;}.ng-anchor{position:absolute;}</style>






<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no,target-densitydpi=medium-dpi,viewport-fit=cover">
<meta name="robots" content="index,follow">



<link rel="shortcut icon" type="image/x-icon" href="https://m.blog.naver.com/favicon.ico?2">

<link rel="apple-touch-icon-precomposed" href="https://m.blog.naver.com/mobileweb_icon_96.png?1">

<link rel="stylesheet" type="text/css" href="./neareventboard_files/lego_w-113521028_https.css" charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./neareventboard_files/lego_view-196529423_https.css" charset="EUC-KR">
<style>
	div.spi_unity {
		width:291px;
	}
</style>





 

	
		<meta property="og:title" content="찾아가는 과학관이 강화군을 찾아옵니다. &quot;공존의 혁신 생체모방&quot;">

		
			
			
			<meta property="og:image" content="https://blogthumb.pstatic.net/MjAxNzEyMTFfMTk4/MDAxNTEyOTgwODg0NDg2.aBIq3nQ5mQEOkWF2z3qwPQ2goyzLzCZ9wlQHxzaj1YEg.d2GfW3EJdg3iAHOtl_xSFWXhKfELUCGZ7DErhGFV28Eg.JPEG.playganghwa/%B3%BB%BA%CE%C0%FC%B0%E6-01.jpg?type=w2">
			
				
		<meta property="og:description" content="과학이란 단어는 언제 봐도 어렵고 생소합니다. 어렵다는 편견을 깨고 좀 더 가까이 과학이 다가서기 위해 ...">
		
		
			<meta property="og:url" content="http://blog.naver.com/playganghwa/221160729137">
		
	
	

<meta property="me:feed:serviceId" content="blog">


	




<meta property="og:type" content="article">
<meta class="_og_tag _author" property="og:site_name" content="네이버 블로그 | <%=blogname%>">
<meta property="naverblog:nickname" content="<%=writer%>">
<meta property="naverblog:profile_image" content="https://blogpfthumb-phinf.pstatic.net/MjAxNjEwMjBfMTY2/MDAxNDc2OTI1MDYwMjU3.3VmzHenyua7LxJSCkGkzRBKTgG9tRdKl71piSGwSyKwg.Irxb6XCckJn-xMWDza9tOUuSpBiLuMt_cBylyrUUN7sg.PNG.playganghwa/%25B0%25FC%25B1%25A4%25B0%25F8%25BB%25E7-%25BD%25C5%25B7%25CE%25B0%25ED-%25B0%25AD%25C8%25AD%2528%25B4%25F5%25BC%25D2%25B1%25D4%25B8%25F0%2529.png?type=s1">

<meta property="me:feed:serviceId" content="blog">
<meta name="format-detection" content="telephone=no">




<script type="text/javascript" src="./neareventboard_files/LegoCommonJS-1912307012_https.js.다운로드" charset="UTF-8"></script>
<script type="text/javascript">
jindo.m.patch("1.12.0").add({
    "useTimingFunction" : function() {
        var htOsInfo = jindo.m.getOsInfo();
        if (htOsInfo.ios && parseInt(htOsInfo.version, 10) >= 6) {
            return -1;
        }
    }
});
/* flicking 개선 start*/
/* var fOldFlickTouchStartImpl = jindo.m.Flick.prototype._startImpl;
var fOldSlideFlickMoveAfterCall = jindo.m.SlideFlicking.prototype._moveAfterCall;
var fOldFlickTouchEndImpl = jindo.m.Flick.prototype._endImpl;
var bTouchMoved = false;

jindo.m.Flick.prototype._startImpl = function(we){
	this.nStartX = we.nX;
	bTouchMoved = false;
	fOldFlickTouchStartImpl.apply(this, [we]);
}

jindo.m.SlideFlicking.prototype._moveAfterCall = function(we){
	 if(Math.abs(this.nStartX  - we.nX) < this.getSensitivity() && !bTouchMoved){
		return;
	};
	bTouchMoved = true;
	fOldSlideFlickMoveAfterCall.apply(this, [we]);
}

jindo.m.Flick.prototype._endImpl = function(we){
	bTouchMoved = false;
	fOldFlickTouchEndImpl.apply(this, [we]);
}

jindo.m.Flick.prototype.setSensitivity = function(nFlickingSensitivity){
	this.nFlickingSensitivity =  nFlickingSensitivity;
}

jindo.m.Flick.prototype.getSensitivity = function(){
	return this.nFlickingSensitivity;
} */

/* flicking 개선 end*/
$Event.prototype.getEventElement = function(sTargetTagName, sTargetClassName, nMaxDepth) {
	var el = this.element;
	var wel = $Element(this.element);

	var sTagName = 'a|button';
	var sClassName = null;

	var nDepth = typeof nMaxDepth == 'undefined' ? 5 : nMaxDepth;

	if (typeof el.tagName == "undefined") return wel;
	if (typeof sTargetTagName != "undefined") sTagName = sTargetTagName;
	if (typeof sTargetClassName != "undefined") sClassName = sTargetClassName;

	var oTagNameRegex = new RegExp("^(" + sTagName + ")$", "i");
	if (oTagNameRegex.test(el.tagName) && (sClassName == null || wel.hasClass(sClassName))) {
		return wel;
	} else {
		var welParents = wel.parent(function(v) {
			if (v.$value().nodeType != 1) {
				return false;
			}

			if (sTargetClassName) {
				return oTagNameRegex.test(v.$value().tagName) && v.hasClass(sClassName);
			}

			return oTagNameRegex.test(v.$value().tagName);
		}, nDepth);

		return welParents != null && welParents.length > 0 ? welParents[0] : wel;
	}
}


var doc = document.documentElement;
doc.setAttribute('data-useragent',navigator.userAgent);

var blogOwner = false;
var rightClickOpenYn = true;
var lcs_SerName = "lcs.naver.com";
var isJeagleDebug = false;

window.onerror = jeagleEyeUtil.nvl_error;

/* window.onerror = function(msg, url, line) {
   alert("Error: " + msg + "\nurl: " + url + "\nline #: " + line);
}; */
</script>


	<link rel="stylesheet" type="text/css" href="./neareventboard_files/se_viewer_blog_mobile.css">


<title>찾아가는 과학관이 강화군을 찾아옵니다. "공존의 혁신 생체모방" : 네이버 블로그</title>

<script language="javascript" src="./neareventboard_files/ugcvideoplayer-1.0.js.다운로드"></script>
<script type="text/javascript">
	var nilOptions = {
    devMode: "true"=="false"
	};

window.onerror = function() {
	loadImgAndVideo();
}
function loadImgAndVideo() {
	var oImgAndVideoHandler;
	if (document.readyState == "complete") {
		
		oImgAndVideoHandler = new ImgAndVideoHandler(function(){}, isInApp);
		oImgAndVideoHandler.loadOnError();
	} else {
		window.onload = function() {
			oImgAndVideoHandler = new ImgAndVideoHandler(function(){}, isInApp);
			oImgAndVideoHandler.loadOnError();
		}
	}
}
</script>
<script id="naver-splugin-sdk" type="text/javascript" charset="utf-8" src="./neareventboard_files/splugin.m.js.다운로드"></script><script type="text/javascript" src="./neareventboard_files/se.viewer.min.js.다운로드" charset="utf-8"></script><script type="text/javascript" src="./neareventboard_files/likeIt.list.main.js.다운로드" charset="utf-8"></script><link type="text/css" rel="stylesheet" href="./neareventboard_files/likeit.css" charset="utf-8"><link type="text/css" rel="stylesheet" href="./neareventboard_files/likeit_blog.css" charset="utf-8"><link id="naver-splugin-css" rel="stylesheet" type="text/css" href="./neareventboard_files/spi_standard_m_https_20171113.css"></head>
<body id="body" class="tablet_end">
<div class="_ngApp">
  <div ng-click="drawerMenu.hide($event)" bg-nsc="{&quot;web&quot;:&quot;Mblog.home&quot;}" bg-drawer-pc-url="http://blog.naver.com/playganghwa/221160729137?viewType=pc" bg-drawer-menu-btn="._openDrawer" bg-drawer-app-link-type="postViewDirect" bg-drawer-app-params-json="{&quot;logNo&quot;:221160729137}">
  <div class="Ndimmed is_css ng-hide" ng-show="drawerMenu.isShow" ng-class="{is_show: drawerMenu.isShow}" style="display:block"></div>
  <div class="Ndrawer ng-hide" ng-show="drawerMenu.isShow" ng-style="{top: drawerMenu.scrollY, height: drawerMenu.height}" style="display: block; top: 0px; height: 925px;">
    <div class="Ndrawer_scroll_wrap is_css _drawerScrollWrap ng-hide" ng-show="drawerMenu.isShow" style="display:block">
      <div class="Ndrawer_scroll _drawerScroll" ng-style="{height: drawerMenu.height}" style="touch-action: none; height: 925px;">
        <div class="Ndrawer_inner" ng-click="drawerMenu.hideImmediately($event)" style="transition-timing-function: cubic-bezier(0.1, 0.57, 0.1, 1); transition-duration: 0ms; transform: translate(0px, 0px) translateZ(0px);">
          <div class="Ndrawer_profile">
            <!-- ngIf: !drawerMenu.isLoginUser -->
            <!-- ngIf: drawerMenu.isLoginUser --><a ui-sref="postListPermalink({blogId: drawerMenu.userId})" ui-sref-opts="{inherit: false}" href="https://m.blog.naver.com/GoMylog.nhn" class="Ndrawer_profile_login" ng-if="drawerMenu.isLoginUser" bg-nclick="qmm.nick" bg-target-self-when-naverapp="">
              <div class="NLogin_thumb">
                <img ng-src="https://ssl.pstatic.net/static/blog/m/img_default.gif" width="36" height="36" alt="" class="NLogin_thumb_image" src="./neareventboard_files/img_default.gif">
              </div>
              <strong class="NLogin_name">
                ggh541<span class="sp icon_arrow"></span>
              </strong>
              <p class="Login_stat_visit">
                <span class="Login_stat_visit_info">오늘<em class="Login_stat_visit_count">0</em></span>
                <span class="Login_stat_visit_info">전체<em class="Login_stat_visit_count">91</em></span>
              </p>
            </a><!-- end ngIf: drawerMenu.isLoginUser -->

            <ul class="Ndrawer_profile_menu">
              <li class="Nmenu_item">
                <a href="https://m.blog.naver.com/ReadHistoryList.nhn" target="_self" class="Nmenu_item_link" bg-nclick="qmm.recent" ng-click="drawerMenu.checkAndroidVersion($event)">
                  <span class="sp icon_recent"></span>
                  최근 본 글
                    <span class="sp icon_beta">
                      <span class="blind">Beta</span>
                    </span>
                </a>
              </li>
              <li class="Nmenu_item">
                <a ui-sref="news" href="https://m.blog.naver.com/News.nhn" class="Nmenu_item_link" bg-need-login="/News.nhn" bg-need-login-alert="" bg-nclick="qmm.mynews" bg-target-self-when-naverapp="">
                  <span class="sp icon_alarm"></span>
                  내소식
                  <!-- ngIf: drawerMenu.isLoginUser&&drawerMenu.newsCount>0 -->
                </a>
              </li>
              <li class="Nmenu_item">
                <a href="https://m.blog.naver.com/BlogStat.nhn" class="Nmenu_item_link" target="_self" bg-persist="" bg-need-login="" bg-need-login-alert="" bg-nclick="qmm.stat">
                  <span class="sp icon_stat"></span>통계
                </a>
              </li>
              <li class="Nmenu_item">
                <a href="https://m.blog.naver.com/GoWriteForm.nhn" class="Nmenu_item_link" bg-need-login="" bg-need-login-alert="" bg-nclick="qmm.write" ros-click="">
                  <span class="sp icon_write"></span>글쓰기
                </a>
              </li>
            </ul>
            <a class="Ndrawer_profile_close" ng-click="drawerMenu.hide($event)" bg-nclick="qmm.x"><span class="Nclose_icon">닫기</span></a>
          </div>
          <div class="Ndrawer_menu">
            <a ui-sref="recommendation" href="https://m.blog.naver.com/Recommendation.nhn" class="Nmenu_item" bg-nclick="qmm.recomm" bg-target-self-when-naverapp="">
              <span class="Nmenu_item_icon sp icon_compass"></span>
              블로그 추천
            </a>
          <a ui-sref="postListPermalink({blogId: &#39;blogpeople&#39;})" ui-sref-opts="{reload: true, inherit: false}" href="https://m.blog.naver.com/PostList.nhn?blogId=blogpeople" class="Nmenu_item" bg-nclick="qmm.team" ng-click="drawerMenu.readTeamBlogPost()" bg-target-self-when-naverapp="">
              <span class="Nmenu_item_icon sp icon_teamblog"></span><span ng-show="drawerMenu.hasNewPost" class="sp ico_new ng-hide">NEW</span>
              블로그팀 공식블로그
          </a>
            <a href="https://m.blog.naver.com/PopularBlog.nhn" class="Nmenu_item" target="_self" bg-persist="" bg-nclick="qmm.monthb">
              <span class="Nmenu_item_icon sp icon_best"></span>
              이달의 블로그
            </a>
            <a href="https://m.blog.naver.com/OfficialBlog.nhn" class="Nmenu_item" target="_self" bg-persist="" bg-nclick="qmm.official">
              <span class="Nmenu_item_icon sp icon_official"></span>
              공식 블로그
            </a>
              <!--이미지배너 우선노출, 추후 베타 이후 메뉴로 교체-->
              <!--
              <a href="https://talk.naver.com/@blogbotmo" class="Nmenu_item" bg-nclick="qmm.bsbot" title="블로그에 대한 궁금증을 답변해드리는 블로그 스마트봇 입니다.">
                  <span class="Nmenu_item_icon sp ico_chatbot"></span>
                  블로그 스마트봇
              </a>
              -->
          </div>
          <div class="Ndrawer_menu">
            <a class="Nmenu_item" blog-app-ad="postViewDirect" blog-id="playganghwa" blog-app-params-json="{&quot;logNo&quot;:221160729137}" bg-nclick="qmm.app">
              <span class="Nmenu_item_icon sp icon_app"></span>
              블로그 앱
            </a>
          </div>
          <div class="Ndrawer_menu" ng-hide="drawerMenu.fromNaverMain()">
            <!-- ngIf: !drawerMenu.isLoginUser -->
            <!-- ngIf: drawerMenu.isLoginUser --><a class="Nmenu_item" ng-if="drawerMenu.isLoginUser" ng-click="drawerMenu.doLogout()" bg-nclick="qmm.logout">
              <span class="Nmenu_item_icon Nicon_sign"></span>
              로그아웃
              <span class="Nmenu_item_text">ggh541</span>
            </a><!-- end ngIf: drawerMenu.isLoginUser -->
            <a ng-href="http://blog.naver.com/playganghwa/221160729137?viewType=pc" class="Nmenu_item" bg-nclick="qmm.pcview" href="http://blog.naver.com/playganghwa/221160729137?viewType=pc">
              <span class="Nmenu_item_icon Nicon_pc"></span>
              PC버전으로 보기
            </a>
            <a href="https://m.help.naver.com/support/alias/blog/blogmo/blogm5.naver" class="Nmenu_item has_moveicon" bg-nclick="qmm.help">
              <span class="Nmenu_item_icon Nicon_cs"></span>
              블로그 고객센터
            </a>
          </div>
            <div class="mymenu_banner" ng-hide="drawerMenu.fromNaverMain()">
                <a href="https://talk.naver.com/@blogbotmo" bg-nclick="qmm.bsbot" title="블로그에 대한 궁금증을 답변해드리는 블로그 스마트봇 입니다.">
                    <img src="./neareventboard_files/banner_mymenubot.png" width="276" height="70" alt="궁금한게 있을 땐 바로 물어보세요 블로그 스마트봇 Beta">
                </a>
            </div>
          <div class="Ndrawer_footer">
            <p class="Ndrawer_footer_copyright"><a href="http://www.navercorp.com/" bg-nclick="qmm.nvcorp">ⓒ NAVER Corp.</a></p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</div>

<div class="u_skip"><a href="https://m.blog.naver.com/playganghwa/221160729137#ct">본문 바로가기</a></div>
<div class="Ngnb gnb_bg_white" style="will-change: contents;">
	<div class="Ngnb_service logo_blog_green">
		<h1 class="Nservice_item">
			
				
					<a href="https://m.blog.naver.com/FeedList.nhn"><span class="Nicon_service">블로그</span></a>
				
				
			
		</h1>
		<h2 class="gnb_title">
            <div class="center">
 				<span class="td">
 					<a href="https://m.blog.naver.com/playganghwa/221160729137#" id="_categoryName" class="_cur_category _returnFalse" onclick="nclk(this, &#39;pgn.blogname&#39;, &#39;&#39;, &#39;&#39;);">
 						<span class="sp ico">카테고리 이동</span>
 					</a>
 				</span>
                <span class="td">
 					<a href="https://m.blog.naver.com/PostList.nhn?blogId=playganghwa" onclick="nclk(this, &#39;pgn.eachhome&#39;, &#39;&#39;, &#39;&#39;);">
 						`<%=blogname %></span>
 					</a>
 				</span>
            </div>
		</h2>
	</div>
	<div class="Ngnb_tool">
		<!--  button 태그 / a 태그 모두 사용할 수 있음 -->
		<a href="https://m.blog.naver.com/PostSearchList.nhn?blogId=playganghwa" class="Ntool_button"><span class="Nicon_search">검색</span></a>
		<button type="button" class="Ntool_button _openDrawer _returnFalse" onclick="nclk(this, &#39;pgn.qmenu&#39;, &#39;&#39;, &#39;&#39;);"><span class="Nicon_drawer">MY메뉴 열기</span></button>
	</div>
</div>

<div id="post_share" style="position:absolute;top:50px;display:none;z-index:2000;right:15px">
	<div id="spiLayer"></div>
</div>

<div id="_post_area" class="ct_wrap">
	<div id="ct" class="end" role="main" style="overflow:hidden;">
        
		    






<div id="_post_property" style="display:none" commentcount="4" blocktype="0" isblacklistuser="false" blogname="<%=blogname %>" commentenable="true" categoryno="32" logtype="0" adddate="1512986233966" hasnavermap="false" gdid="90000003_00000000000000337E34EA31" browsertitle="찾아가는 과학관이 강화군을 찾아옵니다. &quot;공존의 혁신 생체모방&quot; : 네이버 블로그" isrecommendableblog="true" attachfilepunishinfo="{}" attachvideoinfo="[ ]" editorversion="3" relationtypewithblog="3" uri="http://blog.naver.com/playganghwa/221160729137" directoryname="%EA%B3%B5%EC%97%B0%C2%B7%EC%A0%84%EC%8B%9C" bloguserstatallow="true"></div>
<div id="_photo_view_property" style="display: none" attachimagepathandidinfo="{&quot;/MjAxNzEyMTFfNjEg/MDAxNTEyOTgxMDIxNTM2.Gq3A1KWNopLLoSAr5jj5offYlecOKQO-T3CQfAYSV3gg.eebuqggysDTxWv_qAtAW0GsVy0umBGyXUGQE1GEVTt4g.JPEG.playganghwa&quot;:3,&quot;/MjAxNzEyMTFfODcg/MDAxNTEyOTg1ODgwNjE1.57h6dkWHgGCQMap7rtP7RSmCkGbJIzCPKGFm-jdhxY4g.6Vn1hWthmqBubWudF3xhweBbL0_H1O5Tx77RobeSP0wg.JPEG.playganghwa&quot;:1,&quot;/MjAxNzEyMTFfNyAg/MDAxNTEyOTgxMDE0NjE5.iIShzZoLgg7t-Unp3FG0ht7Zhz9PPKYjRohD5JnldeUg.LrxBhptuGx-bqaoHPXr783x2xsWGDWdpcdLwonrLl8sg.JPEG.playganghwa&quot;:2,&quot;/MjAxNzEyMTFfMzcg/MDAxNTEyOTg1ODI2NDM5.M9VBZmwQ5l2oE9rJeVTaesL44SfoGKQxWGI_kE9O6Qkg.NCQ_TQIOflUD9EzKkTGCcDf0Mx9K78tsUtRPRDaU0Hsg.JPEG.playganghwa&quot;:9,&quot;/MjAxNzEyMTFfNzkg/MDAxNTEyOTg1ODM0ODgz.08LWLsDcoGdb1kEUPuUClbZwlCcrEZxtkCZC_zi6Ogwg.hPm8kxC1PzhwGdBjUW4ttRjbxXNgejvnV9fOjO7c6UMg.JPEG.playganghwa&quot;:10,&quot;/MjAxNzEyMTFfMjgy/MDAxNTEyOTg1ODQyNDkz.9cp8RbKWg0lVOqezwiqoyd3dDbuJf_5RDpQrY20S_UMg.MYHD00BfIRa5R0yF3m1a17GcdE9fU7TNpl2RZLNrO70g.JPEG.playganghwa&quot;:11,&quot;/MjAxNzEyMTFfMTI3/MDAxNTEyOTgyNDg4MTQ5.zgNDYTMUUWJnfMUz35XWF7VCoh64z-wpmGm1vVGn4iEg.70MwT2A1wpyWs6319Ok7VczuI8wDrKNWcTLQOb0mJvEg.JPEG.playganghwa&quot;:6,&quot;/MjAxNzEyMTFfMTEz/MDAxNTEyOTgyNTA2Njgw.poScnl7LScRUn0pnPMURtjlZApaae0WIANj8Hra_PIAg.B1mT87Qi1afhaPLK65gS4-OfKSgiquVVjwdeiHMRw3gg.JPEG.playganghwa&quot;:7,&quot;/MjAxNzEyMTFfMTk4/MDAxNTEyOTgwODg0NDg2.aBIq3nQ5mQEOkWF2z3qwPQ2goyzLzCZ9wlQHxzaj1YEg.d2GfW3EJdg3iAHOtl_xSFWXhKfELUCGZ7DErhGFV28Eg.JPEG.playganghwa&quot;:8,&quot;/MjAxNzEyMTFfMTg0/MDAxNTEyOTgyNDgwMDgy.KtyS3PNdIsyiP6i1w18k1cwhdVvhhYDIBe2NdrEIIgEg.0N8Y5jmih131zluYy-SRP2pzywJop9fva59vXjrJzY0g.JPEG.playganghwa&quot;:5,&quot;/MjAxNzEyMTFfMjUg/MDAxNTEyOTgyNDcxNDcw._-4042vttqBvxO9sklZ7d6bmrN1E5_ksIaCgBGyzrVMg.sRxdG7MXTf8OpZvv4Mki6rFOPij-9GYpLdY8lsbIz2gg.JPEG.playganghwa&quot;:4}" blogid="playganghwa" logno="221160729137" editorversion="3"></div>

<div id="_floating_menu_property" style="display: none" blogid="playganghwa" logno="221160729137" formattedcommentcount="4" newreplycomment="false" logtype="0" commentenable="true" posttitle="찾아가는 과학관이 강화군을 찾아옵니다. &quot;공존의 혁신 생체모방&quot;" sympathyenable="true" posturl="https://m.blog.naver.com/PostView.nhn?blogId=playganghwa&amp;logNo=221160729137"></div>

   
	
		 
		 
		
			
			
			
		
	


<div class="_postView">
	<!-- 폰트 사이즈 셋팅 -->
	
	
		
		
		
		
		
		
	

	
	
	

	

	
	<div class="post_ct   se3_view " id="viewTypeSelector">
		
		

		

		
		<div id="SEDOC-1513123377765--630923965" class="se_doc_viewer se_body_wrap se_theme_transparent se_m" data-docversion="">
<div class="se_doc_header_start" id="SEDOC-1513123377765--630923965_se_doc_header_start"></div>
<!-- SE_DOC_HEADER_START -->
<div id="SEDOC-1513123377765--630923965_viewer_head" class="se_viewer_head"></div>
<div class="se_component_wrap">
<div class="se_component se_documentTitle documentTitle_blog is-bg is-fill">
	    <div class="se_background" style="background-image: url(https://mblogthumb-phinf.pstatic.net/MjAxNzEyMTFfODcg/MDAxNTEyOTg1ODgwNjE1.57h6dkWHgGCQMap7rtP7RSmCkGbJIzCPKGFm-jdhxY4g.6Vn1hWthmqBubWudF3xhweBbL0_H1O5Tx77RobeSP0wg.JPEG.playganghwa/%EB%A1%9C%EB%B4%87%EC%9D%B8%EA%B3%B5%EC%A7%80%EB%8A%A501.jpg?type=w800); background-position:50% 50%">
			<div class="se_background_exception">
				<img alt="" class="se_background_img" src="./neareventboard_files/로봇인공지능01.jpg">
			</div>
	    	<div class="se_background_dim"></div>
	    </div>
    <div class="se_sectionArea is-fill se_align-left">
        <!-- --> 
<div class="se_category"><a href="https://m.blog.naver.com/PostList.nhn?blogId=playganghwa&amp;categoryNo=32&amp;logCode=0&amp;categoryName=%EC%9D%B4%EB%8B%AC%EC%9D%98+%EA%B3%B5%EC%97%B0%2C+%EC%A0%84%EC%8B%9C%ED%9A%8C" onclick="nclk(this, &#39;pst.board&#39;, &#39;&#39;, &#39;&#39;);"><%=sname %></a></div>
<!-- -->
        <!-- SE_DOC_HEADER_TITLE_TOP-->
     	<div id="SEDOC-1513123377765--630923965_se_doc_title_top" class="se_doc_title_top"></div>
        <div class="se_editArea">
        	<div class="se_viewArea se_ff_nanumgothic se_fs_D2">
	            <div class="se_editView se_title">
	                <div class="se_textView">
                        <h3 class="se_textarea">
                            <!-- --><span class="pcol3">[공지] <%=lname%></span><!-- -->
                            
                        </h3>
                        
                        
	                </div>
	            </div>
	        </div>
        </div><!-- SE_DOC_HEADER_TITLE_MIDDLE-->
        <div id="SEDOC-1513123377765--630923965_se_doc_title_middle" class="se_doc_title_middle"></div>
        <!-- SE_DOC_HEADER_CONTENTS_START -->
        <!-- -->
<div class="se_authorArea">

	<a href="https://m.blog.naver.com/PostList.nhn?blogId=playganghwa" class="se_thumbnail" onclick="nclk(this, &#39;pst.writer&#39;, &#39;&#39;, &#39;&#39;);">

		<span class="img"><img src="./neareventboard_files/%B0%FC%B1%A4%B0%F8%BB%E7-%BD%C5%B7%CE%B0%ED-%B0%AD%C8%AD%28%B4%F5%BC%D2%B1%D4%B8%F0%29.png" width="35" height="35" alt="프로필"></span>
	</a>
	<div class="se_author">
		<a href="https://m.blog.naver.com/PostList.nhn?blogId=playganghwa" onclick="nclk(this, &#39;pst.writer&#39;, &#39;&#39;, &#39;&#39;);"><strong class="ell"><%=writer %></strong></a>
		<span class="ico"><span class="sim ico_verified3">공식블로그</span></span>
	</div>
	<p class="se_date"><%=regdate%>
	</p>
</div>

<div class="se_btnArea">
	<a href="https://m.blog.naver.com/playganghwa/221160729137#" class="btn_buddyadd _buddyadd_default _add_buddy _param(playganghwa|true||/BuddyAddForm.nhn) _returnFalse" isblackuser="false" onclick="nclk(this, &#39;pst.add&#39;, &#39;&#39;, &#39;&#39;);"><span class="sp"></span> 이웃추가</a>

<!-- 본문 기타 기능 -->
<div class="post_function_t1">
<button type="button" class="btn_function _btn_tools" onclick="nclk(this, &#39;pst.func&#39;, &#39;&#39;, &#39;&#39;);"><span class="sim">본문 기타 기능</span></button>
	<div class="lyr_post_function" id="_tools_layer" style="display:none">
		<ul>
			<li class="font_size">
				<strong class="blind">본문 폰트 크기 조정</strong>
				<button type="button" class="btn_font_s _smallFont   off" id="moreSmall" onclick="nclk(this, &#39;pst.ftxts&#39;, &#39;&#39;, &#39;&#39;);"><span class="sim">본문 폰트 크기 작게 보기</span></button>
				<button type="button" class="btn_font_b _bigFont" id="moreBig" onclick="nclk(this, &#39;pst.ftxtl&#39;, &#39;&#39;, &#39;&#39;);"><span class="sim">본문 폰트 크기 크게 보기</span></button>
				<span class="size  " id="font_size">가</span>
			</li>
			<li>
				<div class="btn_like_w like_btn">
					<span class="txt">공감하기</span>
					<!-- [D]  좋아요 시스템 -->
						<div class="u_likeit_list_module">
							<a href="https://m.blog.naver.com/playganghwa/221160729137#" class="u_likeit_list_btn u_type_img u_none_txt" data-sid="BLOG" data-did="BLOG" data-cid="playganghwa_221160729137" data-likeit="1" data-log="pst.flike|pst.funlike" data-likeit_jindo="jindo"><span class="u_ico"></span> <em class="u_cnt _cnt">19</em></a>
						</div>
					<!-- //[D]  좋아요 시스템 -->
				</div>
			</li>
				<li><a href="https://m.blog.naver.com/playganghwa/221160729137#" class="naver-splugin _returnFalse" onclick="nclk(this, &#39;pst.fshare&#39;, &#39;&#39;, &#39;&#39;);" data-style="standard" data-url="https://m.blog.naver.com/PostView.nhn?blogId=playganghwa&amp;logNo=221160729137" data-title="찾아가는 과학관이 강화군을 찾아옵니다. &quot;공존의 혁신 생체모방&quot;" data-likeserviceid="blog" data-likecontentsid="playganghwa_221160729137" data-canonical-url="https://m.blog.naver.com/playganghwa/221160729137" data-oninitialize="splugin_oninitialize();" splugin-id="7582349263">공유하기 <span class="share sim"></span>
					</a>
				</li>
				<li><a href="https://m.blog.naver.com/playganghwa/221160729137#" class="_copy_url _returnFalse" onclick="nclk(this, &#39;pst.furl&#39;, &#39;&#39;, &#39;&#39;);">URL복사 <span class="copy sim"></span></a></li>
			<li><a href="https://m.blog.naver.com/playganghwa/221160729137#" class="_goTrans">번역하기 <span class="translate sim"></span></a></li>
			</ul>
		</div>
	</div>
</div>
<!-- //본문 기타 기능 -->

<!-- -->
        <!-- SE_DOC_HEADER_CONTENTS_END -->
        <!-- SE_DOC_HEADER_TITLE_BOTTOM-->
        <div id="SEDOC-1513123377765--630923965_se_doc_title_bottom" class="se_doc_title_bottom"></div>
    </div>
</div>

</div>
<!-- {{{$SE3-CONTENTS_HEADER}}} -->
<!-- SE_DOC_HEADER_END -->
<div class="se_doc_header_end" id="SEDOC-1513123377765--630923965_se_doc_header_end"></div>
<div class="se_doc_contents_start" id="SEDOC-1513123377765--630923965_se_doc_contents_start"></div>
<!-- SE_DOC_CONTENTS_START -->
<div class="se_component_wrap sect_dsc __se_component_area">
    








<div class="se_component se_paragraph default">
    <div class="se_sectionArea">
        <div class="se_editArea">
            <div class="se_viewArea se_ff_nanumgothic se_fs_T3 se_align-left">
                <div class="se_editView">
                    <div class="se_textView">
                        <p class="se_textarea"><!-- SE3-TEXT { --><span>과학이란 단어는&nbsp;언제 봐도 어렵고 생소합니다.<br></span><span>어렵다는&nbsp;편견을 깨고 좀 더 가까이 과학이 다가서기&nbsp;위해&nbsp;찾아가는 과학관인 "공존의 혁신 생체모방" 과학관이 강화군을 찾아옵니다.</span><span><br></span><!-- } SE3-TEXT --></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>












    









<div class="se_component se_quotation default">
    <div class="se_sectionArea">
        <div class="se_editArea">
            <div class="se_viewArea se_fs_T2">
                <div class="se_editView">
                    <div class="se_textView">
                        <blockquote class="se_textarea"><!-- SE3-TEXT { -->인간은 자연에 대한 직감적인 신뢰를 갖는다.<br>"공존의 혁신 생체모방"<!-- } SE3-TEXT --></blockquote>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>











    








<div class="se_component se_paragraph default">
    <div class="se_sectionArea">
        <div class="se_editArea">
            <div class="se_viewArea se_ff_nanumgothic se_fs_T3 se_align-left">
                <div class="se_editView">
                    <div class="se_textView">
                        <p class="se_textarea"><!-- SE3-TEXT { --><span>이번 전시는 평소 과학을 접하기 어려운 지역을 순회하며 열리는 찾아가는 과학관인데요~<br></span><span>과학기술정보통신부와 한국과학창의재단에서 주최하고, (사)한국과학관협회에서 주관, 복권위원회에서 후원하는 "공존의 혁신 생체모방" 찾아가는 과학관이&nbsp;</span><span>오는 12월 12일부터 16일까지 강화고인돌체육관에서 개최됩니다.</span><!-- } SE3-TEXT --></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>












    








<div class="se_component se_paragraph default">
    <div class="se_sectionArea">
        <div class="se_editArea">
            <div class="se_viewArea se_ff_nanumgothic se_fs_T3 se_align-left">
                <div class="se_editView">
                    <div class="se_textView">
                        <p class="se_textarea"><!-- SE3-TEXT { --><span>전시 내용은 단순 전시를 넘어 거미줄 모방 유리체험, 뇌파로 날리는 드론 등 우리 아이들이 평소 관심을 가질만한 재미있는 과학 체험으로 채워진다고 하니 놓치면 아까운 기회죠~</span><span></span><!-- } SE3-TEXT --></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>












    








<div class="se_component se_paragraph default">
    <div class="se_sectionArea">
        <div class="se_editArea">
            <div class="se_viewArea se_ff_nanumgothic se_fs_T3 se_align-left">
                <div class="se_editView">
                    <div class="se_textView">
                        <p class="se_textarea"><!-- SE3-TEXT { -->자세한 내용은 아래 포스터와 사진을 참고하세요~<br><!-- } SE3-TEXT --></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>












    


		<div class="se_component se_image default">
			<div class="se_sectionArea se_align-justify">
				<div class="se_editArea">
					<div class="se_viewArea">
						<a href="https://m.blog.naver.com/playganghwa/221160729137#" onclick="return false;" class="se_mediaArea __se_image_link __se_link" data-linktype="img" data-linkdata="{&quot;imgId&quot; : &quot;SEDOC-1513123377765--630923965_image_1_img&quot;, &quot;src&quot; : &quot;https://mblogthumb-phinf.pstatic.net/MjAxNzEyMTFfNyAg/MDAxNTEyOTgxMDE0NjE5.iIShzZoLgg7t-Unp3FG0ht7Zhz9PPKYjRohD5JnldeUg.LrxBhptuGx-bqaoHPXr783x2xsWGDWdpcdLwonrLl8sg.JPEG.playganghwa/7411795F3562431a886C5982374760FA_1.jpg&quot;, &quot;linkUse&quot; : &quot;false&quot;, &quot;link&quot; : &quot;&quot;}">
							<img id="SEDOC-1513123377765--630923965_image_1_img" class="se_mediaImage __se_img_el" src="./neareventboard_files/7411795F3562431a886C5982374760FA_1.jpg" width="1190" height="1684" data-attachment-id="IFLJPVZJQFW0CiLYcstYWalyDxmY" alt="">
						</a>
					</div>
				</div>
			</div>
		</div>


















    


		<div class="se_component se_image default">
			<div class="se_sectionArea se_align-justify">
				<div class="se_editArea">
					<div class="se_viewArea">
						<a href="https://m.blog.naver.com/playganghwa/221160729137#" onclick="return false;" class="se_mediaArea __se_image_link __se_link" data-linktype="img" data-linkdata="{&quot;imgId&quot; : &quot;SEDOC-1513123377765--630923965_image_2_img&quot;, &quot;src&quot; : &quot;https://mblogthumb-phinf.pstatic.net/MjAxNzEyMTFfNjEg/MDAxNTEyOTgxMDIxNTM2.Gq3A1KWNopLLoSAr5jj5offYlecOKQO-T3CQfAYSV3gg.eebuqggysDTxWv_qAtAW0GsVy0umBGyXUGQE1GEVTt4g.JPEG.playganghwa/412F0983B6704fd68EA22292447CA17E_1.jpg&quot;, &quot;linkUse&quot; : &quot;false&quot;, &quot;link&quot; : &quot;&quot;}">
							<img id="SEDOC-1513123377765--630923965_image_2_img" class="se_mediaImage __se_img_el" src="./neareventboard_files/412F0983B6704fd68EA22292447CA17E_1.jpg" width="1190" height="1684" data-attachment-id="IFZiOxOssRCubOPBepUhQWKq8yL8" alt="">
						</a>
					</div>
				</div>
			</div>
		</div>


















    









<div class="se_component se_quotation quotation_underline">
    <div class="se_sectionArea">
        <div class="se_editArea">
            <div class="se_viewArea se_fs_T2">
                <div class="se_editView">
                    <div class="se_textView">
                        <blockquote class="se_textarea"><!-- SE3-TEXT { -->주요 프로그램 : 체험이 하나 가득!!<!-- } SE3-TEXT --></blockquote>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>











    








<div class="se_component se_paragraph default">
    <div class="se_sectionArea">
        <div class="se_editArea">
            <div class="se_viewArea se_ff_nanumgothic se_fs_T3 se_align-left">
                <div class="se_editView">
                    <div class="se_textView">
                        <p class="se_textarea"><!-- SE3-TEXT { --><span class="se_fs_T2"><b>&nbsp;* 프롤로그 : 인간은 자연에 대한 직감적인 신뢰를 갖는다.</b></span><span><br></span><span>&nbsp;</span><span class="se_fs_T2"><b>* 1관 : 우월한 재료들</b></span><span><br></span><span>&nbsp;&nbsp; - 거미줄 모방 유리체험<br></span><span>&nbsp;&nbsp; - 연잎 소수성 실험<br></span><span>&nbsp;&nbsp; - 벨크로테잎 다트 놀이<br></span><span class="se_fs_T2"><b>&nbsp; * 2관 : 탁월한 기능들</b></span><span><br></span><span>&nbsp;&nbsp; - 아치다리 만들기<br></span><span>&nbsp;&nbsp; - 물고기 아가미 모방 정수 실험장치<br></span><span>&nbsp;&nbsp; -&nbsp;딱정벌레 모방&nbsp;잠수장치<br></span><span class="se_fs_T2"><b>&nbsp;&nbsp;* 3관 : 로봇 그리고 인공지능</b></span><span><br></span><span>&nbsp;&nbsp; - 뇌파로 날리는&nbsp;드론<br></span><span>&nbsp;&nbsp; - 아이언맨</span><span><br></span><span class="se_fs_T2"><b>&nbsp;&nbsp; * 4관 : 우주</b></span><span><br></span><span>&nbsp;&nbsp;&nbsp; - 천체투영<br></span><span>&nbsp;&nbsp;&nbsp;&nbsp;- 운석 만져보기&nbsp;&nbsp;</span><!-- } SE3-TEXT --></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>












    


		<div class="se_component se_image default">
			<div class="se_sectionArea se_align-justify">
				<div class="se_editArea">
					<div class="se_viewArea">
						<a href="https://m.blog.naver.com/playganghwa/221160729137#" onclick="return false;" class="se_mediaArea __se_image_link __se_link" data-linktype="img" data-linkdata="{&quot;imgId&quot; : &quot;SEDOC-1513123377765--630923965_image_3_img&quot;, &quot;src&quot; : &quot;https://mblogthumb-phinf.pstatic.net/MjAxNzEyMTFfMjUg/MDAxNTEyOTgyNDcxNDcw._-4042vttqBvxO9sklZ7d6bmrN1E5_ksIaCgBGyzrVMg.sRxdG7MXTf8OpZvv4Mki6rFOPij-9GYpLdY8lsbIz2gg.JPEG.playganghwa/image_3444264261512982383601.jpg&quot;, &quot;linkUse&quot; : &quot;false&quot;, &quot;link&quot; : &quot;&quot;}">
							<img id="SEDOC-1513123377765--630923965_image_3_img" class="se_mediaImage __se_img_el" src="./neareventboard_files/image_3444264261512982383601.jpg" width="1698" height="1206" data-attachment-id="IQf5QPnT3yeGhsQS32828NvR0UGY" alt="">
						</a>
							<div class="se_editView">
								<div class="se_textView se_mediaCaption">
									    <span class="se_textarea">우월한 재료들</span>
								</div>
							</div>
					</div>
				</div>
			</div>
		</div>


















    


		<div class="se_component se_image default">
			<div class="se_sectionArea se_align-justify">
				<div class="se_editArea">
					<div class="se_viewArea">
						<a href="https://m.blog.naver.com/playganghwa/221160729137#" onclick="return false;" class="se_mediaArea __se_image_link __se_link" data-linktype="img" data-linkdata="{&quot;imgId&quot; : &quot;SEDOC-1513123377765--630923965_image_4_img&quot;, &quot;src&quot; : &quot;https://mblogthumb-phinf.pstatic.net/MjAxNzEyMTFfMTg0/MDAxNTEyOTgyNDgwMDgy.KtyS3PNdIsyiP6i1w18k1cwhdVvhhYDIBe2NdrEIIgEg.0N8Y5jmih131zluYy-SRP2pzywJop9fva59vXjrJzY0g.JPEG.playganghwa/image_1646567511512982389731.jpg&quot;, &quot;linkUse&quot; : &quot;false&quot;, &quot;link&quot; : &quot;&quot;}">
							<img id="SEDOC-1513123377765--630923965_image_4_img" class="se_mediaImage __se_img_el" src="./neareventboard_files/image_1646567511512982389731.jpg" width="1698" height="1206" data-attachment-id="IBz6mwDbFdtLv7IknMTcxKleR2qI" alt="">
						</a>
							<div class="se_editView">
								<div class="se_textView se_mediaCaption">
									    <span class="se_textarea">탁월한 기능들 전시</span>
								</div>
							</div>
					</div>
				</div>
			</div>
		</div>


















    


		<div class="se_component se_image default">
			<div class="se_sectionArea se_align-justify">
				<div class="se_editArea">
					<div class="se_viewArea">
						<a href="https://m.blog.naver.com/playganghwa/221160729137#" onclick="return false;" class="se_mediaArea __se_image_link __se_link" data-linktype="img" data-linkdata="{&quot;imgId&quot; : &quot;SEDOC-1513123377765--630923965_image_5_img&quot;, &quot;src&quot; : &quot;https://mblogthumb-phinf.pstatic.net/MjAxNzEyMTFfMTI3/MDAxNTEyOTgyNDg4MTQ5.zgNDYTMUUWJnfMUz35XWF7VCoh64z-wpmGm1vVGn4iEg.70MwT2A1wpyWs6319Ok7VczuI8wDrKNWcTLQOb0mJvEg.JPEG.playganghwa/image_4381209911512982372948.jpg&quot;, &quot;linkUse&quot; : &quot;false&quot;, &quot;link&quot; : &quot;&quot;}">
							<img id="SEDOC-1513123377765--630923965_image_5_img" class="se_mediaImage __se_img_el" src="./neareventboard_files/image_4381209911512982372948.jpg" width="1698" height="1206" data-attachment-id="IIZ-Keth6jJZf7l06KRCvA6Fwcqg" alt="">
						</a>
							<div class="se_editView">
								<div class="se_textView se_mediaCaption">
									    <span class="se_textarea">로봇 그리고 인공지능</span>
								</div>
							</div>
					</div>
				</div>
			</div>
		</div>


















    


		<div class="se_component se_image default">
			<div class="se_sectionArea se_align-justify">
				<div class="se_editArea">
					<div class="se_viewArea">
						<a href="https://m.blog.naver.com/playganghwa/221160729137#" onclick="return false;" class="se_mediaArea __se_image_link __se_link" data-linktype="img" data-linkdata="{&quot;imgId&quot; : &quot;SEDOC-1513123377765--630923965_image_6_img&quot;, &quot;src&quot; : &quot;https://mblogthumb-phinf.pstatic.net/MjAxNzEyMTFfMTEz/MDAxNTEyOTgyNTA2Njgw.poScnl7LScRUn0pnPMURtjlZApaae0WIANj8Hra_PIAg.B1mT87Qi1afhaPLK65gS4-OfKSgiquVVjwdeiHMRw3gg.JPEG.playganghwa/image_1484413861512982377926.jpg&quot;, &quot;linkUse&quot; : &quot;false&quot;, &quot;link&quot; : &quot;&quot;}">
							<img id="SEDOC-1513123377765--630923965_image_6_img" class="se_mediaImage __se_img_el" src="./neareventboard_files/image_1484413861512982377926.jpg" width="1698" height="1206" data-attachment-id="IiQWwOQ9ByH2C7-QiqcGZkqY2HAY" alt="">
						</a>
							<div class="se_editView">
								<div class="se_textView se_mediaCaption">
									    <span class="se_textarea">우주</span>
								</div>
							</div>
					</div>
				</div>
			</div>
		</div>


















    


		<div class="se_component se_image default">
			<div class="se_sectionArea se_align-justify">
				<div class="se_editArea">
					<div class="se_viewArea">
						<a href="https://m.blog.naver.com/playganghwa/221160729137#" onclick="return false;" class="se_mediaArea __se_image_link __se_link" data-linktype="img" data-linkdata="{&quot;imgId&quot; : &quot;SEDOC-1513123377765--630923965_image_7_img&quot;, &quot;src&quot; : &quot;https://mblogthumb-phinf.pstatic.net/MjAxNzEyMTFfMTk4/MDAxNTEyOTgwODg0NDg2.aBIq3nQ5mQEOkWF2z3qwPQ2goyzLzCZ9wlQHxzaj1YEg.d2GfW3EJdg3iAHOtl_xSFWXhKfELUCGZ7DErhGFV28Eg.JPEG.playganghwa/%EB%82%B4%EB%B6%80%EC%A0%84%EA%B2%BD-01.jpg&quot;, &quot;linkUse&quot; : &quot;false&quot;, &quot;link&quot; : &quot;&quot;}">
							<img id="SEDOC-1513123377765--630923965_image_7_img" class="se_mediaImage __se_img_el" src="./neareventboard_files/내부전경-01.jpg" width="3120" height="4160" data-attachment-id="Ivja3yVYrCFWfMaDQWFkBmIYFgPs" alt="">
						</a>
					</div>
				</div>
			</div>
		</div>


















    


		<div class="se_component se_image default">
			<div class="se_sectionArea se_align-justify">
				<div class="se_editArea">
					<div class="se_viewArea">
						<a href="https://m.blog.naver.com/playganghwa/221160729137#" onclick="return false;" class="se_mediaArea __se_image_link __se_link" data-linktype="img" data-linkdata="{&quot;imgId&quot; : &quot;SEDOC-1513123377765--630923965_image_8_img&quot;, &quot;src&quot; : &quot;https://mblogthumb-phinf.pstatic.net/MjAxNzEyMTFfMzcg/MDAxNTEyOTg1ODI2NDM5.M9VBZmwQ5l2oE9rJeVTaesL44SfoGKQxWGI_kE9O6Qkg.NCQ_TQIOflUD9EzKkTGCcDf0Mx9K78tsUtRPRDaU0Hsg.JPEG.playganghwa/%EB%A1%9C%EB%B4%87%EC%9D%B8%EA%B3%B5%EC%A7%80%EB%8A%A501.jpg&quot;, &quot;linkUse&quot; : &quot;false&quot;, &quot;link&quot; : &quot;&quot;}">
							<img id="SEDOC-1513123377765--630923965_image_8_img" class="se_mediaImage __se_img_el" src="./neareventboard_files/로봇인공지능01(1).jpg" width="4160" height="3120" data-attachment-id="I6CnevaGmj8xPEgpBfnigFtaVD9s" alt="">
						</a>
					</div>
				</div>
			</div>
		</div>


















    


		<div class="se_component se_image default">
			<div class="se_sectionArea se_align-justify">
				<div class="se_editArea">
					<div class="se_viewArea">
						<a href="https://m.blog.naver.com/playganghwa/221160729137#" onclick="return false;" class="se_mediaArea __se_image_link __se_link" data-linktype="img" data-linkdata="{&quot;imgId&quot; : &quot;SEDOC-1513123377765--630923965_image_9_img&quot;, &quot;src&quot; : &quot;https://mblogthumb-phinf.pstatic.net/MjAxNzEyMTFfNzkg/MDAxNTEyOTg1ODM0ODgz.08LWLsDcoGdb1kEUPuUClbZwlCcrEZxtkCZC_zi6Ogwg.hPm8kxC1PzhwGdBjUW4ttRjbxXNgejvnV9fOjO7c6UMg.JPEG.playganghwa/%EB%AA%A8%EB%B0%A9%EC%9D%B4%EB%83%90_%EC%88%98%EB%A0%B4%EC%9D%B4%EB%83%90-02.jpg&quot;, &quot;linkUse&quot; : &quot;false&quot;, &quot;link&quot; : &quot;&quot;}">
							<img id="SEDOC-1513123377765--630923965_image_9_img" class="se_mediaImage __se_img_el" src="./neareventboard_files/모방이냐_수렴이냐-02.jpg" width="3120" height="4160" data-attachment-id="IyCYrn_Zi-r6z1ySUAIRgOitIPqs" alt="">
						</a>
					</div>
				</div>
			</div>
		</div>


















    


		<div class="se_component se_image default">
			<div class="se_sectionArea se_align-justify">
				<div class="se_editArea">
					<div class="se_viewArea">
						<a href="https://m.blog.naver.com/playganghwa/221160729137#" onclick="return false;" class="se_mediaArea __se_image_link __se_link" data-linktype="img" data-linkdata="{&quot;imgId&quot; : &quot;SEDOC-1513123377765--630923965_image_10_img&quot;, &quot;src&quot; : &quot;https://mblogthumb-phinf.pstatic.net/MjAxNzEyMTFfMjgy/MDAxNTEyOTg1ODQyNDkz.9cp8RbKWg0lVOqezwiqoyd3dDbuJf_5RDpQrY20S_UMg.MYHD00BfIRa5R0yF3m1a17GcdE9fU7TNpl2RZLNrO70g.JPEG.playganghwa/%ED%83%81%EC%9B%94%ED%95%9C_%EA%B8%B0%EB%8A%A5-%EA%B5%AC%EC%A1%B0%EB%84%A4%ED%8A%B8%EC%9B%8C%ED%81%AC-03.jpg&quot;, &quot;linkUse&quot; : &quot;false&quot;, &quot;link&quot; : &quot;&quot;}">
							<img id="SEDOC-1513123377765--630923965_image_10_img" class="se_mediaImage __se_img_el" src="./neareventboard_files/탁월한_기능-구조네트워크-03.jpg" width="4160" height="3120" data-attachment-id="IANSzFcTyitNxCiKB4ZFVw8G2mU0" alt="">
						</a>
					</div>
				</div>
			</div>
		</div>


















    








<div class="se_component se_paragraph default">
    <div class="se_sectionArea">
        <div class="se_editArea">
            <div class="se_viewArea se_ff_nanumgothic se_fs_T3 se_align-left">
                <div class="se_editView">
                    <div class="se_textView">
                        <p class="se_textarea"><!-- SE3-TEXT { --><span>자연을 기본으로 모방을 통해&nbsp;진화하는 다양한 과학 이야기를 쉽고 재미있게 풀어내는 이번 과학 전시회에 자녀와 함께 찾아보는 것은 어떨까요??<br></span><span><br></span><span>적극 추천합니다.<br></span><span>이 행사는 과학기술진흥기금 및 복권기금의 지원을 받아 개최합니다.<br></span><span><br></span><span class="se_fs_T2"><b>* 전시기간 : </b></span><span class="se_fs_T2" style="color: rgb(241, 47, 34);"><b><b>2017.12.12(화) ~ 12.16(토) 10시~17시</b></b></span><span class="se_fs_T2"><br></span><span class="se_fs_T2"><b>* 전시장소 : 강화고인돌체육관</b><br></span><span class="se_fs_T2"><b>* 문의전화 : 031-572-9555</b><br></span><span class="se_fs_T2"><b>* 운영기관 : 우석현자연사디스커버리센터</b></span><span><br></span><!-- } SE3-TEXT --></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>












</div>
<!-- SE_DOC_CONTENTS_END -->
<div class="__se_doc_title_end" id="se_doc_contents_end"></div>
<div id="SEDOC-1513123377765--630923965_se_doc_footer" class="se_doc_footer"></div>
</div>
	</div>

	
	
	
	
	
	
		
		<div class="post_tag ">
			<ul>
				
					<li><a href="https://m.blog.naver.com/BlogTagView.nhn?blogId=playganghwa&amp;logNo=221160729137&amp;tagName=%EC%B0%BE%EC%95%84%EA%B0%80%EB%8A%94%EA%B3%BC%ED%95%99%EA%B4%80&amp;page=1" onclick="nclk(this, &#39;pst.tag&#39;, &#39;&#39;, &#39;&#39;);"><span class="ell">#찾아가는과학관</span></a></li>
				
					<li><a href="https://m.blog.naver.com/BlogTagView.nhn?blogId=playganghwa&amp;logNo=221160729137&amp;tagName=%EA%B0%95%ED%99%94%EA%B5%B0%EA%B3%BC%ED%95%99%EC%A0%84%EC%8B%9C&amp;page=1" onclick="nclk(this, &#39;pst.tag&#39;, &#39;&#39;, &#39;&#39;);"><span class="ell">#강화군과학전시</span></a></li>
				
					<li><a href="https://m.blog.naver.com/BlogTagView.nhn?blogId=playganghwa&amp;logNo=221160729137&amp;tagName=%EA%B3%B5%EC%A1%B4%EC%9D%98%ED%98%81%EC%8B%A0%EC%83%9D%EC%B2%B4%EB%AA%A8%EB%B0%A9&amp;page=1" onclick="nclk(this, &#39;pst.tag&#39;, &#39;&#39;, &#39;&#39;);"><span class="ell">#공존의혁신생체모방</span></a></li>
				
					<li><a href="https://m.blog.naver.com/BlogTagView.nhn?blogId=playganghwa&amp;logNo=221160729137&amp;tagName=%EB%8B%A4%EC%96%91%ED%95%9C%EA%B3%BC%ED%95%99%EC%B2%B4%ED%97%98&amp;page=1" onclick="nclk(this, &#39;pst.tag&#39;, &#39;&#39;, &#39;&#39;);"><span class="ell">#다양한과학체험</span></a></li>
				
					<li><a href="https://m.blog.naver.com/BlogTagView.nhn?blogId=playganghwa&amp;logNo=221160729137&amp;tagName=%EC%95%84%EC%9D%B4%EC%96%B8%EB%A7%A8&amp;page=1" onclick="nclk(this, &#39;pst.tag&#39;, &#39;&#39;, &#39;&#39;);"><span class="ell">#아이언맨</span></a></li>
				
					<li><a href="https://m.blog.naver.com/BlogTagView.nhn?blogId=playganghwa&amp;logNo=221160729137&amp;tagName=%EB%87%8C%ED%8C%8C%EB%A1%9C%EB%82%A0%EB%A6%AC%EB%8A%94%EB%93%9C%EB%A1%A0&amp;page=1" onclick="nclk(this, &#39;pst.tag&#39;, &#39;&#39;, &#39;&#39;);"><span class="ell">#뇌파로날리는드론</span></a></li>
				
					<li><a href="https://m.blog.naver.com/BlogTagView.nhn?blogId=playganghwa&amp;logNo=221160729137&amp;tagName=%EA%B0%95%ED%99%94%EA%B5%B0%EA%B0%80%EB%B3%BC%EB%A7%8C%ED%95%9C%EC%A0%84%EC%8B%9C&amp;page=1" onclick="nclk(this, &#39;pst.tag&#39;, &#39;&#39;, &#39;&#39;);"><span class="ell">#강화군가볼만한전시</span></a></li>
				
					<li><a href="https://m.blog.naver.com/BlogTagView.nhn?blogId=playganghwa&amp;logNo=221160729137&amp;tagName=2018%EC%98%AC%ED%95%B4%EC%9D%98%EA%B4%80%EA%B4%91%EB%8F%84%EC%8B%9C%EA%B0%95%ED%99%94&amp;page=1" onclick="nclk(this, &#39;pst.tag&#39;, &#39;&#39;, &#39;&#39;);"><span class="ell">#2018올해의관광도시강화</span></a></li>
				
					<li><a href="https://m.blog.naver.com/BlogTagView.nhn?blogId=playganghwa&amp;logNo=221160729137&amp;tagName=%EB%86%93%EC%B9%98%EA%B8%B0%EC%95%84%EA%B9%8C%EC%9A%B4%EA%B3%BC%ED%95%99%EC%A0%84%EC%8B%9C&amp;page=1" onclick="nclk(this, &#39;pst.tag&#39;, &#39;&#39;, &#39;&#39;);"><span class="ell">#놓치기아까운과학전시</span></a></li>
				
					<li><a href="https://m.blog.naver.com/BlogTagView.nhn?blogId=playganghwa&amp;logNo=221160729137&amp;tagName=%EC%95%84%EC%9D%B4%EB%93%A4%EA%B3%BC%EA%B0%88%EB%A7%8C%ED%95%9C%EA%B3%B3&amp;page=1" onclick="nclk(this, &#39;pst.tag&#39;, &#39;&#39;, &#39;&#39;);"><span class="ell">#아이들과갈만한곳</span></a></li>
				
			</ul>
		</div>
		
	
	
	

	
	
	
		<p class="write_by_smarteditor3">
			<a href="http://m.blog.naver.com/blogpeople?categoryNo=33">PC-모바일 어디서나 수정가능한<br><span class="sp se3_logo" aria-label="스마트에디터3.0"></span>으로 쓴 글입니다<i class="sp bu_arr"></i></a>
		</p>
	
  <div class="section_t1">
    <div class="section_w">
      
        <div class="btn_like_w">
          <div class="btn_like">
            <!-- [D]  좋아요 시스템 -->
            <div class="u_likeit_list_module">
              <a href="https://m.blog.naver.com/playganghwa/221160729137#" class="u_likeit_list_btn u_type_img u_none_txt _sympathyBtn" data-sid="BLOG" data-did="BLOG" data-cid="playganghwa_221160729137" data-likeit="1" _returnfalse="" data-likeit_jindo="jindo"><span class="u_ico"></span> <em class="u_cnt _cnt">19</em></a>
            </div>
            <!-- //[D]  좋아요 시스템 -->
          </div>
          <a href="https://m.blog.naver.com/SympathyHistoryList.nhn?blogId=playganghwa&amp;logNo=221160729137" class="btn_like_more" onclick="nclk(this, &#39;pst.liken&#39;, &#39;&#39;, &#39;&#39;);" style=""><span class="sp">공감한 사람 보러가기</span>
          </a>
        </div>
      
      <div class="btn_r">
        
          <a href="https://m.blog.naver.com/CommentList.nhn?blogId=playganghwa&amp;logNo=221160729137" class="btn_reply" onclick="nclk(this, &#39;pst.re&#39;, &#39;&#39;, &#39;&#39;);">
            <span class="sp ico">댓글</span> <em>4</em>
          </a>
        
        <a class="naver-splugin btn_share _returnFalse" onclick="nclk(this, &#39;pst.share&#39;, &#39;&#39;, &#39;&#39;);" data-style="standard" data-url="https://m.blog.naver.com/PostView.nhn?blogId=playganghwa&amp;logNo=221160729137" data-title="찾아가는 과학관이 강화군을 찾아옵니다. &quot;공존의 혁신 생체모방&quot;" data-likeserviceid="blog" data-likecontentsid="playganghwa_221160729137" data-canonical-url="https://m.blog.naver.com/playganghwa/221160729137" data-oninitialize="splugin_oninitialize();" splugin-id="2982868613"><span class="sp ico" style="pointer-events:none">공유하기</span>
        </a>
      </div>
    </div>
  </div>

  <!-- 작성자정보 -->
  
  <div class="post_writer">
    <div class="post_writer_wrap">
      <a href="https://m.blog.naver.com/playganghwa" onclick="nclk(this, &#39;pst.pfwriter&#39;, &#39;&#39;, &#39;&#39;);" class="link">
        <div class="thumb">
          <span class="img"><img src="./neareventboard_files/%B0%FC%B1%A4%B0%F8%BB%E7-%BD%C5%B7%CE%B0%ED-%B0%AD%C8%AD%28%B4%F5%BC%D2%B1%D4%B8%F0%29.png" width="48" height="48" alt="<%=sname%>"></span>
          
          
        </div>
        <div class="txt">
          
          <strong class="writer"><%=writer %> <span class="sim ico_verified3">공식블로그</span></strong>
          <p class="dsc">2018 올해의 관광도시 강화군입니다.
여행을 좋아하는 여러분과의 소통을 원합니다~~
강화도 여행에 관한 모든 정보 함께 나눠요~~
감성도시 강화군에서는 언제나 여러분을 환영합니다~ </p>
        </div>
      </a>
      <div class="btn_area">
        
          
          
          
          
            <span class="btn add_buddy"><a href="https://m.blog.naver.com/playganghwa/221160729137#" class="_add_buddy _param(playganghwa|true||/BuddyAddForm.nhn) _returnFalse" isblackuser="false" onclick="nclk(this, &#39;pst.pfaddn&#39;, &#39;&#39;, &#39;&#39;);"><span class="sp"></span>이웃추가</a></span>
          
        
        
        
      </div>
      
    </div>
  </div>
  <!-- //작성자정보 -->

  <!-- 이블로그의 다른글 -->
  <div class="lst_t16" id="_recentPostList" style="display: none;">

  </div>
  <!-- //이블로그의 다른글 -->

  
  <div class="lst_t17 lst_m _relatedCategoryPostListArea" style="">
    <h2 class="tit_h2">
      <a href="https://m.blog.naver.com/PostList.nhn?blogId=playganghwa&amp;categoryNo=32&amp;logCode=0" class="link sp_after" onclick="nclk(this, &#39;pst.otherlist&#39;, &#39;&#39;, &#39;&#39;);">
        <span class="td">이 블로그&nbsp;</span>
        <span class="td tit"><strong class="ell"><%=sname %></strong></span>
        <span class="td">의 다른 글</span>
      </a>
    </h2>

    <div class="lst_w">
      <div class="_watchRecentPostList _flickingContainer _isNotTablet" id="_flickingContainer" style="overflow: hidden; height: 0px;">
        <div class="_flickingScroll" id="_flickingScroll" style="width: 0px; height: 0px;">
          <ul class="_category_post_list" id="_relatedCategoryPostListFlickingPage_0" style="width: 0px; float: left;">
  <li class="_category_post_list_221160729137">
    <div class="lst_detail_t17 visited">
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=playganghwa&amp;logNo=221160729137" class="link" onclick="nclk(this, &#39;pst.other&#39;, &#39;&#39;, &#39;&#39;);eprClick.on(&#39;RECENT_POST_LIST&#39;);timerStop();">
        
        <div class="thumb_area sp_before">
          <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzEyMTFfMTk4/MDAxNTEyOTgwODg0NDg2.aBIq3nQ5mQEOkWF2z3qwPQ2goyzLzCZ9wlQHxzaj1YEg.d2GfW3EJdg3iAHOtl_xSFWXhKfELUCGZ7DErhGFV28Eg.JPEG.playganghwa/%B3%BB%BA%CE%C0%FC%B0%E6-01.jpg?type=w210)">
            
          </div>
        </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              찾아가는 과학관이 강화군을 찾아옵니다. "공존의 혁신 생체모방"
            </div>
            <div class="meta_data">
              <span class="td">
                <span class="ell">2017. 12. 11.</span>
              </span>
            </div>
          </div>
        </div>
      </a>
    </div>
  </li>
  
  <li class="_category_post_list_221158606800">
    <div class="lst_detail_t17 ">
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=playganghwa&amp;logNo=221158606800" class="link" onclick="nclk(this, &#39;pst.other&#39;, &#39;&#39;, &#39;&#39;);eprClick.on(&#39;RECENT_POST_LIST&#39;);timerStop();">
        
        <div class="thumb_area sp_before">
          <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzEyMDhfMTcx/MDAxNTEyNzExNDI2OTc4._fw5Xw9bIxm_pxpwihaHua85q4gOldCSIJMM0sQWaZkg.LKql4xCooyFpI8_xqqS61LOo4XTqZbBqFGrI3xFiquQg.JPEG.playganghwa/%BB%E7%B6%FB%C0%C7_%BF%AD%B8%B0_%C0%BD%BE%C7%C8%B8_%C6%F7%BD%BA%C5%CD%28%B0%AD%C8%AD%B1%BA%B8%B3%C7%D5%C3%A2%B4%DC%29.jpg?type=w210)">
            
          </div>
        </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              2017 강화군립합창단의 겨울음악축제 " 사랑의 열린음악회" 초대합니다.
            </div>
            <div class="meta_data">
              <span class="td">
                <span class="ell">2017. 12. 8.</span>
              </span>
            </div>
          </div>
        </div>
      </a>
    </div>
  </li>
  
  <li class="_category_post_list_221155146433">
    <div class="lst_detail_t17 ">
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=playganghwa&amp;logNo=221155146433" class="link" onclick="nclk(this, &#39;pst.other&#39;, &#39;&#39;, &#39;&#39;);eprClick.on(&#39;RECENT_POST_LIST&#39;);timerStop();">
        
        <div class="thumb_area sp_before">
          <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzEyMDRfMjA0/MDAxNTEyMzczMDEzNjc4.vdCAc7jTCBYnOGJUGF6ByASyrL3SJWS10_GmCXAuAT0g.bTq_cBUOg7N8G7iPanXfWTmUMxAayjBmne7xwM4V0_og.JPEG.playganghwa/_MG_0125.JPG?type=w210)">
            
          </div>
        </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              12월 한 해의 마무리는 문화공연과 함께 하세요!!
            </div>
            <div class="meta_data">
              <span class="td">
                <span class="ell">2017. 12. 4.</span>
              </span>
            </div>
          </div>
        </div>
      </a>
    </div>
  </li>
  
  <li class="_category_post_list_221153112954">
    <div class="lst_detail_t17 ">
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=playganghwa&amp;logNo=221153112954" class="link" onclick="nclk(this, &#39;pst.other&#39;, &#39;&#39;, &#39;&#39;);eprClick.on(&#39;RECENT_POST_LIST&#39;);timerStop();">
        
        <div class="thumb_area sp_before">
          <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzEyMDFfMTM1/MDAxNTEyMTE3ODQyNDM3.uLHL_lRqcJlOFpYpcEi_r8Ek7yTWQ1lUiYnoHow_kRIg.vO5-MhnuTnIo6Z7jz1pI8toQ7OswmRIRNaalwMJCXY0g.JPEG.playganghwa/%B8%B6%B8%AE%BE%D3%BB%F3%BA%ED_%B0%F8%BF%AC.jpg?type=w210)">
            
          </div>
        </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              12월 5일 강화도서관에서 열리는 문화행사에 초대합니다.
            </div>
            <div class="meta_data">
              <span class="td">
                <span class="ell">2017. 12. 1.</span>
              </span>
            </div>
          </div>
        </div>
      </a>
    </div>
  </li>
  
  <li class="_category_post_list_221151575367">
    <div class="lst_detail_t17 ">
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=playganghwa&amp;logNo=221151575367" class="link" onclick="nclk(this, &#39;pst.other&#39;, &#39;&#39;, &#39;&#39;);eprClick.on(&#39;RECENT_POST_LIST&#39;);timerStop();">
        
        <div class="thumb_area sp_before">
          <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzExMjlfMjA2/MDAxNTExOTUwNzcwMDY3.Bd3XZsK0QJZF8vidwRMh6OqCNhUrgmQOx9YzFc4p0pMg.UAy6RreOYsjo5ungRjMwbgIph8SANs1ao00AznX1ux8g.PNG.playganghwa/%C1%D6%B8%BB_%BF%B5%C8%AD_%BB%F3%BF%B5%2812%BF%F9%29_%BE%C8%B3%BB.png?type=w210)">
            
          </div>
        </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              도서관에서 책만 읽니?? 나는 영화도 본다.
            </div>
            <div class="meta_data">
              <span class="td">
                <span class="ell">2017. 11. 29.</span>
              </span>
            </div>
          </div>
        </div>
      </a>
    </div>
  </li>
  </ul>
        </div>
      </div>
      <div class="paginate _categoryPostListPagingBtnArea" style="">
        <span class="btn_prev" style=""><i class="sp_before">이전</i></span>
        <a href="https://m.blog.naver.com/playganghwa/221160729137#" class="btn_prev _category_post_list_btn _returnFalse" onclick="nclk(this, &#39;pst.prev&#39;, &#39;&#39;, &#39;&#39;);" style="display: none;"><i class="sp_before">이전</i></a>
        <a href="https://m.blog.naver.com/playganghwa/221160729137#" class="btn_next _category_post_list_btn _returnFalse" onclick="nclk(this, &#39;pst.next&#39;, &#39;&#39;, &#39;&#39;);" style=""><i class="sp_before">다음</i></a>
        <span class="btn_next" style="display: none;"><i class="sp_before">다음</i></span>
      </div>
    </div>
  </div>
  

  
  
  <div id="_endPagePostRecommendArea" style="display:none;"></div>








  <!-- 하단 추천 -->
  <div class="lst_t17">
    <h2 class="tit_h2">
      
        
        
        
        
        
        
        
          
          
          <a href="https://m.blog.naver.com/BlogTagView.nhn?blogId=playganghwa&amp;logNo=221160729137&amp;tagName=%EC%B0%BE%EC%95%84%EA%B0%80%EB%8A%94%EA%B3%BC%ED%95%99%EA%B4%80&amp;page=1&amp;pushNavigation=true" class="link sp_after" onclick="nclk(this, &#39;brc.tagtitle&#39;, &#39;&#39;, &#39;&#39;);">
          <span class="td tit">
            <strong class="ell">#찾아가는과학관</strong>
          </span>
            <span class="td">&nbsp;다른 글</span>
          </a>
        
        
        
        
      
    </h2>
    <div class="lst_w" id="_endPagePostRecommendList">
      <div class="_watchPostRecommend" id="_recommendFlickingContainer" style="overflow: hidden; height: 444px; touch-action: pan-y pinch-zoom;">
        <div id="_recommendFlickingScroll" data-recommendation-type="TAG" data-total-count="8" data-current-page="1" data-count-per-page="5" data-directory-seq="0" style="width: 3294px; height: 444px; transition-timing-function: cubic-bezier(0.1, 0.57, 0.1, 1); transition-duration: 0ms; transform: translate(0px, 0px) translateZ(0px);">
          








  
  
  
  
  
  
  
    
  
  
  
  




  
    <ul class="_recommend_category_post_list" id="_recommendPostListFlickingPage_0" style="width: 1647px; float: left;">
    
  
  <li>
    <div class="lst_detail_t17 ">
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=cyber_gongju&amp;logNo=221157411694&amp;targetKeyword=&amp;targetRecommendationCode=1" data-blog-id="cyber_gongju" data-log-no="221157411694" class="link _endPagePostViewLink" onclick="nclk(this, &#39;brc.taglist&#39;, &#39;&#39;, &#39;&#39;); eprClick.on(&#39;POST_RECOMMEND&#39;);">
        
          <div class="thumb_area sp_before">
            <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzEyMDdfMjE5/MDAxNTEyNjA4NDQ0MjA5.yblRJ4d1oU4wBMnpRye2KPhPs0GnToDcG3NP1CwaiXsg.VZu2UnkFRsfMFbyKqZBo5Z2y0UcV98wcb7Av2f1wKt4g.PNG.cyber_gongju/%B0%F8%C1%D6_00_%B4%EB%C7%A5%C0%CC%B9%CC%C1%F6.png?type=w210)">
              
            </div>
          </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              
                
                
                  국립공주박물관의 '2017 찾아가는 과학관'
                
              
            </div>
            <div class="meta_data">
              
              <span class="td">
                <span class="ell">흥미진진 공주</span>
              </span>
              
              <span class="td">
                
                  <div class="btn_like">
                      <div class="u_likeit_list_module">
                        <div class="u_likeit_list_btn u_none_txt">
                          <span class="u_ico"></span>
                          <em class="u_txt"></em>
                          <em class="u_cnt">17</em>
                        </div>
                      </div>
                  </div>
                
                
                  <span class="reply">
                    <span class="sp">댓글</span> 0
                  </span>
                
              </span>
            </div>
          </div>
        </div>
      </a>
    </div>
  </li>
  

  
  <li>
    <div class="lst_detail_t17 ">
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=diwrxu7579&amp;logNo=221070184137&amp;targetKeyword=&amp;targetRecommendationCode=1" data-blog-id="diwrxu7579" data-log-no="221070184137" class="link _endPagePostViewLink" onclick="nclk(this, &#39;brc.taglist&#39;, &#39;&#39;, &#39;&#39;); eprClick.on(&#39;POST_RECOMMEND&#39;);">
        
          <div class="thumb_area sp_before">
            <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzA4MDlfMjkx/MDAxNTAyMjUyNjQzMTMw.gcR_vFTkiL2C7-LxniCm2wxkiUd86YxQdwO3lBR8BV4g.gWvX8UcFVzzFj8LrR1X-FjYBgbsCzX8xUTY7_2GX8H8g.JPEG.diwrxu7579/KakaoTalk_20170808_151952169.jpg?type=w210)">
              
            </div>
          </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              
                
                
                  남원 드론 교육 디클래스 :: 찾아가는 과학관!!
                
              
            </div>
            <div class="meta_data">
              
              <span class="td">
                <span class="ell">디클래스</span>
              </span>
              
              <span class="td">
                
                  <div class="btn_like">
                      <div class="u_likeit_list_module">
                        <div class="u_likeit_list_btn u_none_txt">
                          <span class="u_ico"></span>
                          <em class="u_txt"></em>
                          <em class="u_cnt">7</em>
                        </div>
                      </div>
                  </div>
                
                
                  <span class="reply">
                    <span class="sp">댓글</span> 10
                  </span>
                
              </span>
            </div>
          </div>
        </div>
      </a>
    </div>
  </li>
  

  
  <li>
    <div class="lst_detail_t17 ">
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=nanumlotto&amp;logNo=220890237345&amp;targetKeyword=&amp;targetRecommendationCode=1" data-blog-id="nanumlotto" data-log-no="220890237345" class="link _endPagePostViewLink" onclick="nclk(this, &#39;brc.taglist&#39;, &#39;&#39;, &#39;&#39;); eprClick.on(&#39;POST_RECOMMEND&#39;);">
        
          <div class="thumb_area sp_before">
            <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNjEyMjBfNTIg/MDAxNDgyMTk0ODA5MDcx.YwNFX2D5o32UswFWrIx3qTVVMQw_BGPqi9-oI9rksQYg.Maowyd-URwP8jtMioudKBD34mleSda6MAyG0We9Qqxog.PNG.nanumlotto/%B1%D7%B8%B21.png?type=w210)">
              
            </div>
          </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              
                
                
                  [복권기금 이야기]  청소년에게 과학의 꿈을 심어주는, 복권기금 
                
              
            </div>
            <div class="meta_data">
              
              <span class="td">
                <span class="ell">행복나눔</span>
              </span>
              
              <span class="td">
                
                  <div class="btn_like">
                      <div class="u_likeit_list_module">
                        <div class="u_likeit_list_btn u_none_txt">
                          <span class="u_ico"></span>
                          <em class="u_txt"></em>
                          <em class="u_cnt">23</em>
                        </div>
                      </div>
                  </div>
                
                
                  <span class="reply">
                    <span class="sp">댓글</span> 5
                  </span>
                
              </span>
            </div>
          </div>
        </div>
      </a>
    </div>
  </li>
  

  
  <li>
    <div class="lst_detail_t17 ">
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=goodnamwon&amp;logNo=220850039221&amp;targetKeyword=&amp;targetRecommendationCode=1" data-blog-id="goodnamwon" data-log-no="220850039221" class="link _endPagePostViewLink" onclick="nclk(this, &#39;brc.taglist&#39;, &#39;&#39;, &#39;&#39;); eprClick.on(&#39;POST_RECOMMEND&#39;);">
        
          <div class="thumb_area sp_before">
            <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNjEwMzFfMTgg/MDAxNDc3OTA1Mjk3ODk4.wZqMTQ768OGRkg7BQPkSiPkQhuomWvOYBmDNT2fcZnog.vIIkXXfo6cIecD7uzc5YiN9HvNXagHlHaWMi8gwR3mEg.JPEG.goodnamwon/1031_%BD%C3%BC%B3%BB%E7%BE%F7%BC%D2_-_%B5%CE%B5%E5%B8%B2_%C7%C1%B7%CE%C1%A7%C6%AE_%BB%E7%BE%F72.jpg?type=w210)">
              
            </div>
          </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              
                
                
                  남원항공우주천문대 '찾아가는' 과학관
                
              
            </div>
            <div class="meta_data">
              
              <span class="td">
                <span class="ell">남원시</span>
              </span>
              
              <span class="td">
                
                  <div class="btn_like">
                      <div class="u_likeit_list_module">
                        <div class="u_likeit_list_btn u_none_txt">
                          <span class="u_ico"></span>
                          <em class="u_txt"></em>
                          <em class="u_cnt">13</em>
                        </div>
                      </div>
                  </div>
                
                
                  <span class="reply">
                    <span class="sp">댓글</span> 4
                  </span>
                
              </span>
            </div>
          </div>
        </div>
      </a>
    </div>
  </li>
  

  
  <li>
    <div class="lst_detail_t17 ">
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=lhn0819&amp;logNo=220847313826&amp;targetKeyword=&amp;targetRecommendationCode=1" data-blog-id="lhn0819" data-log-no="220847313826" class="link _endPagePostViewLink" onclick="nclk(this, &#39;brc.taglist&#39;, &#39;&#39;, &#39;&#39;); eprClick.on(&#39;POST_RECOMMEND&#39;);">
        
          <div class="thumb_area sp_before">
            <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNjEwMjhfMjI1/MDAxNDc3NTg0MjMyOTU0.oNbh5z0FAnjLBVmdTpt6kCe2LtgVlza3uHZ_b50ZVQwg.X5aaYhbpTIx82mxpcPulsq9i037Pxowk3BajjMSVzBIg.JPEG.lhn0819/20160926_143605.jpg?type=w210)">
              
            </div>
          </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              
                
                
                  [기획전] 찾아가는 과학관 (여주)
                
              
            </div>
            <div class="meta_data">
              
              <span class="td">
                <span class="ell">겨울데이지</span>
              </span>
              
              <span class="td">
                
                  <div class="btn_like">
                      <div class="u_likeit_list_module">
                        <div class="u_likeit_list_btn u_none_txt">
                          <span class="u_ico"></span>
                          <em class="u_txt"></em>
                          <em class="u_cnt">0</em>
                        </div>
                      </div>
                  </div>
                
                
                  <span class="reply">
                    <span class="sp">댓글</span> 0
                  </span>
                
              </span>
            </div>
          </div>
        </div>
      </a>
    </div>
  </li>
  
    </ul>
  

  
    <ul class="_recommend_category_post_list" id="_recommendPostListFlickingPage_1" style="width: 1647px; float: left;">
    
  
  <li>
    <div class="lst_detail_t17 ">
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=orchiswoo&amp;logNo=220771853857&amp;targetKeyword=&amp;targetRecommendationCode=1" data-blog-id="orchiswoo" data-log-no="220771853857" class="link _endPagePostViewLink" onclick="nclk(this, &#39;brc.taglist&#39;, &#39;&#39;, &#39;&#39;); eprClick.on(&#39;POST_RECOMMEND&#39;);">
        
          <div class="thumb_area sp_before">
            <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/20160726_25/orchiswoo_1469501444504irqpI_JPEG/BandPhoto_2016_07_25_18_52_42.jpg?type=w210)">
              
            </div>
          </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              
                
                
                  국립부산과학관 '찾아가는 과학관'_2016 두드림 프로젝트
                
              
            </div>
            <div class="meta_data">
              
              <span class="td">
                <span class="ell">아자</span>
              </span>
              
              <span class="td">
                
                  <div class="btn_like">
                      <div class="u_likeit_list_module">
                        <div class="u_likeit_list_btn u_none_txt">
                          <span class="u_ico"></span>
                          <em class="u_txt"></em>
                          <em class="u_cnt">1</em>
                        </div>
                      </div>
                  </div>
                
                
                  <span class="reply">
                    <span class="sp">댓글</span> 0
                  </span>
                
              </span>
            </div>
          </div>
        </div>
      </a>
    </div>
  </li>
  

  
  <li>
    <div class="lst_detail_t17 ">
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=daegu_news&amp;logNo=220475467550&amp;targetKeyword=&amp;targetRecommendationCode=1" data-blog-id="daegu_news" data-log-no="220475467550" class="link _endPagePostViewLink" onclick="nclk(this, &#39;brc.taglist&#39;, &#39;&#39;, &#39;&#39;); eprClick.on(&#39;POST_RECOMMEND&#39;);">
        
          <div class="thumb_area sp_before">
            <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/20150908_146/daegu_news_1441699897954gIxk3_PNG/%B0%FA%C7%D0%C3%BC%C7%E8_%B4%EB%B1%B8%B0%E6%BA%CF_%C3%A3%BE%C6%B0%A1%B4%C2_%B0%FA%C7%D0%B0%FC.png?type=w210)">
              
            </div>
          </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              
                
                
                  국립대구과학관 찾아가는 종합과학관 '두드림 프로젝트 과학두레 마당' 개최
                
              
            </div>
            <div class="meta_data">
              
              <span class="td">
                <span class="ell">대구광역시</span>
              </span>
              
              <span class="td">
                
                  <div class="btn_like">
                      <div class="u_likeit_list_module">
                        <div class="u_likeit_list_btn u_none_txt">
                          <span class="u_ico"></span>
                          <em class="u_txt"></em>
                          <em class="u_cnt">29</em>
                        </div>
                      </div>
                  </div>
                
                
                  <span class="reply">
                    <span class="sp">댓글</span> 9
                  </span>
                
              </span>
            </div>
          </div>
        </div>
      </a>
    </div>
  </li>
  

  
  <li>
    <div class="lst_detail_t17 ">
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=cellkty&amp;logNo=220143156031&amp;targetKeyword=&amp;targetRecommendationCode=1" data-blog-id="cellkty" data-log-no="220143156031" class="link _endPagePostViewLink" onclick="nclk(this, &#39;brc.taglist&#39;, &#39;&#39;, &#39;&#39;); eprClick.on(&#39;POST_RECOMMEND&#39;);">
        
          <div class="thumb_area sp_before">
            <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/20141006_178/cellkty_1412605683340xm3ha_JPEG/SAM_4444.JPG?type=w210)">
              
            </div>
          </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              
                
                
                  찾아가는 과학관 충북청주 옥산초
                
              
            </div>
            <div class="meta_data">
              
              <span class="td">
                <span class="ell">cell강태윤</span>
              </span>
              
              <span class="td">
                
                  <div class="btn_like">
                      <div class="u_likeit_list_module">
                        <div class="u_likeit_list_btn u_none_txt">
                          <span class="u_ico"></span>
                          <em class="u_txt"></em>
                          <em class="u_cnt">2</em>
                        </div>
                      </div>
                  </div>
                
                
                  <span class="reply">
                    <span class="sp">댓글</span> 0
                  </span>
                
              </span>
            </div>
          </div>
        </div>
      </a>
    </div>
  </li>
  
    </ul>
  

        </div>
      </div>
      
      <div class="paginate" id="_recommendPostListPagingBtnArea">
        <span class="btn_prev"><i class="sp_before">이전</i></span>
        <a href="https://m.blog.naver.com/playganghwa/221160729137#" class="btn_prev _prev_recommend_post_list_btn _returnFalse" onclick="nclk(this, &#39;brc.tagprev&#39;, &#39;&#39;, &#39;&#39;);" style="display:none"><i class="sp_before">이전</i></a>
        <a href="https://m.blog.naver.com/playganghwa/221160729137#" class="btn_next _next_recommend_post_list_btn _returnFalse" onclick="nclk(this, &#39;brc.tagnext&#39;, &#39;&#39;, &#39;&#39;);" style=""><i class="sp_before">다음</i></a>
        <span class="btn_next" style="display: none;"><i class="sp_before">다음</i></span>
      </div>
      
    </div>
  </div>
  <!-- //하단 추천 -->

  

	
</div>

<div class="social_plugin_property" style="display:none">{"title":"찾아가는 과학관이 강화군을 찾아옵니다. \"공존의 혁신 생체모방\"","source":"http://blog.naver.com/playganghwa/221160729137","blogName":"2018 올해..","blogId":"playganghwa","logNo":221160729137,"smartEditorVersion":3,"outsideDisplay":true,"meDisplay":true,"lineDisplay":true,"cafeDisplay":true,"blogDisplay":true}</div>
<div class="btn_top">
	<a href="https://m.blog.naver.com/playganghwa/221160729137#" onclick="nclk(this, &#39;pst.top&#39;, &#39;&#39;, &#39;&#39;);"><span class="sp"></span> 맨위로</a>
</div>

<div id="POST_VIEW_BOTTOM_WEB" class="btm_banner"><div class="p_bner _banner _param({  os:&#39;web&#39;,  openDate:&#39;2017/11/28 16:30 ~ 2017/12/14 23:59&#39; })" style="border: none; background: rgb(242, 179, 26); display: block;" id="banner_POST_VIEW_BOTTOM_WEB_266"><a href="http://post.naver.com/viewer/postView.nhn?volumeNo=10555149&amp;memberNo=201497" class="imageBanner" onclick="nclk(this, &#39;pst.bpromo&#39;, &#39;&#39;, &#39;&#39;);"><img src="./neareventboard_files/엔드하단_포스트트래비_640x120_A.png" width="320" height="59" alt=""></a></div></div>
<div class="btn_pcver_area">
	<a href="http://blog.naver.com/playganghwa/221160729137?viewType=pc" class="btn_pcver" onclick="nclk(this, &#39;pst.pcview&#39;, &#39;&#39;, &#39;&#39;);"><span class="sp ico_pc"></span>PC버전으로 보기</a>
</div>
	</div>
	<div id="_loading2" class="rego_loading loading_end" style="display:none">
        <div class="align"><span class="dot"></span><span class="dot"></span><span class="dot"></span></div>
    </div>
    
  <div id="_div_categorylist" class="lyr_category_lst1" style="display:none;">
    <div class="head">
      <a href="https://m.blog.naver.com/playganghwa/221160729137#" class="btn_close _closeCategoryList"><span class="sp">닫기</span></a>
      <div class="table">
        <div class="td">
          <h2 class="title" style="margin-left:50px;"><span class="ell">카테고리</span></h2>
        </div>
        <div class="td btn_area">
          <a href="https://m.blog.naver.com/playganghwa" class="btn_bloghome"><span class="sp"></span> 이 블로그 홈</a>
        </div>
      </div>
    </div>
    <ul id="_ul_categorylist" class="lst_t4"></ul>
  </div>
</div>


  
    
    <div class="lst_t17 tablet_aside _relatedCategoryPostListArea" style="">
      <div class="post_writer_area">
        <a href="https://m.blog.naver.com/PostList.nhn?blogId=playganghwa" class="link" onclick="nclk(this, &#39;psp.writer&#39;, &#39;&#39;, &#39;&#39;);">
        <span class="thumb_area">
          <span class="thumb">
            <span class="img"><img src="./neareventboard_files/%B0%FC%B1%A4%B0%F8%BB%E7-%BD%C5%B7%CE%B0%ED-%B0%AD%C8%AD%28%B4%F5%BC%D2%B1%D4%B8%F0%29.png" width="48" height="48" alt="<%=writer%>"></span>
            
            
          </span>
        </span>
          <span class="txt_area"><strong class="writer ell"><%=writer %></strong></span>
        </a>
      </div>
      <h2 class="tit_h2">
        <a href="https://m.blog.naver.com/PostList.nhn?blogId=playganghwa&amp;categoryNo=32&amp;logCode=0" class="link sp_after" onclick="nclk(this, &#39;pst.otherlist&#39;, &#39;&#39;, &#39;&#39;);">
          <span class="td">이 블로그&nbsp;</span>
          <span class="td tit"><strong class="ell"><%=lname %></strong></span>
          <span class="td">의 다른 글</span>
        </a>
      </h2>
      <div class="lst_w">
        <div class="_flickingContainer _flicking_tablet" id="_flickingContainer_tablet" style="overflow: hidden; touch-action: pan-y pinch-zoom; height: 455px;">
          <div class="_flickingScroll _flicking_tablet" id="_flickingScroll_tablet" style="transition-timing-function: cubic-bezier(0.1, 0.57, 0.1, 1); transition-duration: 0ms; transform: translate(0px, 0px) translateZ(0px); width: 255px; height: 455px;">
            <ul class="_category_post_list" id="_relatedCategoryPostListFlickingPage_0_tablet" style="width: 255px; float: left;">
  <li class="_category_post_list_221160729137">
    <div class="lst_detail_t17 visited">
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=playganghwa&amp;logNo=221160729137" class="link" onclick="nclk(this, &#39;pst.other&#39;, &#39;&#39;, &#39;&#39;);eprClick.on(&#39;RECENT_POST_LIST&#39;);timerStop();">
        
        <div class="thumb_area sp_before">
          <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzEyMTFfMTk4/MDAxNTEyOTgwODg0NDg2.aBIq3nQ5mQEOkWF2z3qwPQ2goyzLzCZ9wlQHxzaj1YEg.d2GfW3EJdg3iAHOtl_xSFWXhKfELUCGZ7DErhGFV28Eg.JPEG.playganghwa/%B3%BB%BA%CE%C0%FC%B0%E6-01.jpg?type=w210)">
            
          </div>
        </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              찾아가는 과학관이 강화군을 찾아옵니다. "공존의 혁신 생체모방"
            </div>
            <div class="meta_data">
              <span class="td">
                <span class="ell">2017. 12. 11.</span>
              </span>
            </div>
          </div>
        </div>
      </a>
    </div>
  </li>
  
  <li class="_category_post_list_221158606800">
    <div class="lst_detail_t17 ">
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=playganghwa&amp;logNo=221158606800" class="link" onclick="nclk(this, &#39;pst.other&#39;, &#39;&#39;, &#39;&#39;);eprClick.on(&#39;RECENT_POST_LIST&#39;);timerStop();">
        
        <div class="thumb_area sp_before">
          <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzEyMDhfMTcx/MDAxNTEyNzExNDI2OTc4._fw5Xw9bIxm_pxpwihaHua85q4gOldCSIJMM0sQWaZkg.LKql4xCooyFpI8_xqqS61LOo4XTqZbBqFGrI3xFiquQg.JPEG.playganghwa/%BB%E7%B6%FB%C0%C7_%BF%AD%B8%B0_%C0%BD%BE%C7%C8%B8_%C6%F7%BD%BA%C5%CD%28%B0%AD%C8%AD%B1%BA%B8%B3%C7%D5%C3%A2%B4%DC%29.jpg?type=w210)">
            
          </div>
        </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              2017 강화군립합창단의 겨울음악축제 " 사랑의 열린음악회" 초대합니다.
            </div>
            <div class="meta_data">
              <span class="td">
                <span class="ell">2017. 12. 8.</span>
              </span>
            </div>
          </div>
        </div>
      </a>
    </div>
  </li>
  
  <li class="_category_post_list_221155146433">
    <div class="lst_detail_t17 ">
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=playganghwa&amp;logNo=221155146433" class="link" onclick="nclk(this, &#39;pst.other&#39;, &#39;&#39;, &#39;&#39;);eprClick.on(&#39;RECENT_POST_LIST&#39;);timerStop();">
        
        <div class="thumb_area sp_before">
          <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzEyMDRfMjA0/MDAxNTEyMzczMDEzNjc4.vdCAc7jTCBYnOGJUGF6ByASyrL3SJWS10_GmCXAuAT0g.bTq_cBUOg7N8G7iPanXfWTmUMxAayjBmne7xwM4V0_og.JPEG.playganghwa/_MG_0125.JPG?type=w210)">
            
          </div>
        </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              12월 한 해의 마무리는 문화공연과 함께 하세요!!
            </div>
            <div class="meta_data">
              <span class="td">
                <span class="ell">2017. 12. 4.</span>
              </span>
            </div>
          </div>
        </div>
      </a>
    </div>
  </li>
  
  <li class="_category_post_list_221153112954">
    <div class="lst_detail_t17 ">
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=playganghwa&amp;logNo=221153112954" class="link" onclick="nclk(this, &#39;pst.other&#39;, &#39;&#39;, &#39;&#39;);eprClick.on(&#39;RECENT_POST_LIST&#39;);timerStop();">
        
        <div class="thumb_area sp_before">
          <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzEyMDFfMTM1/MDAxNTEyMTE3ODQyNDM3.uLHL_lRqcJlOFpYpcEi_r8Ek7yTWQ1lUiYnoHow_kRIg.vO5-MhnuTnIo6Z7jz1pI8toQ7OswmRIRNaalwMJCXY0g.JPEG.playganghwa/%B8%B6%B8%AE%BE%D3%BB%F3%BA%ED_%B0%F8%BF%AC.jpg?type=w210)">
            
          </div>
        </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              12월 5일 강화도서관에서 열리는 문화행사에 초대합니다.
            </div>
            <div class="meta_data">
              <span class="td">
                <span class="ell">2017. 12. 1.</span>
              </span>
            </div>
          </div>
        </div>
      </a>
    </div>
  </li>
  
  <li class="_category_post_list_221151575367">
    <div class="lst_detail_t17 ">
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=playganghwa&amp;logNo=221151575367" class="link" onclick="nclk(this, &#39;pst.other&#39;, &#39;&#39;, &#39;&#39;);eprClick.on(&#39;RECENT_POST_LIST&#39;);timerStop();">
        
        <div class="thumb_area sp_before">
          <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzExMjlfMjA2/MDAxNTExOTUwNzcwMDY3.Bd3XZsK0QJZF8vidwRMh6OqCNhUrgmQOx9YzFc4p0pMg.UAy6RreOYsjo5ungRjMwbgIph8SANs1ao00AznX1ux8g.PNG.playganghwa/%C1%D6%B8%BB_%BF%B5%C8%AD_%BB%F3%BF%B5%2812%BF%F9%29_%BE%C8%B3%BB.png?type=w210)">
            
          </div>
        </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              도서관에서 책만 읽니?? 나는 영화도 본다.
            </div>
            <div class="meta_data">
              <span class="td">
                <span class="ell">2017. 11. 29.</span>
              </span>
            </div>
          </div>
        </div>
      </a>
    </div>
  </li>
  </ul>
          </div>
        </div>
        <div class="paginate _categoryPostListPagingBtnArea" style="">
          <span class="btn_prev" style=""><i class="sp_before">이전</i></span>
          <a href="https://m.blog.naver.com/playganghwa/221160729137#" class="btn_prev _category_post_list_btn _returnFalse" onclick="nclk(this, &#39;pst.prev&#39;, &#39;&#39;, &#39;&#39;);" style="display: none;"><i class="sp_before">이전</i></a>
          <a href="https://m.blog.naver.com/playganghwa/221160729137#" class="btn_next _category_post_list_btn _returnFalse" onclick="nclk(this, &#39;pst.next&#39;, &#39;&#39;, &#39;&#39;);" style=""><i class="sp_before">다음</i></a>
          <span class="btn_next" style="display: none;"><i class="sp_before">다음</i></span>
        </div>
      </div>
    </div>
    
  
  


<!-- 플로팅 메뉴 -->
<div class="floating_menu" style="">
  <div class="btn_area">
    
      <div class="btn_like_w">
        <div class="btn_like">
          <!-- [D]  좋아요 시스템 -->
          <div class="u_likeit_list_module">
            <a href="https://m.blog.naver.com/playganghwa/221160729137#" class="u_likeit_list_btn u_type_img u_none_txt _sympathyBtn" data-sid="BLOG" data-did="BLOG" data-cid="playganghwa_221160729137" data-likeit="1" data-log="flo.like|flo.unlike" _returnfalse="" data-likeit_jindo="jindo"><span class="u_ico"></span> <em class="u_cnt _cnt">19</em></a>
          </div>
          <!-- //[D]  좋아요 시스템 -->
        </div>
        <a href="https://m.blog.naver.com/SympathyHistoryList.nhn?blogId=playganghwa&amp;logNo=221160729137" class="btn_like_more" onclick="nclk(this, &#39;flo.likemore&#39;, &#39;&#39;, &#39;&#39;);" style=""><span class="sp">공감한 사람 보러가기</span></a>
      </div>
    
    <div class="btn_r">
      
        <a href="https://m.blog.naver.com/CommentList.nhn?blogId=playganghwa&amp;logNo=221160729137" class="btn_reply" onclick="nclk(this, &#39;flo.reply&#39;, &#39;&#39;, &#39;&#39;);">
          <span class="sp ico">댓글</span> <em>4</em>
        </a>
      
      <a href="https://m.blog.naver.com/playganghwa/221160729137#" class="naver-splugin btn_share _returnFalse" onclick="nclk(this, &#39;flo.share&#39;, &#39;&#39;, &#39;&#39;);" data-style="standard" data-url="https://m.blog.naver.com/PostView.nhn?blogId=playganghwa&amp;logNo=221160729137" data-title="찾아가는 과학관이 강화군을 찾아옵니다. &quot;공존의 혁신 생체모방&quot;" data-likeserviceid="blog" data-likecontentsid="playganghwa_221160729137" data-canonical-url="https://m.blog.naver.com/playganghwa/221160729137" data-oninitialize="splugin_oninitialize();" splugin-id="6430403397"><span class="sp ico" style="pointer-events:none">공유하기</span></a>
    </div>
  </div>
</div>
<!-- //플로팅 메뉴 -->

<div class="animation_like">
  <div class="heart">
    <svg>
      <path xmlns="http://www.w3.org/2000/svg" d="M80.403 0C71.03 0 61.446 4.472 55 15.346 48.554 4.472 38.97 0 29.597 0 14.52 0 0 12.73 0 31.423 0 61.728 34.943 83.395 55 95c20.057-11.605 55-33.272 55-63.577C110 12.737 95.48 0 80.403 0" fill="#E84765" fill-rule="evenodd"></path>
    </svg>
  </div>
</div>






	
	
	
	
	
	
	


	<!-- 네이버앱설치유도 -->
		



<style type="text/css">
.lyr_app{box-sizing:border-box;position:fixed;top:0;left:0;right:0;bottom:0;z-index:4000;height:100%;padding:0 28px;text-align:center}
.lyr_app .dimmed{position:absolute;top:0;left:0;right:0;bottom:0;z-index:4000;width:100%;height:100%;background:#000;opacity:.8}
.lyr_app:before{display:inline-block;overflow:hidden;width:0;height:100%;margin-left:-5px;vertical-align:middle;content:''}
.lyr_app .lyr_cont{display:inline-block;position:relative;z-index:5000;width:100%;max-width:424px;max-height:602px;vertical-align:middle;}
.lyr_app .lyr_cont img{width:100%;vertical-align:top}
.lyr_app .lyr_cont a{display:block;position:absolute;overflow:hidden;color:transparent;}
.lyr_app .lyr_cont .link2{left:0;top:70.7%;width:100%;height:14.5%;}
.lyr_app .lyr_cont .link3{left:0;bottom:0;width:100%;height:14.5%;}
.lyr_app .lyr_cont .link4{right:0;top:0;width:11.5%;height:8.5%;}
@media screen and (max-height: 480px) and (orientation: landscape){.lyr_app .lyr_cont{width:180px}}
</style>

<div class="lyr_app" id="naverAppLyr" style="display:none">
	<div class="dimmed"></div>
	<div class="lyr_cont">
		<img src="./neareventboard_files/lyr_app2.png" alt="기록을 나누고 함께 성장하는 공간 네이버 블로그">
		<a href="http://m.nstore.naver.com/appstore/installApp.nhn?productNo=409102" class="link2" onclick="nclk(this, &#39;ins.naver&#39;, &#39;&#39;, &#39;&#39;);">네이버 앱스토어에서 설치하기</a>
		<a href="market://details?id=com.nhn.android.blog" class="link3" onclick="nclk(this, &#39;ins.google&#39;, &#39;&#39;, &#39;&#39;);">구글플레이에서 설치하기</a>
		<a href="https://m.blog.naver.com/playganghwa/221160729137#" class="link4 _returnFalse">레이어 닫기</a>
	</div>
</div>

<script>


$Fn(this.doClick, this).attach($("naverAppLyr"), "click");

function doClick(oEvent) {
	var el = oEvent.element;
	var wel = $Element(cssquery.getSingle('!button', el) ? cssquery.getSingle('!button', el) : $Element(cssquery.getSingle('!a', el) ? cssquery.getSingle('!a', el) : el));
	
	if (wel.hasClass("link4")) {	
		if ($("body")) {
			$("body").setAttribute('style', '');
		}
		$Element("naverAppLyr").toggle();
	} else if (wel.hasClass('_returnFalse')) {
		event.stop();
	} 
}

</script>
	<!--// 네이버앱설치유도 -->


<div class="lyr_add_buddy _buddyRecommendationLayer fade_out">
    <div class="box">
        <div class="writer_area">
            <span class="dsc">
                <strong class="nick"><span class="ell">강화에서 놀자(playganghwa)</span></strong>
                <span class="txt">님을 이웃추가하고 새글을 받아보세요</span>
            </span>
        </div>

        <div class="btn_area">
            <span class="btn"><a href="https://m.blog.naver.com/playganghwa/221160729137#" class="_cancelBuddyRecommendation">취소</a></span>
            <span class="btn add_buddy"><a href="https://m.blog.naver.com/playganghwa/221160729137#" class="_add_buddy_by_recommendation"><span class="sp"></span>이웃추가</a></span>
        </div>
    </div>
</div>

<div id="blogTeamBuddyRecommendationLayer" class="pop_lyr2 _blogTeamBuddyRecommendationLayer" style="display:none;">
</div>



<script type="text/javascript" src="./neareventboard_files/se_init.min.js.다운로드"></script>


<script type="text/template" id="recommend_blogteam">
<div class="dimmed">
</div>
<div class="lyr_cont">
	<div class="lyr_add_buddy">
		<div class="writer_area">
			<span class="dsc">
				<span class="thumb">
               		<img src="{=profileImageUrl}" width="50" height="50" alt="섬네일">
				</span>
				<strong class="nick">첫 글 작성을 축하드려요!<br>블로그팀과 이웃도 맺어보실래요?</strong>
			</span>
		</div>
		<a href="#" class="btn add_buddy _add_buddy _add_blogteam_buddy _param(blogpeople|true||/BuddyAddForm.nhn) _returnFalse" onclick="nclk(this, 'bap.add','','');">이웃추가</a>
		<a href="#" class="btn cancel _cancle_blogteam_buddy" onclick="nclk(this, 'bap.can','','');">취소</a>
	</div>
</div>
</script>


<script type="text/template" id="category_post_list_template">
  {for post in posts}
  <li class="_category_post_list_{=post.logNo}">
    <div class="lst_detail_t17 {if logNo == post.logNo}visited{/if}">
      <a href="/PostView.nhn?blogId={=blogId}&logNo={=post.logNo}"
         class="link" onclick="nclk(this, 'pst.other', '', '');eprClick.on('RECENT_POST_LIST');timerStop();">
        {if post.existThumbnail}
        <div class="thumb_area sp_before">
          <div class="thumb" style="background-image:url({=post.encodedThumbnailUrl})">
            {if post.videoThumbnail}
            <span class="ico_video sp">동영상</span>
            {/if}
          </div>
        </div>
        {/if}
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              {=post.title}
            </div>
            <div class="meta_data">
              <span class="td">
                <span class="ell">{=post.postAddDate}</span>
              </span>
            </div>
          </div>
        </div>
      </a>
    </div>
  </li>
  {/for}
</script>


<script type="text/javascript">
var gUrlMap = {
		'PostCategoryListAsync' : '/rego/PostCategoryListAsyncTpl.nhn',
		'PostView' : '/PostView.nhn',
		'CommentList' : '/CommentList.nhn', // AngularJS
		'ScrapToBlog' : '/ScrapToBlog.nhn',
		'ScrapToCafe' : '/ScrapToCafe.nhn',
		'PostUpdateSetInfoForm' : '/PostUpdateSetInfoForm.nhn',
		
		'Login' : '/Login.nhn',
		'Logout' : '/Logout.nhn',
		'PostDelete' : '/PostDelete.nhn',
		'FirstWriterRecommendBuddyCheckAsync' : '/rego/FirstWriterRecommendBuddyCheckAsync.nhn',
		'PhotoViewer' : 'm.photoviewer.naver.com'
	}

</script>


<script type="text/javascript" src="./neareventboard_files/likeIt.list.js.다운로드"></script>
<script src="./neareventboard_files/ad.js.다운로드"></script>
<script type="text/javascript">
document.domain = 'naver.com';
var blogId = "playganghwa";
var bLoginUser = true;
var gMCA = JSON.parse('{"mobileInAppType":"NOTINAPP","mobileBrowser":{"type":"UNDEFINED","version":0.0,"safari":false,"isAndroid":false,"androidGingerbread":false,"isDolfin":false,"dolfin":false,"isOpera":false,"opera":false,"android":false},"isNaverInApp":false,"notInAppSafariOrAndroidBrowser":false,"naverServiceAppInstallUrl":"/services.html","blogAppInstallUrl":"http://m.naver.com/services.html","supportToolButton":false,"supportHappybeanWrite":false,"supportPostAlbumApp":false,"supportDaliyWrite":false,"supportBuddyAppPushAndBuddyInvitation":false,"stampEnabledInBuddyListAppVersion":false,"lazyLoadableBrowser":false,"iOSMenuNavigationV2":false,"iOSMenuNavigationV1":false,"iOS7":false,"stampEnabledAppVersion":false,"inAppVersion":"2.0.0","androidNewStyleAppVersion":false,"inAppYn":false,"isAndroidApp":false,"isIOSApp":false}');
var gsPostTitle = "찾아가는 과학관이 강화군을 찾아옵니다. &quot;공존의 혁신 생체모방&quot; : 네이버 블로그";
var gnCategoryNo = 32;

var gsLocationOrigin = "https://m.blog.naver.com";
var sStartLogNo = '221160729137';
var sNavType = '';
var sDirectorySeq = '';
var sBuddyGroupId = '';

var gLogNo = '221160729137';
var isScrapPost = false;


var readOnlyStatus = false;
var readOnlyStatusAll = false;
var readOnlyLinkErrorMsgMobile = '블로그 점검 중으로 기존 글 삭제 댓글 답글 공감 이웃추가 구독하기 새글OFF 그룹이동 기능이 제한됩니다.';





var safariBrowser = "SAFARI";
var safariIpadBrowser = "SAFARI_IPAD";
var androidBrowser = "ANDROID";
var androidGalTabBrowser = "ANDROID_GALTAB";
var androidHoneyCombBrowser = "ANDROID_HONEYCOMB";

var gBrowserType = "UNDEFINED";
var inAppVersion = "2.0.0";
var isInApp = false;
var isAndroidBrowser = (gBrowserType == androidBrowser) || (gBrowserType == androidGalTabBrowser) || (gBrowserType == androidHoneyCombBrowser);
var isSafariBrowser = (gBrowserType == safariBrowser || gBrowserType == safariIpadBrowser);

var gbIsAfterWrite = false;

var userId = "ggh541";
var scrapedInfo = {
		bMemo : false,
		logNo : 0,
		nOpenType : 2
	}


var gBannerListMapJson = '{\"POST_VIEW_BOTTOM_WEB\":[{\"bannerId\":266,\"title\":\"포스트 월간 디자인\",\"startDate\":1511854200000,\"startDateStr\":null,\"endDate\":1513263540000,\"endDateStr\":null,\"state\":2,\"targetOS\":1,\"targetDevice\":0,\"targetAppVersion\":\"\",\"targetSection\":\"q\",\"bannerType\":0,\"bannerImgUrl\":\"https:\/\/blogfiles.pstatic.net\/MjAxNzExMjhfOTQg\/MDAxNTExODU0MDA2OTQy._qDog8YQC1DnOcqARjk1shyBt2Cr_qu_kTIFjcMUUNkg.qV8GvJl5vrwjezx7ZZIVL33gC4rxolmCHDKCsaWTtnYg.PNG.bloglabdefaultid\/%EC%97%94%EB%93%9C%ED%95%98%EB%8B%A8_%ED%8F%AC%EC%8A%A4%ED%8A%B8%ED%8A%B8%EB%9E%98%EB%B9%84_640x120_A.png\",\"bannerText\":\"\",\"bannerLink\":\"http:\/\/post.naver.com\/viewer\/postView.nhn?volumeNo=10555149&memberNo=201497\",\"nclickCode\":\"pst.bpromo\",\"addDate\":1511854046740,\"modiDate\":null,\"bannerBgcolor\":\"#F2B31A\",\"stateTypeValue\":\"ACTIVATE\",\"targetDeviceTypeValue\":\"ALL\",\"targetSectionDesc\":\"포스트보기하단-웹\",\"bannerTypeValue\":\"IMAGE\",\"encodedBannerImgUrl\":\"https%3A%2F%2Fblogfiles.pstatic.net%2FMjAxNzExMjhfOTQg%2FMDAxNTExODU0MDA2OTQy._qDog8YQC1DnOcqARjk1shyBt2Cr_qu_kTIFjcMUUNkg.qV8GvJl5vrwjezx7ZZIVL33gC4rxolmCHDKCsaWTtnYg.PNG.bloglabdefaultid%2F%25EC%2597%2594%25EB%2593%259C%25ED%2595%2598%25EB%258B%25A8_%25ED%258F%25AC%25EC%258A%25A4%25ED%258A%25B8%25ED%258A%25B8%25EB%259E%2598%25EB%25B9%2584_640x120_A.png\",\"encodedBannerText\":\"\",\"startDateFormatted\":\"2017\/11\/28 16:30\",\"endDateFormatted\":\"2017\/12\/14 23:59\"}]}';


var gdid = "90000003_00000000000000337E34EA31";
var lcsUrl = "https://m.blog.naver.com/PostView.nhn?blogId=playganghwa&logNo=221160729137";
var buddyController = null;
var likeitUrl = "https://blog.like.naver.com";
var gfMarketUrl = "http://m.gfmarket.naver.com";
var gsPlaceSnippetApiUrl ="https://m.blog.naver.com/localapi/cocoa-api/api.nhn";
var gnMaxNoticePostCount = 5;

var isWritedByApp = false;

var isWritedByMobileWeb = false;


var isPostViewExposeCheck = true;
var exposeRecommend = true;

var exposeRecentPostList = true;
var exposeRecentRelatedPostList = true;
var exposeRelatedPostList = true;
var isRelatedPostListExposeTarget = true;
var isTabletRelatedPostListExposeTarget = true;

var isPostViewEnableFlicking = true;

var targetBlogId = "playganghwa";
var targetLogNo = "221160729137";
var targetExcludeLogNo = "221160729137";
var targetRecommendationCode = "1";
var targetKeyword = "";
//#feedrollback
var isVisitTimeOn = true;

$Element(window).attach("load", function(event) {
	postViewController = new PostViewController(blogId, sStartLogNo, sNavType, "false", "ggh541", "https://ssl.pstatic.net/spi/js/release/ko_KR/splugin.m.js?", "https://openapi.map.naver.com/openapi/openapi_v23.js", "false", "32", "", 0);
	postViewController.start();
    //#feedrollback
    try {
        postViewController.sendVisitTime(isVisitTimeOn, blogId, userId);
    } catch (e) {
    }

	new BannerController(new BannerView(), new BannerModel(), isAndroidBrowser, false, "2.0.0").start();
	new BlogAppAdController().start();
	new RclickUtility().checkRClickYN(rightClickOpenYn, blogOwner);

	buddyController = new BuddyController("playganghwa");
	buddyController.start();
    try {
        nhn.LikeIt.list.util.init({
            sId: "BLOG"
            , sDomain: likeitUrl
            , bMobile: true
            , sMaxCount: "99,999+"
            , bHideZeroCount: false
            , oLog: {nClicks: {like: "pst.like", unlike: "pst.unlike"}}
            , oPostHandler : function oPostHandler(bAdd, oRes) {
                postViewController.sympathyEvent(bAdd, oRes.success, oRes.result);
            }
        });
    } catch (e) {
    }
	lcs_do_gdid(gdid, lcsUrl);
});

function lazyViewLoadForCallback(){
    postViewController.lazyViewLoad();
}

function timerStop(){
	postViewController.timerStop();
}

var angularConfig = {"isDev":false,"staticResourceUrl":"https://ssl.pstatic.net/t.static.blog","lcsUrl":"lcs.naver.com","revision":"9ed9cae","jeagleEyeDebug":false,"deployPhase":"release","usainOn":false,"countryCode":"NONE","usainUrl":"https://usain.blog.naver.com","isInApp":false,"isAndroidApp":false,"isIOSApp":false,"inAppScheme":"naverblog://blogapp","inAppVersion":"2.0.0"};
var ngReadOnlyStatus = {"isReadOnly":false,"startTime":null,"endTime":null,"reason":null,"usageTip":null,"maintenanceType":null};
var urlMap = {"naverCommentStaticUrl":"https://ssl.pstatic.net/static.cbox","gfmarket_mobile":"http://m.gfmarket.naver.com","likeit":"https://blog.like.naver.com","commonStat":"http://blog.stat.naver.com","naverCommentApiUrl":"https://apis.naver.com/commentBox/cbox9","blog":"http://blog.naver.com","nmobile":"https://m.blog.naver.com","section":"http://section.blog.naver.com","blogprofilethumb":"https://blogpfthumb-phinf.pstatic.net","naver_openmain":"https://openmain.pstatic.net","https_nmobile":"https://m.blog.naver.com","mobileNaver":"http://m.naver.com","spi":"https://ssl.pstatic.net/spi","gfmarket_thumb":"https://gfmarket-phinf.pstatic.net","guestbook":"http://guestbook.blog.naver.com","dthumb":"https://dthumb-phinf.pstatic.net/?src=","ogcrawler":"https://ogcrawler.editor.naver.com"};

</script>
<script type="text/javascript" src="./neareventboard_files/NgPostViewBundle1-349027516_https.js.다운로드" charset="UTF-8"></script>
<script type="text/javascript" src="./neareventboard_files/NgPostViewBundle2-1555716984_https.js.다운로드" charset="UTF-8"></script>
<script type="text/javascript" src="./neareventboard_files/NgPostViewTemplate-148605037_https.js.다운로드" charset="UTF-8"></script>

<script>
  angular.element(document).ready(function() {
    angular.bootstrap($$.getSingle('._ngApp'), ['bgPostViewApp'], {
      strictDi: true
    });
  });
</script>

<script type="text/javascript" src="./neareventboard_files/LegoPostView-1557084805_https.js.다운로드" charset="UTF-8"></script>





<script type="text/javascript">

var safariBrowser = "SAFARI";
var safariIpadBrowser = "SAFARI_IPAD";
var androidBrowser = "ANDROID";
var androidGalTabBrowser = "ANDROID_GALTAB";
var androidHoneyCombBrowser = "ANDROID_HONEYCOMB";
var dolfinBrowser = "DOLFIN";
var operaBrowser = "OPERA";


var gBrowserType = "UNDEFINED";
var gBrowserVersion = "0.0";
var isSafariBrowser = (gBrowserType == safariBrowser || gBrowserType == safariIpadBrowser);
var isIos4xSafariBrowser = isSafariBrowser && (navigator.userAgent.match(/OS 4_3/i)) ? true : false;
var isIos5xSafariBrowser = isSafariBrowser && (navigator.userAgent.match(/OS 5/i)) ? true : false;
var isAndroidBrowser = (gBrowserType == androidBrowser) || (gBrowserType == androidGalTabBrowser) || (gBrowserType == androidHoneyCombBrowser);
var isAndroid4xBrowser = isAndroidBrowser && (navigator.userAgent.match(/Android 4./i)) ? true : false;
var isAndroidGingerbread = false;
var isDefaultTextSupportingBrowserType = false;
var gIsNotInAppSafariOrAndroidBrowser = false;


var gDeployPhase = ""; 

var ReloadFile=(function(){var d=2500;var b={};var h={};var c=5;function k(o){var n=o.split(/\/+/g);var p=n[n.length-1].split("?")[0].split(".")[0];return p}function a(){var n=document.getElementsByTagName("script");for(var p=0;p<n.length;p++){var q=n[p].src;if(q!=""&&q.toLowerCase().indexOf("lazyloading")<0&&(q.toLowerCase().indexOf("blog.naver.com")>-1||q.toLowerCase().indexOf("blog.naver.net")>-1)){var o=k(q);var r=o+"_js";n[p].id=r;f(r,c);l(r,q)}}}function g(){var n=document.getElementsByTagName("link");for(var p=0;p<n.length;p++){var r=n[p].href;var q=n[p].type;if("text/css"==q.toLowerCase()&&r!=""&&r.toLowerCase().indexOf("lazyloading")<0&&(r.toLowerCase().indexOf("blog.naver.com")>-1||r.toLowerCase().indexOf("blog.naver.net")>-1)){var o=k(r);var s=o+"_css";n[p].id=s;f(s,c);e(s,r)}}}function l(q,o){i(q);if((typeof window.defineNHNJS=="undefined"||typeof window.defineNHNJS[q]=="undefined")&&b[q].retry++<b[q].maxRetry){var n=document.getElementById(q);var p=document.createElement("script");p.type="text/javascript";p.id=n.id;p.charset=n.charset;p.src=o+"?"+new Date().getTime()+"_"+Math.floor(Math.random()*100)+1;n.parentNode.removeChild(n);document.getElementsByTagName("body")[0].appendChild(p);m(q,function(){l(q,o)})}}function m(o,n){if(b[o].maxRetry>1){h[o]=setTimeout(n,d)}}function f(o,n){b[o]={retry:0,maxRetry:n||1}}function i(n){if(typeof h[n]!="undefined"){clearTimeout(h[n]);h[n]=null}}function e(o,n){document.addEventListener("DOMContentLoaded",function(){j(o,n)},false)}function j(u,q){i(u);if(b[u].retry++<b[u].maxRetry){var t="defineNHNCSS_"+u;var s=document.getElementById(t);if(!s){var n=document.createElement("div");n.id=t;n.style.display="none";document.body.appendChild(n);s=document.getElementById(t)}var o=document.defaultView.getComputedStyle(s,"").getPropertyValue("color");if(o=="rgb(0, 0, 0)"){var p=document.getElementById(u);var r=document.createElement("link");r.rel="stylesheet";r.type="text/css";r.id=p.id;r.charset=p.charset;r.href=q+"?"+new Date().getTime()+"_"+Math.floor(Math.random()*100)+1;p.parentNode.removeChild(p);document.getElementsByTagName("body")[0].appendChild(r);m(u,function(){j(u,q)})}}}return{js:function(n){try{if(n==null||n=="local"){return}a()}catch(o){}},css:function(n){try{if(n==null||n=="local"){return}g()}catch(o){}}}})();if((isSafariBrowser||isAndroidBrowser)&&typeof gDeployPhase!="undefined"&&gDeployPhase!=""){if(window.attachEvent){window.attachEvent("onload",function(){ReloadFile.js(gDeployPhase)})}else{window.addEventListener("load",ReloadFile.js(gDeployPhase),false)}ReloadFile.css(gDeployPhase)};
</script>




<script src="./neareventboard_files/se_viewer_lib_core_1.min.js.다운로드" charset="utf-8" type="text/javascript" data-seqid="__callback_151321081660259134" data-mode="parallel"></script><script src="./neareventboard_files/se_viewer_lib_core_2.min.js.다운로드" charset="utf-8" type="text/javascript" data-seqid="__callback_151321081660259134" data-mode="parallel"></script><script src="./neareventboard_files/se_viewer_list_lib_1.min.js.다운로드" charset="utf-8" type="text/javascript" data-seqid="__callback_151321081751630151" data-mode="parallel"></script><script src="./neareventboard_files/se_viewer_list_lib_2.min.js.다운로드" charset="utf-8" type="text/javascript" data-seqid="__callback_151321081751630151" data-mode="parallel"></script><div id="naver-splugin-wrap" style="display: none; user-select: text;"></div><div id="naver-splugin-dimmed" class="naver-splugin-dimmed spi_card_dmm2" style="display: none;"><div class="naver-splugin-dimmed"></div></div></body></html>