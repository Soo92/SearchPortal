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
<!-- saved from url=(0112)https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&logNo=221156825329&proxyReferer=http%3A%2F%2Flocalhost%2F -->
<html lang="ko" data-useragent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36"><head prefix="og: http://ogp.me/ns# article: http://ogp.me/ns/article#"><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><style type="text/css">@charset "UTF-8";[ng\:cloak],[ng-cloak],[data-ng-cloak],[x-ng-cloak],.ng-cloak,.x-ng-cloak,.ng-hide:not(.ng-hide-animate){display:none !important;}ng\:form{display:block;}.ng-animate-shim{visibility:hidden;}.ng-anchor{position:absolute;}</style>






<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no,target-densitydpi=medium-dpi,viewport-fit=cover">
<meta name="robots" content="index,follow">



<link rel="shortcut icon" type="image/x-icon" href="https://m.blog.naver.com/favicon.ico?2">

<link rel="apple-touch-icon-precomposed" href="https://m.blog.naver.com/mobileweb_icon_96.png?1">

<link rel="stylesheet" type="text/css" href="./village_files/lego_w-113521028_https.css" charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./village_files/lego_view-196529423_https.css" charset="EUC-KR">
<style>
	div.spi_unity {
		width:291px;
	}
</style>





 

	
		<meta property="og:title" content="<%=lname%>">

		
			
			
			<meta property="og:image" content="https://blogthumb.pstatic.net/MjAxNzEyMDZfMjU2/MDAxNTEyNTQwMDcyMjEw.-IFaFvw7V3NPaw-H6E6EaMZkdAcqNMQn5Ud9Wls-a74g.X4S6s_KXS1EHTYg8YcxLa7jEa14PeN-w4vtNUHtX7Gcg.JPEG.arex_blog/%C7%A5%C1%F6_%BA%B9%BB%E7.jpg?type=w2">
			
				
		<meta property="og:description" content="쌀쌀해진 날씨에 바깥에 나가는 것이 꺼려지는 요즘, 이런 때일수록 야외 활동을 활발히 하여 건강을 챙기...">
		
		
			<meta property="og:url" content="http://blog.naver.com/arex_blog/221156825329">
		
	
	

<meta property="me:feed:serviceId" content="blog">


	




<meta property="og:type" content="article">
<meta class="_og_tag _author" property="og:site_name" content="네이버 블로그 | 공항철도">
<meta property="naverblog:nickname" content="공항철도">
<meta property="naverblog:profile_image" content="https://blogpfthumb-phinf.pstatic.net/MjAxNzEyMDRfMTY1/MDAxNTEyMzY3MzI0ODQ0.s-IXBPh8iWOX8ZLYyj7Zu-oOTX2G3wshcIqGq0Jw1aEg.2k70Z2O0EOUOnK8E8Kxu2Z0OKjmzlAUfBO939-EtHC8g.PNG.arex_blog/12%25BF%25F9%2B%25C7%25C1%25B7%25CE%25C7%25CA%2B%25C1%25A4%25BB%25E7%25B0%25A2.png?type=s1">

<meta property="me:feed:serviceId" content="blog">
<meta name="format-detection" content="telephone=no">




<script type="text/javascript" src="./village_files/LegoCommonJS-1912307012_https.js.다운로드" charset="UTF-8"></script>
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


	<link rel="stylesheet" type="text/css" href="./village_files/se_viewer_blog_mobile.css">


<title><%=lname%> : 네이버 블로그</title>

<script language="javascript" src="./village_files/ugcvideoplayer-1.0.js.다운로드"></script>
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
<script src="./village_files/openapi_v23.js.다운로드"></script><script id="naver-splugin-sdk" type="text/javascript" charset="utf-8" src="./village_files/splugin.m.js.다운로드"></script><script type="text/javascript" src="./village_files/se.viewer.min.js.다운로드" charset="utf-8"></script><script type="text/javascript" src="./village_files/likeIt.list.main.js.다운로드" charset="utf-8"></script><link type="text/css" rel="stylesheet" href="./village_files/likeit.css" charset="utf-8"><link type="text/css" rel="stylesheet" href="./village_files/likeit_blog.css" charset="utf-8"><link id="naver-splugin-css" rel="stylesheet" type="text/css" href="./village_files/spi_standard_m_https_20171113.css"></head>
<body id="body" class="tablet_end">
<div class="_ngApp">
  <div ng-click="drawerMenu.hide($event)" bg-nsc="{&quot;web&quot;:&quot;Mblog.home&quot;}" bg-drawer-pc-url="http://blog.naver.com/arex_blog/221156825329?viewType=pc" bg-drawer-menu-btn="._openDrawer" bg-drawer-app-link-type="postViewDirect" bg-drawer-app-params-json="{&quot;logNo&quot;:221156825329}">
  <div class="Ndimmed is_css ng-hide" ng-show="drawerMenu.isShow" ng-class="{is_show: drawerMenu.isShow}" style="display:block"></div>
  <div class="Ndrawer ng-hide" ng-show="drawerMenu.isShow" ng-style="{top: drawerMenu.scrollY, height: drawerMenu.height}" style="display:block">
    <div class="Ndrawer_scroll_wrap is_css _drawerScrollWrap ng-hide" ng-show="drawerMenu.isShow" style="display:block">
      <div class="Ndrawer_scroll _drawerScroll" ng-style="{height: drawerMenu.height}" style="touch-action: none;">
        <div class="Ndrawer_inner" ng-click="drawerMenu.hideImmediately($event)" style="transition-timing-function: cubic-bezier(0.1, 0.57, 0.1, 1); transition-duration: 0ms; transform: translate(0px, 0px) translateZ(0px);">
          <div class="Ndrawer_profile">
            <!-- ngIf: !drawerMenu.isLoginUser -->
            <!-- ngIf: drawerMenu.isLoginUser --><a ui-sref="postListPermalink({blogId: drawerMenu.userId})" ui-sref-opts="{inherit: false}" href="https://m.blog.naver.com/GoMylog.nhn" class="Ndrawer_profile_login" ng-if="drawerMenu.isLoginUser" bg-nclick="qmm.nick" bg-target-self-when-naverapp="">
              <div class="NLogin_thumb">
                <img ng-src="https://ssl.pstatic.net/static/blog/m/img_default.gif" width="36" height="36" alt="" class="NLogin_thumb_image" src="./village_files/img_default.gif">
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
            <a class="Nmenu_item" blog-app-ad="postViewDirect" blog-id="arex_blog" blog-app-params-json="{&quot;logNo&quot;:221156825329}" bg-nclick="qmm.app">
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
            <a ng-href="http://blog.naver.com/arex_blog/221156825329?viewType=pc" class="Nmenu_item" bg-nclick="qmm.pcview" href="http://blog.naver.com/arex_blog/221156825329?viewType=pc">
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
                    <img src="./village_files/banner_mymenubot.png" width="276" height="70" alt="궁금한게 있을 땐 바로 물어보세요 블로그 스마트봇 Beta">
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

<div class="u_skip"><a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#ct">본문 바로가기</a></div>
<div class="Ngnb gnb_bg_white" style="will-change: contents;">
	<div class="Ngnb_service logo_blog_green">
		<h1 class="Nservice_item">
			
				
					<a href="https://m.blog.naver.com/FeedList.nhn"><span class="Nicon_service">블로그</span></a>
				
				
			
		</h1>
		<h2 class="gnb_title">
            <div class="center">
 				<span class="td">
 					<a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" id="_categoryName" class="_cur_category _returnFalse" onclick="nclk(this, &#39;pgn.blogname&#39;, &#39;&#39;, &#39;&#39;);">
 						<span class="sp ico">카테고리 이동</span>
 					</a>
 				</span>
                <span class="td">
 					<a href="https://m.blog.naver.com/PostList.nhn?blogId=arex_blog" onclick="nclk(this, &#39;pgn.eachhome&#39;, &#39;&#39;, &#39;&#39;);">
 						<span class="ell"><%=writer %></span>
 					</a>
 				</span>
            </div>
		</h2>
	</div>
	<div class="Ngnb_tool">
		<!--  button 태그 / a 태그 모두 사용할 수 있음 -->
		<a href="https://m.blog.naver.com/PostSearchList.nhn?blogId=arex_blog" class="Ntool_button"><span class="Nicon_search">검색</span></a>
		<button type="button" class="Ntool_button _openDrawer _returnFalse" onclick="nclk(this, &#39;pgn.qmenu&#39;, &#39;&#39;, &#39;&#39;);"><span class="Nicon_drawer">MY메뉴 열기</span></button>
	</div>
</div>

<div id="post_share" style="position:absolute;top:50px;display:none;z-index:2000;right:15px">
	<div id="spiLayer"></div>
</div>

<div id="_post_area" class="ct_wrap">
	<div id="ct" class="end" role="main" style="overflow:hidden;">
        
		    






<div id="_post_property" style="display:none" commentcount="3" blocktype="0" isblacklistuser="false" blogname="<%=writer %>" commentenable="true" categoryno="65" logtype="0" adddate="1512541888237" hasnavermap="true" gdid="90000003_00000000000000337DF958F1" browsertitle="<%=lname%> : 네이버 블로그" isrecommendableblog="true" attachfilepunishinfo="{}" attachvideoinfo="[ ]" editorversion="3" relationtypewithblog="3" uri="http://blog.naver.com/arex_blog/221156825329" directoryname="" bloguserstatallow="true"></div>
<div id="_photo_view_property" style="display: none" attachimagepathandidinfo="{&quot;/MjAxNzEyMDZfMjc2/MDAxNTEyNTM5MDM2MTM0.2r_MZDvaxCj8ufhy6XRO0Rqg2-27l-JGzZPGteqAkSEg.SqprJK0AaR2nrIViLOkyaxlzwJRXyw0QVtDUMN74-H0g.JPEG.arex_blog&quot;:8,&quot;/MjAxNzEyMDZfMjQ0/MDAxNTEyNTM5MDM1Njc4.b6w84xmA8z1zh6R2FJLrK3sOHNA6Je8BSPSBQ7cTCL4g.u9IePFKNO6kMNnHKu0LJGoWlHIF39yUuVbbLWTYzCysg.JPEG.arex_blog&quot;:13,&quot;/MjAxNzEyMDZfMTEx/MDAxNTEyNTM5MDM1NTA5.a98mmcJ5jgL-4mf2TI_cx6-S8HOYnds2p2sbsfnCF60g.O_9YZUOVXtpEPCTN4jRgE5K_MgB4xvCtsGCPHPBbFNQg.JPEG.arex_blog&quot;:11,&quot;/MjAxNzEyMDZfMyAg/MDAxNTEyNTM5MDM1MjE4.KrACfGn9cH9qrCvka86b0nEcsW4pO5TExbyQfIHEC_Qg.ew2iyA2O1K1SWxaCJ16IgX3zqWKQ6fjP_UqWQzzkcqsg.JPEG.arex_blog&quot;:12,&quot;/MjAxNzEyMDZfMjA5/MDAxNTEyNTM5MDM2NDM4.Pq1J1S-EgfHjgyG3QvywtjVcPknnAy1BpU0XBrbtuoIg.fd-LxoRlhe3mYs8NmlkDjC3O8UY3o-_Gvrvo3zBDYEEg.JPEG.arex_blog&quot;:17,&quot;/MjAxNzEyMDZfMjE2/MDAxNTEyNTM5MDM0MzU2.5Fkda2TRWiBBHeSswSQByCrKxog7Cxgp5gYDqc0ErYQg.UDBwKhI0CCpLwQwy4xS8ZhNYmBmz3W1vfb0QYMlmXJIg.JPEG.arex_blog&quot;:3,&quot;/MjAxNzEyMDZfNTkg/MDAxNTEyNTM5MDM0MzI0.p1Mn6gAv5CJX3vnKMsxEaphc5qVfE0Yn00dUAv-TOUsg.6KzDqmuA68N94i1EoXRe73ztdUqjROhY18DGEe9tcHQg.JPEG.arex_blog&quot;:2,&quot;/MjAxNzEyMDZfMjM2/MDAxNTEyNTM5MDM0NzQx.J5lc5qi0J4eMedH2Wl7P1SLYjobItwopwXMufmhaG4og.e2KWZG67p-yxtT6VCgC0IBl_Ytg5XwvtyzfJ-nbtGWgg.JPEG.arex_blog&quot;:6,&quot;/MjAxNzEyMDZfNSAg/MDAxNTEyNTM5MDM1Nzgy.okpagVWo8FJq5LZR86rbE-f8hJBWNh4syVHR0gormI4g.LkFh2t6Rtt8i_Tt6m4AMPOJQHJfU7qfJHJjT50yXkbUg.JPEG.arex_blog&quot;:15,&quot;/MjAxNzEyMDZfMTky/MDAxNTEyNTM5MDM0NjQz.WJFixZ2Bk_6TV8mziz1Zoo0wsgi_ZFYlvmrTl4t_qN4g.wXOMYU5835DEzu7iPIdpJEcDp0JBnl-8RsFYn37c55gg.JPEG.arex_blog&quot;:5,&quot;/MjAxNzEyMDZfMTk3/MDAxNTEyNTM5MDM1MDYz.TjnE8dq4LIUaDU7j7rMH22_v8FaQL7RC-KVVesWWvskg.ejoLc975er68zULtd3tZhLRL374rWjvfPaYoo6HngSwg.JPEG.arex_blog&quot;:10,&quot;/MjAxNzEyMDZfMTIx/MDAxNTEyNTM5MDM2MDcz.YQWTpesa31vlj3mb9pNNM-M9jBATDhen1YKwJWub_Vgg.0opDXvIVMTYOhOMVBU_a3o0T_2QqbJkCTjMDdZQDNUog.JPEG.arex_blog&quot;:7,&quot;/MjAxNzEyMDZfMTU3/MDAxNTEyNTQxNzM1NTA3.DOdFmaVgg0WYnO2kSIpVn7XwleLl-e_jenvDTH5TT4cg.imZyLKVEaFuoNjjeyA0PpvQ7O2z_EuHqWKSFMwoup6sg.JPEG.arex_blog&quot;:16,&quot;/MjAxNzEyMDZfMjk3/MDAxNTEyNTM5MDM2MzI4.9pkIhta04UnJb9abEOLlgwZh3NnnlEEEIwN8vQ9LHeog.MBmZYbKcvpdFWOTlV5pJ6xfCqaOFbBnJw460-f5Lhnog.JPEG.arex_blog&quot;:9,&quot;/MjAxNzEyMDZfMjU2/MDAxNTEyNTQwMDcyMjEw.-IFaFvw7V3NPaw-H6E6EaMZkdAcqNMQn5Ud9Wls-a74g.X4S6s_KXS1EHTYg8YcxLa7jEa14PeN-w4vtNUHtX7Gcg.JPEG.arex_blog&quot;:1,&quot;/MjAxNzEyMDZfMjI0/MDAxNTEyNTM5MDM1ODYx.E9JOsL-oYhS9njQiYRYARKkpCTsYF7hNxyXU9Rkm6Wgg.Go5OfAk4Gt9dINeCcTtwvw2RZbuRysQiVF8w6ibFxcEg.JPEG.arex_blog&quot;:14,&quot;/MjAxNzEyMDZfMTMy/MDAxNTEyNTM5MDM0NTUz.TrvYTlpOOVRzRTurWaEtxlwTQuYd4uqyABhnNkptEG4g.GxGYbcZWChtANWjDCN4xGBLR7RKGgma957Yu-MgjJs4g.JPEG.arex_blog&quot;:4}" blogid="arex_blog" logno="221156825329" editorversion="3"></div>

<div id="_floating_menu_property" style="display: none" blogid="arex_blog" logno="221156825329" formattedcommentcount="3" newreplycomment="true" logtype="0" commentenable="true" posttitle="<%=lname%>" sympathyenable="false" posturl="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329"></div>

   
	
		 
		 
		
			
			
			
		
	


<div class="_postView">
	<!-- 폰트 사이즈 셋팅 -->
	
	
		
		
		
		
		
		
	

	
	
	

	

	
	<div class="post_ct   se3_view " id="viewTypeSelector">
		
		

		

		
		<div style="font-size:9pt; font-family:&#39;7367_9&#39;;" class="view"><div id="SEDOC-1512542204970-187824717" class="se_doc_viewer se_body_wrap se_theme_transparent se_m" data-docversion="">
<div class="se_doc_header_start" id="SEDOC-1512542204970-187824717_se_doc_header_start"></div>
<!-- SE_DOC_HEADER_START -->
<div id="SEDOC-1512542204970-187824717_viewer_head" class="se_viewer_head"></div>
<div class="se_component_wrap">
<div class="se_component se_documentTitle documentTitle_blog  is-fill">
    <div class="se_sectionArea is-fill se_align-left">
        <!-- --> 
<div class="se_category"><a href="https://m.blog.naver.com/PostList.nhn?blogId=arex_blog&amp;categoryNo=65&amp;logCode=0&amp;categoryName=%EC%9D%B8%EC%B2%9C%2C%EA%B2%BD%EA%B8%B0+%EB%93%B1+%EC%97%AC%ED%96%89" onclick="nclk(this, &#39;pst.board&#39;, &#39;&#39;, &#39;&#39;);"><%=sname%></a></div>
<!-- -->
        <!-- SE_DOC_HEADER_TITLE_TOP-->
     	<div id="SEDOC-1512542204970-187824717_se_doc_title_top" class="se_doc_title_top"></div>
        <div class="se_editArea">
        	<div class="se_viewArea se_ff_nanumgothic se_fs_D2">
	            <div class="se_editView se_title">
	                <div class="se_textView">
                        <h3 class="se_textarea">
                            <!-- --><%=lname %> <!-- -->
                            
                        </h3>
                        
                        
	                </div>
	            </div>
	        </div>
        </div><!-- SE_DOC_HEADER_TITLE_MIDDLE-->
        <div id="SEDOC-1512542204970-187824717_se_doc_title_middle" class="se_doc_title_middle"></div>
        <!-- SE_DOC_HEADER_CONTENTS_START -->
        <!-- -->
<div class="se_authorArea">

	<a href="https://m.blog.naver.com/PostList.nhn?blogId=arex_blog" class="se_thumbnail" onclick="nclk(this, &#39;pst.writer&#39;, &#39;&#39;, &#39;&#39;);">

		<span class="img"><img src="./village_files/12%BF%F9+%C7%C1%B7%CE%C7%CA+%C1%A4%BB%E7%B0%A2.png" width="35" height="35" alt="프로필"></span>
	</a>
	<div class="se_author">
		<a href="https://m.blog.naver.com/PostList.nhn?blogId=arex_blog" onclick="nclk(this, &#39;pst.writer&#39;, &#39;&#39;, &#39;&#39;);"><strong class="ell"><%=writer %></strong></a>
		<span class="ico"><span class="sim ico_verified3">공식블로그</span></span>
	</div>
	<p class="se_date"><%=regdate %>
	</p>
</div>

<div class="se_btnArea">
	<a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" class="btn_buddyadd _buddyadd_default _add_buddy _param(arex_blog|true||/BuddyAddForm.nhn) _returnFalse" isblackuser="false" onclick="nclk(this, &#39;pst.add&#39;, &#39;&#39;, &#39;&#39;);"><span class="sp"></span> 이웃추가</a>

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
				<li><a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" class="naver-splugin _returnFalse" onclick="nclk(this, &#39;pst.fshare&#39;, &#39;&#39;, &#39;&#39;);" data-style="standard" data-url="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329" data-title="<%=lname%>" data-likeserviceid="blog" data-likecontentsid="arex_blog_221156825329" data-canonical-url="https://m.blog.naver.com/arex_blog/221156825329" data-oninitialize="splugin_oninitialize();" splugin-id="4172478362">공유하기 <span class="share sim"></span>
					</a>
				</li>
				<li><a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" class="_copy_url _returnFalse" onclick="nclk(this, &#39;pst.furl&#39;, &#39;&#39;, &#39;&#39;);">URL복사 <span class="copy sim"></span></a></li>
			<li><a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" class="_goTrans">번역하기 <span class="translate sim"></span></a></li>
			</ul>
		</div>
	</div>
</div>
<!-- //본문 기타 기능 -->

<!-- -->
        <!-- SE_DOC_HEADER_CONTENTS_END -->
        <!-- SE_DOC_HEADER_TITLE_BOTTOM-->
        <div id="SEDOC-1512542204970-187824717_se_doc_title_bottom" class="se_doc_title_bottom"></div>
    </div>
</div>

</div>
<div class="location_component">
	<div class="location">
			<a onclick="nclk(this, &#39;pst.location&#39;, &#39;&#39;, &#39;&#39;);" target="_blank" href="https://m.store.naver.com/places/detail?id=35395825&amp;source=blog"><span class="ico_map sp">위치</span>인천아시아드주경기장비추온마당</a>
	</div>
</div>
<!-- {{{$SE3-CONTENTS_HEADER}}} -->
<!-- SE_DOC_HEADER_END -->
<div class="se_doc_header_end" id="SEDOC-1512542204970-187824717_se_doc_header_end"></div>
<div class="se_doc_contents_start" id="SEDOC-1512542204970-187824717_se_doc_contents_start"></div>
<!-- SE_DOC_CONTENTS_START -->
<div class="se_component_wrap sect_dsc __se_component_area">
    


		<div class="se_component se_image default">
			<div class="se_sectionArea se_align-center">
				<div class="se_editArea">
					<div class="se_viewArea" style="max-width:600px">
						<a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" onclick="return false;" class="se_mediaArea __se_image_link __se_link" data-linktype="img" data-linkdata="{&quot;imgId&quot; : &quot;SEDOC-1512542204970-187824717_image_0_img&quot;, &quot;src&quot; : &quot;https://mblogthumb-phinf.pstatic.net/MjAxNzEyMDZfMjU2/MDAxNTEyNTQwMDcyMjEw.-IFaFvw7V3NPaw-H6E6EaMZkdAcqNMQn5Ud9Wls-a74g.X4S6s_KXS1EHTYg8YcxLa7jEa14PeN-w4vtNUHtX7Gcg.JPEG.arex_blog/%ED%91%9C%EC%A7%80_%EB%B3%B5%EC%82%AC.jpg&quot;, &quot;linkUse&quot; : &quot;false&quot;, &quot;link&quot; : &quot;&quot;}">
							<img id="SEDOC-1512542204970-187824717_image_0_img" class="se_mediaImage __se_img_el" src="./village_files/표지_복사.jpg" width="600" height="600" data-attachment-id="I_E9fJhjhiPd9atvGM9fQg6Qw_Go" alt="">
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
                        <p class="se_textarea"><!-- SE3-TEXT { --><span>쌀쌀해진 날씨에 바깥에 나가는 것이 꺼려지는 요즘, 이런 때일수록 야외 활동을 활발히 하여 건강을 챙기는 것이 중요하다.<br></span><span>산책하기 좋은 인천아시아드주경기장을 찾아가보았다. </span><!-- } SE3-TEXT --></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>












    





<div class="se_component se_map default">
	<div class="se_sectionArea se_align-left">
		<div class="se_editArea" id="SEDOC-1512542204970-187824717_map_0" data-attachment-id="MHywfKd6MMHJsy1ZiaHpu4tjghkI">
			<div class="se_viewArea">
				<div class="se_mediaArea">
					<img width="100%" src="./village_files/image" style="display: none;">
				<a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#bSize" style="display:none" target="_blank" class="se_map_link __se_link" data-linktype="map" data-linkdata="{&quot;eventTarget&quot;:&quot;button&quot;,&quot;didSearch&quot;:&quot;true&quot;,&quot;searchEngine&quot;:&quot;NAVER&quot;,&quot;locationId&quot;:&quot;35296693&quot;,&quot;latitude&quot;:&quot;37.5476153&quot;,&quot;markerLatitude&quot;:&quot;37.5476153&quot;,&quot;markerLongitude&quot;:&quot;126.6666173&quot;,&quot;title&quot;:&quot;인천아시아드 주경기장&quot;,&quot;longitude&quot;:&quot;126.6666173&quot;}">지도보기</a><div class="__se_map" style="width: 700px; height: 328px; position: relative; overflow: hidden; background: url(&quot;https://ssl.pstatic.net/static/maps/mantle/1x/pattern_1.png&quot;) 0px 0px repeat transparent;"><div style="position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; overflow: visible; width: 100%; height: 100%; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); z-index: 0; cursor: url(&quot;https://ssl.pstatic.net/static/maps/mantle/1x/openhand.cur&quot;), default;"><div style="position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; overflow: visible; width: 100%; height: 100%; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); z-index: 0;"><div style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 1;"><div style="overflow: visible; width: 100%; height: 0px; position: absolute; display: none; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 0; user-select: none;"></div><div style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 1; user-select: none;"><div style="position: absolute; top: 0px; left: 0px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; display: block; width: 0px; height: 0px; overflow: visible; box-sizing: content-box !important;"><div style="position: absolute; top: 156px; left: 175px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="./village_files/ol_vc_an" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: -100px; left: 175px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="./village_files/ol_vc_an(1)" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 412px; left: 175px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="./village_files/ol_vc_an(2)" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: -356px; left: 175px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="./village_files/ol_vc_an(3)" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: -356px; left: 431px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="./village_files/ol_vc_an(4)" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 412px; left: -81px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="./village_files/ol_vc_an(5)" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: -100px; left: 431px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="./village_files/ol_vc_an(6)" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 156px; left: -81px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="./village_files/ol_vc_an(7)" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 156px; left: 431px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="./village_files/ol_vc_an(8)" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: -100px; left: -81px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="./village_files/ol_vc_an(9)" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 412px; left: 431px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="./village_files/ol_vc_an(10)" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: -356px; left: -81px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="./village_files/ol_vc_an(11)" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: -356px; left: 687px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="./village_files/ol_vc_an(12)" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 412px; left: -337px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="./village_files/ol_vc_an(13)" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: -100px; left: 687px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="./village_files/ol_vc_an(14)" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 156px; left: -337px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="./village_files/ol_vc_an(15)" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 156px; left: 687px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="./village_files/ol_vc_an(16)" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: -100px; left: -337px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="./village_files/ol_vc_an(17)" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: 412px; left: 687px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="./village_files/ol_vc_an(18)" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div><div style="position: absolute; top: -356px; left: -337px; z-index: 0; margin: 0px; padding: 0px; border: 0px solid transparent; box-sizing: content-box !important; opacity: 1; width: 256px; height: 256px;"><img alt="" width="256" height="256" src="./village_files/ol_vc_an(19)" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; opacity: 1; position: absolute; left: 0px; top: 0px; z-index: 0; width: 256px; height: 256px;"></div></div></div><div style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 100;"><div style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 101;"></div><div style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 103;"><div title="" style="position: absolute; overflow: hidden; box-sizing: content-box !important; cursor: inherit; width: 22px; height: 35px; left: 339px; top: 129px;"><img src="./village_files/pin_default.png" alt="" style="margin: 0px; padding: 0px; border: 0px solid transparent; display: block; box-sizing: content-box !important; max-width: none !important; max-height: none !important; min-width: 0px !important; min-height: 0px !important; user-select: none; position: absolute; cursor: pointer; width: 22px; height: 35px; left: 0px; top: 0px;"></div></div><div style="overflow: visible; width: 100%; height: 0px; position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; z-index: 106;"></div></div></div><div style="position: absolute; display: none; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; overflow: visible; width: 100%; height: 100%; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); background-color: rgb(255, 255, 255); z-index: 10000; opacity: 0.5;"></div></div></div><div style="position: absolute; z-index: 100; margin: 0px; padding: 0px; pointer-events: none; bottom: 0px; right: 0px;"><div style="border: 0px none; margin: -4px 0px 0px; padding: 0px; pointer-events: none; float: right; height: 21px;"><div style="position: relative; width: 52px; height: 14px; margin: 0px 12px 7px 2px; overflow: hidden; pointer-events: auto;"><span style="display:block;margin:0;padding:0 4px;text-align:center;font-size:10px;line-height:11px;font-family:Helvetica,AppleSDGothicNeo-Light,nanumgothic,NanumGothic,&quot;나눔고딕&quot;,Dotum,&quot;돋움&quot;,sans-serif;font-weight:bold;color:#000;text-shadow:-1px 0 rgba(255, 255, 255, 0.3), 0 1px rgba(255, 255, 255, 0.3), 1px 0 rgba(255, 255, 255, 0.3), 0 -1px rgba(255, 255, 255, 0.3);">50m</span><img src="./village_files/scale-normal-b.png" width="44" height="4" alt="" style="position:absolute;left:4px;;bottom:0;z-index:2;display:block;width:44px;height:4px;overflow:hidden;margin:0;padding:0;border:0 none;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;"><img src="./village_files/scale-normal-l.png" width="4" height="10" alt="" style="position:absolute;left:0;bottom:0;z-index:2;display:block;width:4px;height:10px;overflow:hidden;margin:0;padding:0;border:0 none;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;"><img src="./village_files/scale-normal-r.png" width="4" height="10" alt="" style="position:absolute;right:0;bottom:0;z-index:2;display:block;width:4px;height:10px;overflow:hidden;margin:0;padding:0;border:0 none;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;"></div></div><div style="border: 0px none; margin: 0px; padding: 0px; pointer-events: none; float: right;"><a href="http://map.naver.com/" target="_blank" style="display: block; width: 43px; height: 10px; overflow: hidden; margin: 0px 5px 7px 0px; pointer-events: auto;"><img src="./village_files/naver-normal.png" width="43" height="10" alt="NAVER" style="display:block;width:43px;height:10px;overflow:hidden;border:0 none;margin:0;padding:0;max-width:none !important;max-height:none !important;min-width:0 !important;min-height:0 !important;"></a></div></div><div style="position: absolute; z-index: 100; margin: 0px; padding: 0px; pointer-events: none; bottom: 0px; left: 0px;"><div style="border: 0px none; margin: 0px; padding: 0px; pointer-events: none; float: left; height: 21px;"><div class="map_copyright" style="margin: 0px; padding: 0px 0px 2px 10px; height: 19px; line-height: 19px; color: rgb(68, 68, 68); font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; font-size: 11px; clear: both; white-space: nowrap; pointer-events: none;"><div style="float: left;"><span style="white-space: pre; color: rgb(68, 68, 68);">© NAVER Corp.</span></div><a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" style="font-family: Helvetica, AppleSDGothicNeo-Light, nanumgothic, NanumGothic, 나눔고딕, Dotum, 돋움, sans-serif; font-size: 11px; line-height: 19px; margin: 0px 0px 0px 5px; padding: 0px; color: rgb(68, 68, 68); float: left; pointer-events: auto; text-decoration: underline; display: none;">더보기</a><div style="float: left;"><a target="_blank" href="http://www.openstreetmap.org/copyright" style="pointer-events: auto; white-space: pre; display: none; color: rgb(68, 68, 68);"> /OpenStreetMap</a></div></div></div></div><div style="border: 1px solid rgb(41, 41, 48); background: rgb(255, 255, 255); padding: 15px; color: rgb(51, 51, 51); position: absolute; font-size: 11px; line-height: 1.5; clear: both; display: none; max-width: 350px !important; max-height: 300px !important;"><h5 style="font-size: 12px; margin-top: 0px; margin-bottom: 10px;">지도 데이터</h5><a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" style="position: absolute; top: 8px; right: 8px; width: 14px; height: 14px; font-size: 14px; line-height: 14px; display: block; overflow: hidden; color: rgb(68, 68, 68); text-decoration: none; font-weight: bold; text-align: center;">╳</a><div><span style="white-space: pre; color: rgb(68, 68, 68); float: left;">© NAVER Corp.</span><a target="_blank" href="http://www.openstreetmap.org/copyright" style="pointer-events: auto; white-space: pre; color: rgb(68, 68, 68); float: left; display: none;"> /OpenStreetMap</a></div></div></div></div>
				<div class="se_caption_group is-contact">
					<div class="se_map_article">
						<div class="se_title_area">
							<div class="se_title">인천아시아드 주경기장</div>
						</div>
							<div class="se_address">인천광역시 서구 봉수대로 806 인천아시아드주경기장</div>
					</div>
                    <div class="se_info_btn">
                        <a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" class="btn_tel">전화</a>
                    </div>
					<a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#end" target="_blank" class="se_map_link __se_link" data-linktype="map" data-linkdata="{&quot;eventTarget&quot;:&quot;placeDesc&quot;,&quot;didSearch&quot;:&quot;true&quot;,&quot;searchEngine&quot;:&quot;NAVER&quot;,&quot;locationId&quot;:&quot;35296693&quot;,&quot;latitude&quot;:&quot;37.5476153&quot;,&quot;markerLatitude&quot;:&quot;37.5476153&quot;,&quot;markerLongitude&quot;:&quot;126.6666173&quot;,&quot;title&quot;:&quot;인천아시아드 주경기장&quot;,&quot;longitude&quot;:&quot;126.6666173&quot;}">상세보기</a>
				</div>
				<script type="text/data" id="SEDOC-1512542204970-187824717_map_0_map_view_link">
				<a onclick="return false;" href="#bSize" style="display:none" target="_blank" class="se_map_link __se_link" data-linktype="map" data-linkdata="{&quot;eventTarget&quot;:&quot;button&quot;,&quot;didSearch&quot;:&quot;true&quot;,&quot;searchEngine&quot;:&quot;NAVER&quot;,&quot;locationId&quot;:&quot;35296693&quot;,&quot;latitude&quot;:&quot;37.5476153&quot;,&quot;markerLatitude&quot;:&quot;37.5476153&quot;,&quot;markerLongitude&quot;:&quot;126.6666173&quot;,&quot;title&quot;:&quot;인천아시아드 주경기장&quot;,&quot;longitude&quot;:&quot;126.6666173&quot;}">지도보기</a>
				</script>
			</div>
		</div>
	</div>
</div>

<script type="text/data" class="__se_module_data" data-module="{&quot;data&quot;:{&quot;zoomLevel&quot;:12,&quot;address&quot;:&quot;인천광역시 서구 봉수대로 806 인천아시아드주경기장&quot;,&quot;resv&quot;:false,&quot;searchEngine&quot;:&quot;NAVER&quot;,&quot;searchType&quot;:&quot;S&quot;,&quot;latitude&quot;:&quot;37.5476153&quot;,&quot;query&quot;:&quot;인천아시아드주경기장&quot;,&quot;markerLongitude&quot;:&quot;126.6666173&quot;,&quot;title&quot;:&quot;인천아시아드 주경기장&quot;,&quot;viewId&quot;:&quot;SEDOC-1512542204970-187824717_map_0&quot;,&quot;locationId&quot;:&quot;35296693&quot;,&quot;markerLatitude&quot;:&quot;37.5476153&quot;,&quot;tel&quot;:true,&quot;longitude&quot;:&quot;126.6666173&quot;},&quot;id&quot;:&quot;SEDOC-1512542204970-187824717_map_0&quot;,&quot;type&quot;:&quot;v1_map&quot;,&quot;docVersion&quot;:&quot;1.0&quot;}"></script>














    








<div class="se_component se_paragraph default">
    <div class="se_sectionArea">
        <div class="se_editArea">
            <div class="se_viewArea se_ff_nanumgothic se_fs_T3 se_align-left">
                <div class="se_editView">
                    <div class="se_textView">
                        <p class="se_textarea"><!-- SE3-TEXT { --><span>인천아시아드 경기장은 공항철도 검암역에서 인천 2호선으로 환승하여 아시아드경기장역에서 하차하여 걸어가거나,<br></span><span>공항철도 검암역에서 버스를 환승하여 갈 수 있다.<br></span><span><br></span><span><span><strong>지하철 이용시&nbsp;: &nbsp;공항철도 검암역 - 아시아드경기장역</strong> (인천2호선, 도보 20분 소요)</span><br></span><span><strong>버스 이용시 : </strong></span><span><strong>인천아시아드주경기장(4번출입구)[42934, 42935]</strong>: 17-1, 43-2, 70<br><b>인천아시아드주경기장(서문)[89198]</b>: 43-2, 70<br><b>우성아파트[42717, 42718]</b>: 17-1, 84, 111, 111-2, 302</span><br><!-- } SE3-TEXT --></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>












    


		<div class="se_component se_image default">
			<div class="se_sectionArea se_align-center">
				<div class="se_editArea">
					<div class="se_viewArea" style="max-width:700px">
						<a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" onclick="return false;" class="se_mediaArea __se_image_link __se_link" data-linktype="img" data-linkdata="{&quot;imgId&quot; : &quot;SEDOC-1512542204970-187824717_image_1_img&quot;, &quot;src&quot; : &quot;https://mblogthumb-phinf.pstatic.net/MjAxNzEyMDZfNTkg/MDAxNTEyNTM5MDM0MzI0.p1Mn6gAv5CJX3vnKMsxEaphc5qVfE0Yn00dUAv-TOUsg.6KzDqmuA68N94i1EoXRe73ztdUqjROhY18DGEe9tcHQg.JPEG.arex_blog/IMG_1602.jpg&quot;, &quot;linkUse&quot; : &quot;false&quot;, &quot;link&quot; : &quot;&quot;}">
							<img id="SEDOC-1512542204970-187824717_image_1_img" class="se_mediaImage __se_img_el" src="./village_files/IMG_1602.jpg" width="700" height="931" data-attachment-id="I4ziCrn6a99WAt9956NEzIZSdwHk" alt="">
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
                        <p class="se_textarea"><!-- SE3-TEXT { -->인천2호선 이용시 아시아드경기장에서 하차하여 4번 출구로 나와 좌회전하여 걸어간다.<!-- } SE3-TEXT --></p>
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
						<a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" onclick="return false;" class="se_mediaArea __se_image_link __se_link" data-linktype="img" data-linkdata="{&quot;imgId&quot; : &quot;SEDOC-1512542204970-187824717_image_2_img&quot;, &quot;src&quot; : &quot;https://mblogthumb-phinf.pstatic.net/MjAxNzEyMDZfMjE2/MDAxNTEyNTM5MDM0MzU2.5Fkda2TRWiBBHeSswSQByCrKxog7Cxgp5gYDqc0ErYQg.UDBwKhI0CCpLwQwy4xS8ZhNYmBmz3W1vfb0QYMlmXJIg.JPEG.arex_blog/IMG_1605.jpg&quot;, &quot;linkUse&quot; : &quot;false&quot;, &quot;link&quot; : &quot;&quot;}">
							<img id="SEDOC-1512542204970-187824717_image_2_img" class="se_mediaImage __se_img_el" src="./village_files/IMG_1605.jpg" width="900" height="675" data-attachment-id="I9uqC1C7BmFCLeSOH8o5ig5ZBG8E" alt="">
						</a>
							<div class="se_editView">
								<div class="se_textView se_mediaCaption">
									    <span class="se_textarea">인천아시아드주경기장</span>
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
                        <p class="se_textarea"><!-- SE3-TEXT { -->약 20분간 걸어가면 인천아시아드주경기장의 모습이 보인다. <!-- } SE3-TEXT --></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>












    


		<div class="se_component se_image default">
			<div class="se_sectionArea se_align-left">
				<div class="se_editArea">
					<div class="se_viewArea" style="max-width:500px">
						<a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" onclick="return false;" class="se_mediaArea __se_image_link __se_link" data-linktype="img" data-linkdata="{&quot;imgId&quot; : &quot;SEDOC-1512542204970-187824717_image_3_img&quot;, &quot;src&quot; : &quot;https://mblogthumb-phinf.pstatic.net/MjAxNzEyMDZfMTMy/MDAxNTEyNTM5MDM0NTUz.TrvYTlpOOVRzRTurWaEtxlwTQuYd4uqyABhnNkptEG4g.GxGYbcZWChtANWjDCN4xGBLR7RKGgma957Yu-MgjJs4g.JPEG.arex_blog/IMG_1607.jpg&quot;, &quot;linkUse&quot; : &quot;false&quot;, &quot;link&quot; : &quot;&quot;}">
							<img id="SEDOC-1512542204970-187824717_image_3_img" class="se_mediaImage __se_img_el" src="./village_files/IMG_1607.jpg" width="500" height="665" data-attachment-id="I2jQHXeep-zuQCqpp8eGXnOghMZc" alt="">
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
                        <p class="se_textarea"><!-- SE3-TEXT { --><span>인천아시아드 주경기장은 비추온마당, 비추온 정원, 주경기장, 바라매 마당, 보조경기장,<br></span><span>오디정원, 테니스장, 추므로 정원, 연희 크리켓 경기장, 추므로 마당, 놀이터, 연희공원, 안내소 등으로 구성되어있다. </span><!-- } SE3-TEXT --></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>












    




<div class="se_component se_imageStrip imageStrip2 default ">
    <div class="se_sectionArea se_align-extend">
        <div class="se_viewArea">
            <div class="se_editArea">

                <div class="se_imageStripView">
                    <div class="se_mediaArea">
                                                <div class="se_imageStripArea" style="width:50.0%;">
                        	<a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" onclick="return false;" class="__se_link" data-linktype="img" data-linkdata="{&quot;imgId&quot; : &quot;SEDOC-1512542204970-187824717_image_4_img_0&quot;, &quot;src&quot; : &quot;https://mblogthumb-phinf.pstatic.net/MjAxNzEyMDZfMTky/MDAxNTEyNTM5MDM0NjQz.WJFixZ2Bk_6TV8mziz1Zoo0wsgi_ZFYlvmrTl4t_qN4g.wXOMYU5835DEzu7iPIdpJEcDp0JBnl-8RsFYn37c55gg.JPEG.arex_blog/IMG_1609.jpg&quot;}">
								<img alt="" class="se_mediaImage __se_img_el" data-attachment-id="IU1BVDW1TJSuSrCL13xfG2MQIhFM" src="./village_files/IMG_1609.jpg" id="SEDOC-1512542204970-187824717_image_4_img_0">
							</a>                  
						</div>
                                                <div class="se_imageStripArea" style="width:50.0%;">
                        	<a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" onclick="return false;" class="__se_link" data-linktype="img" data-linkdata="{&quot;imgId&quot; : &quot;SEDOC-1512542204970-187824717_image_5_img_1&quot;, &quot;src&quot; : &quot;https://mblogthumb-phinf.pstatic.net/MjAxNzEyMDZfMjM2/MDAxNTEyNTM5MDM0NzQx.J5lc5qi0J4eMedH2Wl7P1SLYjobItwopwXMufmhaG4og.e2KWZG67p-yxtT6VCgC0IBl_Ytg5XwvtyzfJ-nbtGWgg.JPEG.arex_blog/IMG_1612.jpg&quot;}">
								<img alt="" class="se_mediaImage __se_img_el" data-attachment-id="IicUtNaFM-cvggBNoy5yg2qj5tDM" src="./village_files/IMG_1612.jpg" id="SEDOC-1512542204970-187824717_image_5_img_1">
							</a>                  
						</div>
                    </div>
                    <div class="se_editView">
                        <div class="se_textView se_mediaCaption">
                                <span class="se_textarea">인천아시아드주경기장</span>
                        </div>
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
                        <p class="se_textarea"><!-- SE3-TEXT { -->일반인들이&nbsp;방문해&nbsp;산책을&nbsp;즐길&nbsp;수&nbsp;있는&nbsp;길들도&nbsp;조성되어&nbsp;있다.&nbsp;&nbsp;주경기장을&nbsp;거쳐&nbsp;보조경기장으로&nbsp;가는&nbsp;코스로 산책을 해보자.<!-- } SE3-TEXT --></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>












    


		<div class="se_component se_image default">
			<div class="se_sectionArea se_align-center">
				<div class="se_editArea">
					<div class="se_viewArea" style="max-width:500px">
						<a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" onclick="return false;" class="se_mediaArea __se_image_link __se_link" data-linktype="img" data-linkdata="{&quot;imgId&quot; : &quot;SEDOC-1512542204970-187824717_image_6_img&quot;, &quot;src&quot; : &quot;https://mblogthumb-phinf.pstatic.net/MjAxNzEyMDZfMTIx/MDAxNTEyNTM5MDM2MDcz.YQWTpesa31vlj3mb9pNNM-M9jBATDhen1YKwJWub_Vgg.0opDXvIVMTYOhOMVBU_a3o0T_2QqbJkCTjMDdZQDNUog.JPEG.arex_blog/IMG_1626.jpg&quot;, &quot;linkUse&quot; : &quot;false&quot;, &quot;link&quot; : &quot;&quot;}">
							<img id="SEDOC-1512542204970-187824717_image_6_img" class="se_mediaImage __se_img_el" src="./village_files/IMG_1626.jpg" width="500" height="665" data-attachment-id="ItXUc-nxW5xM_xVRtFXZxTU5C5wQ" alt="">
						</a>
							<div class="se_editView">
								<div class="se_textView se_mediaCaption">
									    <span class="se_textarea">아시아드 주경기장 이용안내 </span>
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
                        <p class="se_textarea"><!-- SE3-TEXT { --><span>이용안내를 확인하여 모두가 편리한 공원을 만들어보자.<br></span><span>보드, 인라인 이용은 금지하지만 자전거 이용은&nbsp;자전거 통행로를 이용할 수 있다.<br></span><span>애완동물과 방문하는 사람들이 많은데, 모두를 위하여 목줄, 배변봉투 지참은 필수이다. </span><!-- } SE3-TEXT --></p>
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
						<a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" onclick="return false;" class="se_mediaArea __se_image_link __se_link" data-linktype="img" data-linkdata="{&quot;imgId&quot; : &quot;SEDOC-1512542204970-187824717_image_7_img&quot;, &quot;src&quot; : &quot;https://mblogthumb-phinf.pstatic.net/MjAxNzEyMDZfMjc2/MDAxNTEyNTM5MDM2MTM0.2r_MZDvaxCj8ufhy6XRO0Rqg2-27l-JGzZPGteqAkSEg.SqprJK0AaR2nrIViLOkyaxlzwJRXyw0QVtDUMN74-H0g.JPEG.arex_blog/IMG_1628.jpg&quot;, &quot;linkUse&quot; : &quot;false&quot;, &quot;link&quot; : &quot;&quot;}">
							<img id="SEDOC-1512542204970-187824717_image_7_img" class="se_mediaImage __se_img_el" src="./village_files/IMG_1628.jpg" width="900" height="675" data-attachment-id="I_--YJSMWWF08OwrdfiNPVwOkB3s" alt="">
						</a>
					</div>
				</div>
			</div>
		</div>


















    


		<div class="se_component se_image default">
			<div class="se_sectionArea se_align-justify">
				<div class="se_editArea">
					<div class="se_viewArea">
						<a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" onclick="return false;" class="se_mediaArea __se_image_link __se_link" data-linktype="img" data-linkdata="{&quot;imgId&quot; : &quot;SEDOC-1512542204970-187824717_image_8_img&quot;, &quot;src&quot; : &quot;https://mblogthumb-phinf.pstatic.net/MjAxNzEyMDZfMjk3/MDAxNTEyNTM5MDM2MzI4.9pkIhta04UnJb9abEOLlgwZh3NnnlEEEIwN8vQ9LHeog.MBmZYbKcvpdFWOTlV5pJ6xfCqaOFbBnJw460-f5Lhnog.JPEG.arex_blog/IMG_1629.jpg&quot;, &quot;linkUse&quot; : &quot;false&quot;, &quot;link&quot; : &quot;&quot;}">
							<img id="SEDOC-1512542204970-187824717_image_8_img" class="se_mediaImage __se_img_el" src="./village_files/IMG_1629.jpg" width="900" height="675" data-attachment-id="IO43iP82wPHyTwsFaAvS3suKTzE0" alt="">
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
                        <p class="se_textarea"><!-- SE3-TEXT { -->전체적으로 깨끗하고 넓은 시설로 이루어져있다. 한적하게 산책을 즐길 수 있다. <!-- } SE3-TEXT --></p>
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
                        <p class="se_textarea"><!-- SE3-TEXT { --><!-- } SE3-TEXT --></p>
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
						<a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" onclick="return false;" class="se_mediaArea __se_image_link __se_link" data-linktype="img" data-linkdata="{&quot;imgId&quot; : &quot;SEDOC-1512542204970-187824717_image_9_img&quot;, &quot;src&quot; : &quot;https://mblogthumb-phinf.pstatic.net/MjAxNzEyMDZfMTk3/MDAxNTEyNTM5MDM1MDYz.TjnE8dq4LIUaDU7j7rMH22_v8FaQL7RC-KVVesWWvskg.ejoLc975er68zULtd3tZhLRL374rWjvfPaYoo6HngSwg.JPEG.arex_blog/IMG_1616.jpg&quot;, &quot;linkUse&quot; : &quot;false&quot;, &quot;link&quot; : &quot;&quot;}">
							<img id="SEDOC-1512542204970-187824717_image_9_img" class="se_mediaImage __se_img_el" src="./village_files/IMG_1616.jpg" width="900" height="675" data-attachment-id="Ia2t6cXf2zmQpF2Kri0rfKl2eyzU" alt="">
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
                        <p class="se_textarea"><!-- SE3-TEXT { --><span>산책하다가 힘이 들때 쉬어갈 수 있는 장소도 다양하다. </span><span>영화관 (롯데시네마)과 카페 엔젤리너스가 있다.</span><span></span><!-- } SE3-TEXT --></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>












    




<div class="se_component se_imageStrip imageStrip2 default ">
    <div class="se_sectionArea se_align-extend">
        <div class="se_viewArea">
            <div class="se_editArea">

                <div class="se_imageStripView">
                    <div class="se_mediaArea">
                                                <div class="se_imageStripArea" style="width:50.0%;">
                        	<a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" onclick="return false;" class="__se_link" data-linktype="img" data-linkdata="{&quot;imgId&quot; : &quot;SEDOC-1512542204970-187824717_image_10_img_0&quot;, &quot;src&quot; : &quot;https://mblogthumb-phinf.pstatic.net/MjAxNzEyMDZfMTEx/MDAxNTEyNTM5MDM1NTA5.a98mmcJ5jgL-4mf2TI_cx6-S8HOYnds2p2sbsfnCF60g.O_9YZUOVXtpEPCTN4jRgE5K_MgB4xvCtsGCPHPBbFNQg.JPEG.arex_blog/IMG_1620.jpg&quot;}">
								<img alt="" class="se_mediaImage __se_img_el" data-attachment-id="IuyJM29jRcoy11HdLK3lUsCz5UAU" src="./village_files/IMG_1620.jpg" id="SEDOC-1512542204970-187824717_image_10_img_0">
							</a>                  
						</div>
                                                <div class="se_imageStripArea" style="width:50.0%;">
                        	<a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" onclick="return false;" class="__se_link" data-linktype="img" data-linkdata="{&quot;imgId&quot; : &quot;SEDOC-1512542204970-187824717_image_11_img_1&quot;, &quot;src&quot; : &quot;https://mblogthumb-phinf.pstatic.net/MjAxNzEyMDZfMyAg/MDAxNTEyNTM5MDM1MjE4.KrACfGn9cH9qrCvka86b0nEcsW4pO5TExbyQfIHEC_Qg.ew2iyA2O1K1SWxaCJ16IgX3zqWKQ6fjP_UqWQzzkcqsg.JPEG.arex_blog/IMG_1617.jpg&quot;}">
								<img alt="" class="se_mediaImage __se_img_el" data-attachment-id="ISLFHbNzKAas29EIQB00HZ5gURjw" src="./village_files/IMG_1617.jpg" id="SEDOC-1512542204970-187824717_image_11_img_1">
							</a>                  
						</div>
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
                        <p class="se_textarea"><!-- SE3-TEXT { -->영화관에서 영화를 보거나 카페에서 휴식을 즐길 수 있다. <!-- } SE3-TEXT --></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>












    




<div class="se_component se_imageStrip imageStrip2 default ">
    <div class="se_sectionArea se_align-extend">
        <div class="se_viewArea">
            <div class="se_editArea">

                <div class="se_imageStripView">
                    <div class="se_mediaArea">
                                                <div class="se_imageStripArea" style="width:50.0%;">
                        	<a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" onclick="return false;" class="__se_link" data-linktype="img" data-linkdata="{&quot;imgId&quot; : &quot;SEDOC-1512542204970-187824717_image_12_img_0&quot;, &quot;src&quot; : &quot;https://mblogthumb-phinf.pstatic.net/MjAxNzEyMDZfMjQ0/MDAxNTEyNTM5MDM1Njc4.b6w84xmA8z1zh6R2FJLrK3sOHNA6Je8BSPSBQ7cTCL4g.u9IePFKNO6kMNnHKu0LJGoWlHIF39yUuVbbLWTYzCysg.JPEG.arex_blog/IMG_1621.jpg&quot;}">
								<img alt="" class="se_mediaImage __se_img_el" data-attachment-id="IicjjwJcxHaFwwdqYBjSaJipqVx4" src="./village_files/IMG_1621.jpg" id="SEDOC-1512542204970-187824717_image_12_img_0">
							</a>                  
						</div>
                                                <div class="se_imageStripArea" style="width:50.0%;">
                        	<a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" onclick="return false;" class="__se_link" data-linktype="img" data-linkdata="{&quot;imgId&quot; : &quot;SEDOC-1512542204970-187824717_image_13_img_1&quot;, &quot;src&quot; : &quot;https://mblogthumb-phinf.pstatic.net/MjAxNzEyMDZfMjI0/MDAxNTEyNTM5MDM1ODYx.E9JOsL-oYhS9njQiYRYARKkpCTsYF7hNxyXU9Rkm6Wgg.Go5OfAk4Gt9dINeCcTtwvw2RZbuRysQiVF8w6ibFxcEg.JPEG.arex_blog/IMG_1623.jpg&quot;}">
								<img alt="" class="se_mediaImage __se_img_el" data-attachment-id="I9DmpNq_ZzV38tdlFo7KJZpib98I" src="./village_files/IMG_1623.jpg" id="SEDOC-1512542204970-187824717_image_13_img_1">
							</a>                  
						</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
















    


		<div class="se_component se_image default">
			<div class="se_sectionArea se_align-center">
				<div class="se_editArea">
					<div class="se_viewArea" style="max-width:500px">
						<a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" onclick="return false;" class="se_mediaArea __se_image_link __se_link" data-linktype="img" data-linkdata="{&quot;imgId&quot; : &quot;SEDOC-1512542204970-187824717_image_14_img&quot;, &quot;src&quot; : &quot;https://mblogthumb-phinf.pstatic.net/MjAxNzEyMDZfNSAg/MDAxNTEyNTM5MDM1Nzgy.okpagVWo8FJq5LZR86rbE-f8hJBWNh4syVHR0gormI4g.LkFh2t6Rtt8i_Tt6m4AMPOJQHJfU7qfJHJjT50yXkbUg.JPEG.arex_blog/IMG_1622.jpg&quot;, &quot;linkUse&quot; : &quot;false&quot;, &quot;link&quot; : &quot;&quot;}">
							<img id="SEDOC-1512542204970-187824717_image_14_img" class="se_mediaImage __se_img_el" src="./village_files/IMG_1622.jpg" width="500" height="375" data-attachment-id="I-srhnW5us-ngm2G4_RuXswZ4agE" alt="">
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
                        <p class="se_textarea"><!-- SE3-TEXT { -->영화관 내에 게임센터도 있어 가족, 친구들과 함께 게임을 즐겨보는 즐거운 시간을 보낼 수 있다.<!-- } SE3-TEXT --></p>
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
						<a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" onclick="return false;" class="se_mediaArea __se_image_link __se_link" data-linktype="img" data-linkdata="{&quot;imgId&quot; : &quot;SEDOC-1512542204970-187824717_image_15_img&quot;, &quot;src&quot; : &quot;https://mblogthumb-phinf.pstatic.net/MjAxNzEyMDZfMTU3/MDAxNTEyNTQxNzM1NTA3.DOdFmaVgg0WYnO2kSIpVn7XwleLl-e_jenvDTH5TT4cg.imZyLKVEaFuoNjjeyA0PpvQ7O2z_EuHqWKSFMwoup6sg.JPEG.arex_blog/image_9811679271512541326553.jpg&quot;, &quot;linkUse&quot; : &quot;false&quot;, &quot;link&quot; : &quot;&quot;}">
							<img id="SEDOC-1512542204970-187824717_image_15_img" class="se_mediaImage __se_img_el" src="./village_files/image_9811679271512541326553.jpg" width="900" height="675" data-attachment-id="IhDVOOpHG5pZML9NnFq5JW5Cul2k" alt="">
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
                        <p class="se_textarea"><!-- SE3-TEXT { --><span>아시아드주경기장에서는 생활체육 프로그램을 제공하고 있다.<br></span><span>북측광장에서는 성인들을 위한 자전거 교실을, 보조경기장에서는 축구클리닉이 매월 접수를 받아 진행되고 있다. <br></span><span><a class="se_link" href="http://www.insiseol.or.kr/institution_guidance/asiad/program_life_athletics.asp" target="_blank">http://www.insiseol.or.kr/institution_guidance/asiad/program_life_athletics.asp</a><br></span><span></span><!-- } SE3-TEXT --></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>












    







<div class="se_component se_oglink default ">
    <div class="se_sectionArea se_align-left">
        <div class="se_editArea" id="SEDOC-1512542204970-187824717_oglink_0">
            <div class="se_viewArea se_og_wrap">
                <a class="se_og_box  __se_link" href="http://www.insiseol.or.kr/institution_guidance/asiad/program_life_athletics.asp" target="_blank" data-linktype="link" data-linkdata="{&quot;link&quot; : &quot;http://www.insiseol.or.kr/institution_guidance/asiad/program_life_athletics.asp&quot;}">
                    <div class="se_og_thumb">
                        <img src="./village_files/saved_resource" alt="">
					</div>
                    <div class="se_og_txt">
                            <div class="se_og_tit">인천광역시시설관리공단 생활체육</div>
                                <div class="se_og_desc">&gt; 인천아시아드주경기장 &gt; 프로그램안내 &gt; 생활체육 아시아드주경기장 생활체육 
프로그램 ● 접수안내 · 접수기간 - 재등록기간 : 매월15일 -19 일 / 접수시간 09:00-18:00 - 신규등록기간 : 매월 20 일 -24 일 / 접수시간 09:00-18:00 - 
추가접수 : 매월25일 ~ 말일 · 접수방법 : 팩스 및 방문접수 , 팩스 : 032)454-2199 · 문의전화 : 032)454-2024 · 프로그램은 경기장 
사정에 따라 변경될 수 있으며 조기에</div>
                            <div class="se_og_cp">www.insiseol.or.kr</div>

                    </div>
                </a>
            </div>
        </div>
    </div>
</div>
<script type="text/data" class="__se_module_data" data-module="{&quot;type&quot;:&quot;v1_oglink&quot;, &quot;docVersion&quot; : &quot;1.0&quot;, &quot;id&quot; :&quot;SEDOC-1512542204970-187824717_oglink_0&quot; , &quot;data&quot; : {&quot;viewId&quot; : &quot;SEDOC-1512542204970-187824717_oglink_0&quot;, &quot;link&quot; : &quot;http://www.insiseol.or.kr/institution_guidance/asiad/program_life_athletics.asp&quot;, &quot;isVideo&quot; : &quot;false&quot;, &quot;thumbnail&quot; : &quot;http://dthumb.phinf.naver.net/?src=%22http%3A%2F%2Fwww.insiseol.or.kr%2FUserFiles%2Fcms_dcode%2F201608041743479_NLIU9XLY.jpg%22&amp;type=ff120&quot;}}"></script>













    








<div class="se_component se_paragraph default">
    <div class="se_sectionArea">
        <div class="se_editArea">
            <div class="se_viewArea se_ff_nanumgothic se_fs_T3 se_align-left">
                <div class="se_editView">
                    <div class="se_textView">
                        <p class="se_textarea"><!-- SE3-TEXT { --><!-- } SE3-TEXT --></p>
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
						<a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" onclick="return false;" class="se_mediaArea __se_image_link __se_link" data-linktype="img" data-linkdata="{&quot;imgId&quot; : &quot;SEDOC-1512542204970-187824717_image_16_img&quot;, &quot;src&quot; : &quot;https://mblogthumb-phinf.pstatic.net/MjAxNzEyMDZfMjA5/MDAxNTEyNTM5MDM2NDM4.Pq1J1S-EgfHjgyG3QvywtjVcPknnAy1BpU0XBrbtuoIg.fd-LxoRlhe3mYs8NmlkDjC3O8UY3o-_Gvrvo3zBDYEEg.JPEG.arex_blog/IMG_1635.jpg&quot;, &quot;linkUse&quot; : &quot;false&quot;, &quot;link&quot; : &quot;&quot;}">
							<img id="SEDOC-1512542204970-187824717_image_16_img" class="se_mediaImage __se_img_el" src="./village_files/IMG_1635.jpg" width="900" height="675" data-attachment-id="IE8TkCKtJCwE8fjP1DfKuW3n8PUg" alt="">
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
                        <p class="se_textarea"><!-- SE3-TEXT { -->인천아시아드경기장에는&nbsp;여러&nbsp;조형물,&nbsp;기념관&nbsp;등&nbsp;볼거리가&nbsp;다양해&nbsp;아이들과&nbsp;함께&nbsp;찾기에도&nbsp;<span>좋은 곳이다.<br></span><span>특히</span>&nbsp;4층에&nbsp;자리하고&nbsp;있는&nbsp;인천아시아드기념관에서는&nbsp;인천&nbsp;APG&nbsp;준비부터&nbsp;축제의&nbsp;순간,&nbsp;성과와&nbsp;비전&nbsp;등에&nbsp;관한&nbsp;다양한&nbsp;영상을&nbsp;비롯한&nbsp;전시물도&nbsp;관람할 수 있다. 바쁜&nbsp;일상에서&nbsp;벗어나&nbsp;한적한 곳에서 힐링하고 싶다면 방문해보자. <br><br><span style="color: rgb(147, 51, 143);"><br></span><span style="color: rgb(147, 51, 143);"><strong>&lt;인천아시아드 주경기장&gt;</strong></span><span style="color: rgb(147, 51, 143);"><br></span><span style="color: rgb(147, 51, 143);"><strong>주소</strong></span><span style="color: rgb(147, 51, 143);">&nbsp;:&nbsp;인천광역시&nbsp;서구&nbsp;봉수대로&nbsp;806&nbsp;<br></span><span style="color: rgb(147, 51, 143);"><b>가는 방법&nbsp;</b></span><span style="color: rgb(147, 51, 143);">- </span><span><span><span style="color: rgb(147, 51, 143);">지하철 이용시&nbsp;:&nbsp;공항철도 검암역 - 아시아드경기장역 </span></span></span><span><span style="color: rgb(147, 51, 143);"><span style="color: rgb(147, 51, 143);">(인천2호선, 도보 20분 소요)</span><br></span><span><strong></strong></span></span><span><span><span style="color: rgb(147, 51, 143);">버스 이용시 : </span><span style="color: rgb(147, 51, 143);">인천아시아드주경기장(4번출입구)[42934, 42935]: </span></span></span><span style="color: rgb(147, 51, 143);"><span style="color: rgb(147, 51, 143);">17-1, 43-2, 70</span><br></span><span style="color: rgb(147, 51, 143);"><b>문의</b></span><span style="color: rgb(147, 51, 143);">&nbsp;:&nbsp;</span><span style="color: rgb(147, 51, 143);">032</span><span style="color: rgb(147, 51, 143);">-</span><span style="color: rgb(147, 51, 143);">454</span><span style="color: rgb(147, 51, 143);">-</span><span style="color: rgb(147, 51, 143);">2014 </span><span style="color: rgb(147, 51, 143);"><br></span><span style="color: rgb(147, 51, 143);"><b>인천아시아드기념관</b></span><span style="color: rgb(147, 51, 143);"><b>&nbsp;</b></span><span style="color: rgb(147, 51, 143);"><b>홈페이지</b></span><span style="color: rgb(147, 51, 143);">&nbsp;:&nbsp;</span><span style="color: rgb(147, 51, 143);"><a class="se_link" href="http://iah.insiseol.or.kr/" target="_blank">http://iah.insiseol.or.kr/</a></span><!-- } SE3-TEXT --></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>












    







<div class="se_component se_oglink default ">
    <div class="se_sectionArea se_align-left">
        <div class="se_editArea" id="SEDOC-1512542204970-187824717_oglink_1">
            <div class="se_viewArea se_og_wrap">
                <a class="se_og_box  __se_link" href="http://iah.insiseol.or.kr/" target="_blank" data-linktype="link" data-linkdata="{&quot;link&quot; : &quot;http://iah.insiseol.or.kr/&quot;}">
                    <div class="se_og_thumb">
                        <img src="./village_files/saved_resource(1)" alt="">
					</div>
                    <div class="se_og_txt">
                            <div class="se_og_tit">인천아시아드 기념관</div>
                                <div class="se_og_desc">아시아드기념관 단체예약 문의 전화주시면 편리하게 예약할 수 있도록 안내해드리겠습니다. TEL. 032)454-2025,2014 INFO. 032)454-2115 기념관 이야기 감동과 환희의 현장들을 6개 테마로 기념합니다. 개·폐회식, 45개 아시아 참가국이 함께 한 화려한 축제의 순간 더보기 전시소개 16일간의 비상 대회스토리와 경기대회 개요, 경기종목을 통해 인천AG의 기본적인 이해가 가능한 코너 더보기 포토갤러리 APG 국제회의 참석자 VVIP실 : &nbsp;아시아드 주경기장 및 기념관 현황 청취 더보기 인천AG</div>
                            <div class="se_og_cp">iah.insiseol.or.kr</div>

                    </div>
                </a>
            </div>
        </div>
    </div>
</div>
<script type="text/data" class="__se_module_data" data-module="{&quot;type&quot;:&quot;v1_oglink&quot;, &quot;docVersion&quot; : &quot;1.0&quot;, &quot;id&quot; :&quot;SEDOC-1512542204970-187824717_oglink_1&quot; , &quot;data&quot; : {&quot;viewId&quot; : &quot;SEDOC-1512542204970-187824717_oglink_1&quot;, &quot;link&quot; : &quot;http://iah.insiseol.or.kr/&quot;, &quot;isVideo&quot; : &quot;false&quot;, &quot;thumbnail&quot; : &quot;http://dthumb.phinf.naver.net/?src=%22http%3A%2F%2Fiah.insiseol.or.kr%2Fimages%2Fmain%2Fmain_item_1.png%22&amp;type=ff120&quot;}}"></script>













    








<div class="se_component se_paragraph default">
    <div class="se_sectionArea">
        <div class="se_editArea">
            <div class="se_viewArea se_ff_nanumgothic se_fs_T3 se_align-left">
                <div class="se_editView">
                    <div class="se_textView">
                        <p class="se_textarea"><!-- SE3-TEXT { --><span style="color: rgb(0, 102, 204);"><br></span><span style="color: rgb(0, 102, 204);"></span><!-- } SE3-TEXT --></p>
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
                        <p class="se_textarea"><!-- SE3-TEXT { --><span style="color: rgb(0, 102, 204);"></span><!-- } SE3-TEXT --></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>












</div>
<!-- SE_DOC_CONTENTS_END -->
<div class="__se_doc_title_end" id="se_doc_contents_end"></div>
<div id="SEDOC-1512542204970-187824717_se_doc_footer" class="se_doc_footer"></div>
</div></div>
	</div>

	
	
	
	
	
	
		
		<div class="post_tag ">
			<ul>
				
					<li><a href="https://m.blog.naver.com/BlogTagView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;tagName=%EC%9D%B8%EC%B2%9C%EC%95%84%EC%8B%9C%EC%95%84%EB%93%9C%EC%A3%BC%EA%B2%BD%EA%B8%B0%EC%9E%A5&amp;page=1" onclick="nclk(this, &#39;pst.tag&#39;, &#39;&#39;, &#39;&#39;);"><span class="ell">#인천아시아드주경기장</span></a></li>
				
					<li><a href="https://m.blog.naver.com/BlogTagView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;tagName=%EC%95%84%EC%8B%9C%EC%95%84%EB%93%9C%EA%B2%BD%EA%B8%B0%EC%9E%A5&amp;page=1" onclick="nclk(this, &#39;pst.tag&#39;, &#39;&#39;, &#39;&#39;);"><span class="ell">#아시아드경기장</span></a></li>
				
					<li><a href="https://m.blog.naver.com/BlogTagView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;tagName=%EC%95%84%EC%8B%9C%EC%95%84%EB%93%9C%EA%B2%BD%EA%B8%B0%EC%9E%A5%EC%97%AD&amp;page=1" onclick="nclk(this, &#39;pst.tag&#39;, &#39;&#39;, &#39;&#39;);"><span class="ell">#아시아드경기장역</span></a></li>
				
					<li><a href="https://m.blog.naver.com/BlogTagView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;tagName=%EA%B3%B5%ED%95%AD%EC%B2%A0%EB%8F%84&amp;page=1" onclick="nclk(this, &#39;pst.tag&#39;, &#39;&#39;, &#39;&#39;);"><span class="ell">#공항철도</span></a></li>
				
					<li><a href="https://m.blog.naver.com/BlogTagView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;tagName=%EA%B2%80%EC%95%94%EC%97%AD&amp;page=1" onclick="nclk(this, &#39;pst.tag&#39;, &#39;&#39;, &#39;&#39;);"><span class="ell">#검암역</span></a></li>
				
					<li><a href="https://m.blog.naver.com/BlogTagView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;tagName=%EC%9D%B8%EC%B2%9C2%ED%98%B8%EC%84%A0&amp;page=1" onclick="nclk(this, &#39;pst.tag&#39;, &#39;&#39;, &#39;&#39;);"><span class="ell">#인천2호선</span></a></li>
				
					<li><a href="https://m.blog.naver.com/BlogTagView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;tagName=%EC%9D%B8%EC%B2%9C%EC%82%B0%EC%B1%85%EB%A1%9C&amp;page=1" onclick="nclk(this, &#39;pst.tag&#39;, &#39;&#39;, &#39;&#39;);"><span class="ell">#인천산책로</span></a></li>
				
					<li><a href="https://m.blog.naver.com/BlogTagView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;tagName=%EC%9D%B8%EC%B2%9C%EC%95%84%EC%8B%9C%EC%95%84%EB%93%9C%EA%B8%B0%EB%85%90%EA%B4%80&amp;page=1" onclick="nclk(this, &#39;pst.tag&#39;, &#39;&#39;, &#39;&#39;);"><span class="ell">#인천아시아드기념관</span></a></li>
				
			</ul>
		</div>
		
	
	
	

	
	
	
		<p class="write_by_smarteditor3">
			<a href="http://m.blog.naver.com/blogpeople?categoryNo=33">PC-모바일 어디서나 수정가능한<br><span class="sp se3_logo" aria-label="스마트에디터3.0"></span>으로 쓴 글입니다<i class="sp bu_arr"></i></a>
		</p>
	
  <div class="section_t1">
    <div class="section_w">
      
      <div class="btn_r">
        
          <a href="https://m.blog.naver.com/CommentList.nhn?blogId=arex_blog&amp;logNo=221156825329" class="btn_reply" onclick="nclk(this, &#39;pst.re&#39;, &#39;&#39;, &#39;&#39;);">
            <span class="sp ico">댓글</span> <em>3</em>
          </a>
        
        <a class="naver-splugin btn_share _returnFalse" onclick="nclk(this, &#39;pst.share&#39;, &#39;&#39;, &#39;&#39;);" data-style="standard" data-url="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329" data-title="<%=lname%>" data-likeserviceid="blog" data-likecontentsid="arex_blog_221156825329" data-canonical-url="https://m.blog.naver.com/arex_blog/221156825329" data-oninitialize="splugin_oninitialize();" splugin-id="7780862176"><span class="sp ico" style="pointer-events:none">공유하기</span>
        </a>
      </div>
    </div>
  </div>

  <!-- 작성자정보 -->
  
  <div class="post_writer">
    <div class="post_writer_wrap">
      <a href="https://m.blog.naver.com/arex_blog" onclick="nclk(this, &#39;pst.pfwriter&#39;, &#39;&#39;, &#39;&#39;);" class="link">
        <div class="thumb">
          <span class="img"><img src="./village_files/12%BF%F9+%C7%C1%B7%CE%C7%CA+%C1%A4%BB%E7%B0%A2.png" width="48" height="48" alt="공항철도"></span>
          
          
        </div>
        <div class="txt">
          
          <strong class="writer"><%=writer %> <span class="sim ico_verified3">공식블로그</span></strong>
          <p class="dsc">공항철도 공식 블로그입니다.</p>
        </div>
      </a>
      <div class="btn_area">
        
          
          
          
          
            <span class="btn add_buddy"><a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" class="_add_buddy _param(arex_blog|true||/BuddyAddForm.nhn) _returnFalse" isblackuser="false" onclick="nclk(this, &#39;pst.pfaddn&#39;, &#39;&#39;, &#39;&#39;);"><span class="sp"></span>이웃추가</a></span>
          
        
        
        
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
      <a href="https://m.blog.naver.com/PostList.nhn?blogId=arex_blog&amp;categoryNo=65&amp;logCode=0" class="link sp_after" onclick="nclk(this, &#39;pst.otherlist&#39;, &#39;&#39;, &#39;&#39;);">
        <span class="td">이 블로그&nbsp;</span>
        <span class="td tit"><strong class="ell">인천,경기 등 여행</strong></span>
        <span class="td">의 다른 글</span>
      </a>
    </h2>

    <div class="lst_w">
      <div class="_watchRecentPostList _flickingContainer _isNotTablet" id="_flickingContainer" style="overflow: hidden;">
        <div class="_flickingScroll" id="_flickingScroll">
          <ul class="_category_post_list" id="_relatedCategoryPostListFlickingPage_0">
  <li class="_category_post_list_221156825329">
    <div class="lst_detail_t17 visited">
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329" class="link" onclick="nclk(this, &#39;pst.other&#39;, &#39;&#39;, &#39;&#39;);eprClick.on(&#39;RECENT_POST_LIST&#39;);timerStop();">
        
        <div class="thumb_area sp_before">
          <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzEyMDZfMjU2/MDAxNTEyNTQwMDcyMjEw.-IFaFvw7V3NPaw-H6E6EaMZkdAcqNMQn5Ud9Wls-a74g.X4S6s_KXS1EHTYg8YcxLa7jEa14PeN-w4vtNUHtX7Gcg.JPEG.arex_blog/%C7%A5%C1%F6_%BA%B9%BB%E7.jpg?type=w210)">
            
          </div>
        </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              <%=lname%>
            </div>
            <div class="meta_data">
              <span class="td">
                <span class="ell">2017. 12. 6.</span>
              </span>
            </div>
          </div>
        </div>
      </a>
    </div>
  </li>
  
  <li class="_category_post_list_221130350456">
    <div class="lst_detail_t17 ">
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221130350456" class="link" onclick="nclk(this, &#39;pst.other&#39;, &#39;&#39;, &#39;&#39;);eprClick.on(&#39;RECENT_POST_LIST&#39;);timerStop();">
        
        <div class="thumb_area sp_before">
          <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzExMDFfMjk2/MDAxNTA5NTIyODgzOTM5.TOEURNbdkRQ-PdrXMPWSbDShNZWENm7IOwictz4yorgg.mE9jRd_DzcgDTmpjvvyAluWxhjOCFbkhSNw4yTnwPSQg.JPEG.arex_blog/IMG_0743.jpg?type=w210)">
            
          </div>
        </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              인천 아이스링크장 - 선학국제빙상경기장에 가보자
            </div>
            <div class="meta_data">
              <span class="td">
                <span class="ell">2017. 11. 1.</span>
              </span>
            </div>
          </div>
        </div>
      </a>
    </div>
  </li>
  
  <li class="_category_post_list_221116228016">
    <div class="lst_detail_t17 ">
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221116228016" class="link" onclick="nclk(this, &#39;pst.other&#39;, &#39;&#39;, &#39;&#39;);eprClick.on(&#39;RECENT_POST_LIST&#39;);timerStop();">
        
        <div class="thumb_area sp_before">
          <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzEwMTNfOTMg/MDAxNTA3ODcwODM0NzA0.ddSlunLWuAPeRzHz0wRU_biqGkuONO0Klf_mlnsCBGgg.-2hTsvyIbshfbhw4pxFeWa__hjNDmLO0VGOwXg--Egkg.JPEG.arex_blog/10.JPG?type=w210)">
            
          </div>
        </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              대한민국의 베니스를 꿈꾸는, 김포 &lt;라베니체&gt;
            </div>
            <div class="meta_data">
              <span class="td">
                <span class="ell">2017. 10. 25.</span>
              </span>
            </div>
          </div>
        </div>
      </a>
    </div>
  </li>
  
  <li class="_category_post_list_221116243586">
    <div class="lst_detail_t17 ">
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221116243586" class="link" onclick="nclk(this, &#39;pst.other&#39;, &#39;&#39;, &#39;&#39;);eprClick.on(&#39;RECENT_POST_LIST&#39;);timerStop();">
        
        <div class="thumb_area sp_before">
          <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzEwMTNfMTUg/MDAxNTA3ODcxOTIwMDcx.S_cMjT5ntKv42RxTbvtVJeKrObxete6xKfDOyqdVehsg.uHxHKb5l5tCZSbgcOHOrcKBiIMoHXZP7Q89cMYOE2ZMg.JPEG.arex_blog/8.JPG?type=w210)">
            
          </div>
        </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              공항철도 타고 떠나는 가을 여행 추천 – 신도, 시도, 모도 자전거 여행
            </div>
            <div class="meta_data">
              <span class="td">
                <span class="ell">2017. 10. 24.</span>
              </span>
            </div>
          </div>
        </div>
      </a>
    </div>
  </li>
  
  <li class="_category_post_list_221119687982">
    <div class="lst_detail_t17 ">
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221119687982" class="link" onclick="nclk(this, &#39;pst.other&#39;, &#39;&#39;, &#39;&#39;);eprClick.on(&#39;RECENT_POST_LIST&#39;);timerStop();">
        
        <div class="thumb_area sp_before">
          <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzEwMThfMjQ2/MDAxNTA4Mjk2Mzg3MzMz.thZ2MQom7OuU60dbhRhuZFRkKotpoVCLJlz4q83HhRwg.U6-HClTifGRI82aHbZkmqVlrsGYL-Z1t99KWMw-qPSsg.JPEG.arex_blog/IMG_0439.JPG?type=w210)">
            
          </div>
        </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              검암역 근처 서해 5도 수산물 복합센터
            </div>
            <div class="meta_data">
              <span class="td">
                <span class="ell">2017. 10. 18.</span>
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
        <a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" class="btn_prev _category_post_list_btn _returnFalse" onclick="nclk(this, &#39;pst.prev&#39;, &#39;&#39;, &#39;&#39;);" style="display: none;"><i class="sp_before">이전</i></a>
        <a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" class="btn_next _category_post_list_btn _returnFalse" onclick="nclk(this, &#39;pst.next&#39;, &#39;&#39;, &#39;&#39;);" style=""><i class="sp_before">다음</i></a>
        <span class="btn_next" style="display: none;"><i class="sp_before">다음</i></span>
      </div>
    </div>
  </div>
  

  
  
  <div id="_endPagePostRecommendArea" style="display:none;"></div>








  <!-- 하단 추천 -->
  <div class="lst_t17">
    <h2 class="tit_h2">
      
        
        
        
        
          
          
          <span class="td tit">
            <strong class="ell">인천아시아드 주경기장</strong>
          </span>
          <span class="td">&nbsp;장소의 다른 글</span>
        
        
        
        
        
        
        
      
    </h2>
    <div class="lst_w" id="_endPagePostRecommendList">
      <div class="_watchPostRecommend" id="_recommendFlickingContainer" style="overflow: hidden; height: 444px; touch-action: pan-y pinch-zoom;">
        <div id="_recommendFlickingScroll" data-recommendation-type="KOREA_MAP" data-total-count="19" data-current-page="1" data-count-per-page="5" data-directory-seq="0" style="width: 6588px; height: 444px; transition-timing-function: cubic-bezier(0.1, 0.57, 0.1, 1); transition-duration: 0ms; transform: translate(0px, 0px) translateZ(0px);">
          








  
  
  
  
    
  
  
  
  
  
  
  




  
    <ul class="_recommend_category_post_list" id="_recommendPostListFlickingPage_0" style="width: 1647px; float: left;">
    
  
  <li>
    <div class="lst_detail_t17 ">
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=incheontogi&amp;logNo=221146014738&amp;targetKeyword=&amp;targetRecommendationCode=1" data-blog-id="incheontogi" data-log-no="221146014738" class="link _endPagePostViewLink" onclick="nclk(this, &#39;brc.loclist&#39;, &#39;&#39;, &#39;&#39;); eprClick.on(&#39;POST_RECOMMEND&#39;);">
        
          <div class="thumb_area sp_before">
            <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzExMjJfMTg4/MDAxNTExMzM5Mjg2NTk5.5hQqxQaUj71RbwaYgsUeXjhdO98fI2Z4DmvePkObjW0g.VVJmYGZCP9YYtKcVaNii3AvrLKl8CZDNgwPuhLEeQUsg.PNG.incheontogi/%C8%FA%B8%B5%C5%B8%C0%D3.png?type=w210)">
              
            </div>
          </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              
                
                
                  인천아시아드주경기장 산책로에서 힐링타임!
                
              
            </div>
            <div class="meta_data">
              
              <span class="td">
                <span class="ell">온통인천</span>
              </span>
              
              <span class="td">
                
                  <div class="btn_like">
                      <div class="u_likeit_list_module">
                        <div class="u_likeit_list_btn u_none_txt">
                          <span class="u_ico"></span>
                          <em class="u_txt"></em>
                          <em class="u_cnt">63</em>
                        </div>
                      </div>
                  </div>
                
                
                  <span class="reply">
                    <span class="sp">댓글</span> 8
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
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=znfznfxhd&amp;logNo=221136944638&amp;targetKeyword=&amp;targetRecommendationCode=1" data-blog-id="znfznfxhd" data-log-no="221136944638" class="link _endPagePostViewLink" onclick="nclk(this, &#39;brc.loclist&#39;, &#39;&#39;, &#39;&#39;); eprClick.on(&#39;POST_RECOMMEND&#39;);">
        
          <div class="thumb_area sp_before">
            <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzExMTBfMTQx/MDAxNTEwMjkzNzc1NTE3.rPuMlu-NisbP790O0AfoVgxx82AQsDGjK6bmaXuGjt4g._C4Xsbi6C6bVqNJbjVDnEM6D41gMxLAHadU-vzhmeyMg.JPEG.znfznfxhd/20170929_135254.jpg?type=w210)">
              
            </div>
          </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              
                
                
                  한여름날의 산책
                
              
            </div>
            <div class="meta_data">
              
              <span class="td">
                <span class="ell">빛나는별</span>
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
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=discoverincheon&amp;logNo=221124364653&amp;targetKeyword=&amp;targetRecommendationCode=1" data-blog-id="discoverincheon" data-log-no="221124364653" class="link _endPagePostViewLink" onclick="nclk(this, &#39;brc.loclist&#39;, &#39;&#39;, &#39;&#39;); eprClick.on(&#39;POST_RECOMMEND&#39;);">
        
          <div class="thumb_area sp_before">
            <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzEwMjRfMTkw/MDAxNTA4ODM5NTc3NzAw.6UasgbvhO-EoUk5KWW3L0tngVhHkvMfosuORp8dA2D0g.Q8u7_snpkqYWLcQb0Ih-7E4kk7O0a8c_Q0EgtT0xaJQg.PNG.discoverincheon/%C0%CE%C3%B52%C8%A3%BC%B1.png?type=w210)">
              
            </div>
          </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              
                
                
                  지하철타고 떠나는 인천여행 2편, 인천도시철도 2호선
                
              
            </div>
            <div class="meta_data">
              
              <span class="td">
                <span class="ell">DiscoverIncheon</span>
              </span>
              
              <span class="td">
                
                  <div class="btn_like">
                      <div class="u_likeit_list_module">
                        <div class="u_likeit_list_btn u_none_txt">
                          <span class="u_ico"></span>
                          <em class="u_txt"></em>
                          <em class="u_cnt">19</em>
                        </div>
                      </div>
                  </div>
                
                
                  <span class="reply">
                    <span class="sp">댓글</span> 6
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
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=acerolacherry&amp;logNo=221115915172&amp;targetKeyword=&amp;targetRecommendationCode=1" data-blog-id="acerolacherry" data-log-no="221115915172" class="link _endPagePostViewLink" onclick="nclk(this, &#39;brc.loclist&#39;, &#39;&#39;, &#39;&#39;); eprClick.on(&#39;POST_RECOMMEND&#39;);">
        
          <div class="thumb_area sp_before">
            <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzEwMTJfOTYg/MDAxNTA3ODE5OTQxNTM1.rzcyWMUqG7nA4BfZoraHB68Vns40H73SJHz2HGq07FQg.iQ-mp612-fX-DPsIyUQCiCNYd1O4q94eSHvLgmtMgiAg.JPEG.acerolacherry/IMG_5686.JPG?type=w210)">
              
            </div>
          </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              
                
                
                  인천 아시아드 주경기장
                
              
            </div>
            <div class="meta_data">
              
              <span class="td">
                <span class="ell">녹색 나뭇잎</span>
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
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=live_4001&amp;logNo=221104417495&amp;targetKeyword=&amp;targetRecommendationCode=1" data-blog-id="live_4001" data-log-no="221104417495" class="link _endPagePostViewLink" onclick="nclk(this, &#39;brc.loclist&#39;, &#39;&#39;, &#39;&#39;); eprClick.on(&#39;POST_RECOMMEND&#39;);">
        
          <div class="thumb_area sp_before">
            <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzA5MjVfNzAg/MDAxNTA2MjcwOTg1MTg1.-lzqOqbExdS40ET-IqU912YPRvjEdQdXzWoBYxQQOzcg.m2MN8OijIHm6kQgd8ZNZ3XkvshS-AyNe0IE6R6kD6jQg.JPEG.live_4001/%B4%EB%C7%D1%C7%D7%B0%F8_%B3%EB%B5%BF%C1%B6%C7%D5_%B0%C8%B1%E2%B4%EB%C8%B8_%C2%FC%B0%A1_-_%C0%CE%C3%B5%BE%C6%BD%C3%BE%C6%B5%E5%C1%D6%B0%E6%B1%E2%C0%E5_%C1%D6%C2%F7%C0%E5_%B7%D4%B5%A5%BD%C3%B3%D7%B8%B6%B5%B5_%C0%D6%B3%D7%BF%E4_054.jpg?type=w210)">
              
            </div>
          </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              
                
                
                  대한항공 노동조합 걷기대회 참가 : 인천 아시아드 주경기장 주차장 &amp; 롯데시네마도 있네요
                
              
            </div>
            <div class="meta_data">
              
              <span class="td">
                <span class="ell">꿈을 담는 단지네</span>
              </span>
              
              <span class="td">
                
                  <div class="btn_like">
                      <div class="u_likeit_list_module">
                        <div class="u_likeit_list_btn u_none_txt">
                          <span class="u_ico"></span>
                          <em class="u_txt"></em>
                          <em class="u_cnt">5</em>
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
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=rebecca373&amp;logNo=221097873412&amp;targetKeyword=&amp;targetRecommendationCode=1" data-blog-id="rebecca373" data-log-no="221097873412" class="link _endPagePostViewLink" onclick="nclk(this, &#39;brc.loclist&#39;, &#39;&#39;, &#39;&#39;); eprClick.on(&#39;POST_RECOMMEND&#39;);">
        
          <div class="thumb_area sp_before">
            <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzA5MTFfMjY3/MDAxNTA1MTE5MzE4MTYx.8CNqWpY9MnydzB04m3QoLCR0yQ1mIhLGCwsUw-g6TvQg.qQ79-TpU3BwpzU7zY0_LItVP5ugZ0Jz8vJrdDOsnN3gg.JPEG.rebecca373/%BE%C6%BD%C3%BE%C6%B5%E5_%B0%E6%B1%E2%C0%E5_SAM_5005.JPG?type=w210)">
              
            </div>
          </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              
                
                
                  인천 아시아드 경기장 
                
              
            </div>
            <div class="meta_data">
              
              <span class="td">
                <span class="ell">보라 향기</span>
              </span>
              
              <span class="td">
                
                  <div class="btn_like">
                      <div class="u_likeit_list_module">
                        <div class="u_likeit_list_btn u_none_txt">
                          <span class="u_ico"></span>
                          <em class="u_txt"></em>
                          <em class="u_cnt">38</em>
                        </div>
                      </div>
                  </div>
                
                
                  <span class="reply">
                    <span class="sp">댓글</span> 12
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
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=jjin_njjin&amp;logNo=221095058305&amp;targetKeyword=&amp;targetRecommendationCode=1" data-blog-id="jjin_njjin" data-log-no="221095058305" class="link _endPagePostViewLink" onclick="nclk(this, &#39;brc.loclist&#39;, &#39;&#39;, &#39;&#39;); eprClick.on(&#39;POST_RECOMMEND&#39;);">
        
          <div class="thumb_area sp_before">
            <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzA5MTJfMjg4/MDAxNTA1MTkyMTE5NzA1.-ujlDVhfi-uSkTj6Tfp8tpokFGGciztbdsptqnHdbcgg.dwIPiFVFqHu1-7AXPSjqlZYmbySaKKfLYGu6uXsuSDwg.JPEG.jjin_njjin/20170909_200011.jpg?type=w210)">
              
            </div>
          </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              
                
                
                  [주말이야기] 집들이+결혼식+비위드컵&amp;아리엘페스티발
                
              
            </div>
            <div class="meta_data">
              
              <span class="td">
                <span class="ell">찌니</span>
              </span>
              
              <span class="td">
                
                  <div class="btn_like">
                      <div class="u_likeit_list_module">
                        <div class="u_likeit_list_btn u_none_txt">
                          <span class="u_ico"></span>
                          <em class="u_txt"></em>
                          <em class="u_cnt">6</em>
                        </div>
                      </div>
                  </div>
                
                
                  <span class="reply">
                    <span class="sp">댓글</span> 2
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
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=archur&amp;logNo=221060400155&amp;targetKeyword=&amp;targetRecommendationCode=1" data-blog-id="archur" data-log-no="221060400155" class="link _endPagePostViewLink" onclick="nclk(this, &#39;brc.loclist&#39;, &#39;&#39;, &#39;&#39;); eprClick.on(&#39;POST_RECOMMEND&#39;);">
        
          <div class="thumb_area sp_before">
            <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzA3MjZfNTkg/MDAxNTAxMDYxMTMxMTMx.VsUoHUeNfYCBoArKSmENR1Ode0KGmsOyRFMc0gpqIFEg.hXQa7WghguiBh5lEhPHAfGLvLlsxnNcMNSrCjJI1TsUg.JPEG.archur/1130-02.JPG?type=w210)">
              
            </div>
          </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              
                
                
                  서구-"국제적 행사를 기념하는 너무 비싼 건축물", 인천아시안게임 주경기장
                
              
            </div>
            <div class="meta_data">
              
              <span class="td">
                <span class="ell">기계</span>
              </span>
              
              <span class="td">
                
                  <div class="btn_like">
                      <div class="u_likeit_list_module">
                        <div class="u_likeit_list_btn u_none_txt">
                          <span class="u_ico"></span>
                          <em class="u_txt"></em>
                          <em class="u_cnt">11</em>
                        </div>
                      </div>
                  </div>
                
                
                  <span class="reply">
                    <span class="sp">댓글</span> 2
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
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=selsty0121&amp;logNo=221020728493&amp;targetKeyword=&amp;targetRecommendationCode=1" data-blog-id="selsty0121" data-log-no="221020728493" class="link _endPagePostViewLink" onclick="nclk(this, &#39;brc.loclist&#39;, &#39;&#39;, &#39;&#39;); eprClick.on(&#39;POST_RECOMMEND&#39;);">
        
          <div class="thumb_area sp_before">
            <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzA2MDNfMzgg/MDAxNDk2NDU2NjYzMDk2.av9ARqDkykw0_TfPaAlFXV5KL6VQ5AK_6Fd0PfwM3WEg.PB0XckBYDKmyN1ukA8LSR7_oAq-9PR9vwC1ernSm5YYg.JPEG.selsty0121/%B5%A5%BB%F3%C6%AE_%B5%E0%BE%D6%BD%BD%B7%D0_%C0%CE%C3%B5_%C7%F6%C0%E5%BD%BA%C4%C9%C4%A1_%BB%E7%C1%F827.JPG?type=w210)">
              
            </div>
          </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              
                
                
                  2017 데상트 듀애슬론 레이스 인천 아시아드 주경기장 현장 스케치 내가 담은 사진들
                
              
            </div>
            <div class="meta_data">
              
              <span class="td">
                <span class="ell">상구형님</span>
              </span>
              
              <span class="td">
                
                  <div class="btn_like">
                      <div class="u_likeit_list_module">
                        <div class="u_likeit_list_btn u_none_txt">
                          <span class="u_ico"></span>
                          <em class="u_txt"></em>
                          <em class="u_cnt">14</em>
                        </div>
                      </div>
                  </div>
                
                
                  <span class="reply">
                    <span class="sp">댓글</span> 2
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
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=eophoto&amp;logNo=221018944458&amp;targetKeyword=&amp;targetRecommendationCode=1" data-blog-id="eophoto" data-log-no="221018944458" class="link _endPagePostViewLink" onclick="nclk(this, &#39;brc.loclist&#39;, &#39;&#39;, &#39;&#39;); eprClick.on(&#39;POST_RECOMMEND&#39;);">
        
          <div class="thumb_area sp_before">
            <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzA1MzFfODYg/MDAxNDk2MjE3NzA2MDAx.Wc72kXWpnWCntyo8GAx917Qd__n_oUQUBdTcL3M7rZ4g.yZnqZKirv5KFOD3yEXd6h3PkqDBi55G4hpj6pjR3vdIg.JPEG.eophoto/ESH_8826.jpg?type=w210)">
              
            </div>
          </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              
                
                
                  [러닝] 2017 데상트 듀애슬론 레이스 'AWAKEN INCHEON'
                
              
            </div>
            <div class="meta_data">
              
              <span class="td">
                <span class="ell">어포토</span>
              </span>
              
              <span class="td">
                
                  <div class="btn_like">
                      <div class="u_likeit_list_module">
                        <div class="u_likeit_list_btn u_none_txt">
                          <span class="u_ico"></span>
                          <em class="u_txt"></em>
                          <em class="u_cnt">11</em>
                        </div>
                      </div>
                  </div>
                
                
                  <span class="reply">
                    <span class="sp">댓글</span> 6
                  </span>
                
              </span>
            </div>
          </div>
        </div>
      </a>
    </div>
  </li>
  
    </ul>
  

  
    <ul class="_recommend_category_post_list" id="_recommendPostListFlickingPage_2" style="width: 1647px; float: left;">
    
  
  <li>
    <div class="lst_detail_t17 ">
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=jackylee08&amp;logNo=221017728498&amp;targetKeyword=&amp;targetRecommendationCode=1" data-blog-id="jackylee08" data-log-no="221017728498" class="link _endPagePostViewLink" onclick="nclk(this, &#39;brc.loclist&#39;, &#39;&#39;, &#39;&#39;); eprClick.on(&#39;POST_RECOMMEND&#39;);">
        
          <div class="thumb_area sp_before">
            <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzA1MzBfMTAg/MDAxNDk2MTI5MjM0NDE1.xsnX_05RLSN_ENwWWQxwIjbUhayAMtoIrQ2Q2t3jId0g.RsOGd9ja9eRNMD1CCwANcFzVdMu2oVJUblW-fIBjVXsg.JPEG.jackylee08/003-IMG_20170530151724_0.jpg?type=w210)">
              
            </div>
          </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              
                
                
                  [마라톤] 2017 데상트 듀애슬론 (Awaken Incheon) 
                
              
            </div>
            <div class="meta_data">
              
              <span class="td">
                <span class="ell">재키리</span>
              </span>
              
              <span class="td">
                
                  <div class="btn_like">
                      <div class="u_likeit_list_module">
                        <div class="u_likeit_list_btn u_none_txt">
                          <span class="u_ico"></span>
                          <em class="u_txt"></em>
                          <em class="u_cnt">3</em>
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
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=mmm7962&amp;logNo=221017269759&amp;targetKeyword=&amp;targetRecommendationCode=1" data-blog-id="mmm7962" data-log-no="221017269759" class="link _endPagePostViewLink" onclick="nclk(this, &#39;brc.loclist&#39;, &#39;&#39;, &#39;&#39;); eprClick.on(&#39;POST_RECOMMEND&#39;);">
        
          <div class="thumb_area sp_before">
            <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzA1MzBfMjkz/MDAxNDk2MDc3OTE2NjI5.3DqJh5J1p6oRcnWr9mGdtijrk9w-kZQadKPbDuH_4Kog.GGDuVuuUwYHLftfKs2zS1fO6uljcptyUUl733E0T0fsg.JPEG.mmm7962/gksk.jpg?type=w210)">
              
            </div>
          </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              
                
                
                  데상트 듀애슬론레이스 엔딩 페이서 후기
                
              
            </div>
            <div class="meta_data">
              
              <span class="td">
                <span class="ell">수하 백화점</span>
              </span>
              
              <span class="td">
                
                  <div class="btn_like">
                      <div class="u_likeit_list_module">
                        <div class="u_likeit_list_btn u_none_txt">
                          <span class="u_ico"></span>
                          <em class="u_txt"></em>
                          <em class="u_cnt">32</em>
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
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=chozza09&amp;logNo=221014821178&amp;targetKeyword=&amp;targetRecommendationCode=1" data-blog-id="chozza09" data-log-no="221014821178" class="link _endPagePostViewLink" onclick="nclk(this, &#39;brc.loclist&#39;, &#39;&#39;, &#39;&#39;); eprClick.on(&#39;POST_RECOMMEND&#39;);">
        
          <div class="thumb_area sp_before">
            <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzA1MjZfMTg0/MDAxNDk1Nzc2MjcxMDUz.-sy9oMj4Iuhny1EA00EQcQ5JBsWtLkYBkcFG6Og72tAg.HJPevtllbL6jABHrfE6IQbo0njdZmKtajRSQL6tWprYg.JPEG.chozza09/%A4%A4%A4%A4.jpg?type=w210)">
              
            </div>
          </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              
                
                
                  경기 서부 인천 주말에 놀러 갈만한 곳 추천
                
              
            </div>
            <div class="meta_data">
              
              <span class="td">
                <span class="ell">초짜영구</span>
              </span>
              
              <span class="td">
                
                  <div class="btn_like">
                      <div class="u_likeit_list_module">
                        <div class="u_likeit_list_btn u_none_txt">
                          <span class="u_ico"></span>
                          <em class="u_txt"></em>
                          <em class="u_cnt">19</em>
                        </div>
                      </div>
                  </div>
                
                
              </span>
            </div>
          </div>
        </div>
      </a>
    </div>
  </li>
  

  
  <li>
    <div class="lst_detail_t17 ">
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=opps14&amp;logNo=221012301398&amp;targetKeyword=&amp;targetRecommendationCode=1" data-blog-id="opps14" data-log-no="221012301398" class="link _endPagePostViewLink" onclick="nclk(this, &#39;brc.loclist&#39;, &#39;&#39;, &#39;&#39;); eprClick.on(&#39;POST_RECOMMEND&#39;);">
        
          <div class="thumb_area sp_before">
            <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzA1MjNfMTUz/MDAxNDk1NTE2Nzk1NTY1.0gifwt-XgNolZ58mxJHbwbsKW15QmKJziWmV9SU1kKsg.zBaAfG21vTb7QAw_OL94kCQpY9W2BkOvRyDwFl3R9Z8g.JPEG.opps14/KakaoTalk_20170523_135913074.jpg?type=w210)">
              
            </div>
          </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              
                
                
                  2017 데상트 듀애슬론 레이스 :-)
                
              
            </div>
            <div class="meta_data">
              
              <span class="td">
                <span class="ell">마녀스프</span>
              </span>
              
              <span class="td">
                
                  <div class="btn_like">
                      <div class="u_likeit_list_module">
                        <div class="u_likeit_list_btn u_none_txt">
                          <span class="u_ico"></span>
                          <em class="u_txt"></em>
                          <em class="u_cnt">5</em>
                        </div>
                      </div>
                  </div>
                
                
                  <span class="reply">
                    <span class="sp">댓글</span> 2
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
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=hapkido9173&amp;logNo=221005523386&amp;targetKeyword=&amp;targetRecommendationCode=1" data-blog-id="hapkido9173" data-log-no="221005523386" class="link _endPagePostViewLink" onclick="nclk(this, &#39;brc.loclist&#39;, &#39;&#39;, &#39;&#39;); eprClick.on(&#39;POST_RECOMMEND&#39;);">
        
          <div class="thumb_area sp_before">
            <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzA1MTRfODMg/MDAxNDk0NzQ5MTg0ODQx.amdQXB-p899OmZap0ZdmALw3H05rnRq6y6Mo3hwcj4Qg.M09IubeuKwFkLKS496Nk5V_Roj5VIegzdGh6Zi9oZ_cg.JPEG.hapkido9173/20170514_151533.jpg?type=w210)">
              
            </div>
          </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              
                
                
                  인천에서 크루져보드 탈만한 곳 데이트장소로도 굿 : 인천아시아드주경기장
                
              
            </div>
            <div class="meta_data">
              
              <span class="td">
                <span class="ell">박관장</span>
              </span>
              
              <span class="td">
                
                  <div class="btn_like">
                      <div class="u_likeit_list_module">
                        <div class="u_likeit_list_btn u_none_txt">
                          <span class="u_ico"></span>
                          <em class="u_txt"></em>
                          <em class="u_cnt">5</em>
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
  

  
    <ul class="_recommend_category_post_list" id="_recommendPostListFlickingPage_3" style="width: 1647px; float: left;">
    
  
  <li>
    <div class="lst_detail_t17 ">
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=gjeownd07&amp;logNo=221000967204&amp;targetKeyword=&amp;targetRecommendationCode=1" data-blog-id="gjeownd07" data-log-no="221000967204" class="link _endPagePostViewLink" onclick="nclk(this, &#39;brc.loclist&#39;, &#39;&#39;, &#39;&#39;); eprClick.on(&#39;POST_RECOMMEND&#39;);">
        
          <div class="thumb_area sp_before">
            <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzA1MDhfMTA3/MDAxNDk0MjI2NzMzMDg4.AeZgaDKLPBpcay8OHK3t3G-d444Jn3rdmueIL5exid0g.3G22pCXCIz2rkHpTF7c_Zg1YwwUzqVI2VksomJiZy-Ag.JPEG.gjeownd07/%B8%DE%C0%CE.jpg?type=w210)">
              
            </div>
          </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              
                
                
                  서구 심곡동 빌라매매 구조좋고 예쁜집!
                
              
            </div>
            <div class="meta_data">
              
              <span class="td">
                <span class="ell">밍구네아지트</span>
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
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=kayukawa&amp;logNo=220984210752&amp;targetKeyword=&amp;targetRecommendationCode=1" data-blog-id="kayukawa" data-log-no="220984210752" class="link _endPagePostViewLink" onclick="nclk(this, &#39;brc.loclist&#39;, &#39;&#39;, &#39;&#39;); eprClick.on(&#39;POST_RECOMMEND&#39;);">
        
          <div class="thumb_area sp_before">
            <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzA0MTVfOTMg/MDAxNDkyMjY0Njg4MzMy.c5JuE7jfaVk3dnjrMdafUR6h5C-fn-7eLt_YRyi3qt8g.sRjC12BbOTn3fMQ3f7Mm55C7_TgeM3vPMZJE_wRF8qQg.JPEG.kayukawa/DSC_0004.JPG?type=w210)">
              
            </div>
          </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              
                
                
                  (인천산책모임) 강아지 산책하기 딱 좋은 장소, 인천아시아드산책모임♬
                
              
            </div>
            <div class="meta_data">
              
              <span class="td">
                <span class="ell">코플맘</span>
              </span>
              
              <span class="td">
                
                
              </span>
            </div>
          </div>
        </div>
      </a>
    </div>
  </li>
  

  
  <li>
    <div class="lst_detail_t17 ">
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=kjt0202077&amp;logNo=220967711735&amp;targetKeyword=&amp;targetRecommendationCode=1" data-blog-id="kjt0202077" data-log-no="220967711735" class="link _endPagePostViewLink" onclick="nclk(this, &#39;brc.loclist&#39;, &#39;&#39;, &#39;&#39;); eprClick.on(&#39;POST_RECOMMEND&#39;);">
        
          <div class="thumb_area sp_before">
            <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzAzMjZfMjQy/MDAxNDkwNTMzMzAwNjIz.BqGOf-kr_hWS43YK73GJAgdAdoCuK7dj8MrGW7AB5Qkg.Fjg4zxmzYz11mi4YCyFq_ascomNG0Q-gKWW2AXS8Zf0g.JPEG.kjt0202077/KakaoTalk_20170326_214541791.jpg?type=w210)">
              
            </div>
          </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              
                
                
                  인천롯데시네마 고급스러운 아시아드점으로~
                
              
            </div>
            <div class="meta_data">
              
              <span class="td">
                <span class="ell">까만카</span>
              </span>
              
              <span class="td">
                
                
                  <span class="reply">
                    <span class="sp">댓글</span> 1
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
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=say27555&amp;logNo=220956653426&amp;targetKeyword=&amp;targetRecommendationCode=1" data-blog-id="say27555" data-log-no="220956653426" class="link _endPagePostViewLink" onclick="nclk(this, &#39;brc.loclist&#39;, &#39;&#39;, &#39;&#39;); eprClick.on(&#39;POST_RECOMMEND&#39;);">
        
          <div class="thumb_area sp_before">
            <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzAzMTJfNjUg/MDAxNDg5MzE4MDI2MzUw.EhA81AWaDt0-yRfuqz0X2ia2j2jVQONk0Rl4UQN12hYg._JGl8xIpIW4IPV9oVvWrKDJ4vZIz5Jfjfqq7abRjuW8g.JPEG.say27555/%BD%A3%BF%B9%C2%F9_%281%29.jpg?type=w210)">
              
            </div>
          </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              
                
                
                  인천시 서구 심곡동 신축빌라 숲예찬 역세권
                
              
            </div>
            <div class="meta_data">
              
              <span class="td">
                <span class="ell">부엉이네 아빠</span>
              </span>
              
              <span class="td">
                
                  <div class="btn_like">
                      <div class="u_likeit_list_module">
                        <div class="u_likeit_list_btn u_none_txt">
                          <span class="u_ico"></span>
                          <em class="u_txt"></em>
                          <em class="u_cnt">11</em>
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
        <a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" class="btn_prev _prev_recommend_post_list_btn _returnFalse" onclick="nclk(this, &#39;brc.locprev&#39;, &#39;&#39;, &#39;&#39;);" style="display:none"><i class="sp_before">이전</i></a>
        <a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" class="btn_next _next_recommend_post_list_btn _returnFalse" onclick="nclk(this, &#39;brc.locnext&#39;, &#39;&#39;, &#39;&#39;);" style=""><i class="sp_before">다음</i></a>
        <span class="btn_next" style="display: none;"><i class="sp_before">다음</i></span>
      </div>
      
    </div>
  </div>
  <!-- //하단 추천 -->

  

	
</div>

<div class="social_plugin_property" style="display:none">{"title":"<%=lname%>","source":"http://blog.naver.com/arex_blog/221156825329","blogName":"공항철도","blogId":"arex_blog","logNo":221156825329,"smartEditorVersion":3,"meDisplay":true,"lineDisplay":true,"outsideDisplay":false,"cafeDisplay":true,"blogDisplay":true}</div>
<div class="btn_top">
	<a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" onclick="nclk(this, &#39;pst.top&#39;, &#39;&#39;, &#39;&#39;);"><span class="sp"></span> 맨위로</a>
</div>

<div id="POST_VIEW_BOTTOM_WEB" class="btm_banner"><div class="p_bner _banner _param({  os:&#39;web&#39;,  openDate:&#39;2017/11/28 16:30 ~ 2017/12/14 23:59&#39; })" style="border: none; background: rgb(242, 179, 26); display: block;" id="banner_POST_VIEW_BOTTOM_WEB_266"><a href="http://post.naver.com/viewer/postView.nhn?volumeNo=10555149&amp;memberNo=201497" class="imageBanner" onclick="nclk(this, &#39;pst.bpromo&#39;, &#39;&#39;, &#39;&#39;);"><img src="./village_files/엔드하단_포스트트래비_640x120_A.png" width="320" height="59" alt=""></a></div></div>
<div class="btn_pcver_area">
	<a href="http://blog.naver.com/arex_blog/221156825329?viewType=pc" class="btn_pcver" onclick="nclk(this, &#39;pst.pcview&#39;, &#39;&#39;, &#39;&#39;);"><span class="sp ico_pc"></span>PC버전으로 보기</a>
</div>
	</div>
	<div id="_loading2" class="rego_loading loading_end" style="display:none">
        <div class="align"><span class="dot"></span><span class="dot"></span><span class="dot"></span></div>
    </div>
    
  <div id="_div_categorylist" class="lyr_category_lst1" style="display:none;">
    <div class="head">
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" class="btn_close _closeCategoryList"><span class="sp">닫기</span></a>
      <div class="table">
        <div class="td">
          <h2 class="title" style="margin-left:50px;"><span class="ell">카테고리</span></h2>
        </div>
        <div class="td btn_area">
          <a href="https://m.blog.naver.com/arex_blog" class="btn_bloghome"><span class="sp"></span> 이 블로그 홈</a>
        </div>
      </div>
    </div>
    <ul id="_ul_categorylist" class="lst_t4"></ul>
  </div>
</div>


  
    
    <div class="lst_t17 tablet_aside _relatedCategoryPostListArea" style="">
      <div class="post_writer_area">
        <a href="https://m.blog.naver.com/PostList.nhn?blogId=arex_blog" class="link" onclick="nclk(this, &#39;psp.writer&#39;, &#39;&#39;, &#39;&#39;);">
        <span class="thumb_area">
          <span class="thumb">
            <span class="img"><img src="./village_files/12%BF%F9+%C7%C1%B7%CE%C7%CA+%C1%A4%BB%E7%B0%A2.png" width="48" height="48" alt="공항철도"></span>
            
            
          </span>
        </span>
          <span class="txt_area"><strong class="writer ell">공항철도</strong></span>
        </a>
      </div>
      <h2 class="tit_h2">
        <a href="https://m.blog.naver.com/PostList.nhn?blogId=arex_blog&amp;categoryNo=65&amp;logCode=0" class="link sp_after" onclick="nclk(this, &#39;pst.otherlist&#39;, &#39;&#39;, &#39;&#39;);">
          <span class="td">이 블로그&nbsp;</span>
          <span class="td tit"><strong class="ell">인천,경기 등 여행</strong></span>
          <span class="td">의 다른 글</span>
        </a>
      </h2>
      <div class="lst_w">
        <div class="_flickingContainer _flicking_tablet" id="_flickingContainer_tablet" style="overflow: hidden; touch-action: pan-y pinch-zoom;">
          <div class="_flickingScroll _flicking_tablet" id="_flickingScroll_tablet" style="transition-timing-function: cubic-bezier(0.1, 0.57, 0.1, 1); transition-duration: 0ms; transform: translate(0px, 0px) translateZ(0px);">
            <ul class="_category_post_list" id="_relatedCategoryPostListFlickingPage_0_tablet">
  <li class="_category_post_list_221156825329">
    <div class="lst_detail_t17 visited">
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329" class="link" onclick="nclk(this, &#39;pst.other&#39;, &#39;&#39;, &#39;&#39;);eprClick.on(&#39;RECENT_POST_LIST&#39;);timerStop();">
        
        <div class="thumb_area sp_before">
          <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzEyMDZfMjU2/MDAxNTEyNTQwMDcyMjEw.-IFaFvw7V3NPaw-H6E6EaMZkdAcqNMQn5Ud9Wls-a74g.X4S6s_KXS1EHTYg8YcxLa7jEa14PeN-w4vtNUHtX7Gcg.JPEG.arex_blog/%C7%A5%C1%F6_%BA%B9%BB%E7.jpg?type=w210)">
            
          </div>
        </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              <%=lname%>
            </div>
            <div class="meta_data">
              <span class="td">
                <span class="ell">2017. 12. 6.</span>
              </span>
            </div>
          </div>
        </div>
      </a>
    </div>
  </li>
  
  <li class="_category_post_list_221130350456">
    <div class="lst_detail_t17 ">
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221130350456" class="link" onclick="nclk(this, &#39;pst.other&#39;, &#39;&#39;, &#39;&#39;);eprClick.on(&#39;RECENT_POST_LIST&#39;);timerStop();">
        
        <div class="thumb_area sp_before">
          <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzExMDFfMjk2/MDAxNTA5NTIyODgzOTM5.TOEURNbdkRQ-PdrXMPWSbDShNZWENm7IOwictz4yorgg.mE9jRd_DzcgDTmpjvvyAluWxhjOCFbkhSNw4yTnwPSQg.JPEG.arex_blog/IMG_0743.jpg?type=w210)">
            
          </div>
        </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              인천 아이스링크장 - 선학국제빙상경기장에 가보자
            </div>
            <div class="meta_data">
              <span class="td">
                <span class="ell">2017. 11. 1.</span>
              </span>
            </div>
          </div>
        </div>
      </a>
    </div>
  </li>
  
  <li class="_category_post_list_221116228016">
    <div class="lst_detail_t17 ">
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221116228016" class="link" onclick="nclk(this, &#39;pst.other&#39;, &#39;&#39;, &#39;&#39;);eprClick.on(&#39;RECENT_POST_LIST&#39;);timerStop();">
        
        <div class="thumb_area sp_before">
          <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzEwMTNfOTMg/MDAxNTA3ODcwODM0NzA0.ddSlunLWuAPeRzHz0wRU_biqGkuONO0Klf_mlnsCBGgg.-2hTsvyIbshfbhw4pxFeWa__hjNDmLO0VGOwXg--Egkg.JPEG.arex_blog/10.JPG?type=w210)">
            
          </div>
        </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              대한민국의 베니스를 꿈꾸는, 김포 &lt;라베니체&gt;
            </div>
            <div class="meta_data">
              <span class="td">
                <span class="ell">2017. 10. 25.</span>
              </span>
            </div>
          </div>
        </div>
      </a>
    </div>
  </li>
  
  <li class="_category_post_list_221116243586">
    <div class="lst_detail_t17 ">
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221116243586" class="link" onclick="nclk(this, &#39;pst.other&#39;, &#39;&#39;, &#39;&#39;);eprClick.on(&#39;RECENT_POST_LIST&#39;);timerStop();">
        
        <div class="thumb_area sp_before">
          <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzEwMTNfMTUg/MDAxNTA3ODcxOTIwMDcx.S_cMjT5ntKv42RxTbvtVJeKrObxete6xKfDOyqdVehsg.uHxHKb5l5tCZSbgcOHOrcKBiIMoHXZP7Q89cMYOE2ZMg.JPEG.arex_blog/8.JPG?type=w210)">
            
          </div>
        </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              공항철도 타고 떠나는 가을 여행 추천 – 신도, 시도, 모도 자전거 여행
            </div>
            <div class="meta_data">
              <span class="td">
                <span class="ell">2017. 10. 24.</span>
              </span>
            </div>
          </div>
        </div>
      </a>
    </div>
  </li>
  
  <li class="_category_post_list_221119687982">
    <div class="lst_detail_t17 ">
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221119687982" class="link" onclick="nclk(this, &#39;pst.other&#39;, &#39;&#39;, &#39;&#39;);eprClick.on(&#39;RECENT_POST_LIST&#39;);timerStop();">
        
        <div class="thumb_area sp_before">
          <div class="thumb" style="background-image:url(https://mblogthumb-phinf.pstatic.net/MjAxNzEwMThfMjQ2/MDAxNTA4Mjk2Mzg3MzMz.thZ2MQom7OuU60dbhRhuZFRkKotpoVCLJlz4q83HhRwg.U6-HClTifGRI82aHbZkmqVlrsGYL-Z1t99KWMw-qPSsg.JPEG.arex_blog/IMG_0439.JPG?type=w210)">
            
          </div>
        </div>
        
        <div class="txt_area">
          <div class="txt_align">
            <div class="tit ell">
              검암역 근처 서해 5도 수산물 복합센터
            </div>
            <div class="meta_data">
              <span class="td">
                <span class="ell">2017. 10. 18.</span>
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
          <a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" class="btn_prev _category_post_list_btn _returnFalse" onclick="nclk(this, &#39;pst.prev&#39;, &#39;&#39;, &#39;&#39;);" style="display: none;"><i class="sp_before">이전</i></a>
          <a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" class="btn_next _category_post_list_btn _returnFalse" onclick="nclk(this, &#39;pst.next&#39;, &#39;&#39;, &#39;&#39;);" style=""><i class="sp_before">다음</i></a>
          <span class="btn_next" style="display: none;"><i class="sp_before">다음</i></span>
        </div>
      </div>
    </div>
    
  
  


<!-- 플로팅 메뉴 -->
<div class="floating_menu" style="">
  <div class="btn_area">
    
    <div class="btn_r">
      
        <a href="https://m.blog.naver.com/CommentList.nhn?blogId=arex_blog&amp;logNo=221156825329" class="btn_reply" onclick="nclk(this, &#39;flo.reply&#39;, &#39;&#39;, &#39;&#39;);">
          <span class="sp ico">댓글</span> <em>3</em>
        </a>
      
      <a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" class="naver-splugin btn_share _returnFalse" onclick="nclk(this, &#39;flo.share&#39;, &#39;&#39;, &#39;&#39;);" data-style="standard" data-url="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329" data-title="<%=lname%>" data-likeserviceid="blog" data-likecontentsid="arex_blog_221156825329" data-canonical-url="https://m.blog.naver.com/arex_blog/221156825329" data-oninitialize="splugin_oninitialize();" splugin-id="4901669386"><span class="sp ico" style="pointer-events:none">공유하기</span></a>
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
		<img src="./village_files/lyr_app2.png" alt="기록을 나누고 함께 성장하는 공간 네이버 블로그">
		<a href="http://m.nstore.naver.com/appstore/installApp.nhn?productNo=409102" class="link2" onclick="nclk(this, &#39;ins.naver&#39;, &#39;&#39;, &#39;&#39;);">네이버 앱스토어에서 설치하기</a>
		<a href="market://details?id=com.nhn.android.blog" class="link3" onclick="nclk(this, &#39;ins.google&#39;, &#39;&#39;, &#39;&#39;);">구글플레이에서 설치하기</a>
		<a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" class="link4 _returnFalse">레이어 닫기</a>
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
                <strong class="nick"><span class="ell">공항철도(arex_blog)</span></strong>
                <span class="txt">님을 이웃추가하고 새글을 받아보세요</span>
            </span>
        </div>

        <div class="btn_area">
            <span class="btn"><a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" class="_cancelBuddyRecommendation">취소</a></span>
            <span class="btn add_buddy"><a href="https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&amp;logNo=221156825329&amp;proxyReferer=http%3A%2F%2Flocalhost%2F#" class="_add_buddy_by_recommendation"><span class="sp"></span>이웃추가</a></span>
        </div>
    </div>
</div>

<div id="blogTeamBuddyRecommendationLayer" class="pop_lyr2 _blogTeamBuddyRecommendationLayer" style="display:none;">
</div>



<script type="text/javascript" src="./village_files/se_init.min.js.다운로드"></script>


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


<script type="text/javascript" src="./village_files/likeIt.list.js.다운로드"></script>
<script src="./village_files/ad.js.다운로드"></script>
<script type="text/javascript">
document.domain = 'naver.com';
var blogId = "arex_blog";
var bLoginUser = true;
var gMCA = JSON.parse('{"mobileInAppType":"NOTINAPP","mobileBrowser":{"type":"UNDEFINED","version":0.0,"safari":false,"isAndroid":false,"androidGingerbread":false,"isDolfin":false,"dolfin":false,"isOpera":false,"opera":false,"android":false},"isNaverInApp":false,"notInAppSafariOrAndroidBrowser":false,"naverServiceAppInstallUrl":"/services.html","blogAppInstallUrl":"http://m.naver.com/services.html","supportToolButton":false,"supportHappybeanWrite":false,"supportPostAlbumApp":false,"supportDaliyWrite":false,"supportBuddyAppPushAndBuddyInvitation":false,"iOS7":false,"stampEnabledInBuddyListAppVersion":false,"lazyLoadableBrowser":false,"iOSMenuNavigationV2":false,"iOSMenuNavigationV1":false,"stampEnabledAppVersion":false,"androidNewStyleAppVersion":false,"inAppVersion":"2.0.0","inAppYn":false,"isAndroidApp":false,"isIOSApp":false}');
var gsPostTitle = "<%=lname%> : 네이버 블로그";
var gnCategoryNo = 65;

var gsLocationOrigin = "https://m.blog.naver.com";
var sStartLogNo = '221156825329';
var sNavType = '';
var sDirectorySeq = '';
var sBuddyGroupId = '';

var gLogNo = '221156825329';
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


var gdid = "90000003_00000000000000337DF958F1";
var lcsUrl = "https://m.blog.naver.com/PostView.nhn?blogId=arex_blog&logNo=221156825329";
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

var targetBlogId = "arex_blog";
var targetLogNo = "221156825329";
var targetExcludeLogNo = "221156825329";
var targetRecommendationCode = "1";
var targetKeyword = "";
//#feedrollback
var isVisitTimeOn = true;

$Element(window).attach("load", function(event) {
	postViewController = new PostViewController(blogId, sStartLogNo, sNavType, "false", "ggh541", "https://ssl.pstatic.net/spi/js/release/ko_KR/splugin.m.js?", "https://openapi.map.naver.com/openapi/openapi_v23.js", "false", "65", "", 0);
	postViewController.start();
    //#feedrollback
    try {
        postViewController.sendVisitTime(isVisitTimeOn, blogId, userId);
    } catch (e) {
    }

	new BannerController(new BannerView(), new BannerModel(), isAndroidBrowser, false, "2.0.0").start();
	new BlogAppAdController().start();
	new RclickUtility().checkRClickYN(rightClickOpenYn, blogOwner);

	buddyController = new BuddyController("arex_blog");
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
<script type="text/javascript" src="./village_files/NgPostViewBundle1-349027516_https.js.다운로드" charset="UTF-8"></script>
<script type="text/javascript" src="./village_files/NgPostViewBundle2-1555716984_https.js.다운로드" charset="UTF-8"></script>
<script type="text/javascript" src="./village_files/NgPostViewTemplate-148605037_https.js.다운로드" charset="UTF-8"></script>

<script>
  angular.element(document).ready(function() {
    angular.bootstrap($$.getSingle('._ngApp'), ['bgPostViewApp'], {
      strictDi: true
    });
  });
</script>

<script type="text/javascript" src="./village_files/LegoPostView-1557084805_https.js.다운로드" charset="UTF-8"></script>





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




<script src="./village_files/se_viewer_lib_core_1.min.js.다운로드" charset="utf-8" type="text/javascript" data-seqid="__callback_151321126313230396" data-mode="parallel"></script><script src="./village_files/se_viewer_lib_core_2.min.js.다운로드" charset="utf-8" type="text/javascript" data-seqid="__callback_151321126313230396" data-mode="parallel"></script><script src="./village_files/se_viewer_list_lib_1.min.js.다운로드" charset="utf-8" type="text/javascript" data-seqid="__callback_151321126327417212" data-mode="parallel"></script><script src="./village_files/se_viewer_list_lib_2.min.js.다운로드" charset="utf-8" type="text/javascript" data-seqid="__callback_151321126327417212" data-mode="parallel"></script><div id="naver-splugin-wrap" style="display: none; user-select: text;"></div><div id="naver-splugin-dimmed" class="naver-splugin-dimmed spi_card_dmm2" style="display: none;"><div class="naver-splugin-dimmed"></div></div><script src="./village_files/maps3.js.다운로드" charset="utf-8" type="text/javascript" data-seqid="__callback_151321126332655391" data-mode="parallel"></script><script src="./village_files/se.module.v1.Map.min.js.다운로드" charset="utf-8" type="text/javascript" data-seqid="__callback_151321126332655391" data-mode="parallel"></script><script src="./village_files/se.module.v1.Oglink.min.js.다운로드" charset="utf-8" type="text/javascript" data-seqid="__callback_151321126332655391" data-mode="parallel"></script></body></html>