<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:useBean id="pmgr" class="member.PlaceNearNewMgr" />
<jsp:useBean id="pbean" class="member.PlaceNearNewBean" />
<%
		request.setCharacterEncoding("utf-8");
		String id = (String)session.getAttribute("idKey");
%>
<%
		request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<!-- saved from url=(0020)https://m.naver.com/ -->
<html lang="ko" class=" fzoom"><style type="text/css" id="_jmc_no_tap_highlight_tag_"></style><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="Referrer" content="origin">

<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<meta name="robots" content="index,nofollow">
<meta name="description" content="네이버 모바일 메인에서 다양한 정보와 유용한 컨텐츠를 만나 보세요">
<meta property="og:title" content="네이버 모바일 메인">
<meta property="og:url" content="http://m.naver.com/">
<meta property="og:image" content="https://s.pstatic.net/static/www/mobile/edit/2016/0705/mobile_212852414260.png">
<meta property="og:description" content="네이버 모바일 메인에서 다양한 정보와 유용한 컨텐츠를 만나 보세요">
<meta name="twitter:card" content="summary">
<meta name="twitter:title" content="네이버 모바일 메인">
<meta name="twitter:url" content="http://m.naver.com/">
<meta name="twitter:image" content="https://s.pstatic.net/static/www/mobile/edit/2016/0705/mobile_212852414260.png">
<meta name="twitter:description" content="네이버 모바일 메인에서 다양한 정보와 유용한 컨텐츠를 만나 보세요">
<link rel="apple-touch-icon-precomposed" href="http://static.naver.net/www/mobile/edit/2016/0410/mobile_115539147947.png">
<link rel="apple-touch-icon-precomposed" sizes="180x180" href="http://static.naver.net/www/mobile/edit/2016/0410/mobile_115557242406.png">

<title>NAVER</title>
<link rel="shortcut icon" type="image/x-icon" href="https://m.naver.com/favicon.ico?6">

<link rel="stylesheet" type="text/css" href="./place_home_files/w_g171207.css">


<link rel="stylesheet" type="text/css" href="./place_home_files/e_g150402.css">

<style>
.sb_btns {display:inline-block;} .u_cbox_head {display:none;} #comment_module{padding-top:7px; border-top:0 !important;}



</style>

<script src="./place_home_files/common_20170921.min.js.다운로드"></script>

<script>
try {
window.__nErrHttpImg = 0;
window.__nErrHttpsImg = 0;
if (window.addEventListener && CH) {
window.addEventListener("error", function(e) {
if (e && e.srcElement && e.srcElement.tagName.toUpperCase() == "IMG") {
var oData = {};
oData.act = "img";
oData.img = e.srcElement.src;
oData.location = location.href;
var sQuery = CH.query(oData, "e");
CH.send(sQuery);
if (e.srcElement.src.search("https") > -1) {
window.__nErrHttpsImg++;
} else {
window.__nErrHttpImg++;
}
}
}, true);
window.addEventListener("unload", function(e) {
var oData = {};
oData.act = "unloadImgCnt";
oData.http = window.__nErrHttpImg;
oData.https = window.__nErrHttpsImg;
oData.all = document.getElementsByTagName("img").length;
var sQuery = CH.query(oData, "e");
CH.send(sQuery);
});
}
} catch(e) {};
</script>
<script>

var nsc = "mtop.v4";

document.domain = "naver.com";
var bUsainEnabled = false;

var svr = "<!--cmobile203.ntop-->";
var svt = "20171214091329";
var pid = "";
if(svr.search(/[ct]mobile601.ntop/) > 0) {JEagleEyeClient.setEnable(true);bUsainEnabled=true;}
naver = {};naver.main={};
if (!Date.now) { Date.now = function now() { return new Date().getTime(); }; }
window.nbp_corp_da = window.nbp_corp_da || {};
window.nbp_corp_da.service = {};
window.nbp_corp_da.service.setHeight = function() { naver.main.SectionManager.setAdHeight(); };
window.nbp_corp_da.service.getSectionName = function() { if (naver.main.SectionManager) { return naver.main.SectionManager.getSectionName(); } else { return ""; } };
var naver_corp_da = window.naver_corp_da || {};
naver_corp_da.specialIntervalTime = 0;
naver_corp_da.specialDaAdcallTime = +Date.now();
naver_corp_da.specialImgOnloadHandler = function() {
var imgOnloadTime = +Date.now();
naver_corp_da.specialIntervalTime = imgOnloadTime - naver_corp_da.specialDaAdcallTime;
};
</script>
<script src="./place_home_files/jindo_20170928.min.js.다운로드"></script><script>if(typeof naver==="undefined"){naver={}
}naver.main=naver.main||{};
naver.main.mainObserver=$Class({MODULE_NAME:"naver.main.mainObserver",$init:function(a){this._initVars(a)
},_initVars:function(a){this._htOption=a;
this._oEventObserver=new jindo.m.Component();
this._aAttachedCustomEventName=[];
this._aFiredEventName=[];
this._htEventRequestBeforeAttach={}
},fireEvent:function(){throw new Error("["+this.MODULE_NAME+"] 에서는 jindo.m.Component 를 상속받았으나, 해당 모듈의 목적에 의해, fireEvent() 기능을 제한합니다. fireCustomEvent()를 사용해주세요.")
},attach:function(){throw new Error("["+this.MODULE_NAME+"] 에서는 jindo.m.Component 를 상속받았으나, 해당 모듈의 목적에 의해, attach()기능을 제한합니다. attachCustomEvent()를 사용해주세요.")
},_validate:function(a){if(!a){throw new Error("["+this.MODULE_NAME+"] 해당 메소드를 사용할 경우, 해당 모듈의 name을 명시해야 합니다. ");
return false
}return true
},fireCustomEvent:function(e,b,c,d){var a=c;
if(!this._validate(b)){return
}if(typeof c==="string"){a=JSON.parse(c);
if(typeof a!=="object"){JEagleEyeClient.sendError("["+this.MODULE_NAME+"] fireCustomEvent - JSON.parse error!"+c)
}}if(this._aFiredEventName.indexOf(e)<0){this._aFiredEventName.push(e)
}if(d&&this._aAttachedCustomEventName.indexOf(e)<0){this._htEventRequestBeforeAttach[e]=this._htEventRequestBeforeAttach[e]||[];
this._htEventRequestBeforeAttach[e].push({requestedEntry:b,requestedOption:c})
}else{this._oEventObserver.fireEvent(e,a)
}},attachCustomEvent:function(e,c,d){if(!this._validate(c)){return
}if(this._aAttachedCustomEventName.indexOf(e)<0){this._aAttachedCustomEventName.push(e)
}this._oEventObserver.attach(e,d);
var a=this;
if(this._htEventRequestBeforeAttach[e]&&this._htEventRequestBeforeAttach[e].length>0){var b=this._htEventRequestBeforeAttach[e];
$A(b).forEach(function(f){a.fireCustomEvent(e,f.requestedEntry,f.requestedOption)
});
this._htEventRequestBeforeAttach[e]=null
}},detachCustomEvent:function(c,a,b){if(!this._validate(a)){return
}this._oEventObserver.detach(c,b)
}}).extend(jindo.m.Component);
mainObserver=new naver.main.mainObserver();
$.createNamespace("naver.main").customAlert=(function(){var a={T9:(function(){var c=$Element("_MM_ALERT_T9");
var e=null;
var b=null;
function d(){c.hide();
e=null;
b=null
}c.delegate("click","button[data-action=cancel]",function(f){f.stop();
if(typeof b==="function"){b()
}d()
});
c.delegate("click","button[data-action=ok]",function(f){f.stop();
if(typeof e==="function"){e()
}d()
});
return function(f){if(!f.text){throw new Error("No text in options")
}if(!f.okCallback){throw new Error("No okCallback in options")
}c.query("p[data-area-name=text]").html(f.text||"");
c.query("button[data-action=cancel]").html(f.cancelText||"취소");
c.query("button[data-action=ok]").html(f.okText||"확인");
e=f.okCallback;
b=f.cancelCallback;
c.show()
}
})(),T10:(function(){var b=$Element("_MM_ALERT_T10");
var c=null;
b.delegate("click","button[data-action=cancel]",function(d){d.stop();
c=null;
b.hide()
});
b.delegate("click","button[data-action=ok]",function(d){d.stop();
if(typeof c==="function"){c();
c=null
}b.hide()
});
return function(d){if(!d.title&&!d.text){throw new Error("No text and title in options")
}if(!d.okText){throw new Error("No okText in options")
}b.query("h4[data-area-name=title]").html(d.title||"");
b.query("p[data-area-name=text]").html(d.text||"");
b.query("button[data-action=cancel]").html(d.cancelText||"취소");
b.query("button[data-action=ok]").html(d.okText||"확인");
c=d.okCallback;
b.show()
}
})()};
return function(c,b){a[c](b)
}
})();
$.createNamespace("naver.main").inapp=(function(){var f="N/A";
var d=-1;
var c=-1;
var e=jindo.$Agent().os();
var b=/NAVER\((\S+);\s(\S+);\s(\S+);\s(\S+)(;\s(\S+))?\)/;
var h=b.test(navigator.userAgent);
if(h){var a=navigator.userAgent.match(b);
f=a[2];
d=parseFloat(a[3]);
c=a[4]
}var g=function(j){j=j||{};
if(e.android&&j.androidV){return d<j.androidV
}else{if(e.iphone&&j.iPhoneV){return d<j.iPhoneV
}else{if(e.ipad&&j.iPadV){return d<j.iPadV
}}}return true
};
return{isBSCPrevThan:g,isInApp:h}
})();
$.createNamespace("naver.main").geolocation=(function(){var b=jindo.$Agent().os();
var a=function(f){f=f||{};
var j=f.nvgeoTimeout||3;
var e=f.geolocationOptions;
var d=f.fail||function(){};
var h=f.success||function(){};
var g=f.onError||function(l){switch(l.code){case 1:if(naver.main.inapp&&naver.main.inapp.isInApp&&!naver.main.inapp.isBSCPrevThan({iPhoneV:540,iPadV:133})){location.href="naverapp://failLocation"
}else{if(b.ios){if(confirm("위치 정보 사용에 동의하지 않아 정보를 확인할 수 없습니다. 다시 동의하는 방법을 담고 있는 도움말로 이동하시겠습니까?")){location.href="https://m.help.naver.com/support/contents/contentsView.nhn?contentsNo=6022&lang=ko"
}}else{alert("현재 위치를 사용하려면 설정 정보를 확인해주세요")
}}break;
case 3:alert("위치를 찾을 수 없습니다. 잠시 후 다시 시도해 주세요.");
break;
case 2:default:alert("위치를 찾을 수 없습니다.");
break
}};
if(!navigator.geolocation){alert("위치 서비스를 지원하지 않는 단말기입니다.");
d();
return
}navigator.geolocation.getCurrentPosition(function(l){var p=l.coords.latitude;
var o=l.coords.longitude;
var m={};
m.lat=p;
m.lng=o;
if(typeof l.coords.name!="undefined"){m.name=l.coords.name
}var n=new $Ajax("/nvgeo",{method:"get",timeout:j,onload:function(r){$Cookie().remove("MM_WD");
var q=r.json();
if(q.url){location.href=q.url
}switch(q.error){case 0:$Cookie().set("m_loc",q.cookie,24,"naver.com");
h(q);
break;
default:alert("위치를 찾을 수 없습니다.");
if(!c(p,o)){$Cookie().set("MM_WD","1",30);
$Cookie().remove("m_loc","naver.com");
$Cookie().remove("NV_WETR_LAST_ACCESS_RGN_M","naver.com");
$Cookie().remove("NV_WETR_LOCATION_RGN_M","naver.com")
}d();
break
}},ontimeout:function(){alert("위치를 찾을 수 없습니다. 잠시 후 다시 시도해 주세요.");
d()
},onerror:function(){alert("위치를 찾을 수 없습니다.");
d()
}}).request(m);
n=null
},function(l){g(l);
d()
},e)
};
var c=function(j,g){var h=31.963;
var e=38.558;
var d=124.057;
var f=132.622618;
if(g<d){return false
}if(f<g){return false
}if(j<h){return false
}if(e<j){return false
}if(37<j){return true
}if(g<127.93){return true
}if(g<130.2619&&34.902<j){return true
}if(g<128.971&&33.841<j){return true
}return false
};
return{search:a}
})();
$AAjaxes=(function(){function a(c){if(!c||!c.length){throw new Error("Invalid argument.")
}for(var b in c){if(c[b] instanceof $Ajax===false){throw new Error("Invalid argument. "+b+"th item is not $Ajax")
}}this.responses=c.map(function(){return false
});
this.ajaxes=c;
this.callbackDone=false
}a.prototype.request=function(h){if(typeof h!=="function"){throw new Error("Invalid argument.")
}var f=this.responses;
var g=this.ajaxes;
var d=this.callbackDone;
function c(j){j=parseInt(j,10);
return function(m){f[j]=m;
if(d){return
}for(var l in f){if(f[l]===false){return
}}d=true;
h(f)
}
}for(var b in this.ajaxes){var e=this.ajaxes[b];
e.option({onload:c(b),ontimeout:c(b),onerror:c(b)});
e.request()
}};
return function(b){return new a(b)
}
})();
$.createNamespace("naver.main").resources=(function(){var f={};
var a=/NAVER\((\S+);\s(\S+);\s(\S+);\s(\S+)(;\s(\S+))?\)/;
var c=function(p){var l=null;
switch(p){case"templateStatus":l={isFoldTvDrama:function(){return !!($Cookie().get("MM_ENT_TVDRAMA_FOLD"))
},setTvDramaStatus:function(r){if(r===1){$Cookie().set("MM_ENT_TVDRAMA_FOLD",1,3650)
}else{$Cookie().remove("MM_ENT_TVDRAMA_FOLD")
}}};
break;
case"banner":l={setShownBanner:function(){$Cookie().set("MM_CK_FULL_SHOT_BANNER",2,7)
}};
break;
case"agent":l={isNaverapp:function(){return !!a.test(navigator.userAgent)
},getNaverappUserAgentData:function(){var u=null;
if(naver.main.resources("agent").isNaverapp()){var r=navigator.userAgent.match(a);
var t=jindo.$Agent().os();
var s="";
if(t.android){s="android"
}else{if(t.iphone){s="iphone"
}else{if(t.ipad){s="ipad"
}}}if(!!r&&r.length>4){u={nativeUA:r[0],browser:r[1],service:r[2],code:r[3],version:r[4],os:s}
}}return u
},compareNaverappServiceCode:function(s){var r=naver.main.resources("agent").getNaverappUserAgentData();
if(!r){return Number.NaN
}var t=r.os;
var v=parseInt(r.code);
var u=null;
switch(r.os){case"android":u=s.androidCode;
break;
case"iphone":u=s.iPhoneCode;
break;
case"ipad":u=s.iPadCode;
break
}return v-u
},compareNaverappServiceVersion:function(u){var x=Number.NaN;
var r=naver.main.resources("agent").getNaverappUserAgentData();
function t(C,D){if(C===D){return 0
}var A=C.split(".");
var z=D.split(".");
var y=Math.min(A.length,z.length);
for(var B=0;
B<y;
B++){if(parseInt(A[B])>parseInt(z[B])){return +1
}if(parseInt(A[B])<parseInt(z[B])){return -1
}}if(A.length>=z.length){return +1
}else{return -1
}}if(r){var w=null;
var v=r.os;
var s=r.version;
if(v=="android"){w=t(s,u.androidVersion)
}else{if(v=="iphone"||v=="ipad"){w=t(s,u.iosVersion)
}}x=w
}return x
}};
break;
case"siblingCARGAME":l={setUsedBannerType:function(r){$Cookie().set("MM_CK_SIBLING_CARGAME_BANNER",r,365);
naver.main.resources("siblingCARGAME").updateCombinedType()
},removeUsedBannerType:function(){$Cookie().remove("MM_CK_SIBLING_CARGAME_BANNER");
naver.main.resources("siblingCARGAME").updateCombinedType()
},getUsedBannerType:function(){return $Cookie().get("MM_CK_SIBLING_CARGAME_BANNER")
},getFoldType:function(){return $Cookie().get("MM_CK_SIBLING_CARGAME_FOLD")
},setFoldType:function(r){$Cookie().set("MM_CK_SIBLING_CARGAME_FOLD",r,365)
},removeFoldType:function(){$Cookie().remove("MM_CK_SIBLING_CARGAME_FOLD")
},setUsedContentType:function(r){$Cookie().set("MM_CK_SIBLING_CARGAME_CONTENT",r,365);
naver.main.resources("siblingCARGAME").updateCombinedType()
},removeUsedContentType:function(r){$Cookie().remove("MM_CK_SIBLING_CARGAME_CONTENT");
naver.main.resources("siblingCARGAME").updateCombinedType()
},getUsedContentType:function(){return $Cookie().get("MM_CK_SIBLING_CARGAME_CONTENT")
},updateCombinedType:function(){var s=$Cookie().get("MM_CK_SIBLING_CARGAME_BANNER");
var r="-1";
if(s=="0"||s=="1"||s=="2"){r=s
}else{r=$Cookie().get("MM_CK_SIBLING_CARGAME_CONTENT")||r
}$Cookie().set("MM_CK_SIBLING_CARGAME",r,365)
}};
break;
case"naverLab":l={getLabTurnOnList:function(){return $Cookie().get("MM_LAB_TURNED_ON_WEB")
},getLabAutoCleanPeriod:function(){return $Cookie().get("MM_LAB_CLEAN_SETTING")
},getLabAutoCleanTimestamp:function(){return $Cookie().get("MM_LAB_CLEAN_TIMESTAMP")
},setLabAutoCleanTimestamp:function(r){$Cookie().set("MM_LAB_CLEAN_TIMESTAMP",r)
}};
break;
case"menu":l={isEditedPanelInWeb:function(){var r=$Cookie().get("MM_panel");
if(!r){return false
}else{return true
}},setTopBannerStatus:function(r){$Cookie().set("MM_S_ADD",r)
},getSet:function(){return $Cookie().get("MM_S")
},setSet:function(r){$Cookie().set("MM_S",r)
},setNaviMargin:function(r){$Cookie().set("MM_margin",r)
},getNaviMargin:function(){return $Cookie().get("MM_margin")
},removeNaviMargin:function(){$Cookie().remove("MM_margin")
},removeSet:function(){$Cookie().remove("MM_S");
$Cookie().remove("MM_margin")
},getAllMenuList:function(){var r=null;
if(!!naver.main.gVariable){r=(naver.main.gVariable.sPanelAll).split(";")
}else{}return r
},getMenuList:function(){var s=$Cookie().get("MM_panel")||naver.main.gVariable.sPanelOn;
var r=!!s?s.split(";"):[];
if(naver.main.resources("agent").isNaverapp()){return r
}else{var t=naver.main.resources("menu").getAllMenuList();
return $A(r).filter(function(u){return(t.indexOf(u)>=0)
}).$value()
}},setMenuList:function(r){$Cookie().set("MM_panel",r,3650)
},getNaverAppMenuList:function(){return e("MSDT.panel")||(window.inapphome&&window.inapphome.getOnMenuList())
},setCleaned:function(r){$Cookie().set("MM_TEMP_cleaned_panels",r,1/(24*6))
},popCleaned:function(){var r=$Cookie().get("MM_TEMP_cleaned_panels");
$Cookie().remove("MM_TEMP_cleaned_panels");
return r
}};
break;
case"myfeedPanel":l={setTopBannerStatus:function(){$Cookie().set("MM_MF_TOP_BANNER",1,365*10)
}};
break;
case"mainNavi":l={sPromotionKey:"MM_HOME_SC_TS",setPromotionTimestamp:function(r){g(this.sPromotionKey,r)
},getPromotionTimestamp:function(){return e(this.sPromotionKey)
}};
break;
case"news":l={toggleNewsTonight:function(){if($Cookie().get("MM_NEWS_TONIGHT")){$Cookie().remove("MM_NEWS_TONIGHT")
}else{$Cookie().set("MM_NEWS_TONIGHT","1",365*10)
}}};
break;
case"light":var n="main_ov";
var q="light_showLightToast";
var m="light_goNormal";
var j="MM_light_shortcut";
var h="MM_light_guide";
l={removeNLight:function(){$Cookie().remove("NLIGHT","naver.com")
},setShortcut:function(r){$Cookie().set(j,r,365)
},getShortcut:function(){var r=d("light_goLightBnr");
if(r=="1"){this.setShortcut()
}return $Cookie().get(j)
},getLastOversea:function(){return e(n)
},setLastOversea:function(r){g(n,r?"1":"0")
},setGuideBanner:function(){$Cookie().set(h,"1",1/24)
},popGuideBanner:function(){var r=$Cookie().get(h);
$Cookie().remove(h);
return r
},setHideGoNormal:function(){g(m,"1")
},isHideGoNormal:function(){var r=false;
try{if(localStorage.getItem(m)=="1"){r=true
}}catch(s){r=true
}return r
}};
break;
case"panel":var o="MSDT.panel_unselectedUnchecked";
var l={removeUnselectedUnchecked:function(){d(o)
},setUnselectedUnchecked:function(){g(o,"1")
},getUnselectedUnchecked:function(){return e(o)
}};
break
}f[p]=l;
return f[p]
};
function d(j){var h=e(j);
try{localStorage.removeItem(j)
}catch(l){}return h
}function e(h){try{return localStorage.getItem(h)
}catch(j){return null
}}function g(j,h){try{return localStorage.setItem(j,h)
}catch(l){return null
}}var b=function(h){return f[h]||c(h)
};
return b
})();
$.createNamespace("naver.main").HorizontalScroll=(function(f){var a=new jindo.$A;
var d=function(){var h=$ElementList(".horizontal_scroll_area, ._MM_HORIZONTAL_SCROLL"),l=h.length();
if(l<1){return
}var z=0;
var p=2000;
for(var u=0;
u<l;
u++){var v=h.get(u);
if(v.hasClass("onScrolling")||v.hasClass("noScrolling")){continue
}var C=$$(".panelArea",v);
var B;
if($Element($$.getSingle(".panelArea",v)).data("item-height")!==null){B=parseInt($Element($$.getSingle(".panelArea",v)).data("item-height"))
}else{B=$Element($$.getSingle(".panelArea",v)).height()
}var y=0;
for(var t=0;
t<C.length;
t++){var r=$Element(C[t]);
var m=r.height();
if(t===0&&r.query("img")!==null&&r.query("img").height()>0){y=r.query("img").height()
}if(r.query("img")!==null&&r.query("img").hasClass("fade")&&r.query(".scrollItemText")!==null){m=r.query(".scrollItemText").height()+y
}if(m>B){B=m
}}var D=0;
var s=0;
if(v.hasClass("_MM_IRREGULAR_WIDTH")){$A(C).forEach(function(F,j,G){if($Element(F).data("item-width")!==null){D+=parseInt($Element(F).data("item-width"))
}else{D+=$Element(F).width()
}D+=parseInt($Element(F).css("margin-left"))||0;
D+=parseInt($Element(F).css("margin-right"))||0
})
}else{var q;
if($Element($$.getSingle(".panelArea",v)).data("item-width")!==null){q=parseInt($Element($$.getSingle(".panelArea",v)).data("item-width"))
}else{q=$Element($$.getSingle(".panelArea",v)).width()
}var E=parseInt($Element($$.getSingle(".panelArea",v)).css("margin-left"))||0;
var g=parseInt($Element($$.getSingle(".panelArea",v)).css("margin-right"))||0;
s=q+E+g;
z=v.data("panel-count");
D=s*z+1
}$Element($$.getSingle(".scroll-container",v)).width(D);
if(v.data("zindex")){p=v.data("zindex")
}var n=new jindo.m.Scroll(v,{nHeight:B,bActivateOnload:true,bUseHScroll:true,bUseVScroll:false,bUseScrollbar:false,bAutoResize:true,nZIndex:p});
v.addClass("onScrolling");
var x=v.data("scroll-pos");
if(x){n.scrollTo(x)
}var w=v.data("scroll-pos-idx");
if(w){n.scrollTo(w*s)
}if(v.attr("data-random")=="true"){var o=Math.floor(Math.random()*z);
var A=s*o;
n.scrollTo(A)
}v.data("hscroll-index",u);
a.push(n);
if(naver.main.gVariable.bContentOnly&&jindo.m.getOsInfo().android&&typeof TEvent!=="undefined"){v.$value().addEventListener("touchstart",function(j){TEvent.touchStartEvent()
},false)
}}},c=function(){for(var g=0;
g<a.length();
g++){a.get(g).refresh()
}},b=function(g){a.get(g).refresh();
a.get(g).scrollTo(0,0)
},e=function(){if(typeof naver_corp_da.horizontalScrollCa!=="undefined"){var q=$ElementList("div[data-subject=contents_scroll]");
for(var n=0;
n<q.length();
n++){var o=naver_corp_da.horizontalScrollCa[q.get(n).attr("id")];
if(typeof o!=="undefined"&&o.resizingTemplate!=="undefined"){o.resizingTemplate()
}}}var h=$ElementList(".horizontal_scroll_area, ._MM_HORIZONTAL_SCROLL"),v=h.length();
if(v<1){return
}for(var t=0;
t<v;
t++){var g=h.get(t);
if(g.hasClass("noScrolling")){continue
}var s=$Element($$.getSingle(".panelArea",g)).height();
var r=$$(".panelArea",g);
var p=g.height();
for(var m=0;
m<r.length;
m++){var l=$Element(r[m]).height();
if(l>s){s=l
}}g.height(s)
}};
return{setHorizontalScrollEventOnTemplate:d,refreshHorizontalScrollEvent:c,refreshHorizontalScrollByIndex:b,resizingTemplate:e}
})(naver.main.gVariable);
$.createNamespace("naver.main").BrickHouse=jindo.$Class({$init:function(a,b){this.option({sBrickHouseClass:"brick-house",sBrickVowelClass:"brick-vowel",sBrickClass:"brick",bActivateOnload:true,bRebuild:false});
this.option(b||{});
this._initVar(a);
if(this.option("bActivateOnload")){this.activate()
}this.build()
},_initVar:function(a){this.sBrickId=this.option("sBrickId");
this._bricks=[];
this._nBrickVowelCount=0;
if(naver.main.gVariable.sViewType==="tablet"&&this.sBrickId==="ENT"){this.bRebuild=true
}this._htWElement={};
this._htWElement.view=$Element(a);
this._htWElement.house=$Element(a).query("."+this.option("sBrickHouseClass"));
this._htWElement.vowel=$Element(this._htWElement.view).queryAll("."+this.option("sBrickVowelClass"));
this._htEvent={};
this.nBrickIndex=0;
this._bricks=this.getBrick(this._htWElement.vowel)
},_initBrickVowelCount:function(){var a=this._htWElement.vowel;
return this._getBrickVowelDataCount(a)
},_attachEvent:function(){if(!this._htEvent.rotate){this._htEvent.rotate=$Fn(this._rotate,this).bind();
jindo.m.bindRotate(this._htEvent.rotate)
}if(!this._htEvent.resize){this._htEvent.resize=$Fn(this._resize,this).bind();
$Element(window).attach("resize",this._htEvent.resize)
}},_detachEvent:function(){jindo.m.unbindRotate(this._htEvent.rotate);
$Element(window).detach("resize",this._htEvent.resize);
this._htEvent={}
},_rotate:function(){this.reset();
this.getBrickVowelCount();
this.build()
},_resize:function(){var a=jindo.m.getOsInfo();
if(a.ios){return
}this.reset();
this.getBrickVowelCount();
this.build()
},_getBrickVowelDataCount:function(b){var c=0;
for(var d=0,a=b.length;
d<a;
d++){if(b[d].html().length>100){c++
}}return c
},getBrick:function(e){var g=this._getBrickVowelDataCount(e);
var c=this.option("sBrickClass");
var a=[];
var b=0;
var j=[];
for(var f=0,h=g;
f<h;
f++){a[f]=e[f].queryAll("."+c);
b=Math.max(a[f].length,b)
}for(var d=0;
d<b;
d++){for(var f=0,h=g;
f<h;
f++){if(a[f].length>d){a[f][d].attr("index",this.nBrickIndex);
j[this.nBrickIndex++]=a[f][d].$value()
}}}return j
},getBrickVowelCount:function(){if(this._nBrickVowelCount>0){return this._nBrickVowelCount
}var a=this.option("sBrickClass");
var d=$Element(this._htWElement.view).query("."+a);
var b=d.width();
if(b==0){b=d.parent().width()
}if(b>0){var c=(window.innerWidth%2==1)?(window.innerWidth+1):window.innerWidth;
this._nBrickVowelCount=parseInt(c/b,10)
}else{this._nBrickVowelCount=a.replace("grid","")
}return this._nBrickVowelCount
},build:function(){var j=this;
var f=this.getBrickVowelCount();
var d=this._initBrickVowelCount();
if(f!=d||this.bRebuild){if(f<=0){setTimeout(function(){j.build()
},100);
return
}var a=this._htWElement.vowel;
var h=this._bricks;
var g=h.length;
if(g<=0){return
}for(var b=0,e=a.length;
b<e;
b++){a[b].html("")
}for(var c=0;
c<g;
c++){$Element(h[c]).appendTo(a[c%f])
}this.bRebuild=false
}this.fireBuildEvent()
},append:function(d){var j=this.option("sBrickVowelClass");
var c=this._htWElement.vowel;
var m=this.getBrickVowelCount();
var b=this._getMinVowelIndex();
var a=d.queryAll("."+j);
var e=this._getBrickVowelDataCount(a);
var n=this.getBrick(a);
var h=this._bricks.length;
for(var f=0,g=n.length;
f<g;
f++){if(n[f]){this._bricks[h++]=n[f]
}}if(e==m){a.forEach(function(o,r,q){var p=(b+r)%m;
o.child().forEach(function(t,s,u){t.appendTo(c[p])
})
})
}else{for(var f=0,g=n.length;
f<g;
f++){var l=(b+f)%m;
if(n[f]){$Element(n[f]).appendTo(c[l])
}}}this.fireBuildEvent()
},_getMinVowelIndex:function(){var c=this._htWElement.vowel;
var f=99999;
var e=0;
for(var d=0,a=c.length;
d<a;
d++){var b=c[d].height();
if(b>100&&b<f){f=b;
e=d
}}return e
},fireBuildEvent:function(){var a=this;
a.fireEvent("build",{id:a.sBrickId,height:a.getBrickHeight(),vowelCount:this._nBrickVowelCount,view:a._htWElement.view})
},getBrickHeight:function(){return this._htWElement.house.height()
},getBrickCount:function(){return this._bricks.length
},reset:function(){this._nBrickVowelCount=0;
$Cookie().set("MM_width",window.innerWidth)
},_onActivate:function(){this._attachEvent()
},_onDeactivate:function(){this._detachEvent()
},}).extend(jindo.m.UIComponent);
$.createNamespace("naver.main").PageRefresh=(function(){var a=false;
function c(d){if(d=="INAPP"){a=true
}}function b(d){if(!!!d){d=naver.main.SectionManager.getSectionName()
}var e=$A(naver.main.Panel.getPanelAll().split(";"));
if(!!!e||e.indexOf(d)<0){return
}if(a){location.href="/naverapp/?version=1&cmd=onMenu&menuCode="+d
}else{naver.main.resources("menu").setSet(d);
location.href="/"
}}return{init:c,run:b}
})();
$.createNamespace("naver.main").GridInfo=(function(b){var c=b.sViewType,p=b.nSmallCardSize,e=b.nLargeCardSize,d="/nvhaproxy/content/list?menu=:MENU:&cRev=:REV:&pNum=:PAGE:&pSize=:SIZE:",l="/nvhaproxy/api/myfeed/list?menu=:MENU:&pNum=:PAGE:&pSize=:SIZE:",h="/nvhaproxy_plus/myfeed/disco?menu=:MENU:&pNum=:PAGE:&pSize=:SIZE:",r=b.isLogin,s=b.sUserGender,n=b.bMizOn,o=b.bMyFeed,j=(decodeURIComponent(b.sMyFeedService).split(",").length>1||!b.sMyFeedService)?"ALL":b.sMyFeedService,q=b.sRegionCode,m=$Cookie().get("MM_PL"),a=b.allowPlaceCodes,g=$Cookie().get("MM_IS"),f={NEWS:{sParentSelector:".grid1_wrap",sCardClass:"grid1",sBrickVowelClass:"brick-vowel",sBrickClass:"brick",htServiceName:"뉴스",mobileClickCode:"new",tabletClickCode:"new",clickArea:"new.",lcsTag:"m_main_news",adUnitId:"1120A",nLoadingCount:30,sCssPrefix:"news",htSectionPagingInfo:{api:"",rev:null,page:1,last:true}},TOPIC:{sParentSelector:".grid1_wrap",sCardClass:"grid1",sBrickVowelClass:"brick-vowel",sBrickClass:"brick",htServiceName:"토픽",mobileClickCode:"tpc",tabletClickCode:"tpc",clickArea:"tpc.",lcsTag:"m_main_news_t",adUnitId:"1120A",nLoadingCount:30,sCssPrefix:"news",htSectionPagingInfo:{api:"",rev:null,page:1,last:true}},ENT:{sParentSelector:".grid1_wrap",sCardClass:"grid1",htServiceName:"연예",mobileClickCode:"ent",tabletClickCode:"ent",clickArea:"ent.",lcsTag:"m_main_enter",adUnitId:"1120A",nLoadingCount:100,sCssPrefix:"ent",htSectionPagingInfo:{api:"",rev:null,page:1,last:false,type:"static"}},SPORTS:{sParentSelector:".grid1_wrap",sCardClass:"grid1",htServiceName:"스포츠",mobileClickCode:"spt",tabletClickCode:"spt",clickArea:"spt.",lcsTag:"m_main_sports",adUnitId:"1120A",nLoadingCount:30,sCssPrefix:"sports",htSectionPagingInfo:{api:"",rev:null,page:1,last:true}},LIFE:{sParentSelector:".grid2_wrap",sCardClass:"grid2",nPageSize:p,htServiceName:"리빙푸드",mobileClickCode:"lif",tabletClickCode:"lif",clickArea:"lif.",lcsTag:"m_main_life1",adUnitId:"1241B",nLoadingCount:30,sCssPrefix:"living",htSectionPagingInfo:{api:d.replace(":MENU:","LIFE"),rev:null,page:1,last:false}},LIVING:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:20,htServiceName:"푸드",mobileClickCode:"lif",tabletClickCode:"lif",clickArea:"lif.",lcsTag:"m_main_life1",adUnitId:"1241B",nLoadingCount:24,sCssPrefix:"living",htSectionPagingInfo:{api:d.replace(":MENU:","LIVING"),rev:null,page:1,last:false}},AUTO:{sParentSelector:".grid2_wrap",sCardClass:"grid2",nPageSize:p,htServiceName:"자동차·테크",mobileClickCode:"life2",tabletClickCode:"life2",clickArea:"lft.",lcsTag:"m_main_life2",adUnitId:"1134A",nLoadingCount:30,sCssPrefix:"cargame",htSectionPagingInfo:{api:d.replace(":MENU:","AUTO"),rev:null,page:1,last:false}},CARGAME:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:18,htServiceName:"차·테크",mobileClickCode:"cat",tabletClickCode:"cat",clickArea:"cat.",lcsTag:"m_main_cargame",adUnitId:"1258A",nLoadingCount:18,sCssPrefix:"cargame",htSectionPagingInfo:{api:d.replace(":MENU:","CARGAME"),rev:null,page:1,last:false}},ITTECH:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:16,htServiceName:"테크",mobileClickCode:"tec",tabletClickCode:"tec",clickArea:"tec.",lcsTag:"m_main_ittech",adUnitId:"1258A",nLoadingCount:16,sCssPrefix:"ittech",htSectionPagingInfo:{api:d.replace(":MENU:","ITTECH"),rev:null,page:1,last:false}},PICK:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:11,htServiceName:"20PICK",mobileClickCode:"pik",tabletClickCode:"pik",clickArea:"pik.",lcsTag:"m_main_pick",adUnitId:"1132A",nLoadingCount:8,sCssPrefix:"pick",bClose:true,htSectionPagingInfo:{api:d.replace(":MENU:","PICK"),rev:null,page:1,last:false}},FUN:{mobileClickCode:"fun",nLoadingCount:30,},BBOOM:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:20,htServiceName:"웹툰",mobileClickCode:"bwt",tabletClickCode:"bwt",clickArea:"bwt.",lcsTag:"m_main_bboom",adUnitId:"1239A",nLoadingCount:45,sCssPrefix:"bboom",htSectionPagingInfo:{api:d.replace(":MENU:","BBOOM"),rev:null,page:1,last:false}},BOOM:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:20,htServiceName:"뿜",mobileClickCode:"bom",tabletClickCode:"bom",clickArea:"bom.",lcsTag:"m_main_boom",adUnitId:"1239A",nLoadingCount:45,sCssPrefix:"boom",htSectionPagingInfo:{api:d.replace(":MENU:","BOOM"),rev:null,page:1,last:false}},VIDEO:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:e,htServiceName:"동영상",mobileClickCode:"mov",tabletClickCode:"mov",clickArea:"mov.",lcsTag:"m_main_video",adUnitId:"1240A",nLoadingCount:15,sCssPrefix:"video",htSectionPagingInfo:{api:d.replace(":MENU:","VIDEO"),rev:null,page:1,last:true}},GAMEAPP:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:18,htServiceName:"게임",mobileClickCode:"gam",tabletClickCode:"gam",clickArea:"gam.",lcsTag:"m_main_game",adUnitId:"1137A",nLoadingCount:30,sCssPrefix:"gameapp",htSectionPagingInfo:{api:d.replace(":MENU:","GAMEAPP"),rev:null,page:1,last:false}},APPGAME:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:e,htServiceName:"앱·게임",mobileClickCode:"appgame",tabletClickCode:"appgame",clickArea:"fn3.",lcsTag:"m_main_fun3",adUnitId:"1137A",nLoadingCount:30,sCssPrefix:"gameapp",htSectionPagingInfo:{api:d.replace(":MENU:","APPGAME"),rev:null,page:1,last:false}},SHOPPING:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:20,htServiceName:"쇼핑",mobileClickCode:"sho",tabletClickCode:"sho",clickArea:"sho.",lcsTag:"m_main_shopping_a",adUnitId:"1131A",nLoadingCount:45,sCssPrefix:"shopping",htSectionPagingInfo:{api:d.replace(":MENU:","SHOPPING"),rev:null,page:1,last:false}},SHOPPINGMEN:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:20,htServiceName:"쇼핑",mobileClickCode:"shm",tabletClickCode:"shm",clickArea:"shm.",lcsTag:"m_main_shopping_m",adUnitId:"1131A",nLoadingCount:45,sCssPrefix:"shopping",htSectionPagingInfo:{api:d.replace(":MENU:","SHOPPINGMEN"),rev:null,page:1,last:false}},SHOPPINGWOMEN:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:20,htServiceName:"쇼핑",mobileClickCode:"shw",tabletClickCode:"shw",clickArea:"shw.",lcsTag:"m_main_shopping_w",adUnitId:"1131A",nLoadingCount:45,sCssPrefix:"shopping",htSectionPagingInfo:{api:d.replace(":MENU:","SHOPPINGWOMEN"),rev:null,page:1,last:false}},SHOPPINGMIZ:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:20,htServiceName:"쇼핑",mobileClickCode:"shd",tabletClickCode:"shd",clickArea:"shd.",lcsTag:"m_main_shopping_d",adUnitId:"1131A",nLoadingCount:45,sCssPrefix:"shopping",htSectionPagingInfo:{api:d.replace(":MENU:","SHOPPINGMIZ"),rev:null,page:1,last:false}},SHOPPING_1COL:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:20,htServiceName:"쇼핑",mobileClickCode:"sho",tabletClickCode:"sho",clickArea:"sho.",lcsTag:"m_main_shopping_a",adUnitId:"1131A",nLoadingCount:45,sCssPrefix:"shopping",htSectionPagingInfo:{api:d.replace(":MENU:","SHOPPING_1COL"),rev:null,page:1,last:false}},BEAUTY:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:e,htServiceName:"패션뷰티",mobileClickCode:"bty",tabletClickCode:"bty",clickArea:"bty.",lcsTag:"m_main_beauty",adUnitId:"1254A",nLoadingCount:15,sCssPrefix:"beauty",htSectionPagingInfo:{api:d.replace(":MENU:","BEAUTY"),rev:null,page:1,last:false}},CULTURE:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:e,htServiceName:"책문화",mobileClickCode:"clt",tabletClickCode:"clt",clickArea:"clt.",lcsTag:"m_main_culture",adUnitId:"1132A",nLoadingCount:25,sCssPrefix:"culture",htSectionPagingInfo:{api:d.replace(":MENU:","CULTURE"),rev:null,page:1,last:false}},FINANCE:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:e,htServiceName:"경제M",mobileClickCode:"fin",tabletClickCode:"fin",clickArea:"fin.",lcsTag:"m_main_finance",adUnitId:"1276A",nLoadingCount:25,sCssPrefix:"finance",htSectionPagingInfo:{api:d.replace(":MENU:","FINANCE"),rev:null,page:1,last:false}},REST:{clickArea:"hid.",lcsTag:"m_main_hidden",htSectionPagingInfo:{last:true}},TALK:{clickArea:"ctl."},BEST:{sParentSelector:".grid1_wrap",sCardClass:"grid1",sBrickVowelClass:"brick-vowel",sBrickClass:"brick",htServiceName:"베스트",mobileClickCode:"best",tabletClickCode:"best",clickArea:"best.",lcsTag:"m_main_best",adUnitId:"1137A",nLoadingCount:30,htSectionPagingInfo:{api:d.replace(":MENU:","BEST"),rev:null,page:1,last:true}},FEED:{sParentSelector:".grid1_wrap",sCardClass:"grid1",sBrickVowelClass:"brick-vowel",sBrickClass:"brick",htServiceName:"베스트",mobileClickCode:"best",tabletClickCode:"best",clickArea:"best.",lcsTag:"m_main_best",adUnitId:"1137A",nLoadingCount:30,htSectionPagingInfo:{api:d.replace(":MENU:","FEED"),rev:null,page:1,last:true}},MYFEED:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:20,htServiceName:"MY피드",mobileClickCode:"myc",tabletClickCode:"myc",clickArea:"myc.",subMenu:j,lcsTag:"m_main_myfeed_c_"+j.toLowerCase(),adUnitId:"1137A",nLoadingCount:40,sCssPrefix:"myfeed",htSectionPagingInfo:{api:l,rev:null,page:1,baseMessageId:null,last:false}},MYFEED_NEW:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:20,htServiceName:"MY피드",mobileClickCode:"myf",tabletClickCode:"myf",clickArea:"myf.",subMenu:j,lcsTag:"m_main_myfeed_f_"+j.toLowerCase(),adUnitId:"1137A",nLoadingCount:(j=="DISCO"||j=="ALL")?100:40,sCssPrefix:"myfeed",htSectionPagingInfo:{api:(j=="DISCO")?h:l,rev:null,page:1,baseMessageId:null,last:false}},MYFEED_NOTLOGIN:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:20,htServiceName:"MY피드",mobileClickCode:"myo",tabletClickCode:"myo",clickArea:"myo.",lcsTag:"m_main_myfeed_a",adUnitId:"1137A",nLoadingCount:1,sCssPrefix:"myfeed",htSectionPagingInfo:{api:l,rev:null,page:1,baseMessageId:null,last:false}},MOMKIDS:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:10,htServiceName:"맘·키즈",mobileClickCode:"mom",tabletClickCode:"mom",clickArea:"mom.",lcsTag:"m_main_momkids",adUnitId:"1137A",nLoadingCount:23,sCssPrefix:"momkids",htSectionPagingInfo:{api:d.replace(":MENU:","MOMKIDS"),rev:null,page:1,last:false}},MUSIC:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:25,htServiceName:"뮤직",mobileClickCode:"mus",tabletClickCode:"mus",clickArea:"mus.",lcsTag:"m_main_music",adUnitId:"1137A",nLoadingCount:1,sCssPrefix:"music",htSectionPagingInfo:{api:d.replace(":MENU:","MUSIC"),rev:null,page:1,last:true}},JOB:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:10,htServiceName:"JOB&",mobileClickCode:"job",tabletClickCode:"job",clickArea:"job.",lcsTag:"m_main_job",adUnitId:"1137A",nLoadingCount:25,sCssPrefix:"job",htSectionPagingInfo:{api:d.replace(":MENU:","JOB"),rev:null,page:1,last:false}},HEALTH:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:18,htServiceName:"건강",mobileClickCode:"hlt",tabletClickCode:"hlt",clickArea:"hlt.",lcsTag:"m_main_health",adUnitId:"1137A",nLoadingCount:25,sCssPrefix:"health",htSectionPagingInfo:{api:d.replace(":MENU:","HEALTH"),rev:null,page:1,last:false}},TRAVEL:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:21,htServiceName:"여행+",mobileClickCode:"tvl",tabletClickCode:"tvl",clickArea:"tvl.",lcsTag:"m_main_travel",adUnitId:"1137A",nLoadingCount:1,sCssPrefix:"travel",htSectionPagingInfo:{api:d.replace(":MENU:","TRAVEL"),rev:null,page:1,last:false}},WITH:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:8,htServiceName:"함께N",mobileClickCode:"wit",tabletClickCode:"wit",clickArea:"wit.",lcsTag:"m_main_with",adUnitId:"1137A",nLoadingCount:15,sCssPrefix:"with",htSectionPagingInfo:{api:d.replace(":MENU:","WITH"),rev:null,page:1,last:false}},MOVIE:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:15,htServiceName:"영화",mobileClickCode:"mvi",tabletClickCode:"mvi",clickArea:"mvi.",lcsTag:"m_main_movie",adUnitId:"1137A",nLoadingCount:18,sCssPrefix:"movie",htSectionPagingInfo:{api:d.replace(":MENU:","MOVIE"),rev:null,page:1,last:false}},LIVINGHOME:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:22,htServiceName:"리빙",mobileClickCode:"lvi",tabletClickCode:"lvi",clickArea:"lvi.",lcsTag:"m_main_livinghome",adUnitId:"1241B",nLoadingCount:33,sCssPrefix:"livinghome",htSectionPagingInfo:{api:d.replace(":MENU:","LIVINGHOME"),rev:null,page:1,last:false}},SCIENCE:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:24,htServiceName:"과학",mobileClickCode:"sci",tabletClickCode:"sci",clickArea:"sci.",lcsTag:"m_main_science",adUnitId:"1241B",nLoadingCount:1,sCssPrefix:"science",htSectionPagingInfo:{api:d.replace(":MENU:","SCIENCE"),rev:null,page:1,last:true}},DESIGN:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:10,htServiceName:"디자인",mobileClickCode:"des",tabletClickCode:"des",clickArea:"des.",lcsTag:"m_main_design",adUnitId:"1241B",nLoadingCount:30,sCssPrefix:"design",htSectionPagingInfo:{api:d.replace(":MENU:","DESIGN"),rev:null,page:1,last:false}},CHINA:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:10,htServiceName:"중국",mobileClickCode:"cha",tabletClickCode:"cha",clickArea:"cha.",lcsTag:"m_main_china",adUnitId:"1241B",nLoadingCount:35,sCssPrefix:"china",htSectionPagingInfo:{api:d.replace(":MENU:","CHINA"),rev:null,page:1,last:false}},PLACE:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:40,htServiceName:"플레이스",mobileClickCode:"zsu",tabletClickCode:"zsu",clickArea:"zsu.",lcsTag:"m_main_place_s",adUnitId:"1241B",nLoadingCount:45,sCssPrefix:"place",htSectionPagingInfo:{api:d.replace(":MENU:","PLACE"),rev:null,page:1,last:false}},PLACE_01:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:40,htServiceName:"플레이스",mobileClickCode:"zgw",tabletClickCode:"zgw",clickArea:"zgw.",lcsTag:"m_main_place_w",adUnitId:"1241B",nLoadingCount:45,sCssPrefix:"place",htSectionPagingInfo:{api:d.replace(":MENU:","PLACE_01"),rev:null,page:1,last:false}},PLACE_02:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:40,htServiceName:"플레이스",mobileClickCode:"zgg",tabletClickCode:"zgg",clickArea:"zgg.",lcsTag:"m_main_place_g",adUnitId:"1241B",nLoadingCount:45,sCssPrefix:"place",htSectionPagingInfo:{api:d.replace(":MENU:","PLACE_02"),rev:null,page:1,last:false}},PLACE_07:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:40,htServiceName:"플레이스",mobileClickCode:"zcd",tabletClickCode:"zcd",clickArea:"zcd.",lcsTag:"m_main_place_d",adUnitId:"1241B",nLoadingCount:45,sCssPrefix:"place",htSectionPagingInfo:{api:d.replace(":MENU:","PLACE_07"),rev:null,page:1,last:false}},PLACE_08:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:40,htServiceName:"플레이스",mobileClickCode:"zbs",tabletClickCode:"zbs",clickArea:"zbs.",lcsTag:"m_main_place_b",adUnitId:"1241B",nLoadingCount:45,sCssPrefix:"place",htSectionPagingInfo:{api:d.replace(":MENU:","PLACE_08"),rev:null,page:1,last:false}},PLACE_09:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:40,htServiceName:"플레이스",mobileClickCode:"zsu",tabletClickCode:"zsu",clickArea:"zsu.",lcsTag:"m_main_place_s",adUnitId:"1241B",nLoadingCount:45,sCssPrefix:"place",htSectionPagingInfo:{api:d.replace(":MENU:","PLACE_09"),rev:null,page:1,last:false}},PLACE_11:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:40,htServiceName:"플레이스",mobileClickCode:"zic",tabletClickCode:"zic",clickArea:"zic.",lcsTag:"m_main_place_i",adUnitId:"1241B",nLoadingCount:45,sCssPrefix:"place",htSectionPagingInfo:{api:d.replace(":MENU:","PLACE_11"),rev:null,page:1,last:false}},PLACE_14:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:40,htServiceName:"플레이스",mobileClickCode:"zjj",tabletClickCode:"zjj",clickArea:"zjj.",lcsTag:"m_main_place_j",adUnitId:"1241B",nLoadingCount:45,sCssPrefix:"place",htSectionPagingInfo:{api:d.replace(":MENU:","PLACE_14"),rev:null,page:1,last:false}},PLACE_16:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:40,htServiceName:"플레이스",mobileClickCode:"zcp",tabletClickCode:"zcp",clickArea:"zcp.",lcsTag:"m_main_place_c",adUnitId:"1241B",nLoadingCount:45,sCssPrefix:"place",htSectionPagingInfo:{api:d.replace(":MENU:","PLACE_16"),rev:null,page:1,last:false}},TODAY:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:50,htServiceName:"검색",mobileClickCode:"tod",tabletClickCode:"tod",clickArea:"tod.",lcsTag:"m_main_today",adUnitId:"",nLoadingCount:50,sCssPrefix:"today",htSectionPagingInfo:{api:d.replace(":MENU:","TODAY"),rev:null,page:1,last:false}},BUSINESS:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:20,htServiceName:"비즈니스",mobileClickCode:"bus",tabletClickCode:"bus",clickArea:"bus.",lcsTag:"m_main_business",adUnitId:"",nLoadingCount:40,sCssPrefix:"business",htSectionPagingInfo:{api:d.replace(":MENU:","BUSINESS"),rev:null,page:1,last:false}},FARM:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:11,htServiceName:"FARM",mobileClickCode:"fam",tabletClickCode:"fam",clickArea:"fam.",lcsTag:"m_main_farm",adUnitId:"",nLoadingCount:25,sCssPrefix:"farm",htSectionPagingInfo:{api:d.replace(":MENU:","FARM"),rev:null,page:1,last:false}},SCHOOL:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:15,htServiceName:"스쿨잼",mobileClickCode:"scl",tabletClickCode:"scl",clickArea:"scl.",lcsTag:"m_main_school",adUnitId:"",nLoadingCount:18,sCssPrefix:"school",htSectionPagingInfo:{api:d.replace(":MENU:","SCHOOL"),rev:null,page:1,last:false}},LAW:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:20,htServiceName:"법률",mobileClickCode:"law",tabletClickCode:"law",clickArea:"law.",lcsTag:"m_main_law",adUnitId:"",nLoadingCount:40,sCssPrefix:"law",htSectionPagingInfo:{api:d.replace(":MENU:","LAW"),rev:null,page:1,last:false}},SHOW:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:15,htServiceName:"공연전시",mobileClickCode:"sow",tabletClickCode:"sow",clickArea:"sow.",lcsTag:"m_main_show",adUnitId:"",nLoadingCount:30,sCssPrefix:"show",htSectionPagingInfo:{api:d.replace(":MENU:","SHOW"),rev:null,page:1,last:false}},WEDDING:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:15,htServiceName:"연애·결혼",mobileClickCode:"wed",tabletClickCode:"wed",clickArea:"wed.",lcsTag:"m_main_wedding",adUnitId:"",nLoadingCount:30,sCssPrefix:"wedding",htSectionPagingInfo:{api:d.replace(":MENU:","WEDDING"),rev:null,page:1,last:false}},ANIMAL:{sParentSelector:".grid1_wrap",sCardClass:"grid1",nPageSize:15,htServiceName:"동물공감",mobileClickCode:"ani",tabletClickCode:"ani",clickArea:"ani.",lcsTag:"m_main_animal",adUnitId:"",nLoadingCount:25,sCssPrefix:"animal",htSectionPagingInfo:{api:d.replace(":MENU:","ANIMAL"),rev:null,page:1,last:false}}};
_getSectionId=function(u){if(u=="SHOPPING"&&r){if(g){u=g
}else{if(s=="m"){u="SHOPPINGMEN"
}else{if(s=="f"&&!n){u="SHOPPINGWOMEN"
}else{if(s=="f"&&n){u="SHOPPINGMIZ"
}}}}}else{if(u=="MYFEED"&&r==false){u="MYFEED_NOTLOGIN"
}else{if(u=="MYFEED"&&o){u="MYFEED_NEW"
}else{if(u=="PLACE"){var t;
if(m){t=m
}else{if(q!=null&&q.length>=2){t=q.substr(0,2)
}}if($A(a).indexOf(t)>-1){u="PLACE_"+t
}else{var v=$Element($$.getSingle("._MM_REGION.cp_a.cp_aon"));
if(v){u="PLACE_"+v.attr("data-code")
}else{u="PLACE_09"
}}}}}}return u
},_getGridInfo=function(u,t){u=_getSectionId(u);
if(t){return f[u][t]
}return f[u]
};
return{getGridInfo:_getGridInfo,getSectionId:_getSectionId,}
})(naver.main.gVariable);
$.createNamespace("naver.main").ImageProcessor=jindo.$Class({$init:function(){this._nSizeTimer=-1;
this._nLoadingCount=(naver.main.gVariable.sUaViewType=="mobile")?2:4
},processPart:function(e){var f=[];
for(var d=0,b=e.length;
d<b;
d++){var c=e[d].queryAll("img.fade:not(.loaded)");
var a=Math.min(this._nLoadingCount,c.length);
f=f.concat(c.slice(0,a))
}this._imageLazyLoading(f)
},processAll:function(b){var a=b.queryAll("img.fade:not(.loaded)");
this._imageLazyLoading(a,true);
return a
},_imageLazyLoading:function(g,h){var e=g.length;
for(var d=0;
d<e;
d++){var l=g[d];
var f=l.data("src")||l.attr("src");
if(f){l.attr("src",f).addClass("loaded").addClass("change").data("src",null);
this._removeAttribute(l)
}}if(!h){return
}cancelAnimationFrame(this._nSizeTimer);
var j=this,c=false,b=jindo.$A(g);
(function a(){b=b.filter(function(n,o,m){n=jindo.$Element(n);
if(!n._element.complete){return true
}else{return false
}});
if(b.length()==0){j.fireEvent("complete",{length:e})
}else{j._nSizeTimer=requestAnimationFrame(a)
}})()
},_removeAttribute:function(b){if(b.data("fixedsize")){b.addClass("change");
return
}var a=b.attr("width");
if(a!=="100%"){b.attr("width","100%").attr("height",null).addClass("change")
}}}).extend(jindo.m.UIComponent);
$.createNamespace("naver.main").SectionManager=(function(gv,gridInfo,horizontalScroll){var MODULE_NAME="naver.main.SectionManager";
var _htWElement={},_documentFragment=document.createDocumentFragment(),_aSectionIds=[],_aSectionOrder=[],_sAdSrc=gv.sAd,_bNeApp2=gv.bContentOnly,_bCallScheme=false,_bNonCircular=false,_isDisableSetHeight=false,_nMaxVisibleScroll=0,_sSessionId="",_nScrollCount=0,_nScrollEndTimeId=0,_nLastScrollPos=0,_elNavTop=$("nav"),_bLowDevice=(function(oAgt){var oOsInfo=jindo.m.getOsInfo();
if(oOsInfo.android&&parseFloat(oOsInfo.version,10)<2.3){return true
}if((oOsInfo.iphone||oOsInfo.ipad)&&parseFloat(oOsInfo.version,10)<7){return true
}if(oOsInfo.mwin||oOsInfo.win){return true
}return false
})($Agent()),_aFlickingPanelLoadComplete={next:false,prev:false},_bNoFlicking=gv.bNoFlicking||_bLowDevice||!_elNavTop,_bAppending=false,_nFlickingCount=0,_nSectionHeight=0,_nRetryHeight=0,_oScrollHistory={},_bRandomSample=true,_nCurIndex=0,_nNextIndex=-1,_nPrevIndex=-1,_bSelectMove=false,_oNaviMenu=null,_oNaviMenuClone=null,_oFlicking=null,_oScrollEnd=null,_htBrickHouse={},_htSectionDom={},_htAjaxHeader={NV_VIEW_TYPE:gv.sViewType,NV_UA_TYPE:gv.sUaType,NOT_SUPPORT_BROWSER:gv.notSupportBrowser,NV_BROWSER_TYPE:gv.sBrowserType,MM_GLOBAL_ORIGIN:gv.globalOrigin},_htSectionHTMLPreload={},_bPreload=false,_init=function(){_wrapElement();
_initVar();
var sSectionId=gv.sDefaultSectionId;
if(!/isCover=YES/.test(location.search)){naver.main.LcsLog.lcsDo(sSectionId,naver.main.getAppleDeviceInfo())
}_initComponent();
_initPagingInfo(_oFlicking.getElement(),sSectionId);
if(!/isCover=YES/.test(location.search)){_attachEvent()
}if(/needScheme=YES/.test(location.search)||$("naverapp_html")){naver.main.NaverApp.callHtmlLoadingFinished();
if(/isCover=YES/.test(location.search)){var sAppScheme="webLoadingFinished?code="+sSectionId;
APP.run("naverapp://","",sAppScheme,false)
}else{oImageProcessor.attach("complete",function(oCustomEvt){var sSectionId=sSectionId;
if(!_bCallScheme){_bCallScheme=true;
var sAppScheme="webLoadingFinished?code="+sSectionId;
APP.run("naverapp://","",sAppScheme,false)
}})
}}$Cookie().set("MM_width",window.innerWidth);
_initBrickHouse(_oFlicking.getElement(),sSectionId,true);
if(!_bNoFlicking){_updatePanel(_oFlicking.getNextElement(),_aSectionIds[_nNextIndex],false,function(){_aFlickingPanelLoadComplete.next=true
});
_updatePanel(_oFlicking.getPrevElement(),_aSectionIds[_nPrevIndex],false,function(){_aFlickingPanelLoadComplete.prev=true
})
}_changeMoreButtonLabel(sSectionId);
_loadingDisplay(sSectionId);
_bindAD(sSectionId);
naver.main.Panel.showAddBanner();
naver.main.rest.init();
if(sSectionId=="REST"){naver.main.rest.loadLikeIt();
naver.main.rest.initComment();
naver.main.rest.loadImage()
}else{if(sSectionId=="SPORTS"){naver.main.myteam.refresh()
}}window.naver_corp_da=window.naver_corp_da||{};
window.naver_corp_da.setDaRequest=function(){_setHeight()
};
setTimeout(function(){_onScrollEnd()
},2000)
},_wrapElement=function(){_htWElement.flickContainer=$Element("mflick");
_htWElement.naviMenu=$Element("nav");
_htWElement.footer=$Element("contents_footer");
_htWElement.panelEditor=$Element("_MM_PANEL_EDITOR_AREA");
_htWElement.moreBtn=$Element("more_btn");
_htWElement.loading=$Element("grid_loading")
},_initVar=function(){_aSectionOrder=_aSectionIds=($("nav")&&eval(_htWElement.naviMenu.query(".nav_u").data("ids")))||[];
var sStartMenu=$Cookie().get("MM_S");
if(_aSectionIds.length==2){_bNonCircular=true;
_aSectionIds.push("DUMMY")
}if(_aSectionIds.length>0&&sStartMenu){var wArr=$A(_aSectionIds);
var nStartIndex=wArr.indexOf(sStartMenu);
var wArr1=wArr.slice(nStartIndex,wArr.length());
var wArr2=wArr.slice(0,nStartIndex);
_aSectionIds=wArr1.concat(wArr2).$value()
}_nNextIndex=_nCurIndex+1;
_nPrevIndex=_aSectionIds.length-1;
_sSessionId=new Date().getTime();
var sNNB=$Cookie().get("NNB");
if(sNNB){_sSessionId=sNNB.substring(0,5)+"_"+_sSessionId
}try{var sScrollHistory=localStorage.getItem("MSDT.scroll");
_oScrollHistory=JSON.parse(sScrollHistory)||{}
}catch(e){JEagleEyeClient.sendError("_oScrollHistory init failed = "+e)
}},_initComponent=function(){var elContainer=_htWElement.flickContainer.$value();
if(_elNavTop){_oNaviMenu=new naver.main.Navigation(_elNavTop,{_bNoFlicking:_bNoFlicking,_bNeApp2:_bNeApp2})
}oImageProcessor=new naver.main.ImageProcessor();
if(_bNoFlicking){_welMoreBtn=$Element("more_btn");
_initNoFlicking();
_creteNaviMenuCloneForFixed()
}else{_initSlideFlicking(elContainer)
}_oScrollEnd=new jindo.m.ScrollEnd();
naver.main.myteam.init()
},_creteNaviMenuCloneForFixed=function(){if(!_elNavTop){return
}var elNaviMenuClone=_elNavTop.cloneNode(true);
elNaviMenuClone.id="nav_cl";
elNaviMenuClone.style.position="fixed";
elNaviMenuClone.style.width=(gv.sViewType=="mobile")?"100%":"100%";
elNaviMenuClone.style.left="0px";
elNaviMenuClone.style.top="0px";
elNaviMenuClone.style.display="none";
document.body.appendChild(elNaviMenuClone);
_htWElement.naviMenuClone=$Element(elNaviMenuClone);
_oNaviMenuClone=new naver.main.Navigation(elNaviMenuClone,{_bNoFlicking:_bNoFlicking,_bNeApp2:_bNeApp2});
_oNaviMenuClone.attach("select",_onSelect);
if(!jindo.m.useFixed()){var _oExtBtnLayer=new jindo.m.FloatingLayer("nav_cl",{sPosition:"top",nSlideDuration:0,bUseHideUI:false,bUseFixed:true,nFadeOutDuration:0});
_htWElement.naviMenuClone=_oExtBtnLayer
}$Element("nav_cl").query(".nav_btn_more").hide()
},_initSlideFlicking=function(elContainer){var bUseTransition=useTimingFunctionAtSlideFlicking();
_oFlicking=new jindo.m.SlideFlicking(elContainer,{nTotalContents:_aSectionIds.length,bHorizontal:true,sClassPrefix:"flick-",sContentClass:"panel",bUseCircular:true,nFlickThreshold:60,bUseDiagonalTouch:false,nDuration:170,fEffect:bUseTransition?jindo.m.Effect.cubicEaseOut:jindo.m.Effect.easeOut,bUseTimingFunction:bUseTransition,bAutoResize:true}).attach({touchStart:function(oCustomEvt){var welTouch=$Element(oCustomEvt.element);
if(_bAppending){oCustomEvt.stop();
return
}}})
},_initNoFlicking=function(){_oFlicking={_aEvtHandler:[],attach:function(sEvtNm,fnHandler){this._aEvtHandler.push(fnHandler)
},fireEvent:function(){var htEvent={nContentsIndex:_nCurIndex};
this._aEvtHandler.forEach(function(v,i,a){v(htEvent)
})
},isActivating:function(){return true
},moveTo:function(nIndex,nDuration){_nScrollCount=0;
_nMaxVisibleScroll=0;
_scrollToTop();
_oNaviMenu.select(nIndex);
_oNaviMenuClone.select(nIndex);
var sBeforeSectionId=_getSectionId(_nCurIndex);
var sSectionId=_getSectionId(nIndex);
if(sBeforeSectionId===sSectionId){return
}naver.main.LcsLog.lcsDo(sSectionId,naver.main.getAppleDeviceInfo());
_removeADScript();
_setMM_SCookie(sSectionId);
_nCurIndex=nIndex;
_nNextIndex=this.getNextIndex();
_nPrevIndex=this.getPrevIndex();
naver.main.RTK&&naver.main.RTK.start();
_deactiveAllBrickHouse();
var welCurrentPanel=_oFlicking.getElement();
var sCurSectionName=_getSectionId();
_updatePanel(welCurrentPanel,sCurSectionName,true,function(){if(!_isRESTSection(sCurSectionName)){_htBrickHouse[sCurSectionName].build()
}else{_setHeight()
}_initPagingInfo(welCurrentPanel,sCurSectionName);
_changeMoreButtonLabel(sCurSectionName);
_loadingDisplay();
_scrollToTop();
_bindAD(sCurSectionName);
var sRollingMethod=$$("._ROLLING,._ROLLING_2X",welCurrentPanel).length>0?"start":"stop";
naver.main.rolling&&naver.main.rolling[sRollingMethod]()
});
_bindAD(sSectionId);
this.fireEvent()
},moveNext:function(){this.moveTo(_nNextIndex,0)
},movePrev:function(){this.moveTo(_nPrevIndex,0)
},getPanels:function(){return[_htWElement.flickContainer.query(".flick-panel")]
},getElement:function(){return _htWElement.flickContainer.query(".flick-panel")
},getNextIndex:function(){return(_nCurIndex+1===_aSectionIds.length)?0:_nCurIndex+1
},getPrevIndex:function(){return(_nCurIndex===0)?_aSectionIds.length-1:_nCurIndex-1
}}
},_initBrickHouse=function(welPanel,sSectionId,bActivate,undefined){if(_isRESTSection(sSectionId)){return
}if(_htBrickHouse[sSectionId]===undefined){var htGridInfo=gridInfo.getGridInfo(sSectionId);
var elSectionView=welPanel.query(".wrap");
_htBrickHouse[sSectionId]=new naver.main.BrickHouse(elSectionView,{sBrickId:sSectionId,sBrickHouseClass:"brick-house",sBrickVowelClass:"brick-vowel",sBrickClass:htGridInfo.sCardClass,bActivateOnload:bActivate}).attach({build:_onBuild});
if(bActivate){oImageProcessor.processAll(welPanel)
}else{oImageProcessor.processPart(welPanel.queryAll(".brick-vowel"))
}}else{if(bActivate){_htBrickHouse[sSectionId].activate()
}}},_initPagingInfo=function(welPanel,sSectionId){if(_isRESTSection(sSectionId)){_setHeight();
return
}var htPagingInfo=gridInfo.getGridInfo(sSectionId,"htSectionPagingInfo");
var htGridInfo=gridInfo.getGridInfo(sSectionId);
var welGridWrap=welPanel.query(htGridInfo.sParentSelector);
if(welGridWrap&&welGridWrap.data("section")==sSectionId){htPagingInfo.rev=welGridWrap.data("rev");
if(welGridWrap.data("last")==="true"){htPagingInfo.last=true
}}else{htPagingInfo.last=true;
htPagingInfo.rev=""
}htPagingInfo.api=htPagingInfo.api.replace(/:REV:/,htPagingInfo.rev);
if(htGridInfo.nPageSize){htPagingInfo.api=htPagingInfo.api.replace(/:SIZE:/,htGridInfo.nPageSize)
}var sLineNum=welGridWrap.attr("data-lineNum");
var sContsPos=welGridWrap.attr("data-contsPos");
if(sLineNum&&sContsPos){htPagingInfo.lineNum=sLineNum;
htPagingInfo.contsPos=sContsPos
}},_attachEvent=function(){if(!_bNoFlicking){_oFlicking.attach("flicking",_onAfterFlicking);
_oFlicking.attach("beforeFlicking",_onBeforeFlicking);
_oScrollEnd.attach("scrollEnd",_onScrollEnd)
}else{if(_htWElement.naviMenuClone){_oScrollEnd.attach("scrollEnd",function(){var nScrollY=document.body.scrollTop;
if(nScrollY>=51){_htWElement.naviMenuClone.show()
}else{_htWElement.naviMenuClone.hide()
}})
}else{_oScrollEnd.attach("scrollEnd",_onScrollEnd)
}}_htWElement.moreBtn.attach("click",function(we){var sSectionId=_getSectionId();
_appending(sSectionId);
we.stop()
});
if(_oNaviMenu){_oNaviMenu.attach("select",_onSelect)
}oImageProcessor.attach("complete",function(oCustomEvt){_setHeight()
});
jindo.m.bindRotate(_onRotate)
},_onBuild=function(oCustomEvt){if(oCustomEvt.id==_getSectionId()){_setHeight(oCustomEvt.height)
}},_deactiveAllBrickHouse=function(){for(sId in _htBrickHouse){_htBrickHouse[sId].deactivate()
}},_onBeforeFlicking=function(oCustomEvt){var bFlickingPanelLoadComplete=false;
if(oCustomEvt.bNext){bFlickingPanelLoadComplete=_aFlickingPanelLoadComplete.next
}else{bFlickingPanelLoadComplete=_aFlickingPanelLoadComplete.prev
}if(!bFlickingPanelLoadComplete){oCustomEvt.stop();
return
}_oNaviMenu.flick(oCustomEvt.nContentsNextIndex);
_nCurIndex=oCustomEvt.nContentsNextIndex;
_removeADScript()
},_onAfterFlicking=function(oCustomEvt){_nScrollCount=0;
_nMaxVisibleScroll=0;
_nCurIndex=oCustomEvt.nContentsIndex;
var sCurSectionName=_getSectionId();
_daClearActiveViews();
_deactiveAllBrickHouse();
_aFlickingPanelLoadComplete.next=false;
_aFlickingPanelLoadComplete.prev=false;
var welCurrentPanel=_oFlicking.getElement();
var sCurSectionName=_getSectionId();
_updatePanel(welCurrentPanel,sCurSectionName,true,function(){naver.main.LcsLog.lcsDo(sCurSectionName,naver.main.getAppleDeviceInfo());
if(!_isRESTSection(sCurSectionName)){_htBrickHouse[sCurSectionName].build()
}else{_setHeight();
if("REST"==sCurSectionName){naver.main.rest.loadLikeIt();
naver.main.rest.initComment();
naver.main.rest.loadImage()
}}_scrollToTop();
setTimeout(function(){_bindAD(sCurSectionName)
},100);
_initPagingInfo(_oFlicking.getElement(),sCurSectionName);
_changeMoreButtonLabel(sCurSectionName);
_loadingDisplay();
var sRollingMethod=$$("._ROLLING,._ROLLING_2X",welCurrentPanel).length>0?"start":"stop";
naver.main.rolling&&naver.main.rolling[sRollingMethod]();
naver.main.FontSize.update();
horizontalScroll.refreshHorizontalScrollEvent();
naver.main.Airs.setInit();
naver.main.School.refresh();
naver.main.MyFeed.refresh();
naver.main.entertainment.initComponent();
naver.main.NewsSeries.show();
if(sCurSectionName==="SPORTS"){naver.main.myteam.refresh()
}naver.main.RTK&&naver.main.RTK.start();
mainObserver.fireCustomEvent("showPanel",MODULE_NAME,{sPanel:sCurSectionName})
});
_nNextIndex=_oFlicking.getNextIndex();
var welNextPanel=_oFlicking.getNextElement();
var sNextSectionName=_aSectionIds[_nNextIndex];
_nNextIndex=_oFlicking.getNextIndex();
_updatePanel(welNextPanel,sNextSectionName,false,function(){_aFlickingPanelLoadComplete.next=true
});
_nPrevIndex=_oFlicking.getPrevIndex();
var welPrevPanel=_oFlicking.getPrevElement();
var sPrevSectionName=_aSectionIds[_nPrevIndex];
_nPrevIndex=_oFlicking.getPrevIndex();
_updatePanel(welPrevPanel,sPrevSectionName,false,function(){_aFlickingPanelLoadComplete.prev=true
});
_setMM_SCookie(sCurSectionName);
if(oCustomEvt.bCorrupt){_removeADScript()
}else{_preloadPanel(_nNextIndex)
}if(!!naver.main.Light){naver.main.Light.removeFloatingBanner();
naver.main.Light.showTextBanner(sCurSectionName,welCurrentPanel.query(".brick-vowel"))
}if(!_bSelectMove){_nFlickingCount++;
nclk({},"flk_"+gridInfo.getGridInfo(sCurSectionName,"clickArea")+((oCustomEvt.bNext)?"n":"p"),"",_nFlickingCount)
}_bSelectMove=false
},_onMoveTo=function(oCustomEvt){},_onSelect=function(we){if(_bNoFlicking){_htWElement.naviMenuClone.hide()
}_bSelectMove=true;
_oFlicking.moveTo(we.nIndex,0)
},_onRotate=function(){if(_getSectionId()==="REST"){_setHeight();
naver.main.rest.loadImage()
}for(sId in _htBrickHouse){_htBrickHouse[sId].reset()
}if(_oNaviMenu){_oNaviMenu.refreshMenuScroll()
}if(!_bNoFlicking){_nNextIndex=_oFlicking.getNextIndex();
var sNextSectionName=_aSectionIds[_nNextIndex];
var oNextBrickHouse=_htBrickHouse[sNextSectionName];
if(oNextBrickHouse){oNextBrickHouse.build()
}_nPrevIndex=_oFlicking.getPrevIndex();
var sPrevSectionName=_aSectionIds[_nPrevIndex];
var oPrevBrickHouse=_htBrickHouse[sPrevSectionName];
if(oPrevBrickHouse){oPrevBrickHouse.build()
}}horizontalScroll.refreshHorizontalScrollEvent();
naver.main.MyFeed.refresh()
},_onScrollEnd=function(we){var sSectionId=_getSectionId();
if(we){var svtDate=svt.substr(0,8);
var aScrollSectionList=_oScrollHistory[svtDate]||[];
if(aScrollSectionList.indexOf(sSectionId)==-1){aScrollSectionList.push(sSectionId);
_oScrollHistory[svtDate]=aScrollSectionList;
try{if(_bRandomSample){CH.go("MM.scroll",{sectionId:sSectionId})
}localStorage.setItem("MSDT.scroll",JSON.stringify(_oScrollHistory))
}catch(e){if(e.name=="QuotaExceededError"&&localStorage&&localStorage.length==0){}else{JEagleEyeClient.sendError("_oScrollHistory save failed = "+e)
}}}}naver.main.Airs.checkShow();
naver.main.NewsSeries.show();
if(naver.main.gVariable.isApp){naver.main.Airs.check()
}if(_bAppending){return
}if(sSectionId==="REST"){return
}if(/isCover=YES/.test(location.search)){return
}if(!_isRESTSection(sSectionId)){oImageProcessor.processAll(_oFlicking.getElement())
}var welLoading=_htWElement.loading;
var nWindowHeight=window.innerHeight;
if(welLoading.visible()&&welLoading.$value().getBoundingClientRect().top-nWindowHeight/2<nWindowHeight){_appending(sSectionId)
}if(we){_nScrollCount++;
var scrollY=naver.main.scrollPos().scrollY;
var bRandom=Math.random()*1000<10;
if(bRandom){if((scrollY>_nMaxVisibleScroll)&&bRandom){_nMaxVisibleScroll=scrollY;
clearTimeout(_nScrollEndTimeId);
_nScrollEndTimeId=setTimeout(function(){},300)
}var nDistance=scrollY-_nLastScrollPos;
if(bRandom){}}_nLastScrollPos=scrollY
}},_appendingStatic=function(sSectionId){var welCurPanel=_oFlicking.getElement();
var oBrickHouse=_htBrickHouse[sSectionId];
var htPagingInfo=_getPagingInfo(sSectionId);
_bAppending=true;
_loadingAnimationStart();
var aCardListToShow=[];
var welFeedCardList=$ElementList(oBrickHouse._bricks);
var nCount=0;
var nCheckCount=0;
var oAirsData=$$.getSingle("._MM_AIRS_DATA",welCurPanel);
var nTotalCount=0;
var nPageSize=10;
if(oAirsData){var welAirsData=$Element(oAirsData);
nTotalCount=welAirsData.data("total")||nTotalCount;
nPageSize=welAirsData.data("page-size")||nPageSize
}var welLastFeedCard;
for(var i=0;
i<welFeedCardList.length();
i++){var welFeedCard=welFeedCardList.get(i);
if(welFeedCard.hasClass("_MM_PAGING_STATIC_CONT")){if(welFeedCard.visible()==false){aCardListToShow.push(welFeedCard);
if(!welFeedCard.data("append-show")){nCheckCount++;
nCount++;
welLastFeedCard=welFeedCard;
var welImageList=$ElementList($$("._MM_PAGING_STATIC_CONT_IMG",welFeedCard));
for(var j=0;
j<welImageList.length();
j++){var welImage=welImageList.get(j);
welImage.attr("src",welImage.data("src"))
}}}else{if(!welFeedCard.data("append-show")){nCheckCount++
}}}if(nCount==nPageSize){break
}}if(welLastFeedCard){var welNextFeedCard=welLastFeedCard.next();
if(welNextFeedCard){if(welNextFeedCard.data("append-show")){aCardListToShow.push(welNextFeedCard)
}}}var nPageNumber=Math.ceil(nCheckCount/nPageSize);
var oInfo={ar:{more:nPageNumber-1}};
nclk({},gridInfo.getGridInfo(sSectionId,"clickArea")+"airsfeedmore","","",0,JSON.stringify(oInfo));
setTimeout(function(){$ElementList(aCardListToShow).show();
_loadingAnimationStop();
_bAppending=false;
if(nCount==0||nCheckCount==nTotalCount){htPagingInfo.last=true;
_loadingDisplay()
}_setHeight()
},500)
},_appending=function(sSectionId,bAppendAll,fCallback){var welCurPanel=_oFlicking.getElement();
var oBrickHouse=_htBrickHouse[sSectionId];
var htPagingInfo=_getPagingInfo(sSectionId);
if(htPagingInfo.last||!oBrickHouse){if(typeof fCallback=="function"){fCallback()
}return
}var staticPaging=(htPagingInfo.type==="static");
if(staticPaging){_appendingStatic(sSectionId);
return
}var sUrl=_getPagingUrl(welCurPanel,sSectionId);
if(!sUrl){if(typeof fCallback=="function"){fCallback()
}return
}if(bAppendAll){sUrl=sUrl.replace(/pSize=[0-9]+/,"pSize=999")
}_bAppending=true;
_loadingAnimationStart();
var oAppendAjax=$Ajax(sUrl,{method:"GET",timeout:5,onload:function(res){_loadingAnimationStop();
var htGridInfo=gridInfo.getGridInfo(sSectionId);
var elFragment=document.createDocumentFragment();
var welData=$Element(res.text());
elFragment.appendChild(welData.$value());
var welFragment=$Element(elFragment);
oBrickHouse.append(welFragment);
var brickVowel=welFragment.query(htGridInfo.sParentSelector);
var sLastPage=brickVowel.data("last");
var sLineNum=brickVowel.attr("data-lineNum");
var sContsPos=brickVowel.attr("data-contsPos");
var sBaseMessageId=brickVowel.attr("data-baseMessageId");
var sFeedType=brickVowel.data("feedType");
if(sLineNum&&sContsPos){htPagingInfo.lineNum=sLineNum;
htPagingInfo.contsPos=sContsPos;
oBrickHouse._htWElement.house.attr("data-lineNum",sLineNum).attr("data-contsPos",sContsPos)
}if(sBaseMessageId){htPagingInfo.sBaseMessageId=sBaseMessageId;
oBrickHouse._htWElement.house.attr("data-baseMessageId",sBaseMessageId)
}if(sLastPage==="true"){htPagingInfo.last=true;
oBrickHouse._htWElement.house.attr("data-last","true")
}else{htPagingInfo.page=htPagingInfo.page+1
}if(sFeedType){htPagingInfo.feedType=sFeedType;
oBrickHouse._htWElement.house.data("feedType",sFeedType)
}_loadingDisplay();
_bAppending=false;
var htParam=naver.main.getAppleDeviceInfo();
htParam.bAppending=true;
naver.main.LcsLog.lcsDo(sSectionId,htParam);
horizontalScroll.setHorizontalScrollEventOnTemplate();
naver.main.Subscribe.update();
naver.main.FontSize.update();
naver.main.Panel.showAddBanner();
if(_bNeApp2&&gv.bLcsAppCalled){naver.main.ShoppingStylePick.sendAllLog()
}if(typeof fCallback=="function"){fCallback()
}},onerror:function(){_bAppending=false;
_loadingAnimationStop();
CH.go("Section.req.append.err",{url:sUrl,section:sSectionId,readyState:oAppendAjax._request.readyState,status:oAppendAjax._request.status})
},ontimeout:function(){_bAppending=false;
_loadingAnimationStop();
CH.go("Section.req.append.timeout",{url:sUrl,section:sSectionId,readyState:oAppendAjax._request.readyState,status:oAppendAjax._request.status})
}});
oAppendAjax.header(_htAjaxHeader);
oAppendAjax.request();
var sArea="";
var sClickArea=gridInfo.getGridInfo(sSectionId,"clickArea").replace(".","");
var sSubMenu=gridInfo.getGridInfo(sSectionId,"subMenu");
if(sSubMenu){sArea=sClickArea+"."+sSubMenu.toLowerCase()+"more"+htPagingInfo.page
}else{sArea="lod."+sClickArea
}nclk({},sArea,"","");
return oAppendAjax
},_appendAll=function(fCallback){_appending(_getSectionId(),true,fCallback)
},_enableSetHeight=function(){_isDisableSetHeight=false
},_disableSetHeight=function(){_isDisableSetHeight=true
},_setHeight=function(nViewHeight){if(_isDisableSetHeight==true){return
}var isBottom=false;
if($Element("contents_footer").visible()&&window.innerHeight+window.scrollY==document.body.scrollHeight){isBottom=true
}_nRetryHeight=0;
var sSectionId=_getSectionId();
if(_isRESTSection(sSectionId)){_setRestSectionHeight()
}else{_setSectionHeight(nViewHeight)
}if(isBottom){var htOsInfo=jindo.m.getOsInfo();
var htNaverInappInfo=naver.main.getNaverInappInfo();
if(!naver.main.gVariable.isApp||htOsInfo.android){window.scrollTo(0,document.body.scrollHeight)
}else{if(gv.isApp&&htOsInfo.iphone&&htNaverInappInfo.browserServiceCode>=540){location.href="naverapp://scrollDown"
}}}},_setSectionHeight=function(nViewHeight){nViewHeight=nViewHeight||0;
var sSectionId=_getSectionId();
var welTab=_oFlicking.getElement().query(".tab");
var welLastElement=_htWElement.loading;
if(nViewHeight==0&&_htBrickHouse[sSectionId]){nViewHeight=_htBrickHouse[sSectionId].getBrickHeight()
}var nMarginTop=parseInt(_htBrickHouse[sSectionId]._htWElement.house.css("marginTop"),10);
var nHeight=(welTab?_setTabHeight(welTab):0)+nMarginTop+nViewHeight;
if(_nSectionHeight==nHeight){return
}if(_nRetryHeight<3&&nHeight<1000){_nRetryHeight++;
setTimeout(_setSectionHeight,300);
return
}_htWElement.flickContainer.height(nHeight);
_nSectionHeight=nHeight
},_setRestSectionHeight=function(){var nHeightRESTSection=_oFlicking.getElement().query(".wrap").height();
_htWElement.flickContainer.height(nHeightRESTSection);
_nSectionHeight=nHeightRESTSection
},_setTabHeight=function(welTab){var tab=welTab.height();
if(tab!=0){_setTabHeight=function(){return tab
}
}return tab
},_getSectionId=function(nIndex){var sSectionId="";
if(typeof nIndex==="undefined"){sSectionId=_aSectionIds[_nCurIndex]
}else{sSectionId=_aSectionIds[nIndex]
}if(!sSectionId){sSectionId=gv.sDefaultSectionId
}return sSectionId
},_isNonCircularFlickingOverFlow=function(welPanel,sSectionId){if(!_bNonCircular){return false
}return sSectionId=="DUMMY"
},_updatePanel=function(welPanel,sSectionId,bActivate,fCallback,undefined){if(_isNonCircularFlickingOverFlow(welPanel,sSectionId)){return
}var welWrap=welPanel.query(".wrap");
if(welWrap!==null){var sStoreSectionId=welWrap.data("id");
if(sStoreSectionId==sSectionId){_initBrickHouse(welPanel,sSectionId,bActivate);
if(fCallback){fCallback()
}return
}if(sStoreSectionId){_setSectionDomToFragment(welPanel,sStoreSectionId,true)
}}var elDom=_getSectionDomFromFragment(sSectionId);
var sPreloadHTML=_htSectionHTMLPreload[sSectionId];
if(elDom){welPanel.prepend(elDom);
_initBrickHouse(welPanel,sSectionId,bActivate);
if(fCallback){fCallback()
}}else{if(sPreloadHTML){_updatePanelHtml(welPanel,sSectionId,sPreloadHTML,bActivate,fCallback)
}else{var sUrl=_makeSectionUrl(sSectionId);
var nRetry=0;
var oSectionAjax=$Ajax(sUrl,{method:"GET",timeout:5,onload:function(res){var sSectionHtml=res.text();
_updatePanelHtml(welPanel,sSectionId,sSectionHtml,bActivate,fCallback)
},onerror:function(res){_showRetryArea(welPanel,sSectionId);
CH.go("Section.req.err",{url:sUrl,section:sSectionId,activate:bActivate,readyState:oSectionAjax._request.readyState,status:oSectionAjax._request.status,retry:nRetry,host:location.host,domain:document.domain})
},ontimeout:function(){_showRetryArea(welPanel,sSectionId);
CH.go("Section.req.timeout",{url:sUrl,section:sSectionId,activate:bActivate,readyState:oSectionAjax._request.readyState,status:oSectionAjax._request.status,retry:nRetry})
}});
oSectionAjax.header(_htAjaxHeader);
oSectionAjax.request()
}}},_updatePanelHtml=function(welPanel,sSectionId,sSectionHtml,bActivate,fCallback){if(!sSectionHtml||sSectionHtml.length==0){return
}$Element(sSectionHtml).prependTo(welPanel);
_setSectionDomToFragment(welPanel,sSectionId,false);
_initBrickHouse(welPanel,sSectionId,bActivate);
horizontalScroll.setHorizontalScrollEventOnTemplate();
naver.main.Subscribe.update();
naver.main.FontSize.update();
naver.main.Panel.showAddBanner(sSectionId,welPanel);
if(fCallback){fCallback()
}mainObserver.fireCustomEvent("onLoadPanel",MODULE_NAME,{sPanel:sSectionId})
},_preloadPanel=function(_nNextIndex){if(_bPreload){return
}var sDoubleNextSectionId=_aSectionIds[(_nNextIndex+1)%_aSectionIds.length];
if(_isPreloadRequiredSection(sDoubleNextSectionId)){_bPreload=true;
var sPreloadUrl=_makeSectionUrl(sDoubleNextSectionId);
var oPreloadSectionAjax=$Ajax(sPreloadUrl,{method:"GET",timeout:10,onload:function(res){var sSectionHtml=res.text();
_htSectionHTMLPreload[sDoubleNextSectionId]=sSectionHtml;
_bPreload=false
},onerror:function(res){CH.go("Section.req.preload.err",{url:sPreloadUrl,section:sDoubleNextSectionId,activate:bActivate,readyState:oPreloadSectionAjax._request.readyState,status:oSectionAjax._request.status})
},ontimeout:function(res){CH.go("Section.req.preload.timeout",{url:sPreloadUrl,section:sDoubleNextSectionId,activate:bActivate,readyState:oPreloadSectionAjax._request.readyState,status:oSectionAjax._request.status})
}});
oPreloadSectionAjax.header(_htAjaxHeader);
oPreloadSectionAjax.request()
}},_isPreloadRequiredSection=function(sSectionId,undefined){if(sSectionId=="DUMMY"){return false
}if(_htSectionHTMLPreload[sSectionId]===undefined&&_htBrickHouse[sSectionId]===undefined){return true
}else{return false
}},_scrollToTop=function(nMoveScrollY){var sSectionId=_getSectionId();
var nNavTop=_elNavTop&&_elNavTop.offsetTop;
var nToScrollY=nMoveScrollY||nNavTop;
nToScrollY+=2;
var nTop=nToScrollY;
if(sSectionId=="REST"){if(gv.sViewType=="mobile"){nTop+=_elNavTop&&jindo.$Element(_elNavTop).height();
window.scrollTo(0,nTop);
return nTop
}}else{if(naver.main.scrollPos().scrollY>nToScrollY){window.scrollTo(0,nTop);
return nTop
}}},_makeSectionUrl=function(sSectionId){var sUrl="/include/grid/panel_"+sSectionId+".shtml?menu="+sSectionId;
var oSectionGridInfo=gridInfo.getGridInfo(sSectionId);
if(oSectionGridInfo){sUrl+=(oSectionGridInfo.nPageSize)?"&pSize="+oSectionGridInfo.nPageSize:""
}return sUrl
},_showRetryArea=function(welPanel,sSectionId){var oErrTemplate=$Template('<div class="wrap id_{=sCssPrefix}" data-id="{=sSectionId}"><div class="grid1_wrap brick-house" data-section="{=sSectionId}" data-last="true" data-linenum="0" data-contspos="0"><div class="brick-vowel"><div class="grid1 id_cui_error"><div class="cui_error"><div class="ce_tit_wrap ce_network"><h3 class="ce_tit">네트워크에 접속할 수 없습니다.</h3><p class="ce_t">네트워크 연결 상태를 확인해주세요.</p><a href="javascript:naver.main.PageRefresh.run();" class="ue_a">재시도</a></div></div></div></div></div></div>');
var oGridInfo=naver.main.GridInfo.getGridInfo(sSectionId);
_updatePanelHtml(welPanel,sSectionId,oErrTemplate.process({sCssPrefix:oGridInfo.sCssPrefix,sSectionId:sSectionId}),true,null)
},_getSectionDomFromFragment=function(sSectionId){return _htSectionDom[sSectionId]
},_setSectionDomToFragment=function(welPanel,sSectionId,bMove,undefined){if(_htSectionDom[sSectionId]===undefined){_htSectionDom[sSectionId]=welPanel.query(".wrap")
}if(bMove){_documentFragment.appendChild(_htSectionDom[sSectionId]._element)
}},_setMM_SCookie=function(sSectionId){if(_isRESTSection(sSectionId)){$Cookie().remove("MM_S")
}else{naver.main.resources("menu").setSet(sSectionId)
}},_getPagingInfo=function(sSectionId){return gridInfo.getGridInfo(sSectionId,"htSectionPagingInfo")
},_isRESTSection=function(sSectionId){if(sSectionId==="REST"||gridInfo.getGridInfo(sSectionId).bClose){return true
}else{return false
}},_isLast=function(){var sSectionId=_getSectionId();
var htPagingInfo=gridInfo.getGridInfo(sSectionId,"htSectionPagingInfo");
return htPagingInfo.last
},_loadingAnimationStart=function(){if(!_bNoFlicking||gv.bContentOnly){var elLoadingIcon=_htWElement.loading.child()[0];
var sBackground=elLoadingIcon.css("background");
sBackground=sBackground.replace(".png",".gif");
elLoadingIcon.css("background",sBackground);
_htWElement.loading.show("block")
}},_loadingAnimationStop=function(){if(!_bNoFlicking||gv.bContentOnly){var elLoadingIcon=_htWElement.loading.child()[0];
var sBackground=elLoadingIcon.css("background");
sBackground=sBackground.replace(".gif",".png");
elLoadingIcon.css("background",sBackground)
}},_loadingDisplay=function(sSectionId){sSectionId=sSectionId||_getSectionId();
var welFooter=_htWElement.footer;
var htPagingInfo=gridInfo.getGridInfo(sSectionId,"htSectionPagingInfo");
if(!htPagingInfo){return
}if(_isRESTSection(sSectionId)){_htWElement.loading.hide();
_htWElement.moreBtn.hide();
_htWElement.panelEditor.hide();
welFooter.show();
return
}var welLoading;
var nBrickCount=_htBrickHouse[sSectionId].getBrickCount();
nLoadingCount=gridInfo.getGridInfo(sSectionId,"nLoadingCount")||30;
if(nBrickCount>=nLoadingCount||(_bLowDevice&&gv.bContentOnly==false)){_htWElement.loading.hide();
welLoading=_htWElement.moreBtn
}else{_htWElement.moreBtn.hide();
welLoading=_htWElement.loading
}if(htPagingInfo.last){welLoading.hide();
welFooter.show();
_setPanelEditor(sSectionId)
}else{welLoading.show();
welFooter.hide();
_htWElement.panelEditor.hide()
}},_setPanelEditor=function(sSectionId){var jEditorList=jindo.$Json(naver.main.gVariable.oEditor);
var jEditor=jindo.$Json(jEditorList.get(sSectionId)[0]);
var elEditorArea=_htWElement.panelEditor;
if(jEditor.$value()==undefined){elEditorArea.hide();
return
}var mobileClickCode=naver.main.GridInfo.getGridInfo(sSectionId,"mobileClickCode");
if(jEditor.get("exposeYN")[0]==="Y"&&jEditor.get("editor")[0]!==null&&jEditor.get("lastRevision")[0]!==null&&jEditor.get("buttonUrl")[0]!==null&&jEditor.get("buttonUrl")[0]!==""){elEditorArea.query("a").attr("href",jEditor.get("buttonUrl")[0]);
elEditorArea.query("a").attr("onclick","nclk(this, '"+mobileClickCode+".maineditor', '','');");
$Element("_MM_PANEL_EDITOR").text(jEditor.get("editor")[0]);
$Element("_MM_PANEL_LAST_UPDATED").text(jEditor.get("lastRevision")[0]);
elEditorArea.show()
}else{elEditorArea.hide()
}},_changeMoreButtonLabel=function(sSectionId){var sHtml='<a href="#" class="gm_a">더보기<span class="sprh sprh_gmarr"></span></a>';
var sShoppingHtml='<a href="#" class="gm_a">지난 콘텐츠 더보기<span class="sprh sprh_gmarr"></span></a>';
var sPickHtml='<a href="#" class="gm_a">꾹 눌러 더보기<span class="sprh sprh_gmarr"></span></a>';
var sSchoolHtml='<a href="#" class="gm_a">어제 놓친 이야기가 궁금해? <span class="sprh sprh_gmarr"></span></a>';
if(sSectionId==="SHOPPING"||sSectionId==="CARGAME"){_htWElement.moreBtn.html(sShoppingHtml);
_htWElement.moreBtn.addClass("_changed")
}else{if(sSectionId==="PICK"){_htWElement.moreBtn.html(sPickHtml);
_htWElement.moreBtn.addClass("_changed")
}else{if(sSectionId==="SCHOOL"){_htWElement.moreBtn.html(sSchoolHtml);
_htWElement.moreBtn.addClass("_changed")
}else{if(_htWElement.moreBtn.hasClass("_changed")){_htWElement.moreBtn.html(sHtml);
_htWElement.moreBtn.removeClass("_changed")
}}}}},_getPagingUrl=function(welPanel,sSectionId){var htGridInfo=gridInfo.getGridInfo(sSectionId);
var sParentSelector=htGridInfo.sParentSelector;
var welGridWrap=welPanel.query(sParentSelector);
if(!welGridWrap){JEagleEyeClient.sendError("wrap_grid is null - "+sSectionId+","+sParentSelector);
return""
}var sWrapSection=welGridWrap.data("section");
if(sWrapSection!=sSectionId){JEagleEyeClient.sendError("welGridWrap is not matched. - wrap:"+sWrapSection+",sectionId:"+sSectionId);
return""
}var htPagingInfo=gridInfo.getGridInfo(sSectionId,"htSectionPagingInfo");
htPagingInfo.rev=welGridWrap.data("rev");
htPagingInfo.api=htPagingInfo.api.replace(/:REV:/,htPagingInfo.rev);
if(htGridInfo.nPageSize){htPagingInfo.api=htPagingInfo.api.replace(/:SIZE:/,htGridInfo.nPageSize)
}htPagingInfo.api=htPagingInfo.api.replace(/:MENU:/,welGridWrap.data("menu"));
var sUrl=htPagingInfo.api.replace(/:PAGE:/,(htPagingInfo.page+1));
var lineNum=htPagingInfo.lineNum;
var contsPos=htPagingInfo.contsPos;
if(lineNum&&contsPos){if(!/(lineNum|contsPos)/.test(sUrl)){sUrl+="&lineNum="+lineNum+"&contsPos="+contsPos
}}var baseMessageId=welGridWrap.data("basemessageid");
if(baseMessageId){sUrl+="&baseMessageId="+baseMessageId
}if(sSectionId=="MYFEED"){var sSubMenu=$Cookie().get("MM_SUB_MENU");
if(sSubMenu){sUrl+="&subMenu="+sSubMenu
}var sFeedType=welGridWrap.data("feedType");
if(sFeedType){sUrl+="&feedType="+sFeedType
}}if(/(REV|SIZE|PAGE)/.test(sUrl)){JEagleEyeClient.sendError("append url invalid - "+sUrl);
return""
}else{return sUrl
}},_removeADScript=function(){try{if(!_bNoFlicking){var sSectionId=_getSectionId(_oFlicking.getContentIndex());
if(!/NEWS|ENT|SPORTS|BBOOM|VIDEO|LIFE|LIVING|CARGAME|BEAUTY|FINANCE|GAMEAPP|MOVIE|TRAVEL|JOB/.test(sSectionId)){return
}}var aWelAD=_oFlicking.getElement().queryAll(".ad,[data-ad-target]");
if(aWelAD.length>0){$ElementList(aWelAD).attr("data-ad-ready","true")
}$$('script[data-da="true"]').forEach(function(el,idx){if(/NEWS|ENT|SPORTS|BBOOM|VIDEO|LIFE|LIVING|CARGAME|BEAUTY|FINANCE|GAMEAPP|MOVIE|TRAVEL|JOB/.test(el.src)&&el.src.search("ad_marketing")<0&&!(/t=gloader/.test(el.src))){var parent=el.parentNode;
parent.removeChild(el)
}});
window.onscroll=null
}catch(e){console.warn("광고 script 삭제 오류",e)
}},_bindAD=function(sSectionId){if(gv.bContentOnly===true&&gv.bLcsAppCalled===false){return
}window.naver_corp_da.specialDaAdcallTime=+Date.now();
window.naver_corp_da.brandingDaAdcallTime=+Date.now();
if("NEWS"===sSectionId){try{naver_bakery.watch("AD_NEWS_1","nmap_news_1","NEWS_1")
}catch(e){JEagleEyeClient.sendError("[DA] naver_bakery.watch() - "+e)
}}else{try{naver_bakery.destory()
}catch(e){JEagleEyeClient.sendError("[DA] naver_bakery.destroy() - "+e)
}}var sAdSrc=_sAdSrc+((_sAdSrc.indexOf("m.ad.naver.com")>0)?"?t=gloader&":"?");
var currentPanel=_oFlicking.getElement();
var welVeta=$Element("_MM_VETA");
var welUioADs=[];
var isNewsPanel=true;
var htMdomInfo={};
htMdomInfo.dom=[];
if(/(NEWS|ENT|SPORTS)/.test(sSectionId)){welUioADs=currentPanel.queryAll(".ad.ready, [data-ad-target=_MM_MEDIA_AD][data-ad-ready=true]");
$ElementList(currentPanel.queryAll(".ad.ready")).attr("data-ad-target","_MM_MEDIA_AD")
}else{welUioADs=currentPanel.queryAll("[data-ad-target=_MM_CONTENTS_AD]");
isNewsPanel=false
}for(var i=welUioADs.length-1;
i>=0;
i--){var welUioAD=welUioADs[i];
if(welUioAD!=null&&welUioAD.visible()){var sUnitId,sAdId;
var bMdomAD=(welUioAD.data("mdom")=="true")||false;
if(isNewsPanel){sAdId=welUioAD.attr("id");
if(sAdId=="ad_marketing"){}else{if(sAdId.indexOf("_2")>-1){if(sAdId.indexOf("NEWS")>-1||sAdId.indexOf("news")>-1){sUnitId="1120H"
}else{if(sAdId.indexOf("SPORTS")>-1||sAdId.indexOf("sports")>-1){sUnitId="1120J"
}else{sUnitId="1120H"
}}}else{sUnitId="1120D"
}}sUnitId=welUioAD.data("unit")||sUnitId;
if(sAdId==="ad_marketing"){var sScriptDomId=sAdId+"_script";
var sTabId=welUioAD.data("tb-id")||"NEWS_1";
if($(sScriptDomId)&&!$Element(sScriptDomId).data("eval")){eval($Element(sScriptDomId).text());
$Element(sScriptDomId)&&$Element(sScriptDomId).data("eval",true)
}else{if(gv.bAdMarketingCalled==true||gv.globalOrigin!=""){(function(sUnitId,sAdId,sScriptDomId){var oAdMarketingAjax=$Ajax("/nvbanner/fxshow?su=SU10002&da_dom_id="+sAdId+"&tb="+sTabId,{method:"GET",timeout:5,onload:function(res){$Element(sAdId).html(res.text());
if($(sScriptDomId)){eval($Element(sScriptDomId).text());
$Element(sScriptDomId)&&$Element(sScriptDomId).data("eval",true)
}}});
oAdMarketingAjax.request();
oAdMarketingAjax=null
})(sUnitId,sAdId,sScriptDomId)
}}continue
}}else{sUnitId=welUioAD.data("unit")||gridInfo.getGridInfo(sSectionId,"adUnitId")||"";
sAdId=welUioAD.attr("id")
}var rnd=new Date().getTime();
var tb=sAdId=="ad_marketing"?"NEWS_1":sAdId.replace("AD_","");
var sExtra="";
if(welUioAD.data("tb")){tb=welUioAD.data("tb")
}if(welUioAD.data("dom-url")){sAdSrc=welUioAD.data("dom-url")+"?";
sAdSrc=sAdSrc.replace("http:",location.protocol)
}if(welUioAD.data("extra")){sExtra="&"+welUioAD.data("extra")
}welUioAD.data("ad-ready",null);
welUioAD.removeClass("ready");
if(isNewsPanel){welUioAD.html("")
}if(bMdomAD){htMdomInfo.dom.push(sUnitId+":"+sAdId);
htMdomInfo.adSrc=sAdSrc;
htMdomInfo.unit=welUioAD.data("mdom-unit");
htMdomInfo.extra=sExtra
}else{var sUnitParamName=(_isNewAd(sAdSrc))?"su=":"unit=";
var sAdScriptSrc=sAdSrc+sUnitParamName+sUnitId+"&da_dom_id="+sAdId+"&tb="+tb+"&rui="+rnd+"&main_svt="+svt+sExtra;
var domscript=document.createElement("script");
domscript.src=sAdScriptSrc;
domscript.charset="utf-8";
domscript.setAttribute("data-da","true");
welVeta.append(domscript)
}}}gv.bAdMarketingCalled=true;
if(htMdomInfo.dom.length>0){var sUnitParamName=(_isNewAd(htMdomInfo.adSrc))?"su=":"unit=";
var sAdScriptSrc=htMdomInfo.adSrc+sUnitParamName+htMdomInfo.unit+"&mdom="+htMdomInfo.dom.join(",")+"&tb="+tb+"&rui="+rnd+"&main_svt="+svt+htMdomInfo.extra;
var domscript=document.createElement("script");
domscript.src=sAdScriptSrc;
domscript.charset="utf-8";
domscript.setAttribute("data-da","true");
welVeta.append(domscript)
}},_isNewAd=function(sAdSrc){return/(.*)\/fxshow/.test(sAdSrc)
},_daClearActiveViews=function(){if(typeof naver_corp_da!="undefined"&&!!naver_corp_da.clearActiveViews&&typeof naver_corp_da.clearActiveViews==="function"){naver_corp_da.clearActiveViews()
}if(typeof naver_corp_da!="undefined"&&!!naver_corp_da.clearViewableImpressionManagers&&typeof naver_corp_da.clearViewableImpressionManagers==="function"){naver_corp_da.clearViewableImpressionManagers()
}};
return{init:_init,f:function(){return _oFlicking
},n:function(){return _oNaviMenu
},brick:function(sSectionId){if(sSectionId){return _htBrickHouse[sSectionId]
}else{return _htBrickHouse
}},getSectionName:_getSectionId,scrollEnd:function(){return _oScrollEnd
},onScrollEnd:function(){if(!_bNoFlicking){_onScrollEnd()
}},isLast:_isLast,enableSetHeight:_enableSetHeight,disableSetHeight:_disableSetHeight,setHeight:_setHeight,sectionDom:_htSectionDom,bindAD:_bindAD,removeADScript:_removeADScript,appendAll:_appendAll}
})(naver.main.gVariable,naver.main.GridInfo,naver.main.HorizontalScroll);
function useTimingFunctionAtSlideFlicking(){var c=jindo.m.getBrowserInfo(),b=jindo.m.getOsInfo(),a=false;
if(c.firefox){return false
}if(c.chrome&&!(/SamsungBrowser/i.test(navigator.userAgent))){if(c.version>="25"){if(jindo.m.getDeviceInfo().samsung||/SM-/.test(navigator.userAgent)){return false
}else{return true
}}else{return false
}}if(b.ios){return false
}else{if(b.android){if(/SamsungBrowser[ \/]([0-9.]+)/.test(navigator.userAgent)){var d=parseInt(navigator.userAgent.match(/SamsungBrowser[ \/]([0-9.]+)/)[1]);
if(d>=4){return false
}}if(b.version>="4.3"){if(/SHV-E300|SHV-E330|GT-I9500|GT-I9505|SGH-M919|SPH-L720|SGH-I337|SCH-I545|SHW-M250|GT-I9100|SHV-E110/.test(navigator.userAgent)){a=false
}else{a=true
}}else{a=false
}}}return a
}$.createNamespace("naver.main").Navigation=jindo.$Class({$init:function(a,b){this.option(b||{});
this._setWrapperElement(a);
this._hideAddBtn();
this._initVar();
this._initMenuScroll();
this._hideNavAllAddButton();
this._showNewMark();
this._attach();
this._oGridInfo=naver.main.GridInfo
},_hideAddBtn:function(){var c=$Cookie().get("MM_panel");
if(!c){return
}var a=c.split(";");
var b=naver.main.gVariable.sPanelAll.split(";").filter(function(d){return a.indexOf(d)==-1
});
if(b.length===0){this._htWElement.nav.query("li.nav_l.nav_l_add").hide()
}},_setWrapperElement:function(a){this._htWElement={};
this._htWElement.nav=jindo.$Element(a);
this._htWElement.lists=jindo.$ElementList(this._htWElement.nav.queryAll(".nav_l"));
this._htWElement.anchors=jindo.$ElementList(this._htWElement.nav.queryAll(".nav_a"));
this._htWElement.ul=this._htWElement.nav.query(".nav_u");
this._htWElement.all_lists=jindo.$ElementList(this._htWElement.nav.queryAll(".nav_l"));
this._htWElement.add_btn=jindo.$Element(this._htWElement.nav.query("._MM_NAV_ALL_ADD .nav_add"));
this._htWElement.open_btn=jindo.$Element(this._htWElement.nav.query("#_MM_NAV_OPEN"));
if($("_MM_NAV_ALL")){this._htWElement.all_lists=jindo.$ElementList($Element("_MM_NAV_ALL").queryAll(".nav_l"));
this._htWElement.add_btn=jindo.$Element($Element($("_MM_NAV_ALL")).query("._MM_NAV_ALL_ADD .nav_add"))
}},_initVar:function(){this._SHIFT=50;
this._DURATION=250;
this._aMenuIds=eval(this._htWElement.ul.data("ids"));
if(this._aMenuIds.length==2){this._aMenuIds.push("DUMMY")
}this._sCurMenu=naver.main.gVariable.sDefaultSectionId;
this._nCurPos=this._getMenuIndex(this._sCurMenu);
this._sNaviId=this._getSelectNaviId();
this._nSubIndex=this._getSubIndex(this._sCurMenu);
this._nOffset=this._nCurPos;
this._aMenuListOffset=this._getMenuListOffset();
this._oScroll=new jindo.m.Scroll(this._htWElement.nav.query(".scroll_wrap"),{nHeight:this._htWElement.nav.height(),bActivateOnload:true,bUseHScroll:true,bUseVScroll:false,bUseScrollbar:false,bUseMomentum:true,bUseBounce:false,nFlickThreshold:30,bUseHighlight:false,nDuration:this._DURATION,bUseCss3d:false,bUseTimingFunction:true,nZIndex:0});
this._nMenuViewWidth=this._oScroll.width();
this._nMenuWidth=this._htWElement.ul.width();
this._aPromotionPanelList=naver.main.gVariable.htPromotionPanel.list;
this._sPromotionPanelTimestamp=naver.main.gVariable.htPromotionPanel.timestamp;
this._oNaviResource=naver.main.resources("mainNavi");
this._sPromotionPanelSavedTimestamp=this._oNaviResource.getPromotionTimestamp()||0;
this._aOnPanel=naver.main.Panel.getPanelOn().split(";");
this._bisDrown=false
},_hideNavAllAddButton:function(){var c=naver.main.Panel.getPanelOn().split(";");
var d=naver.main.gVariable.sPanelAll.split(";");
var a=d.length;
if($Cookie().get("MM_LAB_TODAY_SETTING")!="1"){a-=1
}if(c.length>=a){var b=$Element("_MM_NAV_ALL").query("._MM_NAV_ALL_ADD");
if(b!==null){b.hide()
}}},_showNewMark:function(){var d='<span class="sprh sprh_mark"></span>',b='<span class="ico_new">NEW</span>',f=this._htWElement.ul,c=$Cookie().get("MM_panel_changed"),e=$Cookie().get("MM_panel_changed_msg");
this._drawAddBtnNewMark(b);
if(c==null){return
}var a=$A(c.split(";"));
$Cookie().remove("MM_panel_origin");
$Cookie().remove("MM_panel_changed");
$Cookie().remove("MM_panel_changed_msg");
if("CHANGE"==e){return
}a.forEach(function(h){var g=f.query("a[data-id='"+h+"']");
if(g!==null){g.append(d)
}})
},_drawAddBtnNewMark:function(b){var c=true;
var a="";
$A(this._aPromotionPanelList).forEach($Fn(function(d){a=d.code;
if(a&&this._aOnPanel.indexOf(a)===-1){c=false;
$A.Break()
}},this).bind())
},_drawPromotionBanner:function(){var a="";
var e=[];
var b;
$A(this._aPromotionPanelList).forEach($Fn(function(f){a=f.code;
if(a&&this._aOnPanel.indexOf(a)===-1){e.push(naver.main.GridInfo.getGridInfo(a).htServiceName)
}},this).bind());
e=e.splice(0,2);
if(e.length<1||$Date(this._sPromotionPanelTimestamp).time()<=$Date(this._sPromotionPanelSavedTimestamp).time()){return
}b=$Template(['<div class="na_notice">','<a href="/panel/" class="na_na _MM_MENU_ADD_OFF">','<span class="na_ico_new">NEW</span>','<span class="na_t">','<span class="na_nst">',"{for num:panel in list}","{if num < list.length-1}{=panel},{else}{=panel}{/if}","{/for}","</span>판 오픈!","</span>","</a>","</div>"].join(""));
var c=$Element("_MM_NAV_BODY");
c&&c.after(b.process({list:e}));
var d=$Element("_MM_NAV_BODY_DRAG");
d&&d.after(b.process({list:e}))
},_showCoachMark:function(){if(this.option("_bNoFlicking")&&!this.option("_bNeApp2")){return
}if(!!!$Cookie().get("MM_NAV_COACH")&&$("_MM_NAV_COACH")){$Cookie().set("MM_NAV_COACH","1",365*10);
$Element("_MM_NAV_COACH").show();
var a=this;
setTimeout(function(){a._hideCoachMark()
},3000)
}},_hideCoachMark:function(){if($("_MM_NAV_COACH")){$Element("_MM_NAV_COACH").disappear(0.3)
}},_initMenuScroll:function(){var b=naver.main.resources("menu").getNaviMargin();
if(/menu=/.test(location.search)){if(b){this._htWElement.ul.css("margin-left","0px");
this._aMenuListOffset=this._getMenuListOffset();
this._oScroll.refresh()
}this._updateMenu(this._nCurPos);
return
}if(b===null){this._updateMenu(this._nCurPos);
return
}if(b&&naver.main.resources("menu").getSet()){var c=parseInt(b,10)*-1;
this._htWElement.ul.css("margin-left","0px");
this._aMenuListOffset=this._getMenuListOffset();
this._oScroll.refresh();
var a=this._getAdjustedOffset(this._nCurPos);
if(a===c){this._oScroll.scrollTo(c,0,0)
}else{if(c===0){this._oScroll.scrollTo(this._nMenuViewWidth,0,0);
this._setCookie(this._nMenuWidth-this._nMenuViewWidth)
}else{this._oScroll.scrollTo(c,0,0);
this._setCookie(c)
}}}else{if(b){this._removeCookie()
}}},_updateMenu:function(a){if(a>1&&(this._aMenuListOffset[a]-50<this._nMenuWidth-this._nMenuViewWidth)&&this._sNaviId!=="REST"){this._oScroll.scrollTo(this._getAdjustedOffset(a),0,this._DURATION);
this._setCookie(this._getAdjustedOffset(a))
}else{if(a===0||a===1||this._sNaviId==="REST"){this._oScroll.scrollTo(0,0,this._DURATION);
this._removeCookie()
}else{this._oScroll.scrollTo(this._nMenuWidth-this._nMenuViewWidth,0,this._DURATION);
this._setCookie(this._nMenuWidth-this._nMenuViewWidth)
}}},_getMenuListOffset:function(){var a=this._htWElement.lists.$value();
return(function(b){a.forEach(function(c){b.push(c.offset().left)
});
return b
})([])
},_setCookie:function(a){naver.main.resources("menu").setNaviMargin(a*-1)
},_removeCookie:function(){naver.main.resources("menu").removeNaviMargin()
},_getAdjustedOffset:function(a){return Math.round(this._aMenuListOffset[a]-this._SHIFT)
},refreshMenuScroll:function(){this._oScroll.refresh();
this._nMenuWidth=this._htWElement.ul.width();
this._aMenuListOffset=this._getMenuListOffset();
this._nMenuViewWidth=this._oScroll.width();
this._updateMenu(this._nCurPos)
},_sendNaviClickLog:function(c,b){var a=b+".";
if(naver.main.gVariable.sViewType=="mobile"){a+=this._oGridInfo.getGridInfo(c,"mobileClickCode")
}else{a+=this._oGridInfo.getGridInfo(c,"tabletClickCode")
}nclk(this,a,"","")
},_attach:function(){var a=this;
var c=function(e,g){var d=$Element(e.element);
var l=d.data("id");
if(!l){return
}e.stop();
var j=d.data("id");
var f=0;
var h=a._getSubMenu(d);
if(a._sNaviId==j){f=(a._nSubIndex+1)%h.length
}a.selectMenu(h[f]);
a._sendNaviClickLog(j,g)
};
this._htWElement.nav.delegate("click",".nav_a",function(d){c(d,"ctg")
});
if($("_MM_NAV_ALL")){$Element("_MM_NAV_ALL").delegate("click","._MM_NAV_ALL_ITEM",function(d){c(d,"cts")
})
}$Element("ct").delegate("click",".tab_a",function(f){f.stop();
var d=$Element(f.element);
var e=d.data("id");
a.selectMenu(e)
});
if(this._htWElement.open_btn){this._htWElement.open_btn.attach("click",function(){$Element("_MM_NAV_ALL").show();
if(!a._bisDrown){a._drawPromotionBanner();
a._bisDrown=true
}})
}if($("_MM_NAV_COACH_INNER")){$Element("_MM_NAV_COACH_INNER").attach("click",function(){$Element("_MM_NAV_ALL").show();
a._hideCoachMark();
if(!a._bisDrown){a._drawPromotionBanner();
a._bisDrown=true
}})
}if($("_MM_NAV_CLOSE")){$Element("_MM_NAV_CLOSE").attach("click",function(){$Element("_MM_NAV_ALL").hide()
})
}var b=this._htWElement.add_btn;
b&&b.attach("click",$Fn(function(){this._oNaviResource.setPromotionTimestamp(this._sPromotionPanelTimestamp)
},this).bind());
$Element(document.body).delegate("click","._MM_MENU_ADD_OFF",$Fn(function(){this._oNaviResource.setPromotionTimestamp(this._sPromotionPanelTimestamp)
},this).bind())
},_getSelectNaviId:function(){return this._htWElement.nav.query(".nav_lon > a").data("id")||"NEWS"
},_getSubMenu:function(b){var c=$Element(b);
var a=c.data("sub");
if(!a){a=$Element(b).attr("href").replace("#","")
}return a.split(",")
},_getSubIndex:function(c){var f=this._htWElement.anchors;
for(var d=0,b=f.length();
d<b;
d++){var e=this._getSubMenu(f.get(d));
var a=$A(e).indexOf(c);
if(a>=0){return a
}}return 0
},_getMenuIndex:function(b){var a=0;
if(b){a=$A(this._aMenuIds).indexOf(b)
}return a
},_getMenuId:function(a){return this._aMenuIds[a]
},_getNaviIndex:function(c){var b=this._htWElement.anchors;
for(var d=0,a=b.length();
d<a;
d++){var e=this._getSubMenu(b.get(d));
if($A(e).indexOf(c)>=0){return d
}}return 0
},_getNaviElement:function(a,c){a=a%this._aMenuIds.length;
var b=this._aMenuIds[a];
var d=this._getNaviIndex(b);
return this._htWElement[c].get(d)
},_getNaviId:function(a){a=a%this._aMenuIds.length;
var b=this._aMenuIds[a];
var c=this._getNaviIndex(b);
return this._htWElement.anchors.get(c).data("id")
},flick:function(a){this.select(a,true);
this._updateMenu(this._nCurPos)
},select:function(c,b){var a=(c+this._nOffset)%this._aMenuIds.length;
if(this._nCurPos==a){return
}this._htWElement.lists.removeClass("nav_lon");
this._htWElement.all_lists.removeClass("nav_lon");
this._nCurPos=a;
this._sCurMenu=this._getMenuId(a);
this._sNaviId=this._getNaviId(a);
this._nSubIndex=this._getSubIndex(this._sCurMenu);
if(b!==true){this._fireSelectEvent(c)
}this._getNaviElement(a,"lists").addClass("nav_lon");
this._getNaviElement(a,"all_lists").addClass("nav_lon");
if($("_MM_NAV_COACH")&&$Element("_MM_NAV_COACH").visible()){this._hideCoachMark()
}},_fireSelectEvent:function(b){var a=this;
if(naver.main.SectionManager.f().isActivating()){a.fireEvent("select",{nIndex:b})
}else{setTimeout(function(){a._fireSelectEvent(b)
},200)
}},selectMenu:function(b){var a=this._getMenuIndex(b);
var c=(a+this._aMenuIds.length-this._nOffset)%this._aMenuIds.length;
this.select(c);
naver.main.HorizontalScroll.refreshHorizontalScrollEvent();
naver.main.FontSize.update();
naver.main.RTK.rolling()
}}).extend(jindo.m.UIComponent);
$.createNamespace("naver.main").MenuOrder=(function(){var f;
var p;
var z;
var A;
var c;
var u;
var b;
var v;
var e;
function h(){x();
r()
}function x(){f=$Element("_MM_MODIFY_MENU_ORDER");
p=$Element("_MM_NAV_ALL");
z=$Element("_MM_NAV_ALL_DRAG");
A=$Element("_MM_NAV_BODY_DRAG");
c=$Element("_MM_NAV_CLOSE_DRAG");
_welMenuOrderNav=$Element("_MM_MENU_ORDER_NAV");
u=false
}function r(){if(f){f.attach("click",n)
}if(c){c.attach("click",m)
}if(A!=null){$Element(window).attach("resize",$Fn(j,this).bind());
jindo.m.bindRotate($Fn(j,this).bind())
}if(_welMenuOrderNav){_welMenuOrderNav.attach("click",q)
}}function n(D){D.stop($Event.CANCEL_DEFAULT);
p.hide();
z.show();
y()
}function j(){var D=jindo.m.getOsInfo();
if(D.ios){return
}}function d(){}function q(D){switch($Element(D.element).data("action")){case"save":w();
location.href="/";
break
}}function s(){if(!A){return
}var F=B();
var E=3;
if(naver.main.gVariable.sViewType==="tablet"){E=8
}else{if($Element(document.body).width()>360){E=4
}}var G=parseInt(F/E)+((F%E)>0?1:0);
var D=G*45;
A.css("height",D+"px")
}function y(){e=A.queryAll("li");
if(u){b.activate();
v.activate();
return
}var D=$Element('<span class="nav_npnum"></span>');
var E;
b=new jindo.m.DragArea(A,{});
v=new jindo.m.DropArea(A,{oDragInstance:b,bActivateOnload:true,bUseTouchPoint:true}).attach({handleDown:function(G){var F=jindo.$Element(G.elDrag);
E=$$("li.nav_l",A);
F.addClass("nav_ldrag");
F.afterHTML('<li class="nav_l nav_indication">'+F.html()+"</li>")
},over:function(G){var H=$Element(G.elDrop);
var F=E.indexOf(G.elDrop);
$ElementList(A.queryAll("li.nav_lplace")).removeClass("nav_lplace");
if(!H.hasClass("nav_indication")&&!H.isEqual(G.elDrag)){H.addClass("nav_lplace");
H.query(".nav_a").prepend(D.html(F+1))
}},handleUp:function(F){var H=jindo.$Element(F.elDrag);
var G=A.query("li.nav_lplace");
if(G){G.removeClass("nav_lplace");
if(E.indexOf(G.$value())<E.indexOf(H.$value())){G.before(H)
}else{G.after(H)
}}H.removeClass("nav_ldrag");
A.query("li.nav_indication").leave();
if(e.map(function(I){return I.query("[data-id]").data("id")
}).join(";")!=A.queryAll("[data-id]").map(function(I){return I.data("id")
}).join(";")){_welMenuOrderNav.query("[data-action=save]").addClass("nav_btn_on")
}else{_welMenuOrderNav.query("[data-action=save]").removeClass("nav_btn_on")
}this._reCalculate();
t(H)
}});
u=true
}function g(D){D.stop($Event.CANCEL_DEFAULT);
if(u){b.deactivate();
b.deactivate()
}p.hide();
z.hide();
e.reverse().forEach(function(E){A.prepend(E)
});
_welMenuOrderNav.query("[data-action=save]").removeClass("nav_btn_on")
}function w(){var H=$ElementList("._MM_NAV_ALL_ITEM_DRAG");
var G=[];
for(var D=0;
D<H.length();
D++){var F=H.get(D);
var E=F.data("id");
if(E!=null&&E!="REST"){G.push(E)
}}a(G);
$Cookie().remove("MM_S");
$Cookie().remove("MM_margin");
$Cookie().set("MM_panel",G.join(";"),365*10)
}function B(){var H=$ElementList("._MM_NAV_ALL_ITEM_DRAG");
var E=0;
for(var D=0;
D<H.length();
D++){var G=H.get(D);
var F=G.data("id");
if(F!=null&&F!="REST"){E++
}}return E
}function m(D){g(D)
}function o(D){if(l()){D.stopDefault()
}}function l(){return u&&A.css("display")
}function C(D){$Element("_MM_NAV_OPEN").fireEvent("click");
f.fireEvent("click")
}function a(G){var E=$A(G);
var D=naver.main.Panel.getPanelAll().split(";");
var F={};
F.menuOnList=G.join(";");
F.menuOffList=$A(D).filter(function(H){return !E.has(H)
}).$value().join(";");
F.ni=$Cookie().get("NNB");
CH.click("WEB.setting",F)
}function t(F){var E=$Element($$.getSingle("span._MM_NAV_ALL_ITEM_DRAG",F)).data("id");
var D="cts."+naver.main.GridInfo.getGridInfo(E,"mobileClickCode")+"cng";
if(E=="MYFEED"){D="cts."+naver.main.GridInfo.getGridInfo("MYFEED_NOTLOGIN","mobileClickCode")+"cng"
}nclk({},D,"","")
}return{init:h,showMenuOrderArea:C}
})();
naver.main.MenuOrder.init();
naver.main.Banner={init:function(a){this.layer=$("floatingBanner");
if(!this.layer){return
}this.floatingLayer();
this.closeBtn=$Element($$.getSingle("a.fa_ac",this.layer)).attach("click",$Fn(this.close,this).bind());
$Element($$.getSingle("a.fa_a",this.layer)).attach("click",this.setBlockCookie)
},floatingLayer:function(){if(!jindo.m.useFixed()){this.oExtBtnLayer=new jindo.m.FloatingLayer(this.layer,{sPosition:"bottom",nSlideDuration:0,bUseHideUI:false,bUseFixed:true});
this.oExtBtnLayer.show();
this.oExtBtnLayer._oLayerPosition.setPosition("bottom",{nBottom:70})
}},close:function(a){a.stop();
$Element(this.layer).hide();
nclk(this.closeBtn.$value(),"new.bannercls","","");
this.setBlockCookie();
return false
},setBlockCookie:function(){$Cookie().set("MM_FB1","block",7)
}};
$.createNamespace("naver.main").Panel=(function(){var f=1,u="MM_panel",x="MM_panelAll",a="MM_panel_origin",g=$Element("_MM_MENU_DOWNWARD_MSG"),d=null,e=3650,s=[{LIFE:"LIVING"}],t=["PICK"],y=";",q=/^([A-Z_0-9]+(;|$)){1,}$/,m=true,n=function(){if(/^\/+(|index.html)\s*$/.test(location.pathname)){if($("_MM_MENU_COACH")){$Element("_MM_MENU_COACH").attach("click",function(z){$Element("_MM_MENU_COACH").hide();
$Cookie().set("MM_MENU_COACH","1",365*10)
})
}if(naver.main.inapp&&naver.main.inapp.isInApp&&naver.main.inapp.isBSCPrevThan({androidV:460,iPhoneV:420,iPadV:124})){m=false
}j()
}if(g!=null){g.delegate("click","a",function(z){z.stop();
var B=$Element($Element(z.delegatedElement).data("target"));
var A=new jindo.m.Morph({bUseTransition:true});
A.pushAnimate(500,[document.body,{scrollTop:B.offset().top}]).play();
r()
});
d=new jindo.m.ScrollEnd();
setTimeout(r,10000);
setTimeout(function(){d.attach("scrollEnd",r)
},500)
}return{subscribe:w,unsubscribe:v,getPanelOn:o,getPanelAll:l,setPanelOriginCookie:h,processClose:p,showAddBanner:c}
},r=function(){if(g!=null){g.disappear()
}},w=function(C,D){s.forEach(function(G,E){for(var F in G){if(C==F){C=G[F]
}}});
if(naver.main.gVariable.sPanelAll.split(y).indexOf(C)<0&&!!!naver.main.GridInfo.getGridInfo(C)){JEagleEyeClient.sendError("[MENU SETTING] invalid sPanel value : "+C);
return false
}var z=l().split(y);
var B=o().split(y);
if(z.indexOf(C)<0){z.push(C);
$Cookie().set(x,z.join(y),e)
}if(!!!D&&B.indexOf(C)<0){D=B.length+1
}if(!!!$Cookie().get(u)&&C=="LIVINGHOME"){if(B.indexOf("LIVING")>=0){D=B.indexOf("LIVING")+2
}}if(D){z=b(z,B,C,D)
}var A=[];
z.forEach(function(E){if(B.indexOf(E)>=0||E==C){A.push(E)
}});
$Cookie().set(u,A.join(y),e);
return true
},v=function(B){var A=o();
var z=A.split(y).filter(function(C){return C!=B
});
$Cookie().set(u,z.join(y),e)
},b=function(z,C,D,G){if(G>C.length){G=C.length+1
}else{if(G<1){G=1
}}var E=C.concat(z);
z=$A(E).unique().$value();
var F=z;
z=z.filter(function(H){return H!=D
});
C=C.filter(function(H){return H!=D
});
var E=C.concat(z);
$A(E).unique();
var B=0;
if(G>1){sForePanel=C[G-2];
B=z.indexOf(sForePanel)+1
}var A=[];
if(B==z.length){A=F;
if(A.indexOf(D)<0){A.push(D)
}}else{z.forEach(function(I,H){if(H==B){A.push(D)
}A.push(I)
})
}$Cookie().set(x,A.join(y),e);
return A
},o=function(){var z=$Cookie().get(u)||naver.main.gVariable.sPanelOn;
if(!q.test(z)){JEagleEyeClient.sendError("[naver.main.menu.js] invalid panel on value : "+z);
z=naver.main.gVariable.sPanelOn
}return z
},l=function(){var z=$Cookie().get(x)||naver.main.gVariable.sPanelAll;
if(!q.test(z)){JEagleEyeClient.sendError("[naver.main.menu.js] invalid panel all value : "+z);
z=naver.main.gVariable.sPanelAll
}return z
},j=function(){var z=$Cookie().get(u);
var A=$Cookie().get(x);
if(z==null&&A==null){return
}s.forEach(function(D,B){for(var C in D){var E=D[C];
if(z&&z.search(C)>-1){z=z.replace(C,E)
}if(A&&A.search(C)>-1){A=A.replace(C,E)
}}});
if(z){$Cookie().set(u,z,e)
}if(A){$Cookie().set(x,A,e)
}},p=function(){var A=$Cookie().get(u);
var C=$Cookie().get(x);
if(A==null||C==null){return
}var z=$A(A.split(y));
var D=$A(C.split(y));
if(z.length()<=f){return
}var B=function(F,E,G){if(t.indexOf(F)==-1){return true
}return false
};
z=z.filter(B);
D=D.filter(B);
if(A){$Cookie().set(u,z.$value().join(y),e)
}if(C){$Cookie().set(x,D.$value().join(y),e)
}if($Cookie().get("MM_S")&&t.indexOf($Cookie().get("MM_S"))>-1){$Cookie().remove("MM_S");
$Cookie().remove("MM_margin")
}},h=function(){var A=$Cookie().get(u),z=naver.main.gVariable.sPanelOn;
if(A!==null){z=A
}$Cookie().set(a,z,e)
},c=function(z,C){if(!m){return
}z=z||naver.main.SectionManager.getSectionName();
C=C||naver.main.SectionManager.f().getElement();
if(z!="NEWS"&&z!="ENT"&&!naver.main.gVariable.isOnePanel){return
}if(z=="TODAY"){return
}if(!naver.main.GridInfo.getGridInfo(z,"htSectionPagingInfo").last||C.query(".MM_panel_add_banner")){return
}var A=C.query(".brick-vowel");
var B=A.child().length;
C.queryAll(".brick-vowel").forEach(function(E){var D=E.child().length;
if(D!=0&&D<B){A=E;
B=D
}});
A.append('<div class="grid1 id_uio_banner_subject MM_panel_add_banner"> <div class="grid1_inner"> <div class="uio_banner_subject"> <a href="/naverapp/?cmd=showMenuEdit" data-clk="editbanner" class="ubs_link_area" role="button"> <div class="ubs_text_wrap" tabindex="0"><em class="ubs_tit">판 추가</em><p class="ubs_text">네이버 홈에서 더 많은 판 보기</p></div> <div class="ubs_btn"><span class="ubs_btn_text">추가</span></div> </a> </div> </div> </div>')
};
return{init:n}
})().init();
$.createNamespace("naver.main").toggleLayer=(function(){function d(){b()
}function b(){$Element("ct").delegate("click","[data-toggle-btn]",$Fn(c,this).bind());
$Element("ct").delegate("click","[data-toggle-index]",$Fn(a,this).bind())
}function c(f){var e=$Element(f.element);
var g=e.query("! [data-toggle-base]");
if(g==null||g.attr("data-toggle-base")!==e.attr("data-toggle-btn")){return
}g.toggleClass(g.attr("data-toggle-class"))
}function a(g){var f=$Element(g.element);
var j=f.attr("data-toggle-index");
var h=f.query("! ._MM_TOGGLE_WRAP");
var e=h.query("[data-toggle-layer="+j+"]");
e.toggle()
}return{init:d}
})();
$.createNamespace("naver.main").Airs=(function(){var g=new Persist();
var p;
var K="";
var O=false;
var a=false;
var R=false;
var C=false;
var y="https://s.pstatic.net/dthumb.phinf/?src=";
var c={post:"포스트",blog:"블로그",video:"네이버TV"};
var e="MM_AIRS_DENY_";
var H={NEWS:{api:"/api_airs_news?st=rec&display=8&",globalApi:"/sub/content/airs/airsNewsGlobal.shtml?",globalRandomPaging:[1,9,17,25],uiInitItemCount:8,uiType:"MULTI",ccnClass:"ccn_news",uiTypes:["TWO_THUMBS","TWO_THUMBS","TEXT","TEXT","TEXT","TEXT","TEXT","TEXT"],uiMoreItemCount:0,uiRefreshButton:true,uiAirsName:"뉴스",inoutLogParam:".new.airs",sAirsDisplayCount:8},ENT:{api:"/api_airs_ent?st=rec&display=7&",uiInitItemCount:7,uiType:"MULTI",ccnClass:"ccn_ent",uiTypes:["TWO_THUMBS","TWO_THUMBS","TEXT","TEXT","TEXT","TEXT","TEXT"],uiMoreItemCount:0,uiRefreshButton:true,uiAirsName:"뉴스",inoutLogParam:".ent.airs",sAirsDisplayCount:7},SPORTS:{api:"/api_airs_sports?st=rec&display=5&",uiInitItemCount:5,uiType:"TEXT",uiMoreItemCount:0,uiRefreshButton:true,uiAirsName:"뉴스",inoutLogParam:".spt.airs",sAirsDisplayCount:5},FINANCE:{api:"/api_airs_finance?st=rec&display=5&",uiInitItemCount:5,uiType:"TEXT",uiMoreItemCount:0,uiRefreshButton:true,uiAirsName:"뉴스",inoutLogParam:".fin.airs",sAirsDisplayCount:5},BEAUTY:{api:"/api_airs_beauty?st=rec&display=5&",titleUrl:"http://blog.naver.com/naver_beauty/221121499028",uiInitItemCount:5,uiType:"MULTI",uiTypes:["IMAGE","IMAGE","IMAGE","IMAGE","IMAGE"],ccnClass:"ccn_beauty",uiMoreItemCount:0,uiRefreshButton:true,uiAirsName:"뷰티",inoutLogParam:".bty.airs",sAirsDisplayCount:5,imageType:"nf204_140_f2"},VIDEO:{inoutLogParam:".mov.airs",},GAMEAPP:{inoutLogParam:".gam.airs"}};
function N(){if(!naver.main.gVariable.isLogin){H.NEWS.api=H.NEWS.globalApi
}n();
q()
}function n(){_welCT=$Element("ct");
if(_welCT){_welCT.delegate("click","._MM_AIRS_REFRESH",$Fn(A).bind());
_welCT.delegate("click","._MM_AIRS_MORE_BTN",$Fn(b).bind());
_welCT.delegate("click","._MM_AIRS_COMMENT_LINK",$Fn(j).bind());
_welCT.delegate("click","._MM_AIRS_COMMENT_CLOSE_BTN",$Fn(I).bind());
_welCT.delegate("click","._MM_AIRS_DATA_ITEM",$Fn(o).bind());
_welCT.delegate("click","._MM_AIRS_CLOSE",$Fn(E).bind());
_welCT.delegate("click","._MM_FEED_ORIGIN",$Fn(Q).bind());
_welCT.delegate("click","._MM_FEED_NEW",$Fn(G).bind())
}}function q(){t();
d();
C=(u()&&f());
if(C){var W=g.persist("oAirsData");
if(W!=null&&W.html!=""&&W.panel==K){B(W.html);
setTimeout(function(){a=true
},50);
return
}}else{if(!f()){var V="추천 뉴스";
if(K==="BEAUTY"){V="추천 뷰티"
}if(p){p.html(['<div class="cui_cupid_news">','<div class="ccn_title_wrap replay_banner">','<a href="/t?n=airs&menu='+K+'" class="ccn_title_link" data-area="'+K+'" data-clk="airsreview">','<h3 class="ccn_title">','<span class="ccn_main ccn_main_logo">'+V+"</span>내게 맞는 추천 기사 보기","</h3>","</a>","</div>","</div>"].join(""));
p.show()
}}}S()
}function t(){R=false;
K=naver.main.SectionManager.getSectionName()
}function d(){var W;
if(_welCT){var V=(K!="")?K.toLowerCase():"news";
W=_welCT.child(function(X){return X.hasClass("id_"+V)
})[0]
}if(W){p=W.child(function(X){return X.hasClass("_MM_AIRS_CONTAINER")
})[0]
}}function f(){var V=$Cookie().get(e+K);
if(V==null&&K=="NEWS"){V=$Cookie().get("MM_AIRS_DENY")
}if(V!=null&&V=="1"){return false
}return true
}function u(){if(K!="NEWS"){if(!naver.main.gVariable.isLogin){return false
}}if(typeof p=="undefined"){return false
}if(p.visible()){return false
}var W=false;
var X=$Cookie().get("_MM_AIRS_"+K);
if(W==false&&X!=null){$Cookie().remove("_MM_AIRS_"+K)
}if(W){var Y="_MM_AIRS_"+K;
var V=$Cookie().get(Y);
if(V==null||(V!="1"&&V!="2")){return false
}}return true
}function U(){if(p){L()
}}function L(){if(u()&&f()){var V=g.persist("oAirsData");
if(V!=null&&V.html!=""&&V.panel==K){B(V.html);
setTimeout(function(){a=true
},50);
return
}var W=1;
if(!naver.main.gVariable.isLogin&&K=="NEWS"){W=H.NEWS.globalRandomPaging[Math.floor(Math.random()*10%4)]
}h(K,W,false,function(X){B(X)
})
}}function B(V){p.html(V);
p.show();
T(K)
}function T(V){if(!naver.main.gVariable.isLogin){return
}if(V=="ENT"||V=="SPORTS"||V=="BEAUTY"){b()
}}function o(V){var X={};
X.panel=K;
if(X.panel!=="TODAY"){if(p){X.html=p.html();
X.height=document.body.scrollTop
}}else{var W=$Element(V.element).parent(function(Y){return Y.data("airs")
},5)[0];
X.html=W.outerHTML();
X.todayCardPanel=W.data("airs").toUpperCase()
}g.persist("oAirsData",X)
}function A(aa){aa.stop();
var af=$Element(aa.element);
var ae=af.parent().parent();
var ac=ae.child(function(ag){return ag.hasClass("_MM_AIRS_DATA")
})[0];
if(!ac){return
}var V=ae.parent().data("airs")||K;
if(V=="VIDEO"||V=="GAMEAPP"){var X=Number(ac.data("page"));
var W=Number(ac.data("timestamp"));
var Z=ac.data("template");
if(X>=10){X=1
}else{X+=1
}D(V,X,W,Z,function(ag){if(ag==""){}else{ac.leave();
ae.child(function(ah){return ah.hasClass("_MM_AIRS")
})[0].html(ag)
}})
}else{var Y=Number(ac.data("start"));
var ab=Number(ac.data("total"));
var ad=H[V].sAirsDisplayCount;
if((Y+ad)<ab&&Y>0){Y+=ad
}else{Y=1
}h(V,Y,true,function(ag){ac.leave();
ae.html(ag+af.parent())
})
}}function F(V,W,X,Y){if(V!="NEWS"){return
}if(H.NEWS.api==H.NEWS.globalApi){return
}if(W>1){return
}JEagleEyeClient.sendError("[naver.main.airs] retry airs request");
H.NEWS.api=H.NEWS.globalApi;
h(V,W,X,Y)
}function h(W,Y,aa,ac){if(K==="TODAY"){var X=g.persist("oAirsData");
if(X&&X.todayCardPanel===W){g.persist("oAirsData",{});
ac(X.html);
return
}}var V=$Template("start={=START_INDEX}");
var Z=V.process({START_INDEX:Y});
var ab=$Ajax(H[W].api+Z,{method:"get",timeout:5,onload:function(af){var ae=af.json();
if(l(ae,W)){var ag="";
if(aa){ag=P(W,ae)
}else{ag=J(W,ae)
}if(K==="TODAY"){var ad="";
ag=ag.replace(/data-area=['"][A-z0-9-_]+['"]/g,"");
switch(W){case"NEWS":ag=ag.replace(/(data-clk=['"])(airsmore['"])/,"$1news$2");
ad="news";
break;
case"ENT":ad="ent";
break;
case"SPORTS":ad="spt";
break
}ag=ag.replace(/(data-clk=['"])(airscont['"])/g,"$1"+ad+"$2").replace(/(data-clk=['"])(airsrefresh['"])/g,"$1"+ad+"$2")
}ac(ag)
}else{F(W,Y,aa,ac)
}},onerror:function(){JEagleEyeClient.sendError("[naver.main.airs] AirsNews API Call Error");
F(W,Y,aa,ac)
},ontimeout:function(){JEagleEyeClient.sendError("[naver.main.airs] AirsNews API Call Timout Error");
F(W,Y,aa,ac)
}}).request();
ab=null
}function D(W,Z,Y,X,ac){if(W==null){JEagleEyeClient.sendError("[naver.main.airs] Airs 데이터 조회시, 조회할 주제판 정보 없음. 템플릿: "+X)
}var V=naver.main.GridInfo.getGridInfo(W,"sCssPrefix");
var aa="?menu="+K+"&page="+Z+"&ts="+Y+"&template="+X;
var ab=$Ajax("/nvhaproxy/feed/"+V+".nhn"+aa,{method:"get",timeout:5,onload:function(ae){var ad=ae.text();
ac(ad)
},onerror:function(){JEagleEyeClient.sendError("[naver.main.airs] AirsNews API Call Error. 주제판: "+V+", 템플릿: "+X)
},ontimeout:function(){JEagleEyeClient.sendError("[naver.main.airs] AirsNews API Call Timout Error. 주제판: "+V+", 템플릿: "+X)
}}).request()
}function l(V,W){try{if(V==null||V.status.code!="200"){return false
}if(!V.result.recommend||V.result.recommend.length<H[W].uiInitItemCount){return false
}return true
}catch(X){return false
}}function J(ai,V){var X="";
var am="";
var ac=V.result.recommend;
var aj=V.result.recommend.length;
var ah;
var ab=H[ai].uiType;
var W=H[ai].uiTypes;
var ag="false";
var af="";
if(ab=="IMAGE"){ah=$Template("MM_TPL_AIRS_IMAGE_ITEM")
}else{if(ab=="TEXT"){ah=$Template("MM_TPL_AIRS_ITEM")
}}for(var ae=0;
ae<aj;
ae++){if(ae>=H[ai].uiInitItemCount){ag="true";
af=' style="display:none;"'
}else{ag="false";
af=""
}if(ab=="MULTI"){var aa="MM_TPL_AIRS_MULTI_"+W[ae]+"_ITEM";
var al=$Element(aa);
if(!al){aa="MM_TPL_AIRS_MULTI_IMAGE_ITEM"
}ah=$Template(aa)
}var ak={PANEL:ai,MOBILE_URL:ac[ae].url,GDID:ac[ae].gdid,TITLE:ac[ae].title,DATA_MORE:ag,ITEM_RANK:V.result.start+ae,DISPLAY_MODE:af,AUTHOR_IMAGE:x(ac[ae].author_image||"",null,"f58_58"),AUTHOR:$S(ac[ae].author_nickname).escapeHTML().$value(),SOURCE:c[ac[ae].coll]||""};
if(ab==="IMAGE"){ak.IMAGE_URL=x(ac[ae].image)
}else{if(ab==="MULTI"){ak.IMAGE_URL=x(ac[ae].image,W[ae],H[ai].imageType)
}}X+=ah.process(ak);
if(ab=="MULTI"&&(ae==aj-1||ae==W.length-1||W[ae]!=W[ae+1])){am+=m(V,X,W[ae]);
X=""
}}if(ab!=="MULTI"){am=r(ai,V,X)
}var Z="";
var Y="";
if(H[ai].uiMoreItemCount==0){Y=$Template("MM_TPL_AIRS_REFRESH_BUTTON");
Z=Y.process({PANEL:ai,UI_NAME:H[ai].uiAirsName})
}else{if(aj>H[ai].uiInitItemCount){Y=$Template("MM_TPL_AIRS_MORE_BUTTON");
Z=Y.process({PANEL:ai,MORE_ITEM_COUNT:H[ai].uiMoreItemCount,SHOW_REFRESH_BUTTON:H[ai].uiRefreshButton,UI_NAME:H[ai].uiAirsName})
}}var ad=$Template("MM_TPL_AIRS");
return ad.process({PANEL:ai,ITEM_GROUP_HTML:am,MORE_BUTTON_HTML:Z,UI_TYPE:H[ai].uiType,UI_NAME:H[ai].uiAirsName,CCN_CLASS:H[ai].ccnClass,TITLE_URL:H[ai].titleUrl||"http://naver_diary.blog.me/220936643956"})
}function r(W,V,X){var Y=$Template(H[W].uiType!=="IMAGE"?"MM_TPL_AIRS_ITEM_GROUP":"MM_TPL_AIRS_IMAGE_ITEM_GROUP");
return Y.process({PANEL:W,START_INDEX:V.result.start,TOTAL_COUNT:V.result.total_count,MODEL_VERSION:V.result.model_version,SESSION_ID:V.result.session_id,ITEM_HTML:X})
}function m(W,Z,Y){var X="MM_TPL_AIRS_MULTI_"+Y+"_ITEM_GROUP";
var V=$Element(X);
if(!V){X="MM_TPL_AIRS_MULTI_IMAGE_ITEM_GROUP"
}var aa=$Template(X);
return aa.process({START_INDEX:W.result.start,TOTAL_COUNT:W.result.total_count,MODEL_VERSION:W.result.model_version,SESSION_ID:W.result.session_id,ITEM_HTML:Z})
}function P(W,Y){var Z="";
var aa="";
var ac=Y.result.recommend;
var V=Y.result.recommend.length;
var ae;
var af=H[W].uiType;
var ag=H[W].uiTypes;
if(af=="IMAGE"){ae=$Template("MM_TPL_AIRS_IMAGE_ITEM")
}else{if(af=="TEXT"){ae=$Template("MM_TPL_AIRS_ITEM")
}}for(var ab=0;
ab<V;
ab++){if(af=="MULTI"){var ad="MM_TPL_AIRS_MULTI_"+ag[ab]+"_ITEM";
var ah=$Element(ad);
if(!ah){ad="MM_TPL_AIRS_MULTI_IMAGE_ITEM"
}ae=$Template(ad)
}var X={PANEL:W,MOBILE_URL:ac[ab].url,GDID:ac[ab].gdid,TITLE:ac[ab].title,DATA_MORE:"true",ITEM_RANK:Y.result.start+ab,DISPLAY_MODE:"",AUTHOR_IMAGE:x(ac[ab].author_image||"",null,"f58_58"),AUTHOR:$S(ac[ab].author_nickname).escapeHTML().$value(),SOURCE:c[ac[ab].coll]||""};
if(af==="IMAGE"){X.IMAGE_URL=x(ac[ab].image)
}else{if(af==="MULTI"){X.IMAGE_URL=x(ac[ab].image,ag[ab],H[W].imageType)
}}aa+=ae.process(X);
if(af=="MULTI"&&(ab==V-1||ab==ag.length-1||ag[ab]!=ag[ab+1])){Z+=m(Y,aa,ag[ab]);
aa=""
}}if(af!=="MULTI"){Z=r(W,Y,aa)
}return Z
}function x(W,V,X){if(W==""||W.indexOf("https")>-1){return W
}X=X||(V==="TWO_THUMBS"?"nf335_206":"nf204_140_f2");
return y+"%22"+encodeURIComponent(W)+"%22&type="+X
}function z(V,X){var W=p;
if(X){W=X.parent(function(Y){return Y.hasClass("grid1")||Y.hasClass("grid2")
})[0]
}return $Element($$.getSingle(V,W))
}function b(){var V=$Element($$.getSingle("._MM_AIRS_COMMENT_AREA",p));
if(V){V.show()
}}function j(V){var X=z("._MM_AIRS_COMMENT",$Element(V.element));
if(X){X.show()
}var W=z("._MM_AIRS_COMMENT_AREA",$Element(V.element));
if(W){W.hide();
setTimeout(function(){naver.main.SectionManager.setHeight()
},100)
}}function I(V){var W=$Element(V.element);
var Y=$Element($$.getSingle("! ._MM_AIRS_COMMENT",W));
if(Y){Y.hide()
}var X=z("._MM_AIRS_COMMENT_AREA",$Element(V.element));
if(X){X.show();
setTimeout(function(){naver.main.SectionManager.setHeight()
},100)
}}function s(Z){var V=z("._MM_AIRS_COMMENT_CONTENT",$Element(Z));
if(!V){return
}var Y=V.text();
if(!Y||Y==""){naver.main.CommonLayer.showLayer(12,"입력하신 내용이 없습니다.<br/>다시 시도해 주세요.");
return
}var X={comment:encodeURIComponent(Y),panel:K};
if(V.data("ui")){X.panel=K+"_"+V.data("ui")
}var W="메세지 전송중 오류가 발생했습니다.<br/>다시 시도해 주세요.";
var aa=$Ajax("/nvhaproxy/airs/proposal",{method:"get",timeout:3,onload:function(ae){var ab=ae.json();
var ad=ab.result;
if("success"==ad){var af=$Element($$.getSingle("! ._MM_AIRS_COMMENT",V));
af.hide();
var ac=z("._MM_AIRS_COMMENT_SEND_FINISH_LAYER",$Element(Z));
ac.show();
setTimeout(function(){naver.main.SectionManager.setHeight()
},100)
}else{naver.main.CommonLayer.showLayer(12,W)
}},ontimeout:function(){naver.main.CommonLayer.showLayer(12,W);
JEagleEyeClient.sendError("[naver.main.airs] AirsNews send comment timeout Error")
},onerror:function(){naver.main.CommonLayer.showLayer(12,W);
JEagleEyeClient.sendError("[naver.main.airs] AirsNews send comment Error")
}}).request(X);
aa=null
}function E(V){if(!p||typeof p=="undefined"){return
}naver.main.customAlert("T9",{text:"AiRS 추천 "+(K==="BEAUTY"?"뷰티":"뉴스")+" 영역을<br/>보지 않으시겠습니까?",okCallback:function(){$Cookie().set(e+K,"1",365);
var W=naver.main.GridInfo.getGridInfo(K,"mobileClickCode");
nclk(this,W+".airsclosecheck","","");
setTimeout(function(){location.href="/naverapp/?cmd=addMenu&menuCode="+K+"&version=1"
},100)
},cancelCallback:function(){var W=naver.main.GridInfo.getGridInfo(K,"mobileClickCode");
nclk(this,W+".airsclosecancel","","")
}})
}function S(){if(C!=true){return
}var V=window.pageYOffset;
setTimeout(function(){if(R){return
}if(V!=window.pageYOffset){return
}if(K!="NEWS"&&K!="SPORTS"&&K!="ENT"&&K!="FINANCE"&&K!="BEAUTY"){return
}if(p){if(K!="NEWS"){U();
R=true;
return
}var X=Number(p.attr("index"));
var Z=0;
var W=null;
if(X>=5){var Y=X-5;
W=$Element($$.getSingle("div[index="+Y+"]"));
Z=W.$value().getBoundingClientRect().top
}if(window.innerHeight>=Z){U();
R=true;
return
}}},100)
}function v(){var V=window.pageYOffset;
setTimeout(function(){if(V==window.pageYOffset){M()
}},500)
}function M(){if(p&&p.visible()){var Y=p.$value().getBoundingClientRect().top;
var X=p.height();
var V=(window.location.protocol?window.location.protocol:"http:")+"//lcs.naver.com/m?";
if(window.innerHeight>=Y&&(Y+X)>0){if(O){}else{if(a==false){var Z=V+"u="+encodeURIComponent("https://mtop."+((naver.main.gVariable.sBrowserType=="INAPP")?"inapp4":"v4")+H[K].inoutLogParam+"/in");
if(K==="VIDEO"||K==="GAMEAPP"){Z+="&air="+w()
}Z+="&EOU";
var W=(new Image());
W.src=Z;
W.onload=function(){W.onload=null;
return
}
}O=true
}}else{if(O){O=false;
a=false;
if(K==="VIDEO"||K==="GAMEAPP"){return
}var Z=V+"u="+encodeURIComponent("https://mtop."+((naver.main.gVariable.sBrowserType=="INAPP")?"inapp4":"v4")+H[K].inoutLogParam+"/out")+"&EOU";
var W=(new Image());
W.src=Z;
W.onload=function(){W.onload=null;
return
}
}else{}}}else{O=false;
a=false
}}function w(){var aa=$Element($$.getSingle("._MM_AIRS_DATA"));
var Y=aa.data("timestamp");
var V=aa.data("page")||1;
var X=aa.child(function(ab){return ab.hasClass("_MM_TV_DATA_ITEM")
});
var Z=[];
X.forEach(function(ab){Z.push(ab.attr("data-clip-no"))
});
var W='{"ar": {"gl":'+JSON.stringify(Z)+',"refresh" : '+V+'},"md": {"s":"'+Y+'"}}';
return encodeURIComponent(W)
}function Q(V){V.stop();
$Cookie().set("MM_AIRS_FEED_ENT_ORIGIN","1",60);
var W=naver.main.GridInfo.getGridInfo(K,"mobileClickCode");
nclk(this,W+".airsfeedbefore","","");
setTimeout(function(){location.href="/naverapp/?cmd=addMenu&menuCode=ENT&version=1"
},100)
}function G(V){V.stop();
$Cookie().remove("MM_AIRS_FEED_ENT_ORIGIN");
var W=naver.main.GridInfo.getGridInfo(K,"mobileClickCode");
nclk(this,W+".airsfeednew","","");
setTimeout(function(){location.href="/naverapp/?cmd=addMenu&menuCode=ENT&version=1"
},100)
}return{init:N,setInit:q,checkShow:S,sendComment:s,check:v,callAirsNews:h}
})();
naver.main.Airs.init();
(function(){window.__dummy_sports=false;
function b(){if(window.__dummy_sports||!$$.getSingle("#ct .id_sports")||!naver.main.gVariable.isLogin){return
}a(1);
window.__dummy_sports=true
}function a(c){c=c||1;
$Ajax("include/grid/sports/dummy.shtml?rc=5&rts="+svt+"&rcp="+c,{method:"get",timeout:3,onload:function(d){}}).request()
}b();
mainObserver.attachCustomEvent("onLoadPanel","naver.main.sports.airs.video",function(c){b()
})
}());
$.createNamespace("naver.main").NewsSeries=(function(){var p={NEWS:{wel:null,articles:null,currentPage:1,lastPageAction:"goMorePage",dataUrl:"/include/news/newsSeries.json",airsUrl:"/api_airs_news_series?st=rec&display=12",inited:false},SPORTS:{wel:null,articles:null,currentPage:1,lastPageAction:"goFirstPage",dataUrl:"/include/news/sportsNewsSeries.json",inited:false},ENT:{wel:null,articles:null,currentPage:1,lastPageAction:"goMorePage",dataUrl:"/include/news/entNewsSeries.json",inited:false}};
var f=3;
var m=null;
function r(){try{var s=$Element("_MM_AIRS_NEWS_SERIES_ITEM_TEMPLATE");
if(s==null){JEagleEyeClient.sendError("[SeriesTemplate ERROR] Not found series template")
}m=$Template(s.html())
}catch(t){JEagleEyeClient.sendError("[SeriesTemplate ERROR] Init error = "+t)
}}function o(){var s=naver.main.SectionManager.getSectionName();
if(d(s)!=true){return
}p[s].inited=true;
if(naver.main.gVariable.isLogin&&p[s].airsUrl){n(s)
}else{b(s)
}}function d(t){if(!p[t]){return false
}if(p[t].inited){return false
}var s=p[t].wel;
if(!s){s=$Element("ct").query("[data-section="+t+"] ._MM_AIRS_NEWS_SERIES_CONTAINER");
if(s==null){return false
}p[t].wel=s
}if(!p[t].airsUrl){return true
}s.show();
if(s.offset().top>naver.main.scrollPos().scrollY+window.innerHeight*2){s.hide();
return false
}s.hide();
return true
}function b(s){$Ajax(p[s].dataUrl,{method:"get",timeout:3,onload:function(t){try{p[s].articles=e(s,t.json().articles);
a(s)
}catch(u){JEagleEyeClient.sendError("[SeriesTemplate ERROR] Default data error ("+s+") = "+u)
}},ontimeout:function(){JEagleEyeClient.sendError("[SeriesTemplate ERROR] Default data ajax ontimeout ("+s+")")
},onerror:function(){JEagleEyeClient.sendError("[InitData ERROR] Default data ajax onerror ("+s+")")
}}).request()
}function n(s){$Ajax(p[s].airsUrl,{method:"get",timeout:3,onload:function(t){try{j(t.json());
p[s].articles=e("AIRS",t.json().result.recommend);
a(s)
}catch(u){b(s);
JEagleEyeClient.sendError("[SeriesTemplate ERROR] AiRS data error ("+s+") = "+u)
}},ontimeout:function(){b(s);
JEagleEyeClient.sendError("[SeriesTemplate ERROR] AiRS data ajax ontimeout ("+s+")")
},onerror:function(){b(s);
JEagleEyeClient.sendError("[SeriesTemplate ERROR] AiRS data ajax onerror ("+s+")")
}}).request()
}function a(s){try{c(s);
h(s);
p[s].wel.show();
naver.main.SectionManager.setHeight()
}catch(t){p[s].wel.hide();
JEagleEyeClient.sendError("[SeiresTemplate ERROR] last error ("+s+") = "+t)
}}function c(t){var w=(p[t].currentPage-1)*f;
var s=w+f;
var u=$A(p[t].articles).slice(w,s).$value();
var v=m.process({articles:u});
p[t].wel.query("._MM_AIRS_NEWS_SERIES_ITEM_CONTAINER").html(v);
p[t].wel.queryAll("._MM_AIRS_NEWS_SERIES_HOTISSUE_LINK").forEach(function(x){x.attach("click",function(y){q.onClickSeriesTitle(y)
})
})
}function h(t){var s=p[t].wel;
s.query("._MM_AIRS_NEWS_SERIES_REFRESH_BUTTON").attach("click",function(u){q.onClickRefresh(u,s,t)
});
if(t=="NEWS"){s.query("._MM_AIRS_NEWS_SERIES_HELP_OPEN_BUTTON").attach("click",function(u){q.onClickHelpOpen(u,s)
});
s.query("._MM_AIRS_NEWS_SERIES_HELP_CLOSE_BUTTON").attach("click",function(u){q.onClickHelpClose(u,s)
})
}}var q={onClickSeriesTitle:function(s){setTimeout(function(){location.href=$Element(s.srcElement).attr("data-link")
},300);
s.stop()
},onClickHelpOpen:function(t,s){s.query("._MM_AIRS_NEWS_SERIES_HELP_CONTAINER").show();
t.stop()
},onClickHelpClose:function(t,s){s.query("._MM_AIRS_NEWS_SERIES_HELP_CONTAINER").hide()
},onClickRefresh:function(v,s,t){var u=++p[t].currentPage;
var w=Math.ceil(p[t].articles.length/f);
if(u>=w){switch(p[t].lastPageAction){case"goFirstPage":if(u>w){p[t].currentPage=1
}break;
case"goMorePage":s.query("._MM_AIRS_NEWS_SERIES_MORE_WRAP").show();
s.query("._MM_AIRS_NEWS_SERIES_REFRESH_WRAP").hide();
break
}}c(t);
v.currentElement.blur()
}};
function e(s,t){switch(s){case"AIRS":return $A(t).shuffle().map(function(v,u){return{index:u,seriesTitle:v.series_title,seriesUrl:v.series_url,officeName:v.office_name,articleTitle:l(v.title),articleUrl:v.url,articleImageUrl:g(v.image,"nf130_130"),articleType:v.image==""?0:1,seriesTitleClickCode:"new.newsseriestitle",contentClickCode:"new.newsseriescont",imageWidth:"72",imageHeight:"72"}
}).$value();
case"NEWS":return $A(t).shuffle().map(function(v,u){return{index:u,seriesTitle:v.seriesTitle,seriesUrl:v.seriesUrl,officeName:v.officeName,articleTitle:l(v.articleTitle),articleUrl:v.articleUrl,articleImageUrl:g(v.articleImageUrl,"nf130_130"),articleType:v.articleType,seriesTitleClickCode:"new.newsseriestitle",contentClickCode:"new.newsseriescont",imageWidth:"72",imageHeight:"72"}
}).$value();
case"SPORTS":return $A(t).shuffle().map(function(v,u){return{index:u,seriesTitle:v.contentsTitle,seriesUrl:v.mobileColumnListUrl,officeName:v.officeName,articleTitle:l(v.title),articleUrl:v.mobileColumnUrl,articleImageUrl:g(v.imageUrl,"nf270_166"),articleType:v.imageUrl==""?0:1,seriesTitleClickCode:"spt.seriestitle",contentClickCode:"spt.seriescont",imageWidth:"102",imageHeight:"70"}
}).$value();
case"ENT":return $A(t).map(function(v,u){return{index:u,seriesTitle:v.title,seriesUrl:v.seriesUrl,officeName:v.articleOfficeName,articleTitle:l(v.articleTitle),articleUrl:v.articleUrl,articleImageUrl:g(v.articleImgUrl,"nf204_140_f2"),articleType:v.articleImgUrl==""?0:1,seriesTitleClickCode:"ent.seriestitle",contentClickCode:"ent.seriescont",imageWidth:"102",imageHeight:"70",}
}).$value()
}}function l(v){var s=new RegExp("^(\\[|<).*?(\\]|>)\\s?((\\[|<)[0-9]+(\\]|>))?\\s?");
var t=v.trim().replace("&lt;","<").replace("&gt;",">").replace(s,"").replace("<","&lt;").replace(">","&gt;");
var u=t.lastIndexOf("/");
if(u>=4){t=t.substr(0,u)
}return t
}function j(s){if(s==null){throw"[response is null]"
}if(s.status.code!="200"){throw"[response.status.code != 200]"
}if(s.result.recommend.length<12){throw"[response.result.recommend.length = "+s.result.recommend.length+"]"
}return true
}function g(u,s){if(u.trim()==""){return""
}var v=u.match(/^(.*\?)type=.+/)?u.replace(/^(.*\?)/,""):"type="+s;
var t=u.replace(/(\?.*)$/,"");
return"https://s.pstatic.net/dthumb.phinf/?src=%22"+encodeURIComponent(t)+"%22&"+v
}return{init:r,show:o}
})();
naver.main.NewsSeries.init();
var oAutoComplete,oKeywordHistory,oRecognitionSearch;
function initHistoryAutocomplete(c){var a=nhn.mobile.ac.$,b=a("#sch");
$elSCHW=a("#sch ._sch_w"),elSCHW=$elSCHW.get(0),sWriteClass=elSCHW.getAttribute("data-css")||"sch_write",$elQuery=a("#query"),elQuery=$elQuery.get(0),elForm=document.forms.search,$elForm=a(elForm),$elRSShowBtn=a("#_rs_show_btn"),$elRSHideBtn=a("#_rs_hide_btn"),$elClearBtn=a("#clear_input"),bIsNaver=!!document.domain.match("naver.com"),fCheckInput=function(){var d=oRecognitionSearch;
if(elQuery.value){elSCHW&&$elSCHW.addClass(sWriteClass);
$elClearBtn.show();
oAutoComplete.show();
oKeywordHistory.hide();
d&&(d.isShown()?$elRSHideBtn.hide():$elRSShowBtn.hide())
}else{elSCHW&&$elSCHW.removeClass(sWriteClass);
$elClearBtn.hide();
oKeywordHistory.isReady()&&oKeywordHistory.show();
oAutoComplete.hide();
d&&(d.isShown()?$elRSHideBtn.show():$elRSShowBtn.show())
}},goURLAndLog=function(f,d){var h=document.createElement("a"),g=document.createEvent("MouseEvent");
g.initEvent("click",true,true);
h.href=f;
h.onclick=d;
h.dispatchEvent(g)
};
oKeywordHistory=new nhn.mobile.kh.KeywordHistory({oData:new nhn.mobile.kh.Data({bIsUseRemote:bIsNaver,htLFSParam:{sHost:"https://m.search.naver.com",sPath:"/remote_frame"}}),oView:new nhn.mobile.search_bar.kh.View({elForm:elForm,elInput:elQuery,elView:a("#nx_suggest_recent").get(0),elNothingLayer:a("#nx_suggest_recent_nothing").get(0),elOffLayer:a("#nx_suggest_recent_off").get(0),elClearBtn:a("#nx_suggest_recent_clear").get(0),elUnuseBtn:a("#nx_suggest_recent_unuse").get(0),elCloseBtn:a("#nx_suggest_recent_close").get(0),sListSelector:"._kwd_lst"})}).on({close:function(f){nclk({},"sxt.close","","");
var d=b.get(0);
var g=$Element("ct");
var h=$Element($$.getSingle("body"));
var e=elSCHW&&$Element(elSCHW).query(".sch_region");
e&&e.show();
elSCHW&&$elSCHW.removeClass("sch_focus");
d&&b.removeClass("sch_focus");
h.removeClass("sch_focus");
naver.main.SectionManager.enableSetHeight();
window.scrollTo(0,0)
},select:function(d){$elForm.append("<input type='hidden' name='acr'>");
elForm.sm.value="mtp_sly.hst";
elForm.acr.value=d.rank
},use:function(d){nclk({},"sxt.on","","")
},unuse:function(d){nclk({},"sxt.off","","")
},remove:function(){nclk({},"sxt.x","","")
},removeAll:function(){nclk({},"sxt.del","","")
},shown:function(){},hided:function(){},ready:function(d){this.off("ready",arguments.callee);
document.activeElement===elQuery&&!elQuery.value&&this.show()
}});
oAutoComplete=new nhn.mobile.search_bar.ac.Autocomplete({oInput:new nhn.mobile.ac.Input({elInput:elQuery,elClearBtn:$elClearBtn.get(0)}),oData:new nhn.mobile.search_bar.ac.Data({sAPIURL:"https://mac.search.naver.com/m/ac",sQueryKey:"q",htAPIParam:{q_enc:"UTF-8",st:"1",frm:"mobile_nv",r_format:"json",r_enc:"UTF-8",r_unicode:"0",t_koreng:"1",ans:"2",run:"2",rev:"4"}}),oView:new nhn.mobile.search_bar.ac.View({el:a("#autocomplete_layer").get(0),elToggleBtn:a("#switch_input").get(0),elCloseBtn:a("#close_input").get(0),elHelpBtn:a("#help_input").get(0),elACPlusRoot:a("._u_atcp_plus",b.get(0)).get(0),sListSelector:"._u_atcp",sAnswerSelector:"._atcp_answer_wrap",nPsnCount:3,htPsnTemplate:{sHistory:['<li class="u_atcp_l u_atcp_lsc" data-query="@in_txt@" data-rank="@rank@">','<a href="javascript:;" class="u_atcp_a u_atcp_av _personal" onclick="oAutoComplete.select(event);"><div class="u_atcp_ap">@txt@</div></a>','<span class="u_atcp_date">@date@.</span>','<button type="button" class="u_atcp_add _u_atcp_add" style="display:@ex_btn@" onclick="oAutoComplete.extendKeyword(event);">','<span class="u_atcp_addb"><span class="u_vc">추가</span></span>',"</button>","</li>"].join("")}}),elForm:elForm,sCookieName:"NaverSuggestUse",bIsLogin:!!naver.main.gVariable.isLogin,sACPlusStorageKey:"search_bar_ac_plus",htLFSParam:{sHost:"https://m.search.naver.com",sPath:"/remote_frame",elIFrame:a("iframe[id^=RF_STORAGE]").get(0)}}).on({change:function(d){fCheckInput()
},select:function(d){oKeywordHistory.add(d.sText);
$elForm.append("<input type='hidden' name='qdt' value='0'>");
$elForm.append("<input type='hidden' name='acq'>");
$elForm.append("<input type='hidden' name='acr'>");
if(d.bPersonal){elForm.sm.value="mtp_sug.psn"
}else{if(d.bPartialMatch){elForm.sm.value="mtp_sug.pat"
}else{if(d.bCorrectedQuery){elForm.sm.value="mtp_sug.mbk"
}else{elForm.sm.value="mtp_sug.top"
}}}elForm.acq.value=d.sUserText;
elForm.acr.value=d.nRank
},selectAnswer:function(d){elForm.sm.value="mtp_sug."+d.sLog;
if(d.nAnswerId===16){$elForm.append("<input type='hidden' name='acq' value='"+d.sUserText+"'>");
$elForm.append("<input type='hidden' name='acr' value='"+d.nRank+"'>")
}},extendKeyword:function(d){nclk({},"sug.plus","","")
},moveURL:function(d){d.stop();
goURLAndLog(d.sURL,function(f){nclk(this,"sug.go","","")
})
},use:function(d){nclk({},"sug.on","","")
},unuse:function(d){nclk({},"sug.off","","")
},close:function(f){nclk({},this.isUse()?"sug.onc":"sug.offc","","");
var d=b.get(0);
var g=$Element("ct");
var h=$Element($$.getSingle("body"));
var e=elSCHW&&$Element(elSCHW).query(".sch_region");
e&&e.show();
elSCHW&&$elSCHW.removeClass("sch_focus");
d&&b.removeClass("sch_focus");
h.removeClass("sch_focus");
naver.main.SectionManager.enableSetHeight();
window.scrollTo(0,0)
},voteOpen:function(d){nclk({},"sug.vopen","","")
},voteClose:function(d){nclk({},"sug.vclose","","")
},voteHelp:function(d){goURLAndLog("http://m.help.naver.com/faq/detail.nhn?faqId=22006",function(f){nclk(this,"sug.vhelp","","")
})
},focus:function(e){var h=($Agent().os().android&&$Agent().os().version<"6.0")||($Agent().os().ios&&$Agent().os().version<"10");
var g=$$.getSingle("._sch_inpw"),f=g?$Element(g).offset().top-11:0;
var d=b.get(0);
var j=$Element($$.getSingle("body"));
fCheckInput();
naver.main.SectionManager.disableSetHeight();
if(h==false){j.addClass("on_animation")
}elSCHW&&$elSCHW.addClass("sch_focus");
d&&b.addClass("sch_focus");
j.addClass("sch_focus");
setTimeout(function(){var l=elSCHW&&$Element(elSCHW).query(".sch_region");
l&&l.hide()
},300);
nclk({},"sch.box","","")
},blur:function(d){},clear:function(d){nclk({},"sch.kwdx","","")
},acPlusSwitchClick:function(d){d.checked?nclk({},"sug.cxon","",""):nclk({},"sug.cxoff","","")
}});
a(window).on("pageshow",function(d){var f=oRecognitionSearch;
if(d.persisted){elQuery.blur();
elQuery.value="";
elSCHW&&$elSCHW.removeClass("sch_focus").removeClass(sWriteClass);
$elClearBtn.hide();
oAutoComplete.hide();
oKeywordHistory.hide();
f&&f.isShown()?f.hide():$elRSShowBtn.show()
}});
(function(){var g=navigator.userAgent,j=!!g.match("iPad"),d=!!g.match("iPhone")&&!j,h=document.createEvent("HTMLEvents"),f=oKeywordHistory;
if(c){f.on("ready",function(e){this.off("ready",arguments.callee);
if(d&&g.search("4.3.3")<0){elQuery.focus()
}else{h.initEvent("focus",true,true);
elQuery.dispatchEvent(h)
}this.show()
})
}})();
oKeywordHistory.ready()
}function initRecognitionSearch(){var a=nhn.mobile.ac.$;
return;
oRecognitionSearch=new nhn.mobile.search_bar.RecognitionSearch({elShowBtn:a("#_rs_show_btn").get(0),elHideBtn:a("#_rs_hide_btn").get(0),elContent:a("#_rs_content").get(0)}).on({shown:function(b){oAutoComplete&&oAutoComplete.hide();
oKeywordHistory&&oKeywordHistory.hide()
}})
}$.createNamespace("naver.main").TabletSearchExtension=(function(){var c=$Element("ly_rcs");
var b=$Element("sch_ext_btn");
var e=function(){d();
APP.init()
},d=function(){b.attach("click",f);
c.delegate("click","a",a)
},f=function(g){g.stop();
c.show();
$Element("dmm").className("dmm_v2");
naver.main.oDim.show(function(){c.hide();
$Element("dmm").className("dmm")
})
},a=function(j){if(!naver.main.gVariable.isMobile){j.stop();
alert("사용하고 계신 환경(OS)에서는 지원되지 않는 기능입니다.");
return
}var m=$Element(j.element);
var l=m.attr("data-menu");
var n="1";
if(l=="voicerecg"&&naver.main.gVariable.isLogin){l+="&id="+naver.main.gVariable.isLogin
}else{if(l=="hanja"){n="2"
}}var h="naversearchapp";
var g="search?qmenu="+l+"&version="+n;
APP.run(h,"",g);
j.stop()
};
return{init:e}
})();
(typeof nhn==="undefined")&&(nhn={});
nhn.mobile=nhn.mobile||{};
nhn.mobile.fs=nhn.mobile.fs||{};
nhn.mobile.fs.createClass=function(a){var b=function b(){if(a.construct instanceof Function){a.construct.apply(this,arguments)
}};
b.prototype=a;
b.prototype.constructor=b;
b.extend=nhn.mobile.fs.extend;
return b
};
nhn.mobile.fs.extend=function(a){var b=this,c=function c(){b.apply(this,arguments);
if(a.construct instanceof Function){a.construct.apply(this,arguments)
}},e,d,f;
e=function(){};
e.prototype=b.prototype;
d=new e();
for(f in a){if(a.hasOwnProperty(f)){d[f]=a[f]
}}c.prototype=d;
c.prototype.constructor=c;
c.extend=arguments.callee;
return c
};
nhn.mobile.fs.Component=nhn.mobile.fs.createClass({construct:function(a){this._htHandler={};
this._htOption={};
this.option(a||{})
},option:function(d,c){var a,b;
switch(typeof d){case"undefined":a={};
for(b in this._htOption){a[b]=this._htOption[b]
}return a;
case"string":if(typeof c==="undefined"){return this._htOption[d]
}else{this._htOption[d]=c
}break;
case"object":for(b in d){this._htOption[b]=d[b]
}break
}return this
},fire:function(h,c){c=c||{};
var e=this._htHandler[h]||[],b=e.length>0,a,d,g,f;
if(!b){return true
}e=e.concat();
c.sType=h;
if(typeof c._aExtend==="undefined"){c._aExtend=[];
c.stop=function(){if(c._aExtend.length>0){c._aExtend[c._aExtend.length-1].bCanceled=true
}}
}c._aExtend.push({sType:h,bCanceled:false});
a=[c];
g=arguments.length;
for(d=2;
d<g;
d++){a.push(arguments[d])
}for(d=0;
(f=e[d]);
d++){f.apply(this,a)
}return !c._aExtend.pop().bCanceled
},on:function(d,b){var a,c=this._htHandler[d];
if(arguments.length===1){for(a in arguments[0]){this.on(a,arguments[0][a])
}return this
}!c&&(c=this._htHandler[d]=[]);
c.push(b);
return this
},off:function(d,b){var a,b,c=this._htHandler[d];
if(arguments.length===1){for(a in arguments[0]){this.off(a,arguments[0][a])
}return this
}if(c){for(a=0;
(b=c[a]);
a++){if(b===b){c=c.splice(a,1);
break
}}}return this
},offAll:function(c){var a=this._htHandler,b;
if(arguments.length){if(typeof a[c]==="undefined"){return this
}delete a[c];
return this
}for(b in a){delete a[b]
}return this
},callback:function(d,b,a,c){(typeof d==="string")&&(d=this[d]);
b=b||this;
return function(){var e=arguments.length?Array.prototype.slice.call(arguments):[];
a&&(e=a.concat(e));
c&&(e=e.concat(c));
return d.apply(b,e)
}
}});
nhn.mobile.fs.Storage=nhn.mobile.fs.Component.extend({construct:function(){this._initVar()
},ready:function(){!this.isReady()&&this.fire("ready",{bIsSupport:this.isSupport()});
this._bIsReady=true;
return this
},isReady:function(){return !!this._bIsReady
},isSupport:function(){return this._isSupportsLocalStorage()
},setItem:function(b,a){try{this._oLocalStorage.setItem(b,a);
this.fire("addItem",{itemKey:b})
}catch(c){console.error(c)
}},setItems:function(a){var b;
try{for(b in a){this._oLocalStorage.setItem(b,a[b])
}}catch(c){console.error(c)
}},getItem:function(a){var c;
try{c=this._oLocalStorage.getItem(a);
this.fire("readItem",{itemValue:c,itemKey:a})
}catch(b){console.error(b)
}return c
},getAllItems:function(){var c=0,f={},b,a;
try{c=this._oLocalStorage.length;
for(a=0;
a<c;
a++){b=this._oLocalStorage.key(a);
f[b]=this._oLocalStorage.getItem(b)
}this.fire("readAllItem",{item:f})
}catch(d){console.error(d)
}return f
},removeItem:function(a){try{this._oLocalStorage.removeItem(a);
this.fire("removeItem",{itemKey:a})
}catch(b){console.error(b)
}},clearStorage:function(){try{this._oLocalStorage.clear();
this.fire("clearStorage")
}catch(a){console.error(a)
}},getLength:function(){var a=0;
try{a=this._oLocalStorage.length
}catch(b){console.error(b)
}return a
},_isSupportsLocalStorage:function(){var a=false;
try{a="localStorage" in window&&window.localStorage!==null
}catch(c){console.error(c)
}return a
},reloadStorage:function(){try{this._oLocalStorage=window.localStorage
}catch(a){console.error(a)
}},destroy:function(){this._oLocalStorage=null
},_initVar:function(){try{this._oLocalStorage=window.localStorage
}catch(a){console.error(a)
}}});
nhn.mobile.fs.Storage.VERSION="2.0.1";
nhn.mobile.fs.LocalFrameStorage=nhn.mobile.fs.Storage.extend({construct:function(a){this.option(a||{})
},ready:function(){!this.isReady()&&this._oSender.loadRemoteFrame();
return this
},getItem:function(b){var a=this;
this._requestMessage({action:"GET_ITEM",key:b},function(c){if(c.success){a.fire("readItem",{itemValue:c.value,itemKey:c.key})
}})
},setItem:function(b,c){var a=this;
this._requestMessage({action:"SET_ITEM",key:b,value:c},function(d){if(d.success){a.fire("addItem",{itemKey:d.key})
}})
},removeItem:function(b){var a=this;
this._requestMessage({action:"REMOVE_ITEM",key:b},function(c){if(c.success){a.fire("removeItem",{itemKey:c.key})
}})
},clearStorage:function(){var a=this;
this._requestMessage({action:"CLEAR_STORAGE"},function(b){if(b.success){a.fire("clearStorage")
}})
},reloadStorage:function(){},destroy:function(){this._oSender.destroy()
},_initVar:function(){var a=this;
this._oSender=new nhn.mobile.fs.FrameMessageSender(this.option()).on("iFrameLoaded",function(){a.fire("ready",{bIsSupport:a.isSupport()});
a._bIsReady=true
})
},_requestMessage:function(a,b){this._oSender.sendData(a,b)
}});
nhn.mobile.fs.FrameMessageSender=nhn.mobile.fs.Component.extend({construct:function(a){if(!window.postMessage){throw new Error("Unsupported browser.")
}this.option(a||{});
this._assignValueToMemberVariable();
this._attachEventListener()
},loadRemoteFrame:function(){this._elIFrame.src=this._sRequestHost+this._sRequestPath;
return this
},sendData:function(a,c){var d=++this._nJobSeq+"_"+(new Date()).getTime()+"_"+Math.floor((Math.random()*100)),b={reqId:d,reqData:a||{}};
this._aRequestsCallbacks[d]=c;
if(this.isIFrameLoaded()){this._sendRequest(b)
}else{this._aJobQueue.push(b)
}return this
},getQueueSize:function(){return this._aJobQueue.length
},isIFrameLoaded:function(){return this._bIsIFrameLoaded
},destroy:function(){var a,b;
for(b in this._htEvent){a=this._htEvent[b];
a.el.removeEventListener(b,a.fHandler)
}try{document.body.removeChild(this._elIFrame)
}catch(c){console.error(c)
}this._nJobSeq=-1;
this._htEvent=null;
this._aJobQueue=null;
this._aRequestsCallbacks=null;
this._bIsIFrameLoaded=false;
this._sRequestHost=null;
this._sRequestPath=null;
this._elIFrame=null
},_assignValueToMemberVariable:function(){this._nJobSeq=-1;
this._htEvent={};
this._aJobQueue=[];
this._aRequestsCallbacks={};
this._bIsIFrameLoaded=false;
this._sRequestHost=this.option("sHost");
this._sRequestPath=this.option("sPath");
this._elIFrame=this._getIFrame(this.option("elIFrame"))
},_attachEventListener:function(){var a=this.callback("_onIFrameLoad"),b=this.callback("_onMessage");
this._elIFrame.addEventListener("load",a);
window.addEventListener("message",b);
this._htEvent.load={el:this._elIFrame,fHandler:a};
this._htEvent.message={el:window,fHandler:b}
},_getIFrame:function(a){if(a){(typeof a==="string")&&(a=document.querySelector(a))
}else{a=document.createElement("iframe");
a.style.cssText="position:absolute;width:1px;height:1px;left:-9999px;display:none";
a.id="RF_STORAGE_"+(new Date()).getTime()+"_"+Math.floor((Math.random()*100));
document.body.appendChild(a)
}return a
},_sendRequest:function(a){this._elIFrame.contentWindow.postMessage(JSON.stringify(a),this._sRequestHost)
},_onMessage:function(b){var a=JSON.parse(b.data);
if(b.origin!==this._sRequestHost){return false
}if(this._aRequestsCallbacks[a.reqId]){this._aRequestsCallbacks[a.reqId](a.resData);
delete this._aRequestsCallbacks[a.reqId]
}},_onIFrameLoad:function(c){var b=this._aJobQueue.length,a;
this._bIsIFrameLoaded=true;
if(this._aJobQueue.length){for(a=0;
a<b;
a++){this._sendRequest(this._aJobQueue[a])
}this._aJobQueue=[]
}this.fire("iFrameLoaded")
}});
(typeof window.nhn==="undefined")&&(nhn={});
nhn.mobile=nhn.mobile||{};
nhn.mobile.ac=nhn.mobile.ac||{};
nhn.mobile.kh=nhn.mobile.kh||{};
nhn.mobile.ac.createClass=function(a){var b=function b(){if(a.construct instanceof Function){a.construct.apply(this,arguments)
}};
b.prototype=a;
b.prototype.constructor=b;
b.extend=nhn.mobile.ac.extend;
return b
};
nhn.mobile.ac.extend=function(a){var b=this,c=function c(){b.apply(this,arguments);
if(a.construct instanceof Function){a.construct.apply(this,arguments)
}},e,d,f;
e=function(){};
e.prototype=b.prototype;
d=new e();
for(f in a){if(a.hasOwnProperty(f)){d[f]=a[f]
}}c.prototype=d;
c.prototype.constructor=c;
c.extend=arguments.callee;
return c
};
nhn.mobile.ac.$=(function(a){function c(e){e=e||this.el;
if(e){if(typeof HTMLElement==="object"){return e instanceof HTMLElement
}else{return(typeof e==="object")&&(e.nodeType===1)&&(typeof e.nodeName==="string")
}}else{return false
}}function b(l,g,m){var j=[],h,f,e;
for(h in g){j.push(encodeURIComponent(h)+"="+encodeURIComponent(g[h]))
}f="jsonp"+Math.round(+new Date()+Math.random()*1000001);
l=l.substr(0,l.length-1)+f+"&"+j.join("&");
window[f]=function(n){m(n);
delete window[f];
document.head.removeChild(e);
e=null
};
e=this._elScript=document.createElement("script");
e.setAttribute("type","text/javascript");
e.setAttribute("src",l);
document.head.appendChild(e);
return{abort:function(){if(e){window[f]=function(){delete window[f]
};
document.head.removeChild(e);
e=null
}}}
}function d(h,f){var e=arguments.callee,g=null;
if(!(this instanceof e)){return new e(h,f)
}if(h instanceof e){return h
}else{if(c(h)||h===document||h===window){g=h
}else{g=f?f.querySelector(h):document.querySelector(h)
}}this.el=g
}d.prototype=a;
d.prototype.constructor=d;
d.prototype.isElement=c;
d.getJSON=b;
return d
})({on:function(a,b){this.el.addEventListener(a,b);
return this
},off:function(a,b){this.el.removeEventListener(a,b);
return this
},show:function(){this.el.style.display="block";
return this
},hide:function(){this.el.style.display="none";
return this
},is:function(a){if(a===":visible"){return this.el.style.display!=="none"
}},html:function(a){if(typeof a==="undefined"){return this.el.innerHTML
}else{this.el.innerHTML=a;
return this
}},text:function(a){if(typeof a==="undefined"){return this.el.textContent
}else{this.el.textContent=a+"";
return this
}},hasClass:function(a){return(" "+this.el.className+" ").indexOf(" "+a+" ")>-1
},addClass:function(b){var a=this.el.className;
if(!this.hasClass(b)){this.el.className=a?a+" "+b:b
}return this
},removeClass:function(b){var a;
if(this.hasClass(b)){a=new RegExp("(\\s|^)"+b+"(\\s|$)");
this.el.className=this.el.className.replace(a," ").replace(/^\s+|\s+$/g,"")
}return this
},get:function(a){return this.el
},append:function(a){var b=document.createElement("div");
b.innerHTML=a;
this.el.appendChild(b.firstChild);
return this
}});
nhn.mobile.ac.Component=nhn.mobile.ac.createClass({construct:function(){this._htHandler={};
this._htOption={}
},option:function(d,b){var c,a;
switch(typeof d){case"undefined":c={};
for(a in this._htOption){c[a]=this._htOption[a]
}return c;
case"string":if(typeof b==="undefined"){return this._htOption[d]
}else{this._htOption[d]=b
}break;
case"object":for(a in d){this._htOption[a]=d[a]
}break
}return this
},fire:function(h,c){c=c||{};
var e=this._htHandler[h]||[],b=e.length>0,a,d,g,f;
if(!b){return true
}e=e.concat();
c.sType=h;
if(typeof c._aExtend==="undefined"){c._aExtend=[];
c.stop=function(){if(c._aExtend.length>0){c._aExtend[c._aExtend.length-1].bCanceled=true
}}
}c._aExtend.push({sType:h,bCanceled:false});
a=[c];
g=arguments.length;
for(d=2;
d<g;
d++){a.push(arguments[d])
}for(d=0;
(f=e[d]);
d++){f.apply(this,a)
}return !c._aExtend.pop().bCanceled
},on:function(d,b){var a;
if(arguments.length===1){for(a in arguments[0]){this.on(a,arguments[0][a])
}return this
}var c=this._htHandler[d];
if(typeof c==="undefined"){c=this._htHandler[d]=[]
}c.push(b);
return this
},off:function(e,a){var b,c,d;
if(arguments.length===1){for(b in arguments[0]){this.off(b,arguments[0][b])
}return this
}d=this._htHandler[e];
if(d){for(b=0;
(c=d[b]);
b++){if(c===a){d=d.splice(b,1);
break
}}}return this
},offAll:function(c){var a=this._htHandler,b;
if(arguments.length){if(typeof a[c]==="undefined"){return this
}delete a[c];
return this
}for(b in a){delete a[b]
}return this
},callback:function(d,b,a,c){(typeof d==="string")&&(d=this[d]);
b=b||this;
return function(){var e=arguments.length?Array.prototype.slice.call(arguments):[];
a&&(e=a.concat(e));
c&&(e=e.concat(c));
return d.apply(b,e)
}
},getCookie:function(e){var a=document.cookie.split(/\s*;\s*/),d=a.length,c=new RegExp("^(\\s*"+e+"\\s*=)"),f,b;
for(b=0;
b<d;
b++){f=a[b];
if(c.test(f)){return decodeURIComponent(f.substr(RegExp.$1.length))
}}return null
},setCookie:function(e,f,d,a,b){var c="";
d&&(c="; expires="+(new Date((new Date()).getTime()+d*1000*60*60*24)).toGMTString());
a||(a="");
b||(b="/");
document.cookie=e+"="+encodeURIComponent(f)+c+"; path="+b+(a?"; domain="+a:"")
},isAndroid:function(){return/Android/.test(navigator.userAgent)
},isIOS:function(){return/iPhone|iPad|iPod/.test(navigator.userAgent)
},isIPad:function(){return/iPad/.test(navigator.userAgent)
},getOSVersion:function(){var a=navigator.userAgent,b=null;
if(this.isAndroid()){aMatchResult=a.match(/Android ([\d|\.]+)/);
if(aMatchResult!==null&&aMatchResult[1]!==undefined){b=aMatchResult[1]
}}else{if(this.isIOS()){aMatchResult=a.match(/(iPhone )?OS ([\d|_]+)/);
if(aMatchResult!==null&&aMatchResult[2]!==undefined){b=String(aMatchResult[2]).split("_").join(".")
}}}return b
},isMobileDevice:function(){return/(iPad|Mobile|Android|Nokia|webOS|BlackBerry|Opera Mini)/.test(navigator.userAgent)
}});
(function(a){nhn.mobile.ac.Input=nhn.mobile.ac.Component.extend({construct:function(b){this.option(b||{});
this.elInput=b.elInput;
this.elClearBtn=b.elClearBtn;
if(this.elClearBtn){this._$elClearBtn=a(this.elClearBtn)
}this.elSubmitBtn=b.elSubmitBtn;
this._sValue=this.getValue();
this._bMustFocused=false;
this.oAC=null;
this.oData=null;
this.oView=null;
this._attachEvent()
},getValue:function(){return this.elInput.value
},setValue:function(b){this.elInput.value=this._sValue=b;
return this
},change:function(){this.oData.request(this.getValue());
return this
},focus:function(){this._bIsAndroidLT3_0()&&(this._bMustFocused=true);
this.elInput.focus();
return this
},blur:function(){this.elInput.blur();
return this
},setPlaceholderText:function(b){this.elInput.setAttribute("placeholder",b);
return this
},isComponentElement:function(b){return b===this.elInput||b===this.elClearBtn||b===this.elSubmitBtn
},setRelatedObject:function(b){this.oAC=b.oAC;
this.oData=b.oData;
this.oView=b.oView;
return this
},isFocused:function(){return !!this._bIsFocused
},_attachEvent:function(){var c=a(document),b=this.isMobileDevice()?"touchstart":"mousedown";
a(this.elInput).on("focus",this.callback("_onFocus")).on("blur",this.callback("_onBlur")).on(this.isIOS()?"keyup":"input",this.callback("_onInput"));
c.on(b,this.callback("_onDocumentMouseDown")).on("click",this.callback("_onDocumentClick"));
this._bIsAndroidLT3_0()&&c.on(b,this.callback("_onDocumentMouseDown4AndroidLT3_0"))
},_bIsAndroidLT3_0:function(){return this.isAndroid()&&this.getOSVersion()<"3.0"
},_fireChangeEvent:function(){var b=this.getValue();
if(this.oAC.fire("change",{sValue:b})){this.oData.request(b)
}},_onFocus:function(b){if(this.oAC.fire("focus")){this._bIsFocused=true;
(this.elClearBtn&&this.getValue())&&this._$elClearBtn.show();
this.getValue()&&this.oData.request(this.getValue());
this.oAC.fire("focused")
}},_onBlur:function(b){if(this._bMustFocused||this._bIsTouchAtClearBtn){return
}if(this.oAC.fire("blur",{bIsTouchAtSWElement:this._bIsTouchAtSWElement})){this._bIsFocused=false;
if(this.elClearBtn&&!this.getValue()){this._$elClearBtn.hide()
}this.oAC.fire("blurred")
}},_onInput:function(b){if(this._sValue!==this.getValue()){this._sValue=this.getValue();
this._fireChangeEvent()
}},_onClearBtnClick:function(b){this._bIsTouchAtSWElement=this._bIsTouchAtClearBtn=false;
if(this.oAC.fire("clear")){this.elInput.focus();
this.elInput.value="";
this._fireChangeEvent();
this._bIsAndroidLT3_0()&&(this._bMustFocused=true)
}},_onDocumentMouseDown:function(b){this._bIsTouchAtClearBtn=this.elClearBtn&&this.elClearBtn.contains(b.target);
if(this._bIsTouchAtClearBtn||(this.elSubmitBtn&&this.elSubmitBtn.contains(b.target))){this._bIsTouchAtSWElement=true
}else{this._bIsTouchAtSWElement=false
}},_onDocumentClick:function(b){this._bIsTouchAtClearBtn&&this._onClearBtnClick()
},_onDocumentMouseDown4AndroidLT3_0:function(b){this._bMustFocused=false
}})
})(nhn.mobile.ac.$);
(function(a){nhn.mobile.ac.Data=nhn.mobile.ac.Component.extend({construct:function(b){this.option({sQueryKey:"q"});
this.option(b||{});
this.oAC=null;
this.oView=null;
this._oJSON=null
},request:function(d){var b,d,c;
this._oJSON&&this._oJSON.abort();
if(!this.oAC.isUse()){(d)?this.oView.show():this.oView.hide();
return
}d=this._sQuery=d.replace(/^\s+/g,"");
if(!d){this.oView.paint({query:[],answer:[],data:[]},d);
return
}if(!this._htCache){this._htCache={}
}else{if(this._htCache[d]&&this._htCache.hasOwnProperty(d)){this.oView.paint(this._htCache[d],d);
return
}}c=this.option("htAPIParam");
c[this.option("sQueryKey")]=d;
this._oJSON=a.getJSON(this.option("sAPIURL")+"?_callback=?",c,this.callback("_handleJSON",this,[d]))
},setRelatedObject:function(b){this.oAC=b.oAC;
this.oView=b.oView
},_handleJSON:function(l,h){var c,f;
try{c=[];
for(var d=0;
d<h.items.length;
d++){c[d]=[];
f=h.items[d];
if(f.length>0){for(var b=0;
b<f.length;
b++){c[d][b]=(f[b].length===1)?f[b][0]:f[b]
}}}this._htCache[l]={query:h.query,answer:h.answer,noresult:h.noresult,partial_match:h.partial_match,corrected_query:h.corrected_query,data:c};
this.oView.paint(this._htCache[l],l)
}catch(g){console.error(g);
try{this.oView.paint({query:[],answer:[],data:[]},l)
}catch(g){console.error(g)
}}}})
})(nhn.mobile.ac.$);
(function(a){nhn.mobile.ac.View=nhn.mobile.ac.Component.extend({construct:function(b){this.option({sListSelector:"ul",nEllipsis:30,nDisplay:10});
this.option(b||{});
this.el=b.el;
this.$el=a(b.el);
this.oAC=null;
this.oInput=null
},toggle:function(){if(this.isShown()){this.hide()
}else{this.show()
}},show:function(){if(this.isShown()){return
}if(this.oAC.fire("show")){this.$el.show();
this.oAC.fire("shown")
}},hide:function(){if(!this.isShown()){return
}if(this.oAC.fire("hide")){this.$el.hide();
this.oAC.fire("hided")
}},isShown:function(){return this.$el.is(":visible")
},setRelatedObject:function(b){this.oAC=b.oAC;
this.oInput=b.oInput
},paint:function(b){},select:function(b){},extendKeyword:function(b){},use:function(){},unuse:function(){}})
})(nhn.mobile.ac.$);
nhn.mobile.ac.Autocomplete=nhn.mobile.ac.Component.extend({construct:function(a){this.option({sCookieName:"autocomplete",sCookieDomain:"naver.com"});
this.option(a||{});
this.oInput=a.oInput;
this.oData=a.oData;
this.oView=a.oView;
this.oInput.setRelatedObject({oAC:this,oData:a.oData,oView:a.oView});
this.oData.setRelatedObject({oAC:this,oView:a.oView});
this.oView.setRelatedObject({oAC:this,oInput:a.oInput});
this._bUse=this._initUse()
},request:function(){this.oData.request(this.oInput.getValue())
},show:function(){this.oView.show()
},hide:function(){this.oView.hide()
},isShown:function(){return this.oView.isShown()
},select:function(a){this.oView.select(a)
},extendKeyword:function(a){this.oView.extendKeyword(a)
},use:function(){if(this.fire("use")){this.setCookie(this.option("sCookieName"),"use",21900,this.option("sCookieDomain"));
this._bUse=true;
this.oView.use()
}},unuse:function(){if(this.fire("unuse")){this.setCookie(this.option("sCookieName"),"unuse",21900,this.option("sCookieDomain"));
this._bUse=false;
this.oView.unuse()
}},setUse:function(a){this._bUse=a;
if(a){this.oView.use()
}else{this.hide();
this.oView.unuse()
}},isUse:function(){return this._bUse
},_initUse:function(){var b=this.getCookie(this.option("sCookieName")),a=true;
b&&(a=(b==="use"));
!a&&this.oView.unuse();
return a
}});
nhn.mobile.ac.Autocomplete.VERSION="3.0.1";
nhn.mobile.kh.Data=nhn.mobile.ac.Component.extend({construct:function(a){this.option({sUsageKey:"AC_H_U",sHistoryKey:"search_history",nDisplay:20,nEllipsis:30,bIsUseRemote:false,htLFSParam:{sHost:"",sPath:"",elFrame:null}});
this.option(a||{});
this._bIsReady=false;
this._bIsSupport=false;
this._oS=this._getStorageObject();
this._oS.on({ready:this.callback("_onReady")})
},ready:function(){this._oS.ready()
},isReady:function(){return this._bIsReady
},isSupport:function(){return this._bIsSupport
},setRelatedObject:function(a){this.oKH=a.oKH;
this.oView=a.oView
},add:function(e){var a=this._aData,d=a.length,c=[],b;
e=this._trim(e);
if(!e){return
}for(b=0;
b<d;
b++){if(e!==a[b].in_txt){c.push(a[b])
}}c=[{txt:this._cutStr(e,this.option("nEllipsis")),in_txt:e,date:this._getDateString()}].concat(c);
(c.length>this.option("nDisplay"))&&c.pop();
this._setHistory(c)
},remove:function(a){this._aData.splice(a,1);
this._setHistory(this._aData)
},removeAll:function(){this._setHistory([])
},getHistory:function(){return this._aData||[]
},count:function(){return this._aData.length
},removeHistory:function(){this._oS.removeItem(this.option("sHistoryKey"))
},getUseState:function(){return this._sUse
},setUseState:function(a){this._sUse=a;
this._oS.setItem(this.option("sUsageKey"),a)
},removeUseState:function(){this._sUse=null;
this._oS.removeItem(this.option("sUsageKey"))
},reload:function(a){this._fReloadCallback=a;
this._oS.on("readItem",this.callback("_onHistoryDataLoad")).getItem(this.option("sHistoryKey"))
},_getStorageObject:function(){return this.option("bIsUseRemote")?new nhn.mobile.fs.LocalFrameStorage(this.option("htLFSParam")):new nhn.mobile.fs.Storage()
},_makeData:function(c){var b,d,a,e;
this._aData=[];
aData=(c)?c.split("&"):[];
d=aData.length;
for(b=0;
b<d;
b++){if(aData[b]){a=aData[b].split("#");
e=a[0].replace(/\|\^\|/g,"&").replace(/\|@\|/g,"#");
this._aData.push({rank:b,txt:this._cutStr(e,this.option("nEllipsis")),in_txt:e,date:(a.length>1&&a[1])?a[1]:""})
}}this._bLoaded=true;
return this._aData
},_cutStr:function(b,c){var a=(c>0&&b.length>c)?b.substring(0,c)+"...":b;
return a
},_trim:function(a){return a.replace(/^\s+|\s+$/g,"")
},_getDateString:function(){var c=new Date(),b=c.getMonth()+1,a=c.getDate();
return((b>=10)?b:"0"+b)+"."+((a>=10)?a:"0"+a)
},_setHistory:function(b){var a=[],d=b.length,c,e;
for(c=0;
c<d;
c++){e=b[c];
e.rank=c;
a.push(e.in_txt.replace(/\&/g,"|^|").replace(/#/g,"|@|")+"#"+e.date)
}this._aData=b;
this._oS.setItem(this.option("sHistoryKey"),a.join("&"))
},_onReady:function(a){if(a.bIsSupport){this._oS.on("readItem",this.callback("_onHistoryDataLoad")).getItem(this.option("sHistoryKey"))
}else{!this._bIsReady&&this.fire("ready",{bIsSupport:false});
this._bIsReady=true;
this._bIsSupport=false
}},_onHistoryDataLoad:function(a){this._aData=this._makeData(a.itemValue);
this._oS.off("readItem",arguments.callee).on("readItem",this.callback("_onUsageDataLoad")).getItem(this.option("sUsageKey"))
},_onUsageDataLoad:function(a){this._sUse=a.itemValue;
this._oS.off("readItem",arguments.callee);
!this._bIsReady&&this.fire("ready",{bIsSupport:true});
this._bIsReady=true;
this._bIsSupport=true;
this._fReloadCallback&&this._fReloadCallback();
this._fReloadCallback=null
}});
(function(a){nhn.mobile.kh.View=nhn.mobile.ac.Component.extend({construct:function(b){this.option({sListSelector:"ul"});
this.option(b||{});
this.elView=b.elView;
this.$elView=a(b.elView);
this._$elList=a(b.sListSelector,b.elView);
this._sTemplate=this._$elList.get(0)?this._$elList.html():""
},setRelatedObject:function(b){this.oKH=b.oKH;
this.oData=b.oData
},paint:function(b){},select:function(b){},remove:function(b){},use:function(){this.paint(this.oData.getHistory())
},unuse:function(){this.paint([])
},show:function(){if(this.isShown()){return
}if(this.oKH.fire("show")){this.paint(this.oData.getHistory());
this.$elView.show();
this.oKH.fire("shown")
}},hide:function(){if(!this.isShown()){return
}if(this.oKH.fire("hide")){this.$elView.hide();
this.oKH.fire("hided")
}},isShown:function(){return this.$elView.is(":visible")
}})
})(nhn.mobile.ac.$);
nhn.mobile.kh.KeywordHistory=nhn.mobile.ac.Component.extend({construct:function(a){this.option({sRemoveAllMsg:"최근검색어를 모두\n삭제하시겠습니까?",sUseMsg:"최근검색어 저장 기능을\n사용 하시겠습니까?",sUnuseMsg:"최근검색어 저장 기능을\n사용 중지하시겠습니까?"});
this.option(a||{});
this.oData=a.oData;
this.oView=a.oView;
this.oData.setRelatedObject({oKH:this,oView:a.oView});
this.oView.setRelatedObject({oKH:this,oData:a.oData});
this.oData.on("ready",this.callback("_onDataReady"))
},ready:function(){this.oData.ready()
},close:function(){if(this.fire("close")){this.hide()
}},show:function(){this.oView.show()
},hide:function(){this.oView.hide()
},isShown:function(){return this.oView.isShown()
},toggleUse:function(){(this.isUse())?this.unuse():this.use()
},use:function(){if(!this.fire("use")){return
}if(this._hasConfirmBug()){this._bUse=true;
this.oData.removeUseState();
this.oView.use()
}else{if(confirm(this.option("sUseMsg"))){this._bUse=true;
this.oData.removeUseState();
this.oView.use()
}}},unuse:function(){if(!this.fire("unuse")){return
}if(this._hasConfirmBug()){this._bUse=false;
this.oData.setUseState("N");
this.oView.unuse()
}else{if(confirm(this.option("sUnuseMsg"))){this._bUse=false;
this.oData.setUseState("N");
this.oView.unuse()
}}},remove:function(a){this.oView.remove(a)
},removeAll:function(a){if(this.fire("removeAll")&&confirm(this.option("sRemoveAllMsg"))){this.oData.removeAll();
this.oView.paint([])
}},select:function(a){this.oView.select(a)
},add:function(a){this.isUse()&&this.oData.add(a)
},isReady:function(){return !!this._bIsReady
},isUse:function(){return this._bUse
},get:function(){return this.isUse()?this.oData.getHistory():[]
},count:function(){return this.isUse()?this.oData.count():0
},reload:function(a){this.oData.reload(a)
},paint:function(){this.oView.paint(this.oData.getHistory())
},_hasConfirmBug:function(){var b=navigator.userAgent,c=!!b.match("Android"),a=!!b.match(/Chrome\/40.0/);
return c&&a?true:false
},_onDataReady:function(a){this._bIsReady=true;
this._bUse=(this.oData.getUseState()!=="N");
this.fire("ready",{bIsSupport:a.bIsSupport})
}});
nhn.mobile.kh.KeywordHistory.VERSION="3.0.1";
(typeof window.nhn==="undefined")&&(nhn={});
nhn.mobile=nhn.mobile||{};
nhn.mobile.search_bar=nhn.mobile.search_bar||{};
nhn.mobile.search_bar.ac=nhn.mobile.search_bar.ac||{};
nhn.mobile.search_bar.kh=nhn.mobile.kh||{};
nhn.mobile.search_bar.htNaverApp=(function(d){var c=d.match(/NAVER\((.+?)\)/);
var a=!!c;
var b=(c||["",""])[1].split("; ");
return{bIsNaverApp:a,sBrowserEngine:b[0]||"",sServiceCode:b[1]||"",sBrowserServiceCode:b[2]||"",sServiceVersion:b[3]||"",sHiggsEngineVersion:b[4]||""}
})(navigator.userAgent);
nhn.mobile.search_bar.useAppStorage=function(){var a=/iPhone/.test(navigator.userAgent)&&nhn.mobile.search_bar.htNaverApp.sBrowserServiceCode>550;
var c=/iPad/.test(navigator.userAgent)&&nhn.mobile.search_bar.htNaverApp.sBrowserServiceCode>133;
var b=/iPhone|iPad|iPod/.test(navigator.platform);
return b&&nhn.mobile.search_bar.htNaverApp.bIsNaverApp&&(a||c)
};
nhn.mobile.search_bar.getQueryString=function(){var f=location.search.substr(1);
var a=f.split("&");
var b={};
var d;
var c;
var e=a.length;
for(c=0;
c<e;
c++){d=a[c].split("=");
b[decodeURIComponent(d[0])]=decodeURIComponent(d[1])
}return b
};
nhn.mobile.search_bar.trace=function(d){var b=document.getElementById("trace")||document.createElement("div");
var a=nhn.mobile.ac.$(b);
var c;
b.setAttribute("id","trace");
b.setAttribute("style","z-index:10000;position:absolute;top:50px;left:0px;width:100%;height:200px;background-color:rgba(234, 210, 210, 0.6);");
document.body.appendChild(b);
c=a.html();
!a.is(":visible")&&a.show();
a.html(c+"<br/>"+d)
};
(function(a){nhn.mobile.search_bar.ac.Data=nhn.mobile.ac.Data.extend({request:function(c){var b;
this._oJSON&&this._oJSON.abort();
if(!this.oAC.isUse()){(c)?this.oView.show():this.oView.hide();
return
}c=c.replace(/^\s+/g,"");
if(!c){this.oView.paint(this._getEmptyResponse(),c);
return
}if(!this._htCache){this._htCache={}
}else{if(this._htCache[c]&&this._htCache.hasOwnProperty(c)){this.oView.paint(this._htCache[c],c);
return
}}b=this.option("htAPIParam");
b[this.option("sQueryKey")]=c;
this._oJSON=a.getJSON(this.option("sAPIURL")+"?_callback=?",b,this.callback("_handleJSON",this,[c]))
},_handleJSON:function(l,h){var c,f;
try{c=[];
for(var d=0;
d<h.items.length;
d++){c[d]=[];
f=h.items[d];
if(f.length>0){for(var b=0;
b<f.length;
b++){c[d][b]=(f[b].length===1)?f[b][0]:f[b]
}}}this._htCache[l]={query:h.query,answer:h.answer,intend:h.intend,noresult:h.noresult,partial_match:h.partial_match,corrected_query:h.corrected_query,data:c,age:h.age,sex:h.sex};
this.oView.paint(this._htCache[l],l)
}catch(g){console.warn(g);
try{this.oView.paint(this._getEmptyResponse(),l)
}catch(g){console.error(g)
}}},_getEmptyResponse:function(){return{query:[],answer:[],intend:[],noresult:"",partial_match:"",corrected_query:"",data:[],age:"",sex:""}
}})
})(nhn.mobile.ac.$);
(function(a){nhn.mobile.search_bar.ac.View=nhn.mobile.ac.View.extend({construct:function(b){this.option({sListSelector:"ul._u_atcp",aElDoNotBlur:[]});
this.option(b||{});
this._USE_MSG="자동완성 기능을\n사용 하시겠습니까?";
this._UNUSE_MSG="자동완성 기능을\n사용 중지 하시겠습니까?";
this._USE_BTN_TXT="자동완성 끄기";
this._UNUSE_BTN_TXT="자동완성 켜기";
this._$elToggle=a(b.elToggleBtn);
this._$elClose=a(b.elCloseBtn);
this._$elHelp=a(b.elHelpBtn);
this._$elList=a(b.sListSelector,this.el);
this._$elAnswer=a(b.sAnswerSelector,this.el);
this._$elACPlusRoot=a(b.elACPlusRoot);
this._$elACPlusSwitch=a("#ck_plus1",b.elACPlusRoot);
this._$elACPlusLayer=a("._layer_plus",b.elACPlusRoot);
this._$elACPlusClose=a("._btn_close",this._$elACPlusLayer.get(0));
this._$elACPlusLogin=a("._btn_login",this._$elACPlusLayer.get(0));
this._fOnDocumentTouchStart=this.callback("_onDocumentTouchStart");
this._hasACPlusUI=!!this._$elACPlusSwitch.get(0);
this._$elToggle.get(0)&&this._$elToggle.on("click",this.callback("_onToggleUse"));
this._$elHelp.get(0)&&this._$elHelp.on("click",this.callback("_onHelp"));
this._$elClose.get(0)&&this._$elClose.on("click",this.callback("_onClose"));
if(this._hasACPlusUI){this._$elACPlusSwitch.on("click",this.callback("_onACPlusSwitchClick"));
this._$elACPlusClose.on("click",this.callback("_onACPlusCloseClick"));
this._$elACPlusLogin.on("click",this.callback("_onACPlusLoginClick"))
}this._sTemplate=this._$elList.html();
this._$elList.html("")
},setRelatedObject:function(b){nhn.mobile.ac.View.prototype.setRelatedObject.call(this,b);
this.oAC.on({focus:this.callback("_onFocus"),blur:this.callback("_onBlur"),hided:this.callback("_onACPlusCloseClick")})
},paint:function(r,p){var l=r.query;
var f=r.answer;
var A=r.intend||[];
var D=A.length;
var c=r.data;
var n=this.option("nDisplay");
var v=this._getCount(c);
var d=(v<n)?v:n;
var x=(f&&f.length>0)?true:false;
var C=[];
var e=[];
var B=1;
var g=this._sTemplate;
var y=r.partial_match==="1";
var o=r.corrected_query==="1";
var h=r.noresult==="1";
var q;
var s;
var z;
var E;
var m;
var b;
var u;
var w;
var t;
s=this._getAnswerHTML(f);
q=this._getIntendHTML(A,l,c);
this._$elAnswer.html(s+q);
B+=D;
if(!p){p=l[0]
}else{z=this._getPersonalization(p,e,B);
for(w=0;
w<z.length;
w++){C[C.length]=z[w]
}B+=z.length
}Loop:for(w=0;
w<c.length;
w++){if(c[w]){for(t=0;
t<c[w].length;
t++){b=(typeof c[w][t]==="string")?c[w][t]:c[w][t][0];
if(e.indexOf&&0<=e.indexOf(b)){continue
}m=this._isURL(b);
E={rank:B++,txt:this._cutStr(b,this.option("nEllipsis")),in_txt:b,ex_btn:(m||p==b)?"none":"block",link_btn:(m)?"block":"none",link_css:(m)?" u_atcp_ag":"",li_class:[y?" _partialMatch":"",o?" _correctedQuery":""].join("")};
C[C.length]=this._applyTemplate(g,E,l);
if((B-e.length-D)>d){break Loop
}}}}if((C.length>0||x)&&!h){u=C.join("");
this._$elList.show()
}else{u="";
this._$elList.hide()
}this._$elList.html(u);
this._showNoResultCausedByEllection(h);
this._hasACPlusUI&&this._updateACPlusDescAndLayer(r,C.length+f.length)
},select:function(l){var h=this.oInput.getValue();
var c=l.currentTarget;
var n=a(c);
var j=c.parentElement;
var f=j.getAttribute("data-query");
var d=parseInt(j.getAttribute("data-rank"),10);
var g=n.hasClass("_personal");
var m=n.hasClass("_partialMatch");
var b=n.hasClass("_correctedQuery");
l.preventDefault();
if(this.oAC.fire("select",{nRank:d,sText:f,sUserText:h,bPersonal:g,bPartialMatch:m,bCorrectedQuery:b})){this.oInput.setValue(f);
this.oAC.option("elForm").submit()
}},use:function(){this.oInput.change();
this._$elList.show();
this._$elAnswer.show();
this._$elToggle.text(this._USE_BTN_TXT)
},unuse:function(){this._$elList.hide();
this._$elAnswer.hide();
this._$elToggle.text(this._UNUSE_BTN_TXT)
},selectAnswer:function(l,h,g,b,j){var c=this.oAC.option("elForm");
var d=this.oInput.getValue();
var f=parseInt(l.currentTarget.parentElement.getAttribute("data-rank"),10);
this.oInput.setValue(b);
if(this.oAC.fire("selectAnswer",{nRank:f,sUserText:d,elTarget:l.target,nAnswerId:h,sKeyword:b,sLog:j})){g&&c&&c.submit()
}else{l.preventDefault()
}},extendKeyword:function(c){var b=c.currentTarget.parentElement.getAttribute("data-query");
c.preventDefault();
if(this.oAC.fire("extendKeyword",{sText:b})){this.oInput.setValue(b).change().focus()
}},moveURL:function(c){var b=c.currentTarget.parentElement.getAttribute("data-query");
c.preventDefault();
b=(0==b.search(/^(https?:\/\/)/))?b:"http://"+b;
if(this.oAC.fire("moveURL",{sURL:b})){location.href=b
}},showToggleBtn:function(){this._$elToggle.get(0).style.display=""
},hideToggleBtn:function(){this._$elToggle.hide()
},switchOnACPlus:function(){if(this._hasACPlusUI){this._$elACPlusSwitch.get(0).checked=true
}},switchOffACPlus:function(){if(this._hasACPlusUI){this._$elACPlusSwitch.get(0).checked=false
}},showACPlus:function(){this._hasACPlusUI&&this._$elACPlusRoot.show()
},hideACPlus:function(){this._hasACPlusUI&&this._$elACPlusRoot.hide()
},hideACPlusLayer:function(){this._hasACPlusUI&&this._$elACPlusLayer.hide()
},_hasConfirmBug:function(){var c=navigator.userAgent;
var b=c.match(/Chrome\/40.0/);
return this.isAndroid()&&b
},_applyTemplate:function(c,b,d){var e;
var f;
for(e in b){f=b[e];
if(e==="txt"){f=this._highlight(f,d)
}else{if(e==="in_txt"){f=this._characterToEntity(f)
}}if(!b.propertyIsEnumerable(e)){continue
}c=c.replace(new RegExp("@"+e+"@","g"),f)
}return c
},_getIntendHTML:function(h,c,f){var l=h.length;
var e=a("#_atcp_answer_16").html()||"";
var d=l?'<ul class="u_atcp u_atcp_at">':"";
var g;
var j;
var b;
for(i=0;
i<l;
i++){b=h[i];
j=b.query;
g=e.concat();
if(j!==c[0]&&j!==c[1]){if(!(f[0][0]&&j===f[0][0][0])){break
}}g=g.replace(/@txt@/,this._characterToEntity(j)).replace(/@query@/,b.transQuery).replace(/@intend@/,b.intend).replace(/@rank@/,i+1).replace(/@1@/,b.transQuery).replace(/@2@/,"asct");
d+=g
}l&&(d+="</ul>");
return d
},_getAnswerHTML:function(o){var l=o.length;
var d="";
var m;
var b;
var g;
var c;
var p;
var h;
var n;
var f;
var e;
for(f=0;
f<l;
f++){c=o[f];
p=c[1];
h=c.length;
b=c[0];
g=a("#_atcp_answer_"+b);
m=g.get(0)?g.html():"";
if(b==="16"){break
}for(e=1;
e<h;
e++){n=this._characterToEntity(c[e]);
m=m.replace(new RegExp("http(s)?://_"+e+"_","g"),n).replace(new RegExp("(http://)?@"+e+"@","g"),n);
if(b==="3"){m=m.replace("@datetime@",c[13].replace(/\./g,"-"))
}}d+=m
}return d
},_getPersonalization:function(o,p,g){var l=new RegExp("[.^$*+?|()\\[\\]{}\\\\]","g");
var d=new RegExp(o.replace(l,"\\$&"),"i");
var b=this.option("nPsnCount");
var h=this.option("htPsnTemplate");
var n=[];
var c=g;
var m=oKeywordHistory.get();
var r=m.length;
var j;
var q;
var e;
var f;
if(!m){return n
}for(f=0;
f<r;
f++){if(b<=n.length){return n
}j=this._copyHistoryData(m[f]);
q=j.in_txt;
if(q&&q.match(d)&&p.indexOf(q)<0){e=h.sHistory;
j.rank=c++;
j.ex_btn=(o===q)?"none":"block";
n[n.length]=this._applyTemplate(e,j,[o]);
p[p.length]=q
}}return n
},_copyHistoryData:function(f){var b;
var e;
var c;
var d;
if(!f||typeof f!=="object"){return f
}if(f instanceof Date){b=new Date();
b.setTime(f.getTime());
return b
}if(f instanceof Array){b=[];
e=f.length;
for(c=0;
c<e;
c++){b[c]=this._copyHistoryData(f[c])
}return b
}if(f instanceof Object){b={};
for(d in f){if(f.hasOwnProperty(d)){b[d]=this._copyHistoryData(f[d])
}}return b
}throw new Error("Unable to copy Data.")
},_getCount:function(c){var b=0;
var e=c.length;
var d;
for(d=0;
d<e;
d++){b+=c[d].length
}return b
},_cutStr:function(b,c){return(c>0&&b.length>c)?b.substring(0,c)+"...":b
},_isURL:function(b){return/(^((https?):\/\/)?([a-z0-9-]+\.)+(edu|org|net|com|gov|info|coop|biz|kr|cn|de|es|eu|fr|hk|in|jp|us|uk|au|sg)([\/?]\S*)?)$/i.test(b)
},_highlight:function(b,d){var e=d.length;
var c;
var f;
for(c=0;
c<e;
c++){f=this._makeStrong(b,d[c]);
if(f){return f
}}return this._characterToEntity(b)
},_makeStrong:function(g,q){var o=new RegExp("[.^*+?|()\\[\\]{}\\\\]","g");
var m=q.replace(/()/g," ").replace(/^\s+|\s+$/g,"");
var n=m.match(/\S/g);
var e=[];
var f=n.length;
var c="<mark class='u_atcp_mk'>";
var r="</mark>";
var b="{@_sOpenTag_@}";
var p="{@_sCloseTag_@}";
var h=new RegExp(b,"g");
var d=new RegExp(p,"g");
var l;
var j;
for(j=0;
j<f;
j++){e.push(n[j].replace(/[\S]+/g,"["+n[j].replace(o,"\\$&")+"] ").replace(/[\s]+/g,"[\\s]*"))
}m="("+e.join("")+")";
l=g.replace(new RegExp(m,"gi"),function(v,u,s,t){return b+v+p
});
l=this._characterToEntity(l);
l=l.replace(h,c).replace(d,r);
return l
},_characterToEntity:function(b){if(b){b=b.replace(/\$/g,"$$$$")
}return b.replace(/&/g,"&amp;").replace(/"/g,"&quot;").replace(/'/g,"&apos;").replace(/</g,"&lt;").replace(/>/g,"&gt;")
},_hasClassToUpper:function(b,c){if(a(b).hasClass(c)){return true
}else{if(b.parentElement){return this._hasClassToUpper(b.parentElement,c)
}else{return false
}}},_isDoNotBlurElement:function(e){var c=this.option("aElDoNotBlur");
var f=c.length;
var b=false;
var d;
for(d=0;
d<f;
d++){(c[d]===e)&&(b=true)
}return b
},_showNoResultCausedByEllection:function(c){var b=a("#nx_ac_alert");
if(b.get(0)){if(c&&!a("#nx_qrecmd_election").get(0)){b.show()
}else{b.hide()
}}},_showACPlusLayer:function(e){var b=a("._on_dsc",this._$elACPlusLayer.get(0));
var d=a("._off_dsc",this._$elACPlusLayer.get(0));
var c=a("._btn_login",this._$elACPlusLayer.get(0));
if(e){b.show();
d.hide();
c.hide()
}else{b.hide();
d.show();
c.get(0).style.display=""
}this._$elACPlusLayer.show()
},_updateACPlusDescAndLayer:function(c,b){var d=c.noresult==="1";
if(b>3&&!d){this._$elACPlusLayer.removeClass("type_bottom")
}if(b<=3||d){this._$elACPlusLayer.addClass("type_bottom")
}},_onFocus:function(b){a(document).on("touchstart",this._fOnDocumentTouchStart)
},_onBlur:function(b){a(document).off("touchstart",this._fOnDocumentTouchStart)
},_onHelp:function(c){var b=this.option("sHelpURL");
if(this.oAC.fire("help",{sURL:b})){location.href=b
}},_onClose:function(){if(this.oAC.fire("close")){this.hide()
}},_onToggleUse:function(c){var b=this.oAC.isUse();
if(this._hasConfirmBug()){b&&this.oAC.unuse();
!b&&this.oAC.use()
}else{if(b&&confirm(this._UNUSE_MSG)){this.oAC.unuse()
}else{if(!b&&confirm(this._USE_MSG)){this.oAC.use()
}}}},_onDocumentTouchStart:function(l){var b=this.isAndroid();
var h=this.getOSVersion();
var m=navigator.userAgent;
var n=m.indexOf("SM-N900")>-1;
var f=b&&h==="4.4.2";
var p=b&&h<"3.0";
var o=!!m.match(/Version\/\d.\d/g);
var d=l.target;
var g=this._hasClassToUpper(d,"_u_atcp_add");
var j=this.oInput;
var c=j.isComponentElement(d);
var q=this._isDoNotBlurElement(d);
if((n&&f&&o)||p||g||c||q){return
}j.blur()
},_onACPlusSwitchClick:function(b){this._showACPlusLayer(this.oAC.option("bIsLogin"));
this.oAC.fire("acPlusSwitchClick",{el:b.target,checked:b.target.checked})
},_onACPlusCloseClick:function(b){this.hideACPlusLayer()
},_onACPlusLoginClick:function(b){this.oAC.fire("acPlusLoginClick")
}})
})(nhn.mobile.ac.$);
nhn.mobile.search_bar.ac.Autocomplete=nhn.mobile.ac.Autocomplete.extend({construct:function(a){this.oS=this._getStorageObject(a.htLFSParam);
this.on({acPlusSwitchClick:this.callback("_onACPlusSwitchClick"),acPlusLoginClick:this.callback("_onAcPlusLoginClick"),use:this.callback("_onUse"),unuse:this.callback("_onUnuse")});
this.oS.on("readItem",this.callback("_onItemRead"));
this._bUse=this._initUse();
this.oS.getItem(this.option("sACPlusStorageKey"))
},use:function(){if(nhn.mobile.search_bar.useAppStorage()){if(this.fire("use")){this.oS.setItem(this.option("sCookieName"),"use");
this._bUse=true;
this.oView.use()
}}else{nhn.mobile.ac.Autocomplete.prototype.use.call(this)
}},unuse:function(){if(nhn.mobile.search_bar.useAppStorage()){if(this.fire("unuse")){this.oS.setItem(this.option("sCookieName"),"unuse");
this._bUse=false;
this.oView.unuse()
}}else{nhn.mobile.ac.Autocomplete.prototype.unuse.call(this)
}},_initUse:function(){var a=true;
var b;
if(nhn.mobile.search_bar.useAppStorage()){if(this.oS){b=this.oS.getItem(this.option("sCookieName"));
b&&(a=(b==="use"));
!a&&this.oView.unuse();
return a
}else{return a
}}else{return nhn.mobile.ac.Autocomplete.prototype._initUse.call(this)
}},selectAnswer:function(b,d,c,a,e){this.oView.selectAnswer(b,d,c,a,e)
},moveURL:function(a){this.oView.moveURL(a)
},switchOnACPlus:function(){this.oView.switchOnACPlus();
this._setAPIParam4ACPlus();
this._saveACPlusState();
this._clearACCacheAndRequest()
},switchOffACPlus:function(){this.oView.switchOffACPlus();
this._setAPIParam4ACPlus();
this._saveACPlusState();
this._clearACCacheAndRequest()
},initializeACPlus:function(){if(this._bInitiallized||!this._bItemRead){return
}if(this.option("bIsLogin")){if(this.usePlus){this.oView.switchOnACPlus();
this._setAPIParam4ACPlus();
this._clearACCacheAndRequest()
}}!this.isUse()&&this.oView.hideACPlus();
this._bInitiallized=true;
return this
},_saveACPlusState:function(){this.oS.setItem(this.option("sACPlusStorageKey"),JSON.stringify(this.usePlus))
},_setAPIParam4ACPlus:function(){this.oData.option("htAPIParam").con=this.usePlus?"1":"0"
},_clearACCacheAndRequest:function(){if(this.isUse()){this.oData._htCache={};
this.request()
}},_getStorageObject:function(a){if(nhn.mobile.search_bar.useAppStorage()){return new nhn.mobile.search_bar.AppStorage()
}else{return a?new nhn.mobile.fs.LocalFrameStorage(a):new nhn.mobile.fs.Storage()
}},_onACPlusSwitchClick:function(a){if(this.option("bIsLogin")){if(a.checked){this.usePlus=true;
this.switchOnACPlus()
}else{this.usePlus=false;
this.switchOffACPlus()
}}else{a.el.checked=false
}},_onUse:function(a){this.oView.showACPlus()
},_onUnuse:function(a){this.oView.hideACPlus()
},_onAcPlusLoginClick:function(a){this.usePlus=true;
this._saveACPlusState()
},_onItemRead:function(a){if(a.itemKey===this.option("sACPlusStorageKey")){this._bItemRead=true;
if(a.itemValue==="true"){this.usePlus=true
}else{if(a.itemValue==="false"){this.usePlus=false
}else{if(typeof a.itemValue==="string"){try{this.usePlus=JSON.parse(a.itemValue).usePlus
}catch(a){this.usePlus=true
}}else{this.usePlus=a.itemValue?a.itemValue.usePlus:true
}}}this.initializeACPlus()
}}});
(function(a){nhn.mobile.search_bar.kh.View=nhn.mobile.kh.View.extend({construct:function(b){this.option({sUseClass:"opt_on",sUnuseClass:"opt_off"});
this.option(b||{});
this._elInput=b.elInput;
this._elForm=b.elForm;
this._$elSggtFixer=a("._sggt_fixer",b.elView);
b.elClearBtn&&a(b.elClearBtn).on("click",this.callback("_onClearBtnClick"));
b.elCloseBtn&&a(b.elCloseBtn).on("click",this.callback("_onCloseBtnClick"));
b.elUnuseBtn&&a(b.elUnuseBtn).on("click",this.callback("_onUnuseBtnClick"));
this._isIPadAndGTorEQ119()&&b.elCloseBtn&&a(b.elCloseBtn).show()
},paint:function(f){var l=[];
var e=this._sTemplate;
var b=this._$elList;
var h=a(this.option("elClearBtn").parentElement);
var j=a(this.option("elNothingLayer"));
var m=a(this.option("elUnuseBtn"));
var d=a(this.option("elOffLayer"));
var c=this._$elSggtFixer;
var n=f.length;
var g;
if(this.oKH.isUse()){d.hide();
for(g=0;
g<n;
g++){l[l.length]=this._applyTemplate(e,f[g])
}if(l.length){b.show();
h.show();
j.hide();
c.get(0)&&c.removeClass("type_off")
}else{b.hide();
h.hide();
j.show();
c.get(0)&&c.addClass("type_off")
}m.addClass(this.option("sUnuseClass")).removeClass(this.option("sUseClass"))
}else{b.hide();
j.hide();
m.addClass(this.option("sUseClass")).removeClass(this.option("sUnuseClass"));
h.hide();
d.show();
c.get(0)&&c.addClass("type_off")
}b.html(l.join(""))
},select:function(d){var c=d.currentTarget.parentElement,f=c.getAttribute("data-query"),b=parseInt(c.getAttribute("data-rank"),10)+1;
d.preventDefault();
if(this.oKH.fire("select",{text:f,rank:b})){this.oData.add(f);
this._elInput.value=f;
this._elForm.submit()
}},remove:function(d){var c=d.currentTarget.parentElement,b=parseInt(c.getAttribute("data-rank"),10);
d.preventDefault();
if(this.oKH.fire("remove")){this.oData.remove(b);
this.paint(this.oData.getHistory())
}},_applyTemplate:function(c,b){var d,e;
for(d in b){if(!b.propertyIsEnumerable(d)){continue
}e=b[d];
if(d==="txt"||d==="in_txt"){e=this._escapeHTML(e)
}c=c.replace(new RegExp("@"+d+"@","g"),e)
}return c
},_escapeHTML:function(c){var b={'"':"quot","&":"amp","<":"lt",">":"gt","'":"#39"};
if(c){c=c.replace(/\$/g,"$$$$")
}return c.replace(/[<>&"']/g,function(d){return b[d]?"&"+b[d]+";":d
})
},_isIPadAndGTorEQ119:function(){var e=navigator.userAgent,g=!!e.match("iPad"),d=e.match(/NAVER\((.+?)\)/),d=d?d[1].split("; "):[],b=d[1]==="search",c=(d[2])?parseInt(d[2],10):0,f=c>=119;
return g&&b&&f
},_onClearBtnClick:function(b){b.preventDefault();
this.oKH.isUse()&&this.oData.getHistory().length&&this.oKH.removeAll()
},_onCloseBtnClick:function(b){b.preventDefault();
this.oKH.close()
},_onUnuseBtnClick:function(b){b.preventDefault();
this.oKH.toggleUse()
}})
})(nhn.mobile.ac.$);
(function(a){nhn.mobile.search_bar.RecognitionSearch=nhn.mobile.ac.Component.extend({construct:function(b){this.option(b);
this._oAL=new nhn.mobile.AppLauncher();
this._$elShowBtn=a(b.elShowBtn).on("click",this.callback("_onShowBtnClick"));
this._$elHideBtn=a(b.elHideBtn).on("click",this.callback("_onHideBtnClick"));
this._$elContent=a(b.elContent)
},show:function(){if(this.isShown()){return
}if(this.fire("show")){this._$elContent.get(0).style.display="";
this._$elHideBtn.get(0).style.display="";
this._$elShowBtn.hide();
this.fire("shown")
}},hide:function(){if(!this.isShown()){return
}if(this.fire("hide")){this._$elContent.hide();
this._$elHideBtn.hide();
this._$elShowBtn.get(0).style.display="";
this.fire("hided")
}},isShown:function(){return this._$elContent.is(":visible")
},_onShowBtnClick:function(b){this.show()
},_onHideBtnClick:function(b){this.hide()
}})
})(nhn.mobile.ac.$);
"undefined"==typeof nhn&&(nhn={}),nhn.mobile=nhn.mobile||{},function(b){var c=function(){this.$init()
};
c.prototype={$init:function(){this.EXECUTION_LIMIT=1500,this.INSTALL_DELAY=1000,this._oAgent=this._getOS(),this._deviceInfo=function(){var f=navigator.userAgent,g={};
return g.chrome25=f.match(/Chrome\/(\d+)/)&&RegExp.$1>=25,g.chrome40=f.match(/Chrome\/(\d+)/)&&RegExp.$1>=40,g.chromeCustomBrowser=/Version\/[\d+\.]+ Chrome/.test(f),g.lgIframeDevice=/LG-F(370|350|340|310|300|240)/.test(f),g.lgIframeTarget=g.chromeCustomBrowser&&g.lgIframeDevice,g
}()
},launch:function(e){if(this._oAgent.ios||this._oAgent.iphone){if(e.ios.redirect){return location.href=e.ios.redirect,!1
}this._isIOS9Plus()===!0?e.ios.universal||e.ios.universalFullUrl?this._launchIOSByUniversalLink(e):this._isNaverInApp()===!0?(this._installIOS(e),this._launchIOSWithFrame(e)):(this._launchIOS(e),e.ios.scheme||(location.href="https://itunes.apple.com/app/id"+e.ios.installId+"?mt=8")):(this._installIOS(e),this._launchIOSWithFrame(e))
}else{if(this._oAgent.android){if(e.android.redirect){return location.href=e.android.redirect,!1
}e.android.appstore&&e.android.appstore.productNo&&this._isNaverInApp()===!0?this._launchAndroidWithAppStore(e):this._launchAndroid(e)
}else{this._printNotMatchInfo(e)
}}},_launchAppByIframe:function(f){var g=document.createElement("iframe");
g.style.display="none",g.src=f,document.body.appendChild(g),setTimeout(function(){document.body.removeChild(g)
},1000)
},_launchIOSByUniversalLink:function(e){e.ios.universalFullUrl?window.location.href=e.ios.universalFullUrl:window.location.href=e.ios.universal+e.ios.query
},_launchIOS:function(e){return e.ios.scheme?void (window.location.href=e.ios.scheme+"://"+e.ios.query):!1
},_launchIOSWithFrame:function(f){if(!f.ios.scheme){return !1
}var g=f.ios.scheme+"://"+f.ios.query;
this._launchAppByIframe(g)
},_installIOS:function(g){var j=+new Date,f=this,l=this.INSTALL_DELAY,h="https://itunes.apple.com/app/id"+g.ios.installId+"?mt=8";
g.ios.scheme||(l=0),naverAppCheckTimer=setTimeout(function(){+new Date-j<f.EXECUTION_LIMIT&&(window.location.href=h)
},l)
},_launchAndroid:function(g){if(!g.android.scheme){return this._launchAndroidWithIntent("market://details?id="+g.android["package"]),!1
}if(this._isNaverInApp()===!0&&"naverapp"===g.android.scheme){var j=g.android.scheme+"://"+g.android.query;
this._launchAndroidWithIntent(j)
}else{var f="intent://"+g.android.query+"#Intent;",m=["appstore","redirect","query","fallback"];
for(var h in g.android){var l=g.android[h];
m.indexOf(h)<0&&l&&(f+=h+"="+l+";")
}f+="end",this._launchAndroidWithIntent(f)
}},_launchAndroidWithIntent:function(e){this._isNaverInApp()===!0&&parseFloat(this._oAgent.version)>=4.4?this._launchAppByIframe(e):window.location.href=e
},_launchAndroidWithAppStore:function(f){var g=f.android.scheme+"://"+f.android.query;
this._launchAppByIframe(g),this._moveToInstallByAppStore(f)
},_moveToInstallByAppStore:function(g){var h=this,f=new Date;
naverAppCheckTimer=setTimeout(function(){new Date-f<h.EXECUTION_LIMIT&&(h._launchAppByIframe("appstore://store?version=7&productNo="+g.android.appstore.productNo),h._moveToInstallByWebAppStore(g))
},this.INSTALL_DELAY)
},_moveToInstallByWebAppStore:function(g){var h=this,f=new Date,j=g.android.appstore.link;
naverAppCheckTimer=setTimeout(function(){new Date-f<h.EXECUTION_LIMIT&&(window.location.href=j)
},this.INSTALL_DELAY)
},_printNotMatchInfo:function(f){var g=f.config.unsupportedMsg;
g&&window.alert(g)
},_getOS:function(){var g,j=navigator.userAgent,f=!1,m=!1,h=!1,l="";
return j.match(/iPad/i)||j.match(/iPhone/i)?(f=!0,g=j.indexOf("OS ")):j.match(/Android/i)&&(m=!0,g=j.indexOf("Android ")),f===!0&&g>-1?l=j.substr(g+3,3).replace("_","."):m===!0&&g>-1&&(l=j.substr(g+8,3)),{ios:f,iphone:h,android:m,version:l}
},_isIframeTarget:function(){var e=this._deviceInfo;
return !(1!==window.g_inapp&&!e.lgIframeTarget&&e.chrome25)
},_isNaverInApp:function(){return/NAVER/.test(navigator.userAgent)||window.g_inapp&&1===window.g_inapp
},_isIOS9Plus:function(){return parseInt(this._oAgent.version,10)>=9
}};
var a=new c,d=function(f){var g=f.getAttribute("data-confirm-msg");
return g&&window.confirm(g)===!1?!1:void a.launch({ios:{scheme:f.getAttribute("data-ios-scheme"),installId:f.getAttribute("data-ios-install"),query:f.getAttribute("data-ios-query"),redirect:f.getAttribute("data-ios-redirect"),universal:f.getAttribute("data-ios-universal"),universalFullUrl:f.getAttribute("data-ios-universal-fullurl")},android:{scheme:f.getAttribute("data-android-scheme"),"package":f.getAttribute("data-android-package"),query:f.getAttribute("data-android-query"),action:f.getAttribute("data-android-action"),category:f.getAttribute("data-android-category"),redirect:f.getAttribute("data-android-redirect"),appstore:{productNo:f.getAttribute("data-appstore-productno"),link:f.getAttribute("data-appstore-link"),redirect:f.getAttribute("data-appstore-redirect")}},config:{unsupportedMsg:f.getAttribute("data-unsupported-msg")}})
};
b.AppLauncher=c,b.oAppLauncher=a,b.launchApp=d
}(nhn.mobile);
var oAutoComplete,oKeywordHistory,oRecognitionSearch;
$.createNamespace("naver.main").Search=(function(c){var b=function(){a()
},a=function(){var e=$Element("query");
var f=$Agent().os();
var g=(f.iphone&&f.version.search("4.3.3")==-1)?"touchstart":"click";
function d(h){h.stop();
e.detach(g,d);
initHistoryAutocomplete(true)
}if(!f.ios){e.attach(g,d)
}else{initHistoryAutocomplete(false)
}};
return{init:b}
})(naver.main.gVariable);
if(typeof console=="undefined"||typeof console.log=="undefined"){var console={log:function(){}}
}$.createNamespace("naver.main").util=(function(){var a=function(b){b=b.replace(/[\[]/,"\\[").replace(/[\]]/,"\\]");
var d=new RegExp("[\\?&]"+b+"=([^&#]*)"),c=d.exec(location.search);
return c==null?"":decodeURIComponent(c[1].replace(/\+/g," "))
};
return{getParameterByName:a}
})();
$.createNamespace("naver.main").logout=(function(){if(confirm("로그아웃 하시겠습니까?")){location.replace("https://nid.naver.com/nidlogin.logout?svctype=262144&amp;url="+encodeURIComponent(location.href))
}});
$.createNamespace("naver.main").elDoc=(document.documentElement||document.body.parentNode||document.body);
$.createNamespace("naver.main").scrollPos=(function(){var a=(window.pageXOffset!==undefined)?window.pageXOffset:naver.main.elDoc.scrollLeft;
var b=(window.pageYOffset!==undefined)?window.pageYOffset:naver.main.elDoc.scrollTop;
return{scrollX:a,scrollY:b}
});
$.createNamespace("naver.main").rolling=(function(){var b=0,r,o,a,p=function(u){for(var s=0,t;
t=u[s];
s++){if($Element(t).hasClass("rtk_u")){}else{if($Element(t).hasClass("stk2_u")){}else{d(t)
}}}},j=function(u){for(var s=0,t;
t=u[s];
s++){if($Element(t).hasClass("stk2_u")){d(t)
}}},f=function(u){for(var s=0,t;
t=u[s];
s++){if($Element(t).hasClass("rtk_u")){d(t)
}}},l=function(){var s=this;
$Element("ct").delegate("click","._ROLLING_JUMP",function(w){w.stop();
e();
var t=$Element(w.element);
var v=t.data("index");
var x=t.parent(function(y){return y.hasClass("_ROLLING")||y.hasClass("_ROLLING_2X")
});
if(x.length>0){var u=x[0].child();
$ElementList(u).hide();
u[v].show()
}c()
})
},d=function(t){var z=$Element(t);
var w=z.child();
var s=w.length;
var x=0;
var v=false;
if(w.length==0){return
}if(z.hasClass("_IMG_LAZY_LOADING")){v=true;
z.removeClass("_IMG_LAZY_LOADING")
}for(var u=0;
u<s;
u++){if(w[u].visible()){x=u;
break
}}$ElementList(w).hide();
x++;
if(x==s){x=0
}if(v){z.queryAll(".lzImg").forEach(function(A){var B=A.query("img.fade[data-src]");
if(B){B.attr("src",B.data("src"));
B.addClass("loaded").data("src",null)
}})
}w[x].show();
var y=w[(x+1)%s];
if(z.hasClass("_NEXT_IMG_LAZY_LOADING")&&y){y.queryAll("img[data-src]").forEach(function(A){A.attr("src",A.data("src"));
A.data("src",null)
})
}},c=function(s){e(s);
n();
if(s=="stock"){o=setInterval(function(){b++;
j($$("._ROLLING"))
},3000)
}else{if(s=="todayRTK"){a=setInterval(function(){b++;
f($$("._ROLLING"))
},3000);
m("attach")
}else{r=setInterval(function(){b++;
p($$("._ROLLING"));
if(b%2==0){p($$("._ROLLING_2X"));
b=0
}},3000);
g("attach")
}}},e=function(s){if(s=="stock"){o&&clearInterval(o);
b--
}else{if(s=="todayRTK"){a&&clearInterval(a);
b--;
m("detach")
}else{r&&clearInterval(r);
b=0;
g("detach")
}}},n=function(){$A($$("._ROLLING_RESET")).forEach(function(s){$A($Element(s).child()).forEach(function(t){$Element(t).hide()
});
$Element(s).first().show()
})
};
l();
c();
c("stock");
function q(s){switch(s.type){case"focus":naver.main.rolling.stop("stock");
break;
case"blur":naver.main.rolling.start("stock");
break
}}var h=$$(".stk2_a",$("stk2_u_ot"));
$A(h).forEach(function(t){var s=$Element(t);
s.attach("focus",q);
s.attach("blur",q)
});
function g(u){var t=($$("._ROLLING a")).concat($$("._ROLLING button"));
function s(v){switch(v.type){case"focus":naver.main.rolling.stop();
break;
case"blur":naver.main.rolling.start();
break
}}if(t&&t.length>0){if(u==="attach"){$A(t).forEach(function(w){var v=$Element(w);
v.attach("focus",s);
v.attach("blur",s)
})
}else{if(u==="detach"){$A(t).forEach(function(w){var v=$Element(w);
v.detach("focus",s);
v.detach("blur",s)
})
}}}}function m(u){var t=$$("#_MM_TODAY_RANKING ._ROLLING a");
function s(v){switch(v.type){case"focus":naver.main.rolling.stop("todayRTK");
break;
case"blur":naver.main.rolling.start("todayRTK");
break
}}if(t&&t.length>0){if(u==="attach"){$A(t).forEach(function(w){var v=$Element(w);
v.attach("focus",s);
v.attach("blur",s)
})
}else{if(u==="detach"){$A(t).forEach(function(w){var v=$Element(w);
v.detach("focus",s);
v.detach("blur",s)
})
}}}}return{start:c,stop:e,reset:n}
})();
$.createNamespace("naver.main").Logo=(function(){var a=function(){$Cookie().remove("MM_S");
$Cookie().remove("MM_margin")
};
return{click:a}
})();
var Logo=naver.main.Logo;
$.createNamespace("naver.main").Evaluation=(function(){$Element("ct").delegate("click","._EVAL",function(b){b.stop();
var a=$Element(b.element);
var c=a.data("gdid")||"";
$Cookie().set("MM_CLK_"+c,"1",7);
$Element("beval_"+c).hide();
$Element("aeval_"+c).show()
})
})();
$.createNamespace("naver.main").ContentsClick=(function(a){$Element("ct").delegate("click","[data-clk]",function(w){var z=$Element(w.element);
var p=z.data("area")||naver.main.SectionManager.getSectionName();
var c=a.getGridInfo(p,"clickArea")+z.data("clk");
var n=z.data("gdid")||"";
var B=z.data("rank")||"";
var v=z.data("ugdid")||"";
var d=z.parent(function(e){return e.hasClass("grid1")||e.hasClass("grid2")
})[0];
if(d&&B==""&&p!="NEWS"){B=d.attr("index")?(parseInt(d.attr("index"),10)+1):""
}var s=d.data("tags")||"";
var r=s?s.split(","):[];
var m={sn:{r:window.innerWidth+"x"+window.innerHeight,m:jindo.m.isVertical()?"v":"h",pid:pid},ar:{i:(d.attr("index")?(parseInt(d.attr("index"),10)+1):"")},lk:{g:v},tg:{al:r}};
if(z.hasClass("_MM_AIRS_DATA_ITEM")){var x=$$("._MM_AIRS_DATA_ITEM",d);
var j=[];
var C=z.data("more")||false;
for(var t=0;
t<x.length;
t++){var u=$Element(x[t]);
if(u.data("more")==C){j.push(u.data("gdid"))
}}if(z.data("gdids")){var A=z.data("gdids");
j=A?A.split(","):j
}m.ar["gl"]=j;
if(z.data("item-rank")){m.lk={};
m.lk["r"]=z.data("item-rank")
}var q=$$.getSingle("._MM_AIRS_DATA",d);
var y;
if(q){y=$Element(q)
}else{y=$Element("_MM_AIRS_INFO_"+p)
}if(y){var h=y.data("model-version");
var o=y.data("session-id");
if(h&&o){m.md={};
m.md["v"]=h;
m.md["s"]=o
}}}if(z.test("._MM_SHOPPING_MY_RECOMMEND_PRODUCT, ._MM_SHOPPING_MY_RECOMMEND_REFRESH, ._MM_SHOPPING_MY_RECOMMEND_MORE")){var g=z.query("! ._MM_SHOPPING_MY_RECOMMEND_CONTENT");
var b=$A(g.queryAll("._MM_SHOPPING_MY_RECOMMEND_CATEGORY ._MM_SHOPPING_MY_RECOMMEND_PRODUCT"));
m.ar["gl"]=b.map(function(D){return $Element(D).data("ugdid")
}).$value();
m.lk["r"]=z.data("item-rank")||"";
m.tg["al"]=(g.data("tags")||"").split(",");
m.md={v:"",s:""}
}if(z.test("[data-clk=chmedia], [data-clk=chnewsthumb], [data-clk=chnewstext]")){m.lk["oid"]=z.data("oid")||"";
m.lk["aid"]=z.data("aid")||""
}if(z.hasClass("_MM_TV_DATA_ITEM")){n=z.data("channel-id")||z.data("clip-no")||"";
m.lk={};
var l=Number(z.data("index")||"");
var f=Number(z.data("page")||"");
m.lk["r"]=l+((f-1)*5);
m.md={};
m.md["v"]=z.data("timestamp")
}nclk(z.$value(),c,n,B,0,encodeURIComponent(JSON.stringify(m)));
naver.main.LogHistory.add(naver.main.SectionManager.getSectionName(),"click")
})
})(naver.main.GridInfo);
$.createNamespace("naver.main").PageEvent=(function(){var a=function(d){if(window.localStorage){var j=d.persisted;
this.nStartTime=new Date().getTime();
var h=localStorage.getItem("MSDT.pageevent"+location.pathname);
if(!h){return
}localStorage.removeItem("MSDT.pageevent"+location.pathname);
var e=JSON.parse(h);
var g=Number(e.et);
var c=Number(e.vt);
var f=this.nStartTime-g;
e.st=nStartTime;
e.persist=j;
e.rt=f;
e.sectionId=$Cookie().get("MM_S")||"NEWS";
CH.rq("l","pageevent",e);
localStorage.removeItem("MSDT.pageevent")
}},b=function(c){if(window.localStorage){var d=new Date().getTime();
var e={};
e.st=this.nStartTime;
e.et=d;
e.vt=d-this.nStartTime;
localStorage.setItem("MSDT.pageevent"+location.pathname,JSON.stringify(e))
}};
return{pageShown:a,pageHidden:b}
})();
$.createNamespace("naver.main").getAppleDeviceInfo=function(){var c=navigator.platform,a=screen.height,d={"1":{iPhone:"3GS",iPad:"1,2 Gen/Mini"},"2":{iPhone:{"480":"4(S)","568":"5(C/S)","667":"6"},iPad:"3,4 Gen/Air/Mini retina",iPod:"Touch"},"3":{iPhone:"6PLUS"}},b={name:navigator.platform,model:"N/A"};
if(/i(phone|pad|pod)/i.test(c)){if(window.devicePixelRatio==2){b.model=d[2][c];
if(c=="iPhone"&&a in b.model){b.model=b.model[a]
}}else{b.model=d[window.devicePixelRatio][c]
}}else{b.model="This device isn't from Apple.";
b={}
}return b
};
$.createNamespace("naver.main").getNaverInappInfo=function(){var a=navigator.userAgent,c={serviceCode:"N/A",browserServiceCode:-1,serviceVersion:-1};
if(/naver/i.test(a)){var b=a.match(/NAVER(.+)$/g);
if(b!==null&&b.length>0){b=b[0].match(/NAVER\((\S+);\s(\S+);\s(\S+);\s(\S+)(;\s(\S+))?\)/);
if(b!==null&&b.length>4){c.serviceCode=b[2];
c.browserServiceCode=parseFloat(b[3]);
c.serviceVersion=b[4]
}}}return c
};
$.createNamespace("naver.main").paddingTop=function(a,b){if(a!=b){$Element("ct").css("paddingTop",a+"px")
}};
$.createNamespace("naver.main").menuStatus=function(f){if(f.bContentOnly){return
}var b=";";
var e=$Cookie().get("MM_panel")||f.sPanelOn;
var c=$A(e.split(b));
var d=$A(f.sPanelAll.split(b));
var a=d.filter(function(g){return !c.has(g)
}).$value().join(b);
CH.lcs("WEB.menu",{menuOnList:e,menuOffList:a,ni:$Cookie().get("NNB"),menuSetting:($Cookie().get("MM_panel")?"ON":"OFF")})
};
$.createNamespace("naver.main").SectionSetting=(function(){var g=$Element("set_start");
if(g&&!$Cookie().get("MM_menu_guide")&&g){var t=g.hasClass("schn_menusetup")?'<span class="spip spip_menunew">NEW</span>':'<span class="sch_new"><span class="sprh sprh_new">NEW</span></span>';
g.append(t)
}var l,u,q,p,f,j="MM_menu_subscribe",s="MM_menu_subscribe_first",d="MM_menu_event_id",r="MM_panel",v="MM_panelAll",a="MM_panel_origin",h="MM_S_TOAST",n="MM_L_HASH",c=$Element("ly_beauty_event"),o=function(){if(!!!c){return
}l=$Cookie().get(j);
q=$Cookie().get(s);
u=$Cookie().get(d);
p=$Cookie().get(h)=="Y";
f=$Cookie().get(n);
$Cookie().remove(j,"m.naver.com");
$Cookie().remove(s,"m.naver.com");
$Cookie().remove(d,"m.naver.com");
$Cookie().remove(h);
$Cookie().remove(n);
$Cookie().remove(n,".m.naver.com");
if(l&&!u){m(l)
}if(f){setTimeout(function(){var x=-10;
var w=$A(f.split(","));
w.forEach(function(z){var y=$Element(z);
if(!y){$A.Continue()
}if($Agent().os().android==true&&naver.main.inapp.isInApp==true){x=x-43-15-10
}window.scrollTo(0,y.offset().top+x);
$A.Break()
})
},250)
}return{onClickEventCard:b,showAlertDialog:m}
},m=function(A){var B="";
var w="";
var z=false;
switch(A){case"update":w="lbe_tw3";
B="홈 메뉴 설정은<br/>최신 네이버앱에서<br/>가능합니다.";
break;
case"fontSizeClose":w="lbe_tw5";
B='네이버 홈 글자 크기는<br><span class="sp_lbe_edit_green"></span><span class="lbe_pn">홈 메뉴 편집</span>화면 하단에서<br>언제든 변경할 수 있습니다.';
break;
default:w="lbe_tw4";
z=true;
if(q!=null){B='<span class="lbe_pn">'+naver.main.GridInfo.getGridInfo(A,"htServiceName")+"</span>판이<br/> 첫판으로 추가되었습니다!"
}else{if($Cookie().get("MM_panel_toast")){return
}var y=$Cookie().get("MM_panel_changed");
var C=$Cookie().get("MM_panel_changed_msg");
if(y==null||C==null||y.length<1||C.length<1){return
}if(p==false){return
}var x=$A(y.split(";"));
B=e(x,C);
if(!B){return
}}break
}c.query(".lbe_tw").addClass(w);
c.query(".lbe_t").html(B);
if(z){c.query(".lbe_s").show()
}else{c.query(".lbe_s").hide()
}c.show();
c.attach("click",function(D){this.hide()
})
},e=function(x,B){var A=0;
var w=$A(x);
if(x!=null){A=w.length()
}if(A==0){return false
}var z="";
var C="htServiceName";
var y=naver.main.GridInfo.getGridInfo(l,C);
switch(B){case"CHANGE":if(A==1){z='<span class="lbe_pn">'+y+"</span>판 순서가<br/> 변경되었습니다!"
}else{z='<span class="lbe_pn">'+y+" 외 "+(A-1)+"개</span> 판이 <br/>변경되었습니다!"
}break;
case"ADD":if(A==1){z='<span class="lbe_pn">'+y+"</span>판이 <br/>추가되었습니다!"
}else{z='<span class="lbe_pn">'+y+" 외 "+(A-1)+"개</span> 판이 <br/>추가되었습니다!"
}}return z
},b=function(x){if(l&&u){if(naver.main.gVariable.isLogin){var x=$Element("eventLink");
var w=x.data("src");
if(w!=null&&w!=""){nclk(x,naver.main.GridInfo.getGridInfo(l,"clickArea")+"evn"+u,"","");
location.href=w
}else{var y=naver.main.GridInfo.getGridInfo(l,"htServiceName")+" 이벤트 응모가<br/>완료되었습니다!";
c.query(".lbe_tw").addClass("lbe_tw4");
c.query(".lbe_t").html(y);
c.show();
c.attach("click",function(z){this.hide();
$Element(x).parent(function(A){return A.hasClass("id_uio_cd_banner")
})[0].hide()
});
nclk(x,naver.main.GridInfo.getGridInfo(l,"clickArea")+"evn"+u,"","")
}}else{$Cookie().set(j,l,1,"m.naver.com");
$Cookie().set(d,u,1,"m.naver.com");
location.href="https://nid.naver.com/nidlogin.login?svctype=262144&url="+encodeURIComponent(location.href)
}}return false
};
return{init:o}
})().init();
(function(){$Element("ct").delegate("click","._MM_MORE",function(f){var h=$Element(f.delegatedElement);
var e=parseInt($Element(f.srcElement).data("more-unit"));
var g=parseInt($Element(f.srcElement).data("default-unit"));
if(!isNaN(e)){f.stop();
var c=h.queryAll("._MM_MORE_ITEM").filter(function(j){return !j.visible()
});
for(var a=0;
a<e;
a++){if(c.length<1){break
}c.pop().show("block")
}if(c.length<1){$Element(f.srcElement).hide();
$ElementList(h.queryAll("._MM_MORE_START_WRAP")).hide();
$ElementList(h.queryAll("._MM_MORE_END, ._MM_MORE_END_WRAP")).show("block")
}naver.main.SectionManager.setHeight()
}if(!isNaN(g)){f.stop();
var b=$A(h.queryAll("._MM_MORE_ITEM").filter(function(j){return j.visible()
}));
var d=b.length();
for(var a=g;
a<d;
a++){$Element(b.pop()).hide();
if(a==(d-1)){$Element(f.srcElement).hide();
$ElementList(h.queryAll("._MM_MORE_END_WRAP")).hide();
$ElementList(h.queryAll("._MM_MORE_START, ._MM_MORE_START_WRAP")).show("block")
}}naver.main.SectionManager.setHeight()
}})
})();
(function(){function a(){$$("#ct ._MM_TAB").forEach(function(e){var b=$Element(e);
var c=b.queryAll("[data-tab-nav][data-tab-random=on]");
if(c.length>0){var f=b.data("nav-on-class");
var g=$A(c).shuffle().get(0);
var d=g.data("tab-nav");
$ElementList(b.queryAll("[data-tab-nav]")).removeClass(f);
$ElementList(b.queryAll("[data-tab-contents]")).hide();
g.addClass(f);
b.query("[data-tab-contents="+d+"]").show();
$ElementList(c).attr("data-tab-random",null)
}})
}a();
mainObserver.attachCustomEvent("onLoadPanel","_MM_TAB",function(b){a()
});
$Element("ct").delegate("click","._MM_TAB",function(l){var j=$Element(l.delegatedElement);
var c=$Element(l.srcElement);
if(!c.data("tab-nav")){var f=c.parent(function(m){return m.isChildOf(j)&&!!m.data("tab-nav")
});
if(f.length==1){c=f[0]
}}var b=c.data("tab-nav");
if(b!=null){l.stop();
var e=j.data("nav-on-class");
if(e){$ElementList($$("."+e,j)).removeClass(e).attr({"aria-selected":"false"});
j.query('[data-tab-nav="'+b+'"]').addClass(e).attr({"aria-selected":"true"})
}if(c.hasClass("_MM_OUTER_TAB")){welOuterWrapper=c.parent(function(m){return m.hasClass("_MM_OUTER_WRAP")
},4);
if(welOuterWrapper[0]!=null){j=welOuterWrapper[0];
$ElementList($$("._MM_OUTER_CONTENT",j)).hide()
}}else{$ElementList($$("[data-tab-contents]",j)).hide()
}var h=j.query('[data-tab-contents="'+b+'"]');
if(h){naver.main.rolling&&naver.main.rolling.start();
h.show();
h.queryAll(".lzImg").forEach(function(m){var n=m.query("img[data-src]");
if(n){n.attr("src",n.data("src"));
n.addClass("loaded").data("src",null)
}});
naver.main.HorizontalScroll.setHorizontalScrollEventOnTemplate();
naver.main.HorizontalScroll.refreshHorizontalScrollEvent()
}else{if(j.query('[data-tab-contents-scroll-template="'+b+'"]')){var g=j.query('[data-tab-contents-scroll-template="'+b+'"]').html();
j.appendHTML(g);
j.queryAll(".lzImg").forEach(function(m){var n=m.query("img.fade[data-src]");
if(n){n.attr("src",n.data("src"));
n.addClass("loaded").data("src",null)
}});
naver.main.HorizontalScroll.setHorizontalScrollEventOnTemplate()
}}naver.main.SectionManager.setHeight();
var d=j.data("cookie");
if(d){$Cookie().set(d,b,(1/24/60)*10)
}mainObserver.fireCustomEvent("clickMMTab","_MM_TAB",{tabPanel:j,clickedTabNavi:c})
}})
})();
(function(){$Element("ct").delegate("click","._MM_PAGING",function(q){var e=$Element(q.srcElement);
var d=e.data("loading")||false;
if((e.hasClass("_MM_PAGING_PREV")||e.hasClass("_MM_PAGING_NEXT"))&&d==false){e.data("loading",true);
var j=$Element(q.delegatedElement);
var r=j.query("._MM_PAGING_DISPLAY");
var c=j.query("._MM_PAGING_FLICKING_DISPLAY");
var f=j.query("._MM_PAGING_PREV");
var l=j.query("._MM_PAGING_NEXT");
var n=parseInt(j.data("paging-index"),10);
var m=parseInt(j.data("paging-count"),10);
var h=j.data("paging-css");
var g=e.data("paging-direction");
if("next"===g){n=(n+1)%m
}else{n=(n+(m-1))%m
}var p=$ElementList($$("._MM_PAGING_CONT",j));
var b=p.get(n);
for(var o in b.queryAll("img")){var s=$Element(b.queryAll("img")[o]);
if(s.attr("data-src")){s.attr("src",s.attr("data-src"));
s.attr("data-src",null)
}if(s.hasClass("fade")){s.removeClass("fade")
}}var a=naver.main.SectionManager.getSectionName();
setTimeout(function(){for(var t=0;
t<p.length();
t++){if(t==n){b.show();
if(a!=null&&a.indexOf("SHOPPING")>-1){naver.main.ShoppingStylePick.checkAndSendLog(b,true)
}}else{p.get(t).hide()
}}e.data("loading",false)
},300);
j.data("paging-index",n);
if(r){r.html(n+1)
}var c=$ElementList($$("._MM_PAGING_FLICKING_DISPLAY",j));
if(c.length()==m){c.removeClass(h);
c.get(n).addClass(h)
}}})
})();
(function(){$Element("ct").delegate("click","._MM_GENDER",function(b){var a=$Element(b.element);
if(a.data("gender")==="women"){$Cookie().set("MM_IS","SHOPPINGWOMEN",3650)
}else{if(a.data("gender")==="men"){$Cookie().set("MM_IS","SHOPPINGMEN",3650)
}else{$Cookie().set("MM_IS","SHOPPINGMIZ",3650)
}}location.replace(location.href);
b.stop()
})
})();
(function(){$Element("ct").delegate("click","._MM_WT_TAB",function(b){var a=$Element(b.element);
var d=a.data("tabNav");
var c=0;
if(d==="webnovel"){c=1
}else{if(d==="comic"){c=2
}else{if(d==="genrenovel"){c=3
}}}$Cookie().set("MM_WT_TAB",c,30)
})
})();
(function(){$Element("ct").delegate("click","._MM_BESTCLICK_HELP_INFO_CLOSE",function(b){var a=$Element(b.element).parent(function(c){return c.hasClass("_MM_BESTCLICK_HELP_INFO")
});
if(a[0]!==null){a[0].toggle()
}})
})();
(function(){$Element("ct").delegate("click","._MM_BESTCLICK_HELP_BTN",function(b){var a=$Element(b.element);
var c=a.parent().child(function(d){return d.hasClass("_MM_BESTCLICK_HELP_INFO")
});
if(c!==null){c[0].toggle()
}})
})();
(function(){$Element("ct").delegate("click","._MM_FOLD",function(d){d.stop();
var f=$Element(d.srcElement);
var a=f.parent(function(g){return g.hasClass("grid1")
},10)[0];
var c="MM_FOLD_"+f.data("seq");
if(f.hasClass("_MM_FOLD_SET")){$Cookie().set(c,"1",(1/24/60)*10)
}else{$Cookie().remove(c)
}$ElementList(a.queryAll("._MM_FOLD")).toggle("block");
f.hide();
var e=$Element(d.delegatedElement);
var b=e.data("other-button");
if(b){$A(a.queryAll("img")).forEach(function(g){if(g.data("src")){g.attr("src",g.data("src"));
g.data("src",null)
}});
$ElementList(a.queryAll("."+b)).show("block")
}$ElementList(a.queryAll("._MM_FOLD_ITEM")).toggle("block");
naver.main.SectionManager.setHeight()
})
})();
(function(){$Element("ct").delegate("click","._MM_RANDOM_REFESH",function(d){d.stop();
var f=$Element(d.srcElement);
var c=f.parent().parent().query("._MM_RANDOM_PAGING");
var e=c.data("random-index");
c.query("[data-index="+e+"]").hide();
var a=0;
var b=c.child(function(g){return g.hasClass("_MM_RANDOM_ITEM")&&!g.hasClass("DISPLAYED")
});
if(b.length<1){$ElementList(c.queryAll("._MM_RANDOM_ITEM.DISPLAYED")).toggleClass("DISPLAYED");
b=c.child(function(g){return g.hasClass("_MM_RANDOM_ITEM")&&(g.data("index")!=e)
})
}a=Math.floor((Math.random()*(b.length)));
b[a].toggleClass("DISPLAYED");
b[a].show();
c.data("random-index",b[a].data("index"))
})
})();
$.createNamespace("naver.main").ToastBanner=(function(){var d=$Element("_MM_TOAST_LAYER");
if(!d){return
}var b=null;
function a(e,f){b=b||new jindo.m.Morph();
b.pause();
b.clear();
d.html(e);
d.css("opacity",1);
d.show();
var f=f||2000;
setTimeout(function(){b.pushAnimate(1000,[d,{"@opacity":"0"}]).pushCall(function(){d.hide()
}).play()
},f)
}function c(){if(!b){return
}b.pause();
b.clear();
d.hide()
}return{show:a,hide:c}
})();
$.createNamespace("naver.main").Light=(function(){if(location.pathname!="/"&&location.pathname!="/index.html"){return
}var h=-540,m=naver.main.resources("menu").getMenuList()[0],g=false,d='<div id="id_uio_cd_nlight" class="grid1 id_uio_cd_nlight"><div class="uio_cd_nlight"><a href="#" class="ucn_a">라이트홈으로 <wbr>보기</a><button type="button" class="ucn_btn_close"><span class="blind">안내 닫기</span></button></div></div>',j=naver.main.gVariable,n,e=function(){naver.main.resources("light").removeNLight();
l()
},l=function(){f();
p();
g=naver.main.resources("light").getShortcut()=="1";
if(g&&j.isApp){var w=jindo.m.getOsInfo();
var x=naver.main.getNaverInappInfo();
g=/order=1($|&)/.test(location.href)&&((w.iphone&&x.browserServiceCode>=530)||(w.android&&x.browserServiceCode>=470))
}c(naver.main.resources("menu").getSet(),$Element($$.getSingle("#_MM_FLICK_FIRST_PANEL .brick-vowel")));
if(j.isApp){return
}var v=!g;
var u=t();
v=v&&u&&naver.main.resources("light").getLastOversea()=="0";
if(v){b()
}naver.main.resources("light").setLastOversea(u)
},r=function(){$Cookie().set("MM_LAB_LIGHT","0",365*5);
if(j.isApp){APP.run("naverapp://","","cookieChange?service=main&cookieName=MM_LAB_LIGHT&cookieValue=0",false)
}else{q();
location.href=location.href
}},f=function(){var w=$Element("fot_go_light");
if(!w){return
}if(j.isApp){var u=jindo.m.getOsInfo();
var v=naver.main.getNaverInappInfo();
if(u.iphone&&v.browserServiceCode<540){return
}else{if(u.android&&v.browserServiceCode<490){return
}else{if(u.ipad){return
}}}}w.show("inline-block");
w.attach("click",function(x){x.stop();
nclk({},"fot.lighthome","","");
r()
})
},t=function(){if(j.sRegionCode&&/^WD([A-Z]+)[0-9]+$/.test(j.sRegionCode)){return true
}var v=new Date();
if(v.getTimezoneOffset()!=h){return true
}var w=v.toString().toUpperCase();
if(w.search("일본")>=0||w.search("도쿄")>=0||w.search("오사카")>=0){return true
}var u=w.replace(/^.*\((.*)\).*$/,"$1");
if(/^.*T$/.test(u)&&u!="KST"){return true
}return false
},b=function(){var u='<div id="float_nlight" class="float_nlight fn_btype"><p class="fn_t"><span class="fn_st">해외에서 접속 중이신가요?</span>네트워크가 느릴 때는 <wbr>라이트홈을 사용해 보세요.</p><a href="#" class="fn_a">라이트홈으로 보기</a><button type="button" class="fn_btn_close"><span class="blind">안내 닫기</span></button></div>';
var w=$Element(u);
$Element(document.body).append(w);
w.query(".fn_btn_close").attach("click",function(x){x.stop();
w.hide();
nclk({},"lhb.bannerclose","","")
});
w.query(".fn_a").attach("click",function(x){x.stop();
nclk({},"lhb.gobanner","","");
r()
});
var v={};
v.act="web.lgtbnr";
v.rc=j.sRegionCode||"";
v.tz=(new Date()).toString();
CH.send(CH.query(v,"t"))
},o=function(){if($("float_nlight")){$Element("float_nlight").leave()
}},c=function(u,v){if(!g||!v||$$("#id_uio_cd_nlight",v).length!=0){return
}if(j.isApp){g=false
}else{if(u&&u!=m){return
}}var w=$Element(d);
v.prepend(w);
w.query(".ucn_btn_close").attach("click",function(x){x.stop();
nclk({},"lhn.close","","");
if(!confirm("라이트홈으로 보기를 삭제하시겠습니까?")){return
}nclk({},"lhn.closeok","","");
w.hide();
naver.main.resources("light").setShortcut("0")
});
w.query(".ucn_a").attach("click",function(x){x.stop();
nclk({},"lhn.lighthome","","");
r()
})
},p=function(){if(naver.main.resources("light").popGuideBanner()!="1"){return
}var u='<a href="#" onclick="naver.main.Light.scrollToFooter();return false;" class="alt_msg alt_tobottom">라이트홈으로 설정하려면<br><span class="alt_name">여기를 눌러 맨 아래</span>로 이동하세요.</a><button type="button" onclick="naver.main.Light.closeToast();return false;" class="alt_btn_close"><span class="blind">안내닫기</span></button>';
naver.main.ToastBanner.show(u,10000)
},a=function(){nclk({},"lhl.bannerdown","","");
naver.main.SectionManager.appendAll(function(){var u=jindo.m.getOsInfo();
var v=naver.main.getNaverInappInfo();
if(!j.isApp||u.android){window.scrollTo(0,document.body.scrollHeight)
}else{if(j.isApp&&u.iphone&&v.browserServiceCode>=540){location.href="naverapp://scrollDown"
}}naver.main.ToastBanner.hide()
})
},s=function(){nclk({},"lhl.bannerclose","","");
naver.main.ToastBanner.hide()
},q=function(){var x={};
if(!CH){return
}x.fc="li";
x.lt="cm";
x.of="Y";
x.di=$Cookie().get("NNB");
var u=$Agent().os();
if(u.android||u.ios){x.ot=u.android?"Android":"ios";
x.ovs=u.version
}var w=CH.query(x,"lab");
var v=(new Image());
v.src=location.protocol+"//l.msdl.naver.com/"+w;
v.onload=function(){v.onload=null;
return
}
};
e();
return{showTextBanner:c,removeFloatingBanner:o,showGuideBanner:p,scrollToFooter:a,closeToast:s}
})();
$.createNamespace("naver.main").PanelRecommend=(function(b){var c=$Element("_MM_ALERT_DIALOG");
var a=$Element("_MM_ALERT_DIALOG_TITLE");
var d="";
$Element("ct").delegate("click","._MM_ADD_PANEL",function(e){e.stop($Event.CANCEL_DEFAULT);
d=$Element(e.element).data("panel");
if(naver.main.gVariable.sBrowserType=="INAPP"){var g=jindo.m.getOsInfo();
var h=naver.main.getNaverInappInfo();
if((g.iphone&&h.browserServiceCode>=490)||(g.android&&h.browserServiceCode>=420)||(g.ipad&&h.browserServiceCode>=131)){location.href="/naverapp/?version=1&cmd=onMenu&menuCode="+d
}else{location.href="/naverapp/?version=1&cmd=addMenu&menuCode="+d
}}else{var j=naver.main.GridInfo.getGridInfo(d,"htServiceName");
var f='<span class="lmr_st">'+j+"</span>판을 추가할까요?";
if(naver.main.Panel.getPanelOn().indexOf(d)>-1){f='<span class="lmr_st">'+j+"</span>판으로 이동 할까요?"
}a.html(f);
c.data("template","addPanel");
c.show()
}});
if(c){c.delegate("click","._MM_ALERT_DIALOG_CANCEL",function(f){if(c.data("template")!="addPanel"){return
}var g=naver.main.SectionManager.getSectionName();
var e=b.getGridInfo(g,"clickArea");
nclk(f.element,e+"tabrcmonno","","");
c.hide()
});
c.delegate("click","._MM_ALERT_DIALOG_OK",function(f){if(c.data("template")!="addPanel"){return
}var g=naver.main.SectionManager.getSectionName();
var e=b.getGridInfo(g,"clickArea");
nclk(f.element,e+"tabrcmonyes","","");
c.hide();
setTimeout(function(){naver.main.NaverApp.createMenuCodeCookie(d);
location.href="/naverapp/?version=1&cmd=addMenu&menuCode="+d
},100)
})
}})(naver.main.GridInfo);
$.createNamespace("naver.main").RealtimeKeywordWeather=(function(a){$Element("ct").delegate("click","._MM_RTK_WEATHER_YES",function(b){b.stop($Event.CANCEL_DEFAULT);
var c=$Element(b.element).parent(function(d){return d.hasClass("_MM_RTK_WEATHER_BANNER")
})[0];
$Cookie().set("MM_RTK_WEATHER","1",365*10);
$Element("_MM_RTK_CONFIRM").show();
naver.main.RTK&&naver.main.RTK.start();
$ElementList("._MM_RTK_WEATHER").show();
c.hide()
});
$Element("ct").delegate("click","._MM_RTK_WEATHER_NO",function(b){b.stop($Event.CANCEL_DEFAULT);
$Cookie().set("MM_RTK_WEATHER_CLOSE","1",15);
var c=$Element(b.element).parent(function(d){return d.hasClass("_MM_RTK_WEATHER_BANNER")
})[0];
c.hide()
})
})();
$.createNamespace("naver.main").ShoppingStylePick=(function(c){var a=function(q,h,l){var j=[];
var x=naver.main.SectionManager.getSectionName()||q.data("panel");
var z=naver.main.GridInfo.getSectionId(x);
var p="";
var u=$Element(q).parent(function(B){return B.hasClass("_MM_STYLEPICK")
});
if(u.length<1){return
}p=u[0].data("cntsType");
var A=z==="SHOPPING"?"SHOPPING":(z==="SHOPPINGWOMEN"?"GIRL":(z==="SHOPPINGMIZ"?"WOMAN":"MAN"));
if(A=="SHOPPING"&&p=="TRPICKMEN_"){A="SHOPPING_MAN"
}if(z=="SHOPPING"){p=""
}var n=q.queryAll("._MM_PAGING_URL");
for(var r in n){var m=n[r];
j.push(m.data("cnts-seq"));
var v=m.attr("href");
if(v.match(/&*(mainMenu=)[A-Z]*/g)!=null){continue
}v+=v.indexOf("?")<0?"?":"&mainMenu="+p+A;
m.attr("href",v)
}if(l){e(p+A)
}if(!!!h&&q.data("logged")==true){return
}var t=j.join(",");
var s="adCntsSeqs="+t+"&mainMenu="+p+A+"&ts="+(new Date).getTime();
var y=window.logsrvstylepick;
if(!y){y="adlog.shopping.naver.com"
}var o="https://"+y+"/trendpick/adExposeLogger.nhn?"+s;
var w=(new Image());
w.src=o;
w.onload=function(){w.onload=null;
return
};
q.data("logged",true)
},d=function(j){var l=$Element("_MM_FLICK_FIRST_PANEL");
if(naver.main.SectionManager&&naver.main.SectionManager.f()!=null){l=naver.main.SectionManager.f().getElement()
}var h=$$("._MM_STYLEPICK",l);
h.forEach(function(m){var n=false;
if($Element(m).hasClass("_MM_TAB")){n=f($Element(m))
}$$("._MM_PAGING_CONT",m).forEach(function(o){if($Element(o).visible()){b($Element(o),j,n)
}})
})
},f=function(j){var n=j.queryAll("[data-tab-nav][data-tab-weight]");
if(n.length>0){var h=0;
n.forEach(function(r){h+=parseInt(r.data("tab-weight"))
});
var q;
var p=Math.random()*h;
for(var m=0;
m<n.length;
m++){p-=parseInt(n[m].data("tab-weight"));
if(p<0){q=n[m];
break
}}var o=j.data("nav-on-class");
var l=q.data("tab-nav");
$ElementList(j.queryAll("[data-tab-nav]")).removeClass(o);
$ElementList(j.queryAll("[data-tab-contents]")).hide();
q.addClass(o);
q.data("logged",true);
j.query("[data-tab-contents="+l+"]").show();
$ElementList(n).attr("data-tab-weight",null);
mainObserver.attachCustomEvent("clickMMTab","naver.main.ShoppingStylePick",$Fn(function(s){if(s.clickedTabNavi.data("logged")==true){return
}var r=s.clickedTabNavi.data("tabNav");
s.tabPanel.queryAll("[data-tab-contents="+r+"] ._MM_PAGING_CONT").forEach(function(t){if(t.visible()){b(t,true)
}});
$ElementList(s.clickedTabNavi.parent().child()).attr("data-logged",false);
s.clickedTabNavi.data("logged",true)
},this).bind());
return true
}return false
},g=function(m,w,p){var h=naver.main.SectionManager.getSectionName()||m.data("panel");
var l=naver.main.GridInfo.getSectionId(h);
var v=$Element(m).parent(function(x){return x.hasClass("_MM_STYLEPICK")
});
if(v.length<1){return
}var n=v[0].data("cntsType");
var j=l==="SHOPPING"?"":(l==="SHOPPINGWOMEN"?"_GIRL":"_WOMAN");
if(l=="SHOPPING"){n="SHOPPING_"
}var q=m.queryAll("._MM_CODISET_URL");
q.forEach(function(x){var y=x.attr("href");
if(y.match(/&*(mainMenu=)[A-Z]*/g)!=null){return
}y+=y.indexOf("?")<0?"?":"&mainMenu="+n+"CODI"+j;
x.attr("href",y)
});
if(p){e(n+"CODI"+j)
}if(!!!w&&m.data("logged")==true){return
}var u=m.data("adBrdSeq");
var r="adCntsSeqs="+u+"&mainMenu="+n+"CODI"+j+"&ts="+(new Date).getTime();
var t=window.logsrvstylepick;
if(!t){t="adlog.shopping.naver.com"
}var s="https://"+t+"/trendpick/adExposeLogger.nhn?"+r;
var o=(new Image());
o.src=s;
o.onload=function(){o.onload=null;
return
};
m.data("logged",true)
},b=function(j,m,n){var l=j.parent(function(q){return q.hasClass("_MM_STYLEPICK")
});
if(l.length<1){return
}var h=l[0];
if(h.hasClass("_MM_TAB")){var p=h.data("nav-on-class");
var o=h.query("."+p).data("tab-nav");
if(j.parent(function(q){return q.data("tab-contents")===o
}).length<1){return
}if(o==="trendpick_codiset"){return g(j,m,n)
}}return a(j,m,n)
},e=function(l){var m=window.logsrvstylepick;
if(!m){m="adlog.shopping.naver.com"
}var j="https://"+m+"/trendpick/adInteractionLogger.nhn?mainMenu="+l;
var h=(new Image());
h.src=j;
h.onload=function(){h.onload=null;
return
}
};
return{sendAllLog:d,checkAndSendLog:b}
})();
$.createNamespace("naver.main").LocationHistory=(function(){function a(d){if(!window.localStorage||!naver.main.gVariable.sRegionCode){return
}try{var c=(d.indexOf("WD")==0)?d.substr(0,5):d.substr(0,2);
var b="MSDT.location";
var l=[];
var g=localStorage.getItem(b);
if(g){l=JSON.parse(g)
}var j={};
j.code=c;
j.ts=svt;
var f=l[l.length-1];
if(f){if(f.code==c){l.pop()
}}l.push(j);
localStorage.setItem(b,JSON.stringify(l))
}catch(h){if(!h.code||!h.QUOTA_EXCEEDED_ERR||h.code!=h.QUOTA_EXCEEDED_ERR){JEagleEyeClient.sendError("[LocationHistory] _add : "+h)
}}}return{add:a}
})();
naver.main.LocationHistory.add(naver.main.gVariable.sRegionCode);
$.createNamespace("naver.main").LogHistory=(function(){function f(j,g){if(!window.localStorage){return
}try{var n=svt.substr(0,6);
var p=svt.substr(6,2);
var m={};
var l="MSDT."+g;
var q=localStorage.getItem(l);
if(q){m=JSON.parse(q)
}var h=0;
if(!!!m[n]){m[n]={}
}if(!!!m[n][p]){m[n][p]={}
}if(!!!m[n][p][j]){m[n][p][j]=0
}else{h=m[n][p][j]
}m[n][p][j]=(h+1);
localStorage.setItem(l,JSON.stringify(m))
}catch(o){if(!o.code||!o.QUOTA_EXCEEDED_ERR||o.code!=o.QUOTA_EXCEEDED_ERR){JEagleEyeClient.sendError("[LogHistory] _add : "+o)
}}}function c(h,g,m){var j=$A([]);
var v={};
try{var n={};
var l="MSDT."+g;
var t=localStorage.getItem(l);
if(!!!t){return j.$value()
}n=JSON.parse(t);
var y=new Date(svt.substr(0,4),(svt.substr(4,2)-1),svt.substr(6,2));
for(var o=0;
o<h;
o++){var x=$Date(y);
var p=x.format("Ym");
var s=x.format("d");
y.setDate(y.getDate()-1);
if(!!!n[p]||!!!n[p][s]){continue
}if(m){var w=n[p][s];
for(var u in w){var q=w[u];
v[u]=v[u]?(v[u]+q):q
}}j=j.concat(Object.keys(n[p][s]))
}}catch(r){JEagleEyeClient.sendError("[LogHistory] _get : "+r)
}if(m){return v
}return j.unique().$value()
}function b(p){try{var o=svt.substr(0,8);
var g="MSDT."+p;
var n=localStorage.getItem(g);
if(n){htLcsHistory=JSON.parse(n);
var j=Object.keys(htLcsHistory).sort();
var m=j[0];
if(htLcsHistory[m]){var h=Object.keys(htLcsHistory[m]).sort()[0];
o=m+h
}}return o
}catch(l){JEagleEyeClient.sendError("[LogHistory] _getFirstDate : "+l)
}}function e(h,g,r){if(!!!r){return[]
}var u=new Date(svt.substr(0,4),(svt.substr(4,2)-1),svt.substr(6,2));
var n=$A(r.split(";"));
var s=naver.main.gVariable.htPromotionPanel.list;
var m=b(g);
var q=$Date(u.setDate(u.getDate()-h)).format("Ymd");
if(m>q){return[]
}var t=c(h,g);
var j=[];
for(var o=0;
o<s.length;
o++){j.push(s[o].code)
}var p=a(h);
var l=n.filter(function(w,v,x){if(t.indexOf(w)>=0){return false
}else{if(j.indexOf(w)>=0){return false
}else{if(p.indexOf(w)>=0){return false
}else{return true
}}}});
return l.$value()
}function d(){try{var g=localStorage.getItem("MSDT.lastOn")||"{}";
return JSON.parse(g)
}catch(h){JEagleEyeClient.sendError("[LogHistory] _getLastOnMenu : "+h)
}}function a(m){try{var h=[];
var l=localStorage.getItem("MSDT.lastOn")||"{}";
var o=JSON.parse(l);
var g=$Date();
var n;
$H(o).forEach(function(q,p){n=$Date(q);
if(n.compare(g,"d")<m){h.push(p)
}});
return h
}catch(j){JEagleEyeClient.sendError("[LogHistory] _getRecentlyOnMenu : "+j)
}}return{add:f,get:c,getUnused:e}
})();
(function(){$Element("ct").delegate("click","._MM_REFRESH_BTN",function(e){e.stop();
var f=$Element(e.element);
var c=f.parent(function(g){return g.hasClass("_MM_REFRESH_NO_ROTATE")
},3)[0];
if(!!!c){return
}var b=$Element($$.getSingle("._MM_REFRESH_ITEM",c));
var a=$Element($$.getSingle("._MM_REFRESH_ITEM_HIDE",c));
if(b&&a){b.removeClass("_MM_REFRESH_ITEM");
a.removeClass("_MM_REFRESH_ITEM_HIDE").addClass("_MM_REFRESH_ITEM");
$A(a.queryAll("img")).forEach(function(g){if(g.data("src")){g.attr("src",g.data("src"));
g.data("src",null)
}});
setTimeout(function(){b.hide();
a.show()
},300)
}var d=$Element($$.getSingle("._MM_REFRESH_ITEM_HIDE",c));
if(!!!d){c.query("._MM_REFRESH_END").toggle("block");
c.query("._MM_REFRESH_BTN").toggle("none")
}})
})();
$.createNamespace("naver.main").ShortcutMenuOrder=(function(){var a=$Cookie().get("MM_S_ADD");
$Cookie().remove("MM_S_ADD")
})();
$.createNamespace("naver.main").CommonLayer=(function(){function a(f,g){var c=$Element("_MM_ALERT_T"+f);
var e=$Element("_MM_ALERT_T"+f+"_MSG");
var d=g;
e.html(d);
c.show()
}function b(d){var c=$Element(d);
if(c){c.hide()
}}return{showLayer:a,hideLayer:b,}
})();
$.createNamespace("naver.main").LcsLog=(function(g,c){var f="naver.main.LcsLog";
var c=c,b=function(o,h){try{h=h||{};
if(g.bContentOnly&&!h.isApp){return
}if(g.bContentOnly===true&&h.isApp===true){setTimeout(function(){try{if(g.bLcsAppCalled===true){naver.main.SectionManager.removeADScript()
}g.bLcsAppCalled=true;
naver.main.SectionManager.bindAD(o)
}catch(s){setTimeout(function(){try{naver.main.SectionManager.removeADScript();
naver.main.SectionManager.bindAD(o)
}catch(t){JEagleEyeClient.sendError("[LCS] naver.main.SectionManager.bindAD retry error : "+t)
}},300);
JEagleEyeClient.sendError("[LCS] naver.main.SectionManager.bindAD() error : "+s)
}},100)
}try{if(!!!h.bAppending){var n=$Cookie().get("NNB")||(Math.random().toString(16).substr(2)).toUpperCase();
pid=n+"-"+o+"-"+svt+"-"+parseInt(Math.random()*10000000)
}}catch(l){pid="pid-create-exception";
JEagleEyeClient.sendError("[LCS] pid create error : "+l)
}var q={};
q.sti=c.getGridInfo(o,"lcsTag")+((g.sBrowserType=="INAPP")?"_app":"");
q.pid=pid;
lcs_do(q);
for(k in lcs_add){q[k]=lcs_add[k]
}q.nsc=nsc;
q.orientation=jindo.m.isVertical()?"v":"h";
for(var m in h){q[m]=h[m]
}try{q.tz=(new Date()).toString().replace(/^.*\((.*)\).*$/,"$1");
if(g.bContentOnly===false){q.menuOnList=naver.main.Panel.getPanelOn();
q.menuSetting=$Cookie().get("MM_panel")?"ON":"OFF"
}naver.main.LogHistory.add(o,"lcs");
a(q.menuOnList);
q.p60=naver.main.LogHistory.get(60,"lcs").join(";");
q.p90=naver.main.LogHistory.get(90,"lcs").join(";");
q.u60=naver.main.panelManager.getUnusedPanel(60);
q.u90=naver.main.panelManager.getUnusedPanel(90);
q.airs=$Cookie().get("_MM_AIRS_NEWS")?$Cookie().get("_MM_AIRS_NEWS"):"0";
q.sibcarb=$Cookie().get("MM_CK_SIBLING_CARGAME_BANNER")||"";
q.menu=o;
q.myfeed=$Cookie().get("MM_MF_SVC")||"";
q.font=$Cookie().get("NFS")||"1";
var r=c.getGridInfo("PLACE","lcsTag");
if(r&&r==q.sti){q.regionCode=$Cookie().get("MM_PL")
}var j=naver.main.panelManager.getOnPanel().indexOf("TODAY")<0?"":naver.main.today.data.getMyCardList().join(";");
if(j){q.searchCardList=j
}if(g.bContentOnly===true){naver.main.NaverApp.sendMainData()
}if(o=="ENT"){if(!$Cookie().get("MM_AIRS_FEED_ENT_GUIDE")){$Cookie().set("MM_AIRS_FEED_ENT_GUIDE","1",365*10)
}}}catch(p){JEagleEyeClient.sendError("[LCS] lcs_do error : "+p)
}CH.lcs("MSDT.lcs",q);
if(h.bAppending){naver.main.ShoppingStylePick.sendAllLog()
}else{naver.main.ShoppingStylePick.sendAllLog(true)
}e();
naver.main.today.view.initBanner();
if(!!$Element("MM_FULL_SHOT_BANNER")){naver.main.resources("banner").setShownBanner()
}}catch(p){console.error(p);
JEagleEyeClient.sendError("[LCS] lcs_do error : "+p.description)
}};
function a(m){if(!window.localStorage){return
}try{var l=localStorage.getItem("MSDT.panel");
if(!!l&&!!m){var j=d(l,m);
localStorage.setItem("MSDT.lastOn",JSON.stringify(j))
}localStorage.setItem("MSDT.panel",m)
}catch(h){if(!h.code||!h.QUOTA_EXCEEDED_ERR||h.code!=h.QUOTA_EXCEEDED_ERR){JEagleEyeClient.sendError("[LcsLog] updateList : "+h)
}}}function d(p,l){var n=p.split(";");
var h=l.split(";");
var j=$A(h).filter(function(q){if(n.indexOf(q)<0){return true
}});
var m=localStorage.getItem("MSDT.lastOn");
var o=!!m?JSON.parse(m):{};
j.forEach(function(q){o[q]=svt.slice(0,8)
});
o=$H(o).filter(function(q,r){if(h.indexOf(r)>=0){return true
}}).$value();
return o
}function e(){if(naver.main.gVariable.sDefaultSectionId!=="REST"){naver.main.panelManager.cleanUnusedPanel({bisRefresh:true})
}var h={};
h.act="main.unused";
h.pnls30=naver.main.panelManager.getUnusedPanel(30);
h.pnls60=naver.main.panelManager.getUnusedPanel(60);
h.pnls90=naver.main.panelManager.getUnusedPanel(90);
h.pnls120=naver.main.panelManager.getUnusedPanel(120);
h.pnls150=naver.main.panelManager.getUnusedPanel(150);
h.pnls180=naver.main.panelManager.getUnusedPanel(180);
if(CH&&h.pnls30){var j=(new Image());
j.src=location.protocol+"//l.m.naver.com/"+CH.query(h,"menu");
j.onload=function(){j.onload=null;
return
}
}}return{lcsDo:b}
})(naver.main.gVariable,naver.main.GridInfo);
var CommonApp={init:function(){this._APP_INSTALL_CONFIRM="네이버앱을 설치하거나\n업데이트하시면\n이용할 수 있습니다.\n설치하시겠습니까?";
this._APP_INSTALL_URL_IOS="http://itunes.apple.com/kr/app/id393499958?mt=8";
this._APP_INSTALL_URL_ANDROID="http://m.androidapp.naver.com/naverapp";
this.sNaverAppAndroidInstallUrl="com.nhn.android.search";
this.sNaverAppIosInstallUrl="http://itunes.apple.com/kr/app/id393499958?mt=8"
},showPopupForAndroidLowerVersion:function(){if($Cookie().get("MM_INAPP_ANDROID_LOW_VS_ALERT")!=null){return
}var a=jindo.$Agent().os();
if(naver.main.resources("agent").isNaverapp()&&naver.main.resources("agent").getNaverappUserAgentData().os==="android"&&naver.main.resources("agent").compareNaverappServiceVersion({androidVersion:"8.1.8"})<0&&(a.version==="4.0.3"||a.version==="4.0.4"||a.version==="4.1"||a.version==="4.1.0"||a.version==="4.1.1")){if(confirm("안드로이드 하위 버전의 보안 이슈 예방을 위해 최신 버전으로 업데이트 해주세요.")){location.href="market://details?id=com.nhn.android.search";
nclk({},"pst.update","","")
}else{nclk({},"pst.updatecancel","","")
}$Cookie().set("MM_INAPP_ANDROID_LOW_VS_ALERT",365*10)
}},runMusic:function(d){if(!naver.main.gVariable.isMobile){alert("사용하고 계신 환경(OS)에서는 지원되지 않는 기능입니다.");
return
}var c="comnhncorpnavermusic";
var b="listen?version=3&trackIds="+d;
var a="http://itunes.apple.com/kr/app/id437760231?mt=8";
if(naver.main.gVariable.sUaType=="ANDROID"){a="com.nhn.android.music"
}this.run(c,a,b)
},runShortcut:function(c,a,b){if(confirm("바로가기로\n추가하시겠습니까?")){this.run(c,a,b)
}},_install:function(){var a=new Date();
setTimeout($Fn(function(){if(new Date()-a<1500){if(confirm(APP._APP_INSTALL_CONFIRM)){var b=naver.main.gVariable.sUaType;
if(b=="IOS"||b=="IPAD"){location.href=APP._APP_INSTALL_URL_IOS
}else{if(b=="ANDROID"){location.href=APP._APP_INSTALL_URL_ANDROID
}}}}},this).bind(),500)
},run:function(e,b,c,d){var a=naver.main.gVariable.sUaType;
if(typeof d==="undefined"){d=true
}if(a=="ANDROID"){if(e.indexOf("appstore://")==0){this.runNaverAppStore(e,b,c)
}else{this.runAndroidApp(e,b,c)
}}else{if(a=="IOS"||a=="IPAD"){this.runIosApp(e,b,c,d)
}}},runIosApp:function(a,b,j,h){if(typeof b=="undefined"||b==""){b=APP.sNaverAppIosInstallUrl
}if(typeof j=="undefined"){j=""
}var l="앱을 설치하시면\n이용할 수 있습니다.\n설치하시겠습니까?";
if(a=="naversearchapp"||a=="naversearchapp://"||a=="naverapp://"){l=APP._APP_INSTALL_CONFIRM
}var c=+new Date;
var g;
if(a.search("://")>0){g=a+j
}else{g=a+"://"+j
}try{location.href=g
}catch(f){if(confirm(l)){location.href=g
}}var d=$Agent().os();
if((d.ios&&/^9\./.test(d.version)&&naver.main.gVariable.sBrowserType=="NATIVE")||!h){return
}naverAppCheckTimer=setTimeout(function(){if(+new Date-c<2000){if(b){location.href=b
}}},1000)
},runNaverAppStore:function(d,b,c){if(typeof b=="undefined"||b==""){b=APP.sNaverAppIosInstallUrl
}if(typeof c=="undefined"){c=""
}var a=+new Date;
var g=function(){var h=false,j=(navigator.userAgent.indexOf("Android")>-1),m=(navigator.userAgent.indexOf("Chrome/")>-1);
if(j&&m){var l=navigator.userAgent.match(/Chrome\/[0-9]*/g)[0];
var e=l.split("/");
if(e[1]>=25){h=true
}}return h
};
try{if(g()){location.href=b
}else{$("applinkDiv").innerHTML="<iframe src='"+d+"' height='0' width='0' frameborder='0'></iframe>";
naverAppCheckTimer=setTimeout(function(){if(+new Date-a<2000){location.href=b
}},500)
}}catch(f){}},runAndroidApp:function(d,a,c){if(typeof a=="undefined"||a==""){a=APP.sNaverAppAndroidInstallUrl
}if(typeof c=="undefined"){c="";
if(d=="naversearchapp"){c="default?version=5"
}else{if(d=="naverbooks"){c="default"
}}}var h;
var g=c.indexOf("title");
var e=c.indexOf("&serviceCode");
var f=c.substring(g+6,e);
if(f.search("&")>0){var b=f.replace("&","%26");
c=c.replace(f,b)
}if(d.search("12app")>0){h=d
}else{if(d.search("://")>0){h=d+c
}else{h="intent://"+c+"#Intent;scheme="+d+";action=android.intent.action.VIEW;category=android.intent.category.BROWSABLE;package="+a+";end"
}}location.href=h
},getNaverInappInfo:function(){var a=navigator.userAgent,c={serviceCode:"N/A",browserServiceCode:-1,serviceVersion:-1};
if(/naver/i.test(a)){var b=a.match(/NAVER(.+)$/g);
if(b!==null&&b.length>0){b=b[0].match(/NAVER\((\S+);\s(\S+);\s(\S+);\s(\S+)(;\s(\S+))?\)/);
if(b!==null&&b.length>4){c.serviceCode=b[2];
c.browserServiceCode=parseFloat(b[3]);
c.serviceVersion=b[4]
}}}return c
}};
APP=CommonApp;
naver.main.Aside={initApp:function(){this.gv=naver.main.gVariable;
this._migrateAppListCookie();
this._deleteFavoriteDefaultCookie()
},_deleteFavoriteDefaultCookie:function(){var a=$Cookie().get("MM_FAVORITE_DEFAULT");
if(a=="true"){$Cookie().remove("MM_FAVORITE_DEFAULT");
$Cookie().remove("SVC_LIST")
}},_migrateAppListCookie:function(){var c,j,d;
var a=$Cookie().get("APP_LIST");
if(a){var l=$Cookie().get("SVC_LIST");
if(l){var e=l.split("@");
c=e.length
}else{c=0
}var m=a.split("@");
j=16-c;
d=Math.min(j,m.length);
if(d===0){$Cookie().remove("APP_LIST");
return
}var h=[];
for(var f=0;
f<d;
f++){var b=m[f].split(":");
var g=b[0];
if(g.substring(g.length-3)==="app"){h.push(b[0]+":2")
}else{h.push(b[0]+"app:2")
}}if(c===0){l=h.join("@")
}else{l=l+"@"+h.join("@")
}$Cookie().set("SVC_LIST",l);
$Cookie().remove("APP_LIST")
}}};
function naverapp_cleanMenus(d,c,b,a){setTimeout(function(){localStorage.setItem("MSDT.panel",b);
naver.main.panelManager.updateLastOnData(b);
var e=naver.main.panelManager.getIOSAppUnusedPanel();
var g=CH.query({ot:"ios",act:"cle",ty:(d==="main")?"auto":"manual",menuBef:c,menuUpd:b,menuUnu:e,menuDe:a},"lab");
var f=(new Image());
f.src=location.protocol+"//l.msdl.naver.com/"+g;
f.onload=function(){f.onload=null;
return
}
},0)
}$.createNamespace("naver.main").panelManager=(function(){var d="";
function f(){var n="";
if(naver.main.gVariable.isInApp){n=naver.main.resources("menu").getNaverAppMenuList()||""
}else{n=(naver.main.resources("menu").getMenuList()).join(";")
}return n
}function e(){var n="";
if(naver.main.gVariable.isInApp){n=naver.main.resources("naverLab").getLabTurnOnList()
}else{n=naver.main.resources("naverLab").getLabTurnOnList()
}return n
}function l(q){var n=naver.main.LogHistory.getUnused(q,"lcs",f());
var o=(f()).split(";");
var p="";
if(!naver.main.gVariable.isInApp){p=naver.main.resources("menu").getSet()
}n=$A(n).filter(function(r){if(r===p){return false
}else{if(r==="REST"){return false
}else{if(r==="LAB_MYSECTION"){return false
}else{return true
}}}}).$value();
if(n.length+2-o.length>0){n.splice(0,n.length+2-o.length)
}return n.join(";")
}function m(o){if(!o){return
}if(naver.main.gVariable.isApp){return
}var n=o.split(";");
var q=naver.main.GridInfo.getGridInfo(n[0],"htServiceName");
if(n.length>1){q+=" 외 "+(n.length-1)+"개"
}var p='<p class="alt_msg"><span class="alt_name">'+q+"</span> 주제가 자동 정리되었습니다.</p>";
naver.main.ToastBanner.show(p,2000)
}function h(r){var u=f();
if(!u){return
}var o;
if(r&&(r.nPeriod>0)){o=r.nPeriod+""
}else{o=naver.main.resources("naverLab").getLabAutoCleanPeriod()
}if(!o||o===""||(o*1)<1){r&&r.onFail&&r.onFail();
return""
}var v=e();
var t=!!v?v.split(";"):[];
if(!(r&&r.bisForce==true)){if(t.indexOf("CLEANER")<0){r&&r.onFail&&r.onFail();
return
}}if(!(r&&r.bisShowToastBanner==false)){m(naver.main.resources("menu").popCleaned())
}var z=l((o*1));
if((r&&r.sTargetPanelCode!="")){var s=r.sTargetPanelCode;
var n=z.split(";");
var p=s.split(";");
var x=[];
$A(p).forEach(function(A){if(n.indexOf(A)>=0){x.push(A)
}});
z=x.join(";")
}if(z===""){r&&r.onAbort&&r.onAbort();
return
}var y=(f()).split(";");
if(y.length<=2){r&&r.onFail&&r.onFail();
return
}var q=jindo.$Agent().os();
var w=naver.main.getNaverInappInfo().browserServiceCode;
if(naver.main.gVariable.isInApp){if(q.android&&w>=500){c({sUnusedPanel:z,htCallback:r,bisRefresh:(r&&r.bisRefresh)})
}else{if(q.iphone&&w>=550){j(z)
}else{if(q.ipad){}}}}else{g({sUnusedPanel:z,htCallback:r})
}}function c(v){var w=v.sUnusedPanel;
var p=v.bisRefresh;
var s=v.htCallback;
var u=(f()).split(";");
var o=window.inapphome.cleanMenus(w,p);
var n=o.split(";");
var q=$A(u).filter(function(x){if(n.indexOf(x)<0){return true
}}).$value().join(";");
localStorage.setItem("MSDT.panel",q);
b(q);
var t=CH.query({ot:"A",act:"cle",ty:(p)?"auto":"manual",menuBef:u.join(";"),menuUpd:q,menuUnu:w,menuDe:o},"lab");
var r=(new Image());
r.src=location.protocol+"//l.msdl.naver.com/"+t;
r.onload=function(){r.onload=null;
return
};
setTimeout(function(){s&&s.onLoad&&s.onLoad({sUpdatedPanel:q,sDeletedPanel:o})
},150)
}function j(n){d=n;
location.replace("/naverapp/?cmd=cleanMenus&version=5&menuCodes="+n)
}function g(u){var v=u.sUnusedPanel;
var r=u.htCallback;
var t=(f()).split(";");
var n=v.split(";");
var o=[];
var p=[];
$A(t).filter(function(w){if(n.indexOf(w)<0){p.push(w)
}else{o.push(w)
}});
naver.main.resources("menu").setMenuList(p.join(";"));
b(p.join(";"));
var s=CH.query({ot:"web",act:"cle",ty:(r&&r.bisRefresh)?"auto":"manual",menuBef:t.join(";"),menuUpd:p.join(";"),menuUnu:v,menuDe:o.join(";")},"lab");
var q=(new Image());
q.src=location.protocol+"//l.msdl.naver.com/"+s;
q.onload=function(){q.onload=null;
return
};
setTimeout(function(){r&&r.onLoad&&r.onLoad({sUpdatedPanel:p.join(";"),sDeletedPanel:o.join(";")});
if(r&&r.bisRefresh){naver.main.resources("menu").setCleaned(o.join(";"));
location.replace(location.href)
}},150)
}function b(o){var n=o.split(";");
var p=localStorage.getItem("MSDT.lastOn");
var q=!!p?JSON.parse(p):{};
$A(n).forEach(function(r){if(!q[r]){q[r]=svt.slice(0,8)
}});
localStorage.setItem("MSDT.lastOn",JSON.stringify(q))
}function a(){return d
}return{getOnPanel:f,getUnusedPanel:l,cleanUnusedPanel:h,getIOSAppUnusedPanel:a,updateLastOnData:b}
})();
$.createNamespace("naver.main").Subscribe=(function(){var e="/api_post";
var j;
var b=function(){h();
c()
},h=function(){j=$Element("ct")
},c=function(){if(j){j.delegate("click","._MM_SUBSCRIBE_POST_BUTTON",$Fn(g,this).bind());
j.delegate("click","._MM_SUBSCRIBE_MORE",$Fn(d,this).bind())
}},a=function(p,o,n){var m=$Element("_MM_SUBSCRIBE_SUCCESS_LAYER");
var l='<p class="alt_msg spmo">'+p+'<span class="alt_name">'+o+"</span>"+n+"</p>";
m.html(l);
m.show();
setTimeout(function(){m.disappear(1)
},2000)
},f=function(p,n,m){var o=$Element("_MM_SUBSCRIBE_FAILURE_LAYER").show();
var l='<p class="alt_msg spmo">'+p+'<span class="alt_name">'+n+"</span>"+m+"</p>";
o.html(l);
o.show();
setTimeout(function(){o.disappear(1)
},2000)
},g=function(o){o.stop($Event.CANCEL_DEFAULT);
if(!naver.main.gVariable.isLogin){location.href="https://nid.naver.com/nidlogin.login?svctype=262144";
return
}var t=$Element(o.element).parent();
var s=t.data("authorno");
var n="구독 컨텐츠";
var m="는 포스트 MY 피드에서 볼 수 있습니다.";
var p="잠시 후";
var l="다시 시도";
var q="해 주세요.";
var r=$Ajax(e+"/navermain/follow/addFollow.nhn",{type:"jsonp",timeout:5,onload:function(u){var v=u.json();
if("success"===v.resultStatus){$ElementList("._MM_SUBSCRIBE_POST").attr("data-processed",null);
d();
a("",n,m)
}else{f();
JEagleEyeClient.sendError("[Subscribe] _onClickSubscribeButton : result is not success, res = "+JSON.stringify(v))
}},ontimeout:function(u){f(p,l,q);
JEagleEyeClient.sendError("[Subscribe] _onClickSubscribeButton timeout")
},onerror:function(u){f(p,l,q);
JEagleEyeClient.sendError("[Subscribe] _onClickSubscribeButton onerror")
}}).request({followType:"PERSON",followTarget:s});
r=null
},d=function(){if($$("._MM_MYFEED").length==0){$ElementList(".id_uio_cd_subscribe:not(._MM_MYFEED) .ucs_tit_wrap a").show()
}if(!naver.main.gVariable.isLogin){return
}var p=$$("._MM_SUBSCRIBE_POST",naver.main.SectionManager.f().getElement());
var l=[];
var o="";
var m=[];
p.forEach(function(q,s){var r=$Element(q).parent(function(t){return t.hasClass("ucs_item")
})[0];
if(r&&r.visible()){if($Element(q).data("authorno")&&!$Element(q).data("processed")){m.push($Element(q).data("authorno"));
$Element(q).data("processed",true);
l.push(q)
}}});
o=m.join(",");
if(o!==""){var n=$Ajax(e+"/navermain/follow/checkFollowStatus.nhn",{type:"jsonp",timeout:5,onload:function(q){var r=q.json();
if("success"===r.resultStatus){l.forEach(function(u,x){var s=$Element(u).data("authorno");
var w=false;
for(var t=0;
t<r.result.authors.length;
t++){if(s==r.result.authors[t].authorNo){w=r.result.authors[t].isFollowed;
break
}}var v=$Element(u).data("class");
$Element(u).removeClass(v);
if(false==w){$Element(u).query("._MM_SUBSCRIBE_POST_BUTTON").show("block");
$Element(u).query("._MM_SUBSCRIBE_POST_MORE").hide("block");
$Element(u).addClass(v)
}else{$Element(u).query("._MM_SUBSCRIBE_POST_BUTTON").hide("block");
$Element(u).query("._MM_SUBSCRIBE_POST_MORE").show("block")
}})
}else{JEagleEyeClient.sendError("[Subscribe] _update : result is not success, res = "+JSON.stringify(r))
}},ontimeout:function(q){JEagleEyeClient.sendError("[Subscribe] _update timeout")
},onerror:function(q){JEagleEyeClient.sendError("[Subscribe] _update error")
}}).request({followType:"PERSON",authorNoList:o});
n=null
}};
return{init:b,update:d,showSuccessLayer:a,showFailureLayer:f}
})();
naver.main.Subscribe.init();
setTimeout(function(){naver.main.Subscribe.update()
},1000);
$.createNamespace("naver.main").MyFeed=(function(){var d="/api_post",t="/nvhaproxy/feed/myfeed?menu=LIVING",s="/api_sports/myteam/auth/nvm/addJsonp.nhn?",a="/api_feed/invoker/subscribe?",h=3,l=10,p,f=function(){j();
c()
},j=function(){p=$Element("ct")
},c=function(){if(p){p.delegate("click","._MM_MYFEED_MENU",$Fn(m,this).bind());
p.delegate("click","._MM_MYFEED_UNFOLD",$Fn(e,this).bind());
p.delegate("click","._MM_MYFEED_FOLD",$Fn(q,this).bind());
p.delegate("click","._MM_MYFEED_UNSUBSCRIBE",$Fn(b,this).bind());
p.delegate("click","._MM_MYTEAM_SUBSCRIBE_BTN",$Fn(r).bind());
p.delegate("click","._MM_MYPLACE_SUBSCRIBE_BTN",$Fn(g).bind())
}},m=function(v){v.stop($Event.CANCEL_DEFAULT);
var u=$Element(v.element);
var w=u.next();
w.toggle()
},e=function(y){y.stop($Event.CANCEL_DEFAULT);
var u=$Element(y.element);
var x=u.parent(function(D){return D.hasClass("_MM_MYFEED")
})[0];
var w=0;
var v=0;
var z=x.query("._MM_MYFEED_LIST");
var C=z.child();
for(var A=0;
A<C.length;
A++){if(C[A].visible()==false){C[A].show("block");
w++
}v++;
if(w==l){break
}}if(v==C.length){u.hide();
var B=x.query("._MM_MYFEED_MORE");
B.show("block")
}naver.main.SectionManager.setHeight()
},q=function(u){u.stop($Event.CANCEL_DEFAULT);
var x=$Element(u.element);
var w=x.parent(function(B){return B.hasClass("_MM_MYFEED")
})[0];
var A=w.query("._MM_MYFEED_LIST");
var z=A.child();
for(var v=0;
v<z.length;
v++){if(v<h){z[v].show("block")
}else{z[v].hide()
}}x.hide();
var y=w.query("._MM_MYFEED_UNFOLD");
y.show("block");
naver.main.SectionManager.setHeight()
},b=function(w){w.stop($Event.CANCEL_DEFAULT);
if(!naver.main.gVariable.isLogin){location.href="https://nid.naver.com/nidlogin.login?svctype=262144";
return
}var v=$Element(w.element);
var y=v.parent(function(A){return A.hasClass("_MM_MYFEED_ITEM")
})[0];
var u=y.query("._MM_MYFEED_MENU");
var x=u.data("authorno");
var z=$Ajax(d+"/navermain/follow/removeFollow.nhn",{type:"jsonp",timeout:5,onload:function(A){var B=A.json();
if("success"===B.resultStatus){setTimeout(function(){o()
},200)
}else{}},ontimeout:function(A){JEagleEyeClient.sendError("[MyFeed] _onClickMyFeedUnsubscribe timeout")
},onerror:function(A){JEagleEyeClient.sendError("[MyFeed] _onClickMyFeedUnsubscribe onerror")
}}).request({followType:"PERSON",followTarget:x});
z=null
},r=function(v){if(!naver.main.gVariable.isLogin){location.href="https://nid.naver.com/nidlogin.login?svctype=262144";
return
}var x=$Element(v.element);
var w=x.parent(function(B){return B.hasClass("_MM_MYTEAM")
})[0];
var z=w.query("._MM_MYTEAM_SUBSCRIBE_INFO");
var u=w.data("teamid");
var A=w.data("teamname");
var y=$Ajax(s,{type:"jsonp",timeout:5,onload:function(E){var G=E.json();
var D=G.result;
var F="";
var B="";
var C="";
if("success"===D){n();
x.hide();
z.show();
F="해당 팀을 마이팀에 ";
B="추가";
C="했습니다."
}else{if("alreadyAdd"===D){F="이미 ";
B="마이 팀";
C="으로 설정되어 있습니다."
}else{if("overMaxMyTeamCount"===D){F="마이 팀은 ";
sccessMsg_highlight="9개 팀만 ";
C="설정할 수 있습니다."
}else{F="잠시 후 ";
B="다시 시도";
C="해 주세요."
}}}naver.main.Subscribe.showSuccessLayer(F,B,C)
},ontimeout:function(B){_showFailureLayer("잠시 후 ","다시 시도","해 주세요.");
JEagleEyeClient.sendError("[MyFeed] _onClickMyteamSubscribe timeout")
},onerror:function(B){_showFailureLayer("잠시 후 ","다시 시도","해 주세요.");
JEagleEyeClient.sendError("[MyFeed] _onClickMyteamSubscribe onerror")
}}).request({channelKey:u});
y=null
},n=function(){var v=$Element("_MM_MYTEAM_COUNT");
if(v==null){return
}var u=parseInt(v.text());
if(typeof(u)=="number"){v.html(u+1)
}},g=function(w){if(!naver.main.gVariable.isLogin){location.href="https://nid.naver.com/nidlogin.login?svctype=262144";
return
}var u=$Element(w.element);
var x=u.parent(function(E){return E.hasClass("_MM_MYPLACE")
})[0];
var D=x.data("servicecode");
var C=x.data("type");
var A=x.data("id");
var y=x.data("office");
var z=x.data("service");
var v=x.child(function(E){return E.hasClass("_MM_MYPLACE_LINK")
})[0];
var B=$Ajax(a,{type:"jsonp",timeout:5,onload:function(G){var I=G.json();
var H="";
var E="";
var F="";
if(I.code==0){u.hide();
v.removeClass("cs_has_btn");
H=y+" "+z+" 소식을 구독 ";
E="추가";
F="했습니다."
}else{H="잠시 후 ";
E="다시 시도";
F="해 주세요."
}naver.main.Subscribe.showSuccessLayer(H,E,F)
},ontimeout:function(E){_showFailureLayer("잠시 후 ","다시 시도","해 주세요.");
JEagleEyeClient.sendError("[MyFeed] _onClickMyPlaceSubscribe timeout")
},onerror:function(E){_showFailureLayer("잠시 후 ","다시 시도","해 주세요.");
JEagleEyeClient.sendError("[MyFeed] _onClickMyPlaceSubscribe onerror")
}}).request({serviceCode:D,type:C,id:A});
B=null
},o=function(){var u=$Ajax(t,{timeout:5,onload:function(v){var w=v.text();
$ElementList("._MM_MYFEED").html(w)
},ontimeout:function(v){JEagleEyeClient.sendError("[MyFeed] _update() timeout")
},onerror:function(v){JEagleEyeClient.sendError("[MyFeed] _update() onerror")
}}).request();
u=null
};
return{init:f,update:o}
})().init();
naver.main.Weather={init:function(){this.welCard;
this.weatherKind="";
this.welGeoButton;
this._assignElements();
this._attachEvents();
var a=$Cookie().get("NV_WETR_LAST_ACCESS_RGN_M");
if(a&&a.indexOf("CT")>=0){$Cookie().remove("NV_WETR_LAST_ACCESS_RGN_M","naver.com")
}},_assignElements:function(){this.welCT=$Element("ct")
},_attachEvents:function(){this.welCT.delegate("click","._MM_WEATHER_LOC",$Fn(this._onClickPosition,this).bind())
},_onClickPosition:function(a){a.stop($Event.CANCEL_DEFAULT);
this.welGeoButton=$Element(a.element);
this.welGeoButton.addClass("uw_ico_loading");
naver.main.geolocation.search({success:this._setLocation,nvgeoTimeout:3,fail:function(){naver.main.Weather._setDefaultGeoButton()
},geolocationOptions:{enableHighAccuracy:true,timeout:5000,maximumAge:0}})
},_setLocation:function(a){if(a.code){naver.main.Weather._setCookie(a.code)
}naver.main.Weather.update()
},_setDefaultGeoButton:function(){this.welGeoButton.removeClass("uw_ico_loading")
},_setCookie:function(a){},update:function(){var a=this;
var b="/nvweather_mmap?path=include/grid/weatherBanner&fname=WEATHER";
var c=$Ajax(b,{method:"get",timeout:5,onload:function(e){var d=e.text();
if(d.search(/ERROR/)<0){$ElementList("._MM_WEATHER_BANNER").html(d)
}},ontimeout:function(){JEagleEyeClient.sendError("[Weather] update() ajax timeout : "+b);
a._setDefaultGeoButton()
},onerror:function(d){JEagleEyeClient.sendError("[Weather] update() ajax error : "+b);
a._setDefaultGeoButton()
}}).request();
c=null
},resetWeatherForApp:function(){resetWeatherForApp()
}};
naver.main.Weather.init();
CU={};
CU.resetWeatherForApp=function(){naver.main.Weather.resetWeatherForApp()
};
var Dim=function(){var a=this;
a._isShow=false;
a.fCallback=function(){};
a.welDim=$Element("dmm");
a.welDim.attach("touchstart",function(b){b.stop()
});
a.oDimTouch=new jindo.m.Touch("dmm");
a.oDimTouch.attach({touchStart:function(b){b.oEvent.stop(jindo.$Event.CANCEL_DEFAULT)
},touchEnd:function(b){if(b.sMoveType=="vScroll"){b.stop()
}},hScroll:function(b){if(b.nVectorX<0){a.hide();
b.oEvent.stop()
}},vScroll:function(b){b.oEvent.stop()
},tap:function(c){var b=c.oEvent;
b.stop(jindo.$Event.CANCEL_DEFAULT);
setTimeout(function(){a.fCallback();
a.hide()
},100)
}});
a.oMorph=new jindo.m.Morph();
jindo.m.bindRotate($Fn(this._onRotate,this).bind())
};
Dim.prototype._onRotate=function(){this.reset()
};
Dim.prototype.reset=function(){var a=this;
if(this.welDim.visible()){setTimeout(function(){a.welDim.css({height:(document.body.offsetHeight*1.5)+"px",marginTop:"-"+(document.body.offsetHeight*1.2)+"px"})
},200)
}return this.welDim
};
Dim.prototype.show=function(b){var a=this;
if(a.oMorph.isPlaying()){return
}a.oMorph.pushCall(function(){try{a.welDim.css({height:(document.body.offsetHeight*1.5)+"px",marginTop:"-"+(document.body.offsetHeight*1.2)+"px"}).show()
}catch(d){var c="Dim.show().welDim.css.show() :"+d+", opacity : "+a.welDim.css("opacity")+", display :"+a.welDim.css("display");
a.sendError(c)
}}).pushAnimate(-1,[a.welDim,{"@opacity":0}]).pushAnimate(100,[a.welDim,{"@opacity":1}]).pushCall(function(){try{a.welDim.css({height:(document.body.offsetHeight*1.5)+"px",marginTop:"-"+(document.body.offsetHeight*1.2)+"px"})
}catch(d){var c="Dim.show().welDim.css.hide() :"+d+", opacity : "+a.welDim.css("opacity")+", display :"+a.welDim.css("display");
a.sendError(c)
}a._isShow=true
}).play();
if(typeof b=="function"){this.setCallback(b)
}};
Dim.prototype.hide=function(){var a=this;
if(a.oMorph.isPlaying()){return
}a.fCallback=function(){};
a.oMorph.pushCall(function(){try{a.welDim.css({height:document.body.offsetHeight+"px",marginTop:"-"+document.body.offsetHeight+"px"}).show()
}catch(c){var b="Dim.hide().welDim.css.show() :"+c+", opacity : "+a.welDim.css("opacity")+", display :"+a.welDim.css("display");
a.sendError(b)
}}).pushAnimate(-1,[a.welDim,{"@opacity":1}]).pushWait(100).pushAnimate(100,[a.welDim,{"@opacity":0}]).pushCall(function(){try{a.welDim.css({height:document.body.offsetHeight+"px",marginTop:"-"+document.body.offsetHeight+"px"}).hide()
}catch(c){var b="Dim.hide().welDim.css.hide() :"+c+", opacity : "+a.welDim.css("opacity")+", display :"+a.welDim.css("display");
a.sendError(b)
}a._isShow=false
}).play()
};
Dim.prototype.isShow=function(){return this._isShow
};
Dim.prototype.setCallback=function(a){if(typeof a=="function"){this.fCallback=a
}};
Dim.prototype.sendError=function(a){if(JEagleEyeClient.sendError2!=undefined){if(typeof gsTrace!="undefined"){a+=" ,Trace :"+gsTrace
}JEagleEyeClient.sendError2(a)
}};
naver.main.oDim=new Dim();
$.createNamespace("naver.main").TopButton=(function(f){var d=$Element("btn_top"),b=null,e=false,j=false,n,g=function(){if(!d){return
}d.attach("click",c);
new jindo.m.ScrollEnd().attach("scrollEnd",function(){if(e){if(!l()){h()
}}else{if(l()){a()
}}});
n=new jindo.m.Morph({bUseTransition:false}).pushCall(function(){d.show()
}).pushAnimate(200,[d,{"@opacity":1}]).attach("end",function(){this.reset();
if(!e){h()
}}).attach("play",function(){});
m()
},m=function(){if(!jindo.m.useFixed()){b=new jindo.m.FloatingLayer("btn_top",{sPosition:"bottom",nSlideDuration:0,bUseHideUI:false,bUseFixed:true});
b._oLayerPosition.attach("position",function(o){o.elLayer.style.width="41px";
o.elLayer.style.height="54px";
o.elLayer.style.left="";
o.elLayer.style.right="10px"
});
b.show();
$("btn_top").parentNode.style.zIndex=2000
}},l=function(){var t=naver.main.scrollPos().scrollY;
if(t<=0){return false
}else{if(j){j=false;
return false
}else{var o=d.$value().getBoundingClientRect().top;
var q=$Element("nx_suggest_layer");
if(q&&q.visible()){var p=q.$value().getBoundingClientRect().bottom;
if(p>0&&o<p){return false
}}var s=$Element("contents_footer");
if(s&&s.visible()){var r=s.query(".footer").$value().getBoundingClientRect().top;
if(o>r||r<window.innerHeight){return false
}}return true
}}},a=function(){if(l()){if(!e){n.play();
e=true
}}else{if(e){h()
}}},h=function(){var o=jindo.m.getOsInfo();
e=false;
d.css("opacity",0).hide()
},c=function(p){p.stop();
if(jindo.m.getOsInfo().ipad&&naver.main.getNaverInappInfo().browserServiceCode>=119){location.href="naverapp://main?scrollToTop"
}else{window.scrollTo(0,1)
}if(!jindo.m.getOsInfo().ios){j=true
}h();
var o=naver.main.SectionManager.getSectionName();
nclk({},f.getGridInfo(o,"clickArea")+"top","","")
};
return{init:g,appear:a,disappear:h}
})(naver.main.GridInfo);
naver.main.TopButton.init();
$.createNamespace("naver.main").News=(function(){var b=function(q){q.stop();
if(welSpan.hasClass("spuio_ur_open")){welGrid.query(".uio_relation_list").show();
welSpan.addClass("spuio_ur_close").removeClass("spuio_ur_open");
welBtn.data("clk","themeclose")
}else{welGrid.query(".uio_relation_list").hide();
welSpan.addClass("spuio_ur_open").removeClass("spuio_ur_close");
welBtn.data("clk","themeopen")
}naver.main.SectionManager.setHeight()
},o=function(r){r.stop();
var q=$Element(r.element);
var t=q.parent(function(u){return u.hasClass("unn_top")||u.hasClass("ubn_top")
})[0];
var s=t.next();
s.show()
},c=function(r){r.stop();
var s=$$.getSingle("! ._MM_randomFiveText",r.element);
var q=$Element($$.getSingle("._MM_layer",s));
q&&q.show()
},n=function(r){r.stop();
var s=$$.getSingle("! ._MM_randomFiveText",r.element);
var q=$Element($$.getSingle("._MM_layer",s));
q&&q.hide()
},f=function(r){r.stop();
var q=$Element(r.element);
var s=q.parent(function(t){return t.hasClass("unn_ly_ques")||t.hasClass("ubn_ly_ques")
})[0];
s.hide()
},p=function(s){s.stop();
if($Element(s.element).test("[data-tab-nav]")){return
}var r=$Element(s.element);
var u=r.data("class");
var v=r.data("parent");
var t=m.query("."+v);
var q=t.queryAll(".ubn_cnt, .uce_cnt, .uio_cd_hottoon");
q.forEach(function(x,y,w){if(x.hasClass(u)){x.show()
}else{x.hide()
}})
};
var d=function(r){r.stop($Event.CANCEL_DEFAULT);
var q=$Element(r.element);
var t=q.data("type");
if(t==="TOPIC"){$Cookie().set("MM_NEWS_TOPIC","1",(1/24/60)*10)
}else{$Cookie().remove("MM_NEWS_TOPIC")
}naver.main.resources("menu").setSet("NEWS");
var s=location.href.split("#")[0];
setTimeout(function(){location.replace(s)
},100)
},a=function(q){$Element("_MM_NEWS_COACHMARK").hide();
q.stop($Event.CANCEL_DEFAULT)
},h=function(){if($Cookie().get("MM_NEWS_COACHMARK")==null){$Cookie().set("MM_NEWS_COACHMARK","1")
}},g=$Element("MM_broadcasting_tip"),j=function(r){if(r){r.stop($Event.CANCEL_DEFAULT)
}if(!!!g){return
}var q=g.attr("data-show");
if(q=="1"){$Cookie().set("MM_broadcasting_tip_close","1",3650);
g.hide();
g.attr("data-show","0")
}else{g.show();
g.attr("data-show","1")
}},l=function(q){};
var m=$Element("ct");
m.delegate("click","a.ut_toggle",b);
m.delegate("click","a.ubn_ques",o);
m.delegate("click","a.ubn_ta",p);
m.delegate("click","._MM_NEWS_TYPE",d);
m.delegate("click","._MM_NEWS_COACHMARK_CLOSE",a);
m.delegate("click","._MM_info",c);
m.delegate("click","._MM_close",n);
m.delegate("click","._MM_toggle_broadcasting_tip",j);
m.delegate("click","a.uce_ta",p);
m.delegate("click","a.uch_ta",p);
var e=$Cookie().get("MM_broadcasting_tip_close");
if(!!!e){j()
}return{init:l}
})();
naver.main.News.init();
$.createNamespace("naver.main").Pronounce=(function(c){var e=$Element("ct"),g=false,f=null,d=function(){e.delegate("click","._MM_PRON",function(h){a(h)
});
b();
if($Agent().os().ios){window.addEventListener("pageshow",function(h){b()
},false)
}},b=function(){f=new Audio(),f.addEventListener("canplay",function(){elPlayingPron.removeClass("loading31x31").addClass("spuio").addClass("spuio_umv_listen2");
f.play()
});
f.addEventListener("ended",function(){f.src=""
})
},a=function(l){l.stop();
var m=$Element(l.element);
f.src=l.element.getAttribute("data-pron");
f.load();
elPlayingPron=m.child()[0];
elPlayingPron.removeClass("spuio_umv_listen2").removeClass("spuio").addClass("loading31x31");
var j=naver.main.SectionManager.getSectionName();
var h=c.getGridInfo(j,"clickArea");
if(!m.data("clk")){nclk({},h+"listen","","")
}};
d()
})(naver.main.GridInfo);
naver.main.RTK={oRtkFilciking:{},init:function(b){var a=this;
a.cache={};
a.isFlMove=true;
a.sViewType=b||"mobile";
a.isOpen=false;
a.nGridIndex=null;
a.bSingle=false;
a.bPrevStatus=false;
a.nFlickedContentCount=4;
a.oRTK=naver.main.gVariable.oRTK;
a.oHTP=naver.main.gVariable.oHTP;
a.nIndex=0;
a.bisUpdatedTotalPanel=false;
a.sTplOfRtkxContent=['<div class="rtkx_tab">','<a href="javascript:naver.main.RTK.move(0);" role="tab" data-clk="klve" class="rtkx_tab_a rtkx_tab_aon"><span class="blind" id="MM_RTK_SELECTED_ATTR"></span>실시간 급상승</a>','<a href="javascript:naver.main.RTK.move(2);" role="tab" data-clk="khtp" class="rtkx_tab_a">뉴스토픽</a>',"</div>",'<a href="javascript:naver.main.RTK.contract()" class="rtkx_toggle"><span class="sprh_arrow_up"><span class="blind">실급검 확장 접기</span></span></a>','<ul class="cke_ktab" role="tablist" id="MM_RTK_SUBTABS">','<li class="cke_ktl" role="presentation">','<a href="javascript:naver.main.RTK.move(0);" data-clk="ktp1" id="MM_RTK_SUBTAB1" class="cke_btn_ktab" role="tab" aria-selected="true"><span class="cke_ktbox">1~10위</span></a>',"</li>",'<li class="cke_ktl" role="presentation">','<a href="javascript:naver.main.RTK.move(1);" data-clk="ktp2" id="MM_RTK_SUBTAB2" class="cke_btn_ktab" role="tab" aria-selected="false"><span class="cke_ktbox">11~20위</span></a>',"</li>","</ul>",'<ul class="cke_ktab" role="tablist" id="MM_RTK_NEWSTOPIC_SUBTAB" style="display: none;">','<li class="cke_ktl" role="presentation">','<a href="javascript:naver.main.RTK.move(2);" data-clk="khtpnews" id="MM_RTK_SUBTAB3" class="cke_btn_ktab" role="tab" aria-selected="true"><span class="cke_ktbox">뉴스</span></a>',"</li>",'<li class="cke_ktl" role="presentation">','<a href="javascript:naver.main.RTK.move(3);" data-clk="khtpentspo" id="MM_RTK_SUBTAB4" class="cke_btn_ktab" role="tab" aria-selected="false"><span class="cke_ktbox">연예 · 스포츠</span></a>',"</li>","</ul>",'<div id="rtk_flick" class="rtk-flick-view" style="height:379px">','<div class="rtk-flick-container">','<div class="rtk-flick-panel" aria-hidden="false">','<ul class="rtkx_u"></ul>','<div class="rtkx_btm"><p></p></div>',"</div>",'<div class="rtk-flick-panel" aria-hidden="true">','<ul class="rtkx_u"></ul>','<div class="rtkx_btm"><p></p></div>',"</div>",'<div class="rtk-flick-panel" aria-hidden="true">','<ul class="rtkx_u"></ul>','<div class="rtkx_btm"><p></p></div>',"</div>","</div>","</div>",'<div id="_MM_RTK_FLICKING_INDICATOR" class="rtkx_btm">','<a href="http://m.datalab.naver.com/realtimeList.naver?where=main" class="rtkx_ha" data-clk="rankhistory"><span class="rtkx_hst">DataLab.</span>급상승 트래킹</a>','<div class="rtkx_bflex">','<p class="rtkx_errtxt">일시적 오류로 최신 정보를 제공할 수 없습니다.</p>','<p class="rtkx_crit" id="_MM_RTK_DATETIME_AREA"></p>','<div class="rtkx_act">','<a href="javascript:naver.main.RTK.move(0);" class="rtkx_pgn" role="button" aria-selected="false"><span class="sp_rtk sprh_pgnon">실급검 1위 부터 10위</span></a>','<a href="javascript:naver.main.RTK.move(1);" class="rtkx_pgn" role="button" aria-selected="false"><span class="sp_rtk sprh_pgn">실급검 11위 부터 20위</span></a>','<a href="javascript:naver.main.RTK.move(2);" class="rtkx_pgn" role="button" aria-selected="false"><span class="sp_rtk sprh_pgn">뉴스토픽 키워드</span></a>','<a href="javascript:naver.main.RTK.move(3);" class="rtkx_pgn" role="button" aria-selected="false"><span class="sp_rtk sprh_pgn">뉴스토픽 키워드</span></a>',"</div>","</div>","</div>"].join("");
a.rolling();
if(naver.main.SectionManger){a._attachFlicking();
a._attachScrollEnd()
}a.welRTK=$Element("rtk");
a.serverTimestamp=naver.main.gVariable.oRTKServerTimestamp;
a.serverTime=svt
},_getRtk:function(){return naver.main.SectionManager?naver.main.SectionManager.f().getElement().query(".rtk"):$Element("rtk")
},_getRtkx:function(){return naver.main.SectionManager?naver.main.SectionManager.f().getElement().query(".rtkx"):$Element("rtkx")
},_getRtkFlick:function(){return naver.main.SectionManager?naver.main.SectionManager.f().getElement().query(".rtk-flick-view"):$Element("rtk_flick")
},_getSectionName:function(){return naver.main.SectionManager?naver.main.SectionManager.getSectionName():"NEWS"
},_getClickArea:function(){return naver.main.GridInfo.getGridInfo(this._getSectionName(),"clickArea")
},_attachFlicking:function(){var a=this;
if(naver.main.SectionManager.f()){naver.main.SectionManager.f().attach("flicking",function(){a.rolling()
})
}else{setTimeout(_attachFlicking,200)
}},_attachScrollEnd:function(){var a=this;
if(naver.main.SectionManager.scrollEnd()){naver.main.SectionManager.scrollEnd().attach("scrollEnd",function(){var b=naver.main.SectionManager.f().getElement().query(".rtk");
if(!b){a.bPrevStatus=false
}if(!a.bPrevStatus){a.rolling()
}})
}else{setTimeout(_attachScrollEnd,200)
}},rolling:function(){var a=this;
var b=naver.main.SectionManager?naver.main.SectionManager.f().getElement().query(".rtk"):$Element("rtk");
if(!b||(naver.main.SectionManager&&naver.main.SectionManager.getSectionName()=="TODAY")){return
}a.bPrevStatus=true;
a.contract(false);
this.welRolling=naver.main.SectionManager?naver.main.SectionManager.f().getElement().query("ul.rtk_u"):$Element($$.getSingle("#rtk ul.rtk_u"));
this.nIndex=0;
this._bindRolling(this.welRolling,0);
a.start()
},start:function(){this.welRolling=naver.main.SectionManager?naver.main.SectionManager.f().getElement().query("ul.rtk_u"):$Element($$.getSingle("#rtk ul.rtk_u"));
if(naver.main.SectionManager&&naver.main.SectionManager.getSectionName()=="TODAY"){this.welRolling=$Element($$.getSingle("#rtk ul.rtk_u"));
return
}this.stop();
this.nIndex=0;
this._bindRolling(this.welRolling,this.nIndex);
this.nTimeId=setInterval($Fn(function(){this.nIndex=(this.nIndex+1)%this.oRTK.d.length;
this._bindRolling(this.welRolling,this.nIndex)
},this).bind(),3000)
},stop:function(){this.nTimeId&&clearInterval(this.nTimeId)
},_bindRolling:function(c,a){if(!!!c){this.stop()
}var b=this.getKeywordHtml(0,a,true);
if(c){c.html(b)
}},_initData:function(){var p=this;
var q=p.oRTK.d.length;
var n=p.oHTP.d.length;
var l=this._getSectionName();
var j;
var h;
var g;
if(p.oRtkFilciking[l]){p.oRtkFilciking[l].refresh(0);
j=p.oRtkFilciking[l].getElement();
h=p.oRtkFilciking[l].getNextElement();
g=p.oRtkFilciking[l].getPrevElement()
}else{this._getRtkx().html(this.sTplOfRtkxContent);
var o=this._getRtkx().queryAll(".rtk-flick-panel");
j=o[0];
h=o[1];
g=o[2]
}var b='<ul class="rtkx_u">{=html}</ul>';
var m="";
var d="";
var c="";
var r="";
if(p.cache.rtk1&&p.cache.rtk2&&p.cache.hottopic&&p.cache.hottopic2){m=$Element(this.cache.rtk1).html();
d=$Element(this.cache.rtk2).html();
c=$Element(this.cache.hottopic).html();
r=$Element(this.cache.hottopic2).html()
}else{for(var s=0;
s<10;
s++){m+=p.getKeywordHtml(0,s,false)
}if(q>10){for(var s=0;
s<(q-10);
s++){d+=p.getKeywordHtml(0,s+10,false)
}}for(var s=0;
s<10;
s++){c+=p.getKeywordHtml(2,s,false)
}if(n>10){for(var s=0;
s<(n-10);
s++){r+=p.getKeywordHtml(3,s+10,false)
}}}j.html($Template(b).process({html:m}));
if(q>10){h.html($Template(b).process({html:d}))
}g.html($Template(b).process({html:r}));
if(p.cache.rtk1==null||p.cache.rtk2==null||p.cache.hottopic==null||p.cache.hottopic2==null){p.cache={};
p.cache.rtk1=$Template(b).process({html:m});
p.cache.rtk2=$Template(b).process({html:d});
p.cache.hottopic=$Template(b).process({html:c});
p.cache.hottopic2=$Template(b).process({html:r})
}var u=p.isRtkDelay(p.oRTK.t);
var e=p.isTopicDelay(p.oHTP.t);
var v=naver.main.SectionManager?$Element($$.getSingle("#_MM_RTK_FLICKING_INDICATOR",naver.main.SectionManager.f().getElement())):$Element("_MM_RTK_FLICKING_INDICATOR");
var t=naver.main.SectionManager?$Element($$.getSingle("#_MM_RTK_DATETIME_AREA",naver.main.SectionManager.f().getElement())):$Element("_MM_RTK_DATETIME_AREA");
var a=p.makeBottomHtml(p.oRTK.s);
if(t!=null){t.html(a)
}else{if(j.query(".rtkx_btm")!=null){var f=j.query(".rtkx_btm");
f.html(a);
f.addClass("rtkx_crit")
}}if(v&&(u||e)){v.addClass("rtkx_err")
}},makeBottomHtml:function(c){var b=c.substr(25,2).toUpperCase();
var a=Number(c.substr(16,2));
if(b=="PM"&&a!=12){a+=12
}if(b=="AM"&&a==12){a=0
}if(a<10){a="0"+a
}return'<span class="rtkx_cdate">'+c.substr(0,12)+'</span> <span class="rtkx_ctime">'+a+c.substr(18,6)+" 기준</span>"
},isRtkDelay:function(b){if(naver.main.gVariable.globalOrigin!=""){return false
}var a=this;
if(!a.serverTimestamp||!b){return true
}if((Number(a.serverTimestamp)*1000-Number(b))>60000){return true
}return false
},isTopicDelay:function(c){var b=this;
if(naver.main.gVariable.globalOrigin!=""){return false
}if(!b.serverTimestamp||!c){return true
}var e=new Date(b.serverTimestamp*1000);
var a=new Date(c);
var d=(Number(e)-(Number(a)-540*60*1000))/1000;
return d>(3600*3+30*60)
},initFlicking:function(){var a=this;
var b=this._getSectionName();
if(a.oRtkFilciking[b]){a.oRtkFilciking[b].moveTo(0,0);
return
}a.oRtkFilciking[b]=new jindo.m.SlideFlicking(this._getRtkFlick(),{bHorizontal:true,bUseCircular:true,sClassPrefix:"rtk-flick-",sContentClass:"panel",nTotalContents:a.nFlickedContentCount,nFlickThreshold:60,nDuration:250,bUseTimingFunction:false,bUseDiagonalTouch:false}).attach({flicking:function(e){var d=e.nContentsIndex;
a.updateStatus(d);
a.updatePanel(d);
if(a.isFlMove){var c=a._getClickArea()+(e.bLeft?"kflne":"kflpr");
nclk({},c,"","")
}a.isFlMove=true
},move:function(d){var c=d.nContentsIndex;
a.updateStatus(c);
a.updatePanel(c)
}});
if(naver.main.gVariable.bContentOnly&&jindo.m.getOsInfo().android&&typeof TEvent!=="undefined"){this._getRtkFlick().$value().addEventListener("touchstart",function(c){TEvent.touchStartEvent()
},false)
}a.oRtkFilciking[b].moveTo(0,0)
},expand:function(){var a=this;
this._getRtk().hide();
a._initData();
this._getRtkx().show();
this.updateStatus(0);
if(jindo.m&&jindo.m.SlideFlicking){this.initFlicking()
}else{this.move(0)
}a.isOpen=true;
if(naver.main.SectionManager){naver.main.SectionManager.setHeight()
}nclk({},a._getClickArea()+"kmore","","");
if($Cookie().get("MM_LIGHT_SETTING")!="1"){if(naver.main.gVariable.bContentOnly){}else{window.scrollTo(0,a._getRtkx().offset().top)
}}},contract:function(b){var a=this;
this._getRtkx().hide();
this._getRtk().show();
if(a.isOpen==true&&naver.main.SectionManager){naver.main.SectionManager.setHeight()
}a.isOpen=false;
if(typeof b=="undefined"||b){a.rolling();
nclk({},a._getClickArea()+"kclose","","")
}},getKeywordHtml:function(u,m,r){var p=this;
var j;
var g;
var d;
var l=u%p.nFlickedContentCount;
if(u===2){j=p.oHTP.d[m];
g="mtp_htp.nws";
d="khkwnews"
}else{if(u===3){j=p.oHTP.d[m];
g="mtp_htp.ent";
d="khkwentspo"
}else{j=p.oRTK.d[m];
g="mtp_lve";
d="klkw";
if(r){d="kwd"
}}}var t='<li class="rtkx_l"><a href="https://m.search.naver.com/search.naver?where=m&amp;sm={=SM}&amp;query={=E}" class="rtkx_a" data-clk="{=NCLK}" data-rank="{=R}"> <span class="rtkx_n">{=R}</span> <span class="rtkx_t">{=K}</span></a><a href="http://m.datalab.naver.com/realtimeDetail.naver?query={=E}&where=main&datetime={=O}" class="rtkx_da" data-clk="klkwhistory"><span class="blind">데이터랩 그래프 보기</span></a></li>';
var o='<li class="rtkx_l"> <a href="https://m.search.naver.com/search.naver?where=m&amp;sm={=SM}&amp;query={=E}" class="rtkx_a" data-clk="{=NCLK}" data-rank="{=R}"> <span class="rtkx_n">{=R}</span> <span class="rtkx_t">{=K}</span> <span class="rtkx_pr">{=ICO}</span></a></li>';
var c='<li class="rtk_l"><a href="https://m.search.naver.com/search.naver?where=m&amp;sm={=SM}&amp;query={=E}" class="rtk_a" data-clk="{=NCLK}" data-rank="{=R}" onfocus="javascript:naver.main.RTK.stop();" onblur="javascript:naver.main.RTK.start();"> <em class="rtk_n">{=R}</em> <span class="rtk_t">{=K}</span></a></li>';
var f='<span class="sp_rtk sprh_rtkup">상승</span><em class="rtkx_s">{=N}</em>';
var a='<span class="sp_rtk sprh_rtkdown">하락</span><em class="rtkx_s">{=N}</em>';
var e='<span class="rtkx_new">new</span>';
var q='<span class="rtkx_none">-</span>';
var h=t;
var s="";
switch(j.c){case"up":s=f;
break;
case"dw":s=a;
break;
case"nw":s=e;
break;
case"sm":s=q;
break
}if(l>1&&j.c!="nw"){s=""
}var b=$Template(s).process({N:j.n});
if(l>1){h=o
}else{if(r){h=c
}}m=(u===3)?m-10:m;
var n=$Template(h).process({SM:g,E:j.q||j.k,R:(m+1),NCLK:d,K:j.k,ICO:b,O:p.oRTK.o||this.getDatetimeParam(p.oRTK.s)});
return n
},getDatetimeParam:function(c){var a=new Date().toISOString();
var b=c?c(22,2):"00";
return a.substr(0,17)+b
},prev:function(){var a=this._getSectionName();
this.isFlMove=false;
this.oRtkFilciking[a].movePrev();
nclk({},this._getClickArea()+"kprev","","")
},next:function(){var a=this._getSectionName();
this.isFlMove=false;
this.oRtkFilciking[a].moveNext();
nclk({},this._getClickArea()+"knext","","")
},move:function(a){var b=this._getSectionName();
this.bisUpdatedTotalPanel=true;
if(this.oRtkFilciking[b]){this.updateStatus(a);
this.oRtkFilciking[b].moveTo(a,0)
}else{this.updatePanel(a);
this.updateStatus(a)
}},onclickHTPInfoIcon:function(b){var a=$Element(b).query("! #_MM_RTK_DATETIME_AREA");
a.after(['<div class="rtkx_ly_chelp _MM_htp_close">','<p class="rtkx_chelp">뉴스토픽 섹션은 <br>언론사 기사섹션 기반으로 자동 분류됩니다.</p>','<button type="button" class="rtkx_btn_hclose" onclick="naver.main.RTK.onclickHTPInfoClose(this);"><span class="blind">기준 시간 안내 닫기</span></button>',"</div>"].join(""))
},onclickHTPInfoClose:function(a){this._removeHTPInfoLayer()
},updateStatus:function(c){c=c%this.nFlickedContentCount;
this._updateStatusTab(c);
this._updateStatusPage(c);
var d=$Element("MM_RTK_NEWSTOPIC_SUBTAB");
var b=$Element("MM_RTK_SUBTABS");
var a=naver.main.SectionManager?$Element($$.getSingle("#MM_RTK_SUBTAB1",naver.main.SectionManager.f().getElement())):$Element("MM_RTK_SUBTAB1");
var g=naver.main.SectionManager?$Element($$.getSingle("#MM_RTK_SUBTAB2",naver.main.SectionManager.f().getElement())):$Element("MM_RTK_SUBTAB2");
var f=naver.main.SectionManager?$Element($$.getSingle("#MM_RTK_SUBTAB3",naver.main.SectionManager.f().getElement())):$Element("MM_RTK_SUBTAB3");
var e=naver.main.SectionManager?$Element($$.getSingle("#MM_RTK_SUBTAB4",naver.main.SectionManager.f().getElement())):$Element("MM_RTK_SUBTAB4");
if(c==0){d.hide();
b.css("display","block");
a.attr("aria-selected",true).addClass("cke_tab_on");
g.attr("aria-selected",false).removeClass("cke_tab_on")
}else{if(c==1){d.hide();
b.css("display","block");
a.attr("aria-selected",false).removeClass("cke_tab_on");
g.attr("aria-selected",true).addClass("cke_tab_on")
}else{if(c==2){d.css("display","block");
b.css("display","none");
f.attr("aria-selected",true).addClass("cke_tab_on");
e.attr("aria-selected",false).removeClass("cke_tab_on")
}else{d.css("display","block");
b.css("display","none");
f.attr("aria-selected",false).removeClass("cke_tab_on");
e.attr("aria-selected",true).addClass("cke_tab_on")
}}}this._changeBottomHtml(c)
},_changeBottomHtml:function(d){var b=naver.main.SectionManager?$Element($$.getSingle("#_MM_RTK_FLICKING_INDICATOR",naver.main.SectionManager.f().getElement())):$Element("_MM_RTK_FLICKING_INDICATOR");
var g=naver.main.SectionManager?$Element($$.getSingle("#_MM_RTK_DATETIME_AREA",naver.main.SectionManager.f().getElement())):$Element("_MM_RTK_DATETIME_AREA");
var f=this.oHTP.u;
var e="";
var c=this.isRtkDelay(this.oRTK.t);
var a=this.isTopicDelay(this.oHTP.t);
if(d<2){e=this.makeBottomHtml(this.oRTK.s)
}else{e=f+' <button type="button" class="rtkx_btn_chelp" onclick="naver.main.RTK.onclickHTPInfoIcon(this);"><span class="blind">기준 시간 안내 열기</span></button>'
}if((b==null||g==null)&&($Element("rtk_act")&&$ElementList(".rtkx_btm"))){$Element("rtk_act").css("display","none");
$ElementList(".rtkx_btm").addClass("rtkx_crit");
$ElementList(".rtkx_btm").html(e);
return
}if(d<2){g.html(e);
b.removeClass("rtkx_topic");
if(c){b.addClass("rtkx_err")
}else{b.removeClass("rtkx_err")
}}else{g.html(e);
b.addClass("rtkx_topic");
if(a){b.addClass("rtkx_err")
}else{b.removeClass("rtkx_err")
}}},_updateStatusTab:function(a){var c=this._getRtkx().queryAll(".rtkx_tab_a");
var d="rtkx_tab_aon";
var b=a>1?1:0;
$A(c).forEach(function(e,f){if(f===b){e.addClass(d).attr("aria-selected","true")
}else{e.removeClass(d).attr("aria-selected","false")
}});
if($Element("MM_RTK_SELECTED_ATTR")){$Element("MM_RTK_SELECTED_ATTR").appendTo($Element(c[b]))
}},_updateStatusPage:function(a){var c=this._getRtkx().queryAll(".rtkx_pgn .sp_rtk");
var d="sprh_pgnon";
var b="sprh_pgn";
$A(c).forEach(function(f,g){var e=f.parent();
if(g===a){f.removeClass(b).addClass(d);
e&&e.attr("aria-selected","true")
}else{f.removeClass(d).addClass(b);
e&&e.attr("aria-selected","false")
}})
},updatePanel:function(c){var b=this;
var f=b._getSectionName();
var e=c%b.nFlickedContentCount;
var h;
var d;
var a;
if(e==0){h=b.cache.rtk2;
d=b.cache.rtk1;
a=b.cache.hottopic2
}else{if(e==1){h=b.cache.hottopic;
d=b.cache.rtk2;
a=b.cache.rtk1
}else{if(e==2){h=b.cache.hottopic2;
d=b.cache.hottopic;
a=b.cache.rtk2
}else{h=b.cache.rtk1;
d=b.cache.hottopic2;
a=b.cache.hottopic
}}}if(b.oRtkFilciking[f]){$ElementList(b.oRtkFilciking[f].getPanels()).attr("aria-hidden","true");
b.oRtkFilciking[f].getElement().attr("aria-hidden","false");
b.oRtkFilciking[f].getNextElement().html(h);
b.bisUpdatedTotalPanel&&b.oRtkFilciking[f].getElement().html(d);
b.oRtkFilciking[f].getPrevElement().html(a);
b.bisUpdatedTotalPanel=false
}else{var g=$ElementList(this._getRtkFlick().queryAll(".rtk-flick-panel"));
g.get(0).html(d);
g.hide();
g.get(0).show()
}this._removeHTPInfoLayer()
},_removeHTPInfoLayer:function(){var a=$Element($$.getSingle("._MM_htp_close"));
a&&a.leave()
}};
$.createNamespace("naver.main").Footer=(function(){var _welContentsFooter=$Element("contents_footer"),_oFlicking=null,_nCurIdx=0,_nMaxPage=0,_sFontSize=$Cookie().get("MM_FS")||"",_elFontDecrease=_welContentsFooter&&_welContentsFooter.query(".tol_fssic"),_elFontIncrease=_welContentsFooter&&_welContentsFooter.query(".tol_fslic"),_popupHideId=null,_oSectionManager=naver.main.SectionManager,_aPastFontSize=["","fzoom","fzoom2"],_aNewFontSize=["","fzoom","fzoom2","fzoom3","fzoom4"],_aFontSize=["","fzoom","fzoom2","fzoom3","fzoom4"],_aSectionIds=($("nav")&&eval($Element("nav").query(".nav_u").data("ids")))||[],_bInit=false,_bFontChangeable=false,_init=function(){if(jindo.m.getOsInfo().bInapp){if((jindo.m.getOsInfo().iphone&&naver.main.getNaverInappInfo().browserServiceCode<410)||(jindo.m.getOsInfo().android&&naver.main.getNaverInappInfo().browserServiceCode<360)){_aFontSize=_aPastFontSize
}}var sCurrentFontSize=$S(naver.main.gVariable.sFontSize).trim().toString();
_sFontSize=sCurrentFontSize;
if(_aFontSize.indexOf(_sFontSize)<0){if(_aNewFontSize.indexOf(_sFontSize)>=0){_sFontSize=_aFontSize[_aFontSize.length-1]
}else{_sFontSize=""
}}$Cookie().set("MM_FS",_sFontSize,365*10);
$Cookie().set("MM_FS_MV","1",365*10);
if(location.pathname.search("/menu/")!=0&&location.pathname.search("/panel/")!=0){_bFontChangeable=true;
_setFlicking();
_attach();
_nMaxPage=_aSectionIds.length;
_setPageNumber();
_updateFontSizeButton(_sFontSize,_elFontDecrease,_elFontIncrease);
_checkiPhone6();
if(location.search.search("contentOnly=YES")>-1||!$("nav")){$Element("menu_prev_next").hide()
}}return{increaseFontSize:_onFontIncrease,decreaseFontSize:_onFontDecrease,updateFontSize:_onFontUpdate,updateFontSizeWithReload:_onFontUpdateReload,updateFontSizeButton:_updateFontSizeButton}
},_checkiPhone6=function(){var oAppleInfo=naver.main.getAppleDeviceInfo();
if(oAppleInfo.model&&oAppleInfo.model.search("6")>=0){var sCookieValue=$Cookie().get("MM_AIP6")||"0";
if(sCookieValue!="1"){$Cookie().set("MM_AIP6",1,180);
$Element(document.documentElement).addClass("aip6")
}}},_setFlicking=function(){if(!_bInit&&_oSectionManager.f()){_oFlicking=_oSectionManager.f();
_oFlicking.attach("flicking",_setPageNumber);
_bInit=true
}else{setTimeout(_setFlicking,200)
}},_attach=function(){var self=this;
_welContentsFooter.query(".fpg_apv").attach("click",_onPrev);
_welContentsFooter.query(".fpg_anx").attach("click",_onNext);
_elFontDecrease.attach("click",_onFontDown);
_elFontIncrease.attach("click",_onFontUp);
var welFooter=_welContentsFooter.query(".tol_top");
if(welFooter){welFooter.attach("click",function(we){we.stop();
if(jindo.m.getOsInfo().ipad&&naver.main.getNaverInappInfo().browserServiceCode>=119){location.href="naverapp://main?scrollToTop"
}else{window.scrollTo(0,1)
}})
}var welForMobile=$Element("forMobile");
if(welForMobile){welForMobile.attach("click",_onForMobile)
}var welForTablet=$Element("forTablet");
if(welForTablet){welForTablet.attach("click",_onForTablet)
}},_onPrev=function(we){we.stop();
_oFlicking.movePrev();
_nCurIdx--;
if(_nCurIdx<0){_nCurIdx=_nMaxPage-1
}},_onNext=function(we){we.stop();
_oFlicking.moveNext();
_nCurIdx++;
if(_nCurIdx>=_nMaxPage){_nCurIdx=0
}},_setPageNumber=function(we){var sCurId=null;
if(we){sCurId=naver.main.SectionManager.getSectionName(we.nContentsIndex)
}else{sCurId=naver.main.gVariable.sDefaultSectionId
}_nCurIdx=_aSectionIds.indexOf(sCurId);
_welContentsFooter.query(".fpg_n").html('<em class="fpg_non">'+(_nCurIdx+1)+"</em> / "+_nMaxPage)
},_reloadFont=function(){naver.main.SectionManager.setHeight();
if(jindo.m.getOsInfo().bInapp||naver.main.gVariable.bContentOnly){if((jindo.m.getOsInfo().iphone&&naver.main.getNaverInappInfo().browserServiceCode>=430)||(jindo.m.getOsInfo().ipad&&naver.main.getNaverInappInfo().browserServiceCode>=125)||(jindo.m.getOsInfo().android&&naver.main.getNaverInappInfo().browserServiceCode>=370)){location.href="naverapp://main?newFontSize="+_sFontSize
}}},_onFontDown=function(we){we.stop();
if(_onFontDecrease(we)){setTimeout(function(){_reloadFont()
},500)
}},_onFontDecrease=function(we){var nPrevFontIndex=_aFontSize.indexOf(_sFontSize);
var nNextFontIndex=nPrevFontIndex-1;
return _onFontChange(nPrevFontIndex,nNextFontIndex)
},_onFontUp=function(we){we.stop();
if(_onFontIncrease(we)){setTimeout(function(){_reloadFont()
},500)
}},_onFontIncrease=function(we){var nPrevFontIndex=_aFontSize.indexOf(_sFontSize);
var nNextFontIndex=nPrevFontIndex+1;
return _onFontChange(nPrevFontIndex,nNextFontIndex)
},_onFontUpdate=function(sNextFontSize){var nPrevFontIndex=_aFontSize.indexOf(_sFontSize);
var nNextFontIndex=_aFontSize.indexOf(sNextFontSize);
return _onFontChange(nPrevFontIndex,nNextFontIndex)
},_onFontUpdateReload=function(sNextFontSize){if(_onFontUpdate(sNextFontSize)){setTimeout(function(){_reloadFont()
},500)
}},_onFontChange=function(nPrevFontIndex,nNextFontIndex){var bResult=false;
var sMsg="";
var sFontSize=_aFontSize[nNextFontIndex];
if(nPrevFontIndex<0||nPrevFontIndex>=_aFontSize.length||nNextFontIndex<0||nNextFontIndex>=_aFontSize.length||nPrevFontIndex===nNextFontIndex){if(nPrevFontIndex!==0&&nNextFontIndex!==0){JEagleEyeClient.sendError("[Footer] _onFontChange error : invalid nPrevFontIndex = "+nPrevFontIndex+", nNextFontIndex = "+nNextFontIndex);
return
}}if(nPrevFontIndex<nNextFontIndex){sMsg="글자 크기가 커졌습니다.";
if(nNextFontIndex===_aFontSize.length-1){sMsg="가장 큰 글자 크기 입니다."
}bResult=true
}else{if(nPrevFontIndex>nNextFontIndex){sMsg="글자 크기가 작아졌습니다.";
if(nNextFontIndex===0){sMsg="가장 작은 글자 크기입니다."
}bResult=true
}}if(bResult){_setFontSize(sFontSize);
if(_welContentsFooter){var welMsgTool=_welContentsFooter.query(".tol_mes");
_showFontPopup(sMsg,welMsgTool)
}if(naver.main.FontSize){naver.main.FontSize.update()
}if(naver.main.HorizontalScroll){naver.main.HorizontalScroll.resizingTemplate()
}}return bResult
},_setFontSize=function(fontSize){if(_aFontSize.indexOf(fontSize)<0){JEagleEyeClient.sendError("[Footer] _setFontSize error : invalid fontSize = "+fontSize);
return
}if(_bFontChangeable){var welHtml=$Element(document.documentElement);
welHtml.removeClass($S(_aNewFontSize.join(" ")).trim());
welHtml.addClass(fontSize)
}$Cookie().set("MM_FS",fontSize,365*10);
$Cookie().set("NFS",(_aFontSize.indexOf(fontSize))+1,365*10,"naver.com");
_updateFontSizeButton(fontSize,_elFontDecrease,_elFontIncrease);
_sFontSize=fontSize
},_showFontPopup=function(msg,welMsgTool){if(!msg){return
}if(_popupHideId){clearTimeout(_popupHideId)
}var nFooterTop=_welContentsFooter.query(".tol").offset().top;
var nNavTop=$Element("ct").offset().top;
welMsgTool.html(msg);
welMsgTool.appear(0);
_popupHideId=setTimeout(function(){welMsgTool.disappear(0.1);
_popupHideId=null
},1500)
},_updateFontSizeButton=function(fontSize,_elFontDecrease,_elFontIncrease){if(!_elFontDecrease||!_elFontIncrease){return
}_elFontDecrease.attr("disabled",null);
_elFontIncrease.attr("disabled",null);
var nFontIndex=_aFontSize.indexOf(fontSize);
if(nFontIndex===0){_elFontDecrease.$value().setAttribute("disabled","disabled")
}if(nFontIndex===_aFontSize.length-1){_elFontIncrease.$value().setAttribute("disabled","disabled")
}},_onForMobile=function(){$Cookie().set("MM_HOME","mobile",365*10)
},_onForTablet=function(){$Cookie().set("MM_HOME","tablet",365*10)
};
return{init:_init}
})().init();
$.createNamespace("naver.main").increaseFontSize=function(){naver.main.Footer.increaseFontSize()
};
$.createNamespace("naver.main").decreaseFontSize=function(){naver.main.Footer.decreaseFontSize()
};
$.createNamespace("naver.main").updateFontSize=function(a){naver.main.Footer.updateFontSize(a)
};
$.createNamespace("naver.main").FontSize=(function(){var a=null,g=function(){j();
l()
},c=$Element("_MM_ALERT_DIALOG"),j=function(){var m=$Element("ct");
var n=$Element("_MM_ALERT_DIALOG");
if(m){m.delegate("click","._MM_FONT_SIZE_CLOSE",$Fn(d,this).bind());
m.delegate("click","._MM_FONT_SIZE_BUTTON",$Fn(f,this).bind())
}if(n){n.delegate("click","._MM_ALERT_DIALOG_OK",$Fn(b,this).bind());
n.delegate("click","._MM_ALERT_DIALOG_CANCEL",$Fn(h,this).bind())
}},d=function(m){m.stop();
a=$Element(m.element).parent(function(p){return p.hasClass("_MM_FONT")
},3);
var o=naver.main.SectionManager.getSectionName();
var n=naver.main.GridInfo.getGridInfo(o,"htServiceName");
$Element("_MM_ALERT_DIALOG_TITLE").html('더 이상 <span class="alt_name">'+n+"</span> 판에서<br>이 정보를 노출하지 않습니다.");
c.data("template","fontSize");
c.show();
return
},f=function(m){m.stop();
var n=$Element(m.element).data("fontsizecode")||"";
naver.main.Footer.updateFontSizeWithReload(n);
naver.main.HorizontalScroll.resizingTemplate();
l()
},h=function(m){if(c.data("template")!="fontSize"){return
}var n=naver.main.SectionManager.getSectionName();
nclk(m.element,naver.main.GridInfo.getGridInfo(n,"clickArea")+"fontszinino","","");
c.hide()
},b=function(n){if(c.data("template")!="fontSize"){return
}var o=naver.main.SectionManager.getSectionName();
nclk(n.element,naver.main.GridInfo.getGridInfo(o,"clickArea")+"fontsziniyes","","");
c.hide();
var q=$Element(a[0]);
var r=q.child(function(t){return t.hasClass("_MM_FONT_INNER")
},2);
var p=r[0].data("gdid");
var s=p;
q.hide();
var m=$Cookie().get("MM_FS_CLOSE")||"";
if(m.length>0){s=m+","+s
}$Cookie().set("MM_FS_CLOSE",s,365*10);
naver.main.SectionSetting.showAlertDialog("fontSizeClose");
setTimeout(function(){$Element("ly_beauty_event").disappear()
},2000)
},l=function(){e();
var q=$$("._MM_FONT_SIZE_BUTTON");
var n=$Cookie().get("MM_FS")||"";
$ElementList(q).removeClass("mo_font_on");
for(var o=0;
o<q.length;
o++){var p=$Element(q[o]);
var m=p.data("fontsizecode")||"";
if(n===m){p.addClass("mo_font_on")
}}},e=function(){if(jindo.m.getOsInfo().bInapp){if((jindo.m.getOsInfo().iphone&&naver.main.getNaverInappInfo().browserServiceCode<410)||(jindo.m.getOsInfo().android&&naver.main.getNaverInappInfo().browserServiceCode<360)){$ElementList("._MM_FONT").hide()
}}};
return{init:g,update:l,pastVersionOS:e}
})();
naver.main.FontSize.init();
$.createNamespace("naver.main").NaverApp=(function(){var y,p=location.search||"",c="MM_menu_subscribe",j="MM_menu_subscribe_first",l="MM_panel_changed",g="MM_panel_changed_msg",G="MM_S_TOAST",b="MM_L_HASH",K="",M=function(){s();
y=$S(p.replace(/^\?(.*)/,"$1")).parseString();
switch(y.cmd){case"onMenu":F(y.menuCode);
case"addMenu":H(y.subMenuCode);
break;
case"showMenuEdit":a();
break;
case"onBanner":n();
break
}},F=function(N){if(E(N)==false){$Cookie().set("MM_S_ADD",N)
}},E=function(N){return($A(naver.main.Panel.getPanelOn().split(";")).indexOf(N)>=0)
},H=function(N){var O=y.menuCode;
var P=y.order;
r(y.showToast||"Y");
d(y.hash||"");
if(!O){location.href="/";
return
}if(naver.main.gVariable.isApp){w(O,P)
}else{D(O,N,P)
}},a=function(){location.href="/panel/"
},e=function(){return $Cookie().get(G)=="Y"
},r=function(N){if(N=="true"||N=="Y"){$Cookie().set(G,"Y")
}else{$Cookie().remove(G)
}},L=function(){return $Cookie().get(b)
},d=function(N){N=N?N.trim():"";
if(N){$Cookie().set(b,N)
}else{$Cookie().remove(b)
}},n=function(){switch(y.bannerName){case"toFooterLight":naver.main.resources("light").setGuideBanner();
break
}location.href="/"
},h=function(O){if(typeof CH=="undefined"){return
}var O=B(O);
var N=CH.query(O,"t");
CH.send(N)
},q=function(){var O=jindo.m.getOsInfo();
var N=APP.getNaverInappInfo();
if(O.android&&N.browserServiceCode>=420){APP.run("naverapp://","","htmlLoadingFinished",false)
}},B=function(O){if(window.__bmrTime){O.bm=window.__bmrTime
}if(window.edgeIP){O.edgeIP=window.edgeIP;
O.firstEdgeIP=window.edgeIP.replace(/,.*/,"")
}if(typeof performance=="undefined"||typeof performance.timing!="object"){return O
}var N=performance.timing;
for(key in N){O[key]=N[key]
}return O
},D=function(O,U,W){if(W==1){$Cookie().set(j,"true",1,"m.naver.com")
}var V=$Cookie().get("MM_panel")||naver.main.gVariable.sPanelOn;
var P=$Cookie().get(j);
if(V.search(O)<0||P!=null){if(!!!naver.main.GridInfo.getGridInfo(O,"bClose")){$Cookie().set(c,O,1,"m.naver.com");
$Cookie().set(l,O,1);
$Cookie().set(g,"ADD",1)
}}else{$Cookie().remove(c,"m.naver.com");
$Cookie().remove(l);
$Cookie().remove(g)
}if(U){var Q=(1/24/60)*3;
if("MYFEED"==O&&E(O)==false){Q=365*10
}$Cookie().set("MM_SUB_MENU",U,Q)
}naver.main.Panel.setPanelOriginCookie();
if(E(O)==false||W>0){naver.main.Panel.subscribe(O,W)
}if(naver.main.gVariable.sPanelAll.split(";").indexOf(O)!=-1&&V.split(";").indexOf(O)==-1){var T={};
T.ni=$Cookie().get("NNB");
T.menuOnList=$Cookie().get("MM_panel");
var N=T.menuOnList.split(";");
T.menuOffList=naver.main.gVariable.sPanelAll.split(";").filter(function(X){return N.indexOf(X)<0
}).join(";");
T.path="link";
T.changedMenuOnList=[O];
CH.click("WEB.setting",T)
}var S=/^.*sub_menu=([a-zA-Z_0-9]+).*$/;
if(S.test(p)){var R=p.replace(S,"$1");
if("SHOPPING"===O){$Cookie().set("MM_IS",R,(1/24/60)*10)
}else{if("PLACE"===O){$Cookie().set("MM_PL",R,3650)
}}}naver.main.resources("menu").setSet(O);
$Cookie().remove("MM_margin");
setTimeout(function(){location.href="/"
},100)
},w=function(N,Q){var P=jindo.m.getOsInfo();
var O=APP.getNaverInappInfo();
if((P.iphone&&O.browserServiceCode<390)||(P.android&&O.browserServiceCode<330)||(P.ipad&&O.browserServiceCode<121)||Q){$Cookie().set(c,"update",1,"m.naver.com");
location.href="/"
}APP.run("naverapp://","","setuphome?menu="+N)
},s=function(){var N=$Element("ct");
var O=$Element("_MM_ALERT_DIALOG");
if(N){N.delegate("click","._MM_CHANGE_PANEL_BANNER",$Fn(C,this).bind())
}if(O){O.delegate("click","._MM_ALERT_DIALOG_OK",$Fn(z,this).bind());
O.delegate("click","._MM_ALERT_DIALOG_CANCEL",$Fn(v,this).bind())
}},C=function(N){N.stop($Event.CANCEL_DEFAULT);
var R=$Element("_MM_ALERT_DIALOG");
K=$Element(N.element).attr("data-change-panel");
var O=K;
var Q=jindo.m.getOsInfo();
var P=APP.getNaverInappInfo();
if((Q.iphone&&P.browserServiceCode>=450)||(Q.android&&P.browserServiceCode>=390)||(Q.ipad&&P.browserServiceCode>=127)){location.href="/naverapp/?version=1&cmd=addMenu&menuCode="+O+"&order=1";
return
}if($Cookie().get("MM_panel")==null||$Cookie().get("MM_panel").search(O)<0){$Element("_MM_ALERT_DIALOG_TITLE").html("<b>홈 메뉴 순서변경</b><br/><br/>"+naver.main.GridInfo.getGridInfo(O,"htServiceName")+"판을 첫번째 순서로<br/>변경 하시겠습니까?")
}else{$Element("_MM_ALERT_DIALOG_TITLE").html("<b>홈 메뉴 순서변경</b><br/><br/>"+naver.main.GridInfo.getGridInfo(O,"htServiceName")+"판을 첫번째 순서로<br/>이동 하시겠습니까?")
}R.data("template","changePanel");
R.show()
},z=function(P){var O=$Element("_MM_ALERT_DIALOG");
if(O.data("template")!="changePanel"){return
}var N=naver.main.SectionManager.getSectionName();
nclk(P.element,naver.main.GridInfo.getGridInfo(N,"clickArea")+"tabmovyes","","");
setTimeout(function(){location.href="/naverapp/?version=1&cmd=addMenu&menuCode="+K+"&order=1"
},100)
},v=function(Q){var P=$Element("_MM_ALERT_DIALOG");
var O=P.data("template")||"";
if(O=="changePanel"){var N=naver.main.SectionManager.getSectionName();
nclk(Q.element,naver.main.GridInfo.getGridInfo(N,"clickArea")+"tabmovno","","")
}var P=$Element("_MM_ALERT_DIALOG");
P.hide()
},f=function(){naver.main.Light.showGuideBanner()
},t=function(O,N){},u=function(){if(typeof mainHomeCuFeed=="undefined"){JEagleEyeClient.sendError("[CUFEED] mainHomeCuFeed is undefined");
return
}try{var P=JSON.parse(mainHomeCuFeed.getContextLog("env",true));
naver.main.NaverApp.di=P.di||naver.main.NaverApp.di||"";
P.act="env";
CH.send(CH.query(P,"ctx"));
var O=JSON.parse(mainHomeCuFeed.getContextLog("browsing",true));
var N=x(O);
CH.send(CH.query(N,"ctx"))
}catch(Q){JEagleEyeClient.sendError("[CUFEED] naver.main.NaverApp.notifyContextLog : "+Q)
}},J=function(O,T,S){try{if(O=="env"){var Q=JSON.parse(T);
naver.main.NaverApp.di=Q.di||naver.main.NaverApp.di||"";
Q.act="env";
CH.send(CH.query(Q,"ctx"))
}if(S){if(O=="browsing"){var P=JSON.parse(T);
var N=x(P);
CH.send(CH.query(N,"ctx"))
}window.webkit.messageHandlers.QFeedFlushLog.postMessage("")
}}catch(R){JEagleEyeClient.sendError("[CUFEED] naver.main.NaverApp.addContextLog : "+R)
}},x=function(O){var P={};
P.act="browsing";
if(!O||O.length==0){return P
}P.count=O.length;
if(O&&O.length>0&&O[0]["di"]){naver.main.NaverApp.di=O[0]["di"]
}P.di=naver.main.NaverApp.di||"";
var Z=function(ae){var ac=[];
for(var ad in ae){ac.push(ad+":"+ae[ad])
}return ac.join(";")
};
var Y={};
var S={};
var W={};
var N={};
var V={};
for(var X in O){var U=O[X];
var aa=U.url.split("//")[1].split("/")[0];
Y[aa]=Y[aa]||0;
Y[aa]++;
var T=U.network_type||"NONE";
S[T]=S[T]||0;
S[T]++;
var R=U.network_usage_app||0;
var ab=U.network_usage_total||0;
W[T]=W[T]||0;
W[T]+=R;
N[T]=N[T]||0;
N[T]+=ab;
if(/^(([A-z0-9-]+\.)*(naver\.com|modoo\.at|grafolio\.(net|com)|vlive\.tv|pholar\.co|blog\.me)|naver\.me|band\.us|line\.me)$/.test(aa)){var Q=U.duration||0;
V[aa]=V[aa]||0;
V[aa]+=Q
}}P.domain=Z(Y);
P.network_type=Z(S);
P.network_usage_app=Z(W);
P.network_usage_total=Z(N);
P.duration=Z(V);
return P
},m=function(O,N){},I=function(){var R=naver.main.LogHistory.get(30,"lcs",true);
var T=Object.keys(R);
T=T.filter(function(V){return(V!="REST"&&V!="TODAY")
}).map(function(V){return{panel:V,count:R[V]}
}).sort(function(W,V){return V.count-W.count
}).map(function(V){return V.panel
});
var N=naver.main.panelManager.getUnusedPanel(90).split(";");
var Q=naver.main.panelManager.getUnusedPanel(60).split(";");
var P=[];
P=N;
for(var O=0;
O<Q.length;
O++){if(P.indexOf(Q[O])<0){P.push(Q[O])
}}var S="-";
if(naver.main.gVariable.sUserGender=="m"){S="m"
}else{if(naver.main.gVariable.sUserGender=="f"){S="f"
}}var U={unusedMenuList:P.join(";"),unusedMenuPeriod:60,usedMenuList:T.join(";"),usedMenuPeriod:30,defaultMenuList:"NEWS;ENT;SPORTS",ranking:naver.main.gVariable.sPanelRanking.split(";").filter(function(V){return naver.main.gVariable.sPanelAll.split(";").indexOf(V)>-1
}).join(";"),checkCoachPeriod:60,checkCoachTargetUserRatio:0,arrangeCoachPeriod:14,gender:S};
return U
},o=function(){if(typeof inapphome=="undefined"||typeof inapphome.sendMainData!=="function"){return
}inapphome.sendMainData(JSON.stringify(I()))
},A=function(P,N){switch(P.toLowerCase()){case"pageshow":try{var Q=JSON.parse(N);
if(Q.from==="ext"&&naver.main.SectionManager.getSectionName()==="TODAY"){location.reload()
}}catch(O){}break;
default:}};
_notifyDAScroll=function(N){try{naver_corp_da.webviewY=N;
var O=new Event("scroll");
window.dispatchEvent(O)
}catch(O){JEagleEyeClient.sendError("[DA] native scroll event trigger fail");
return
}};
return{init:M,addMenu:H,showMenuEdit:a,sendLogData:h,callHtmlLoadingFinished:q,createMenuCodeCookie:F,notifyAppEvent:f,sendPreference:t,notifyContextLog:u,addContextLog:J,log:m,getMainData:I,sendMainData:o,notify:A,notifyDAScroll:_notifyDAScroll}
})();
$.createNamespace("naver.main").MyFeed=(function(){var R="/api_snsinfra",l="MM_MF_SVC",E="MM_MF_TIMESTAMP",Q="MM_MF_DISCO_BANNER",b=$A([]),X=$A(["BLOG","POST","CAFE","TVCAST","NEWS","DISCO"]),m="ALL",N="",p={blog:"이웃 글",post:"팔로잉 글",cafe:"구독 게시판",tvcast:"채널",news:"기사"},y={blog:"이웃 관계는 유지, MY피드에서만 새 글을 받지 않겠습니다.",post:"팔로잉은 유지, MY피드에서만 새 글을 받지 않겠습니다.",cafe:"구독은 유지, MY피드에서만 새 글을 받지 않겠습니다.",tvcast:"구독은 유지, MY피드에서만 새 글을 받지 않겠습니다.",news:"구독은 유지, MY피드에서만 새 글을 받지 않겠습니다."},G=naver.main.resources("myfeedPanel"),D,z;
var O=function(){e();
P();
h();
T();
K();
s()
},e=function(){D=$Element("ct");
z=$Element("_MM_MF_SERVICE_OPTION")
},P=function(){if(D){$Element("guide_myfeed").delegate("click",".lgm_bw",$Fn(o,this).bind());
D.delegate("click","._MM_MF_SERVICE_OPTION_ITEM",$Fn(J,this).bind());
D.delegate("click","._MM_MF_DISCO_BANNER_ITEM",$Fn(J,this).bind());
D.delegate("click","._MM_MF_TYPE",$Fn(I,this).bind());
D.delegate("click","._MM_MF_ADD_ALL",$Fn(S,this).bind());
D.delegate("click","._MM_MF_CHECKBOX",$Fn(U,this).bind());
D.delegate("click","._MM_MF_ADD",$Fn(v,this).bind());
D.delegate("click","._MM_MF_MORE",$Fn(j,this).bind());
D.delegate("click","._MM_MF_MORE_HIDE",$Fn(M,this).bind());
D.delegate("click","._MM_MF_MORE_HIDE_ALL",$Fn(V,this).bind());
D.delegate("click","._MM_MF_MORE_CLOSE",$Fn(W,this).bind());
D.delegate("click","._MM_MF_HIDE_EACH",$Fn(f,this).bind());
D.delegate("click","._MM_MF_HIDE_EACH_ON",$Fn(r,this).bind());
D.delegate("click","._MM_MF_HIDE_EACH_OFF",$Fn(q,this).bind());
D.delegate("click","._MM_MF_GUIDE_CLOSE",$Fn(F,this).bind());
D.delegate("click","._MM_MF_TOP_BANNER_CLOSE_BTN",$Fn(B,this).bind());
D.delegate("click","._MM_MF_CHANNEL_MORE",$Fn(t,this).bind());
D.delegate("click","._MM_MF_CONTENT_MORE",$Fn(A,this).bind());
D.delegate("click","._MM_MF_CONTENT_CLOSE",$Fn(d,this).bind());
D.delegate("click","._MM_MF_FOCUS_INFO_BANNER_TOGGLE",$Fn(u,this).bind());
D.delegate("click","._MM_MF_FOCUS_INFO_BANNER_CLOSE",$Fn(g,this).bind());
D.delegate("click","._MM_ABOUT_DISCO_BTN",$Fn(_onClickAboutDiscoButton,this).bind());
D.delegate("click","._MM_ABOUT_DISCO_CLOSE",$Fn(_onClickAboutDiscoClose,this).bind());
D.delegate("click","._MM_DISCO_APP_BANNER",$Fn(_onClickDiscoAppBanner,this).bind())
}},h=function(){var Z=$Cookie().get(l)||"";
var aa=Z.split(",");
var Y=n();
if(Y){aa=[];
aa[0]=Y
}X.forEach(function(ab){if(Z||Y){if(aa.indexOf(ab)>-1){b.push(ab)
}}else{b.push(ab)
}});
N=x()
},n=function(){var Y=$Cookie().get("MM_SUB_MENU");
if(Y){return Y
}Y=naver.main.util.getParameterByName("subMenu");
if(Y){return Y
}return null
},x=function(){if(b.length()==1){return b.pop()
}else{return m
}},T=function(){if(naver.main.gVariable.bContentOnly==true){$Element("guide_myfeed").addClass("lgm_forapp");
$Element("guide_myfeed").css("top",naver.main.gVariable.nPaddingTop)
}},o=function(Y){if(Y.element==Y.srcElement){Y.stop($Event.CANCEL_DEFAULT);
$Element("guide_myfeed").hide()
}},J=function(Z){Z.stop($Event.CANCEL_DEFAULT);
var ad=$Element(Z.element);
var aa=N;
var ae=ad.data("service");
var ac=naver.main.GridInfo.getGridInfo("MYFEED","clickArea")+ad.data("nclk");
var Y=ad.data("banner")||false;
var ab=false;
if(ae!=aa){if(Y===false){ac+="on"
}nclk(Z.element,ac,"","");
N=ae;
$Cookie().remove("MM_SUB_MENU");
ab=true
}K();
if(N==m){$Cookie().remove("MM_MF_SVC")
}else{$Cookie().set("MM_MF_SVC",N,365*10);
$Cookie().set("MM_MF_V",1,30)
}if(ab){$Cookie().remove(E);
w()
}},I=function(Z){Z.stop($Event.CANCEL_DEFAULT);
var Y=$Element(Z.element);
if(Y.hasClass("ucs_btn_on")){$Cookie().remove("MM_MF_CHANNEL")
}else{$Cookie().set("MM_MF_CHANNEL","1",365*10)
}w()
},S=function(aa){aa.stop($Event.CANCEL_DEFAULT);
var Z=[];
var ad=$ElementList("._MM_MF_CHECKBOX");
for(var ac=0;
ac<ad.length();
ac++){var Y=ad.get(ac);
if(Y.hasClass("ucm_chk_on")==false){continue
}var ab={serviceCode:Y.data("service"),id:Y.data("id"),type:Y.data("type")};
Z.push(ab)
}if(Z.length==0){return
}if(confirm("인기 블로그· 포스트· 네이버TV "+Z.length+"개 채널의 새로운 글을 확인하실 수 있습니다")){C(Z,function(){if(b.has("CAFE")&&b.length()==1){$Cookie().remove("MM_MF_SVC")
}w()
})
}},U=function(aa){aa.stop($Event.CANCEL_DEFAULT);
var af=$Element(aa.element);
var ac=naver.main.GridInfo.getGridInfo("MYFEED","clickArea")+af.data("nclk");
af.toggleClass("ucm_chk_on");
if(af.hasClass("ucm_chk_on")){ac+="on"
}else{ac+="off"
}nclk(aa.element,ac,"","");
var ae=$ElementList("._MM_MF_CHECKBOX");
var ad=0;
for(var ab=0;
ab<ae.length();
ab++){var Z=ae.get(ab);
if(Z.hasClass("ucm_chk_on")==false){continue
}ad++
}var Y=$Element($$.getSingle("._MM_MF_ADD_ALL"));
Y.html('<span class="uce_num">'+ad+"개</span> 채널 추가하기");
if(ad==0){Y.addClass("uce_disabled")
}else{Y.removeClass("uce_disabled")
}},v=function(aa){aa.stop($Event.CANCEL_DEFAULT);
var ab=$Element(aa.element);
var ac=naver.main.GridInfo.getGridInfo("MYFEED","clickArea");
var ad={serviceCode:ab.data("service"),id:ab.data("id"),type:ab.data("type")};
var Y=[];
var Z=ab.hasClass("ucm_btn_subscribe")||ab.hasClass("uct_btn_subscribe");
var ah=ab.hasClass("ucf_btn_follow");
var ag=Z||ah;
var ae="ucf_btn_on";
var af="ucm_btn_on";
if(ab.hasClass("uct_btn_subscribe")){ae="uct_btn_on";
af="uct_btn_on"
}Y.push(ad);
if(ab.hasClass(af)||ab.hasClass(ae)){if(ag){nclk(aa.element,ac+"fo"+ab.data("service")+"off")
}else{nclk(aa.element,ac+"followoff","","")
}a(Y,function(){if(Z){ab.removeClass(af);
ab.html("구독")
}else{if(ah){ab.removeClass(ae);
ab.html('<span class="blind">구독</span>')
}else{ab.removeClass(af);
ab.html("팔로우")
}}})
}else{if(ag){nclk(aa.element,ac+"fo"+ab.data("service")+"on")
}else{nclk(aa.element,ac+"followon","","")
}C(Y,function(){if(Z){ab.addClass(af);
ab.html("구독완료")
}else{if(ah){ab.addClass(ae);
ab.html('<span class="blind">구독완료</span>')
}else{ab.addClass(af);
ab.html("팔로잉")
}}})
}},j=function(Y){Y.stop($Event.CANCEL_DEFAULT);
var aa=$Element(Y.element);
var ac=aa.next();
var Z=naver.main.GridInfo.getSectionId("MYFEED");
var ab="ucm";
if(ac.visible()){$ElementList("._MM_MF_MORE_LAYER").hide();
$ElementList("._MM_MF_MORE_LAYER").removeClass(ab+"_ftop");
$ElementList("._MM_MF_MORE").removeClass(ab+"_btn_on")
}else{$ElementList("._MM_MF_MORE_LAYER").hide();
$ElementList("._MM_MF_MORE").removeClass(ab+"_btn_on");
aa.addClass(ab+"_btn_on");
ac.show();
if($Element("ct").height()-ac.offset().top<ac.height()){ac.addClass(ab+"_ftop")
}else{ac.removeClass(ab+"_ftop")
}}},M=function(Z){Z.stop($Event.CANCEL_DEFAULT);
var ab=$Element(Z.element);
var Y=ab.data("service");
var aa=ab.data("id");
var ac=$Ajax(R+"/proxy/sg/MyFeedServiceBO/hideContent.json",{method:"GET",type:"jsonp",timeout:5,onload:function(ag){var af=ag.json();
try{if(0==af.code){var ah=Y+"_"+aa;
var ai=$ElementList("._MM_MF_CONTENT[data-contentid='"+ah+"']");
if(ai.length()>0){var ad=ai.get(0);
var ae=ad.query("._MM_MF_HIDDEN");
ae.show("block");
$ElementList("._MM_MF_MORE_LAYER").hide()
}}else{alert("이 글만 안보기가 실패하였습니다.")
}}catch(aj){JEagleEyeClient.sendError("[MYFEED] hideContent API response parsing error : "+aj)
}},onerror:function(){alert("이 글만 안보기가 실패하였습니다.")
},ontimeout:function(){alert("이 글만 안보기가 실패하였습니다.")
}});
ac.request({serviceCode:Y,messageIdList:aa});
ac=null
},V=function(ac){ac.stop($Event.CANCEL_DEFAULT);
var af=naver.main.GridInfo.getGridInfo("MYFEED","clickArea");
var ab=$Element(ac.element);
var aj=ab.data("service");
var ad=ab.data("id");
var Z=ab.data("type");
var ah=ab.data("hide-key");
var al=ab.data("status");
var ak=ab.data("channel-name");
var ae=ab.data("gdid")||"";
var aa="hideChannel";
var ai="[{=CHANNEL_NAME}]{=SERVICE_TYPE}을 MY피드에서 더 이상 보지 않습니다.\n새로고침 하시면 바로 반영 됩니다.";
var Y="{=SERVICE_TYPE} 안보기가 실패하였습니다.";
if("news"==aj){ai="[{=CHANNEL_NAME}]{=SERVICE_TYPE}를 MY피드에서 더 이상 보지 않습니다.\n새로고침 하시면 바로 반영 됩니다."
}if("show"==al){aa="showChannel";
ai="[{=CHANNEL_NAME}]{=SERVICE_TYPE}을 MY피드에서 계속 보겠습니다.";
Y="{=SERVICE_TYPE} 보기가 실패하였습니다.";
if(aj=="news"){ai="[{=CHANNEL_NAME}]{=SERVICE_TYPE}를 MY피드에서 계속 보겠습니다."
}}ai=$Template(ai).process({CHANNEL_NAME:ak,SERVICE_TYPE:p[aj]});
Y=$Template(Y).process({SERVICE_TYPE:p[aj]});
if("news"==aj){nclk(ac.element,af+"nw"+al+"all",ae,"")
}else{nclk(ac.element,af+aj+al+"all",ae,"")
}if(confirm(ai)==false){nclk(ac.element,af+al+"allno","","");
return
}else{nclk(ac.element,af+al+"allok","","")
}var ag=$Ajax(R+"/invoker/"+aa+".json",{method:"GET",type:"jsonp",timeout:5,onload:function(aq){var ao=aq.json();
try{if(true==ao.result){$ElementList("._MM_MF_MORE_LAYER").hide();
var an=naver.main.GridInfo.getSectionId("MYFEED");
var am=naver.main.GridInfo.getGridInfo(an).subMenu;
var au="";
if(am=="ALL"&&an=="MYFEED_NEW"){au='<div class="uct_function_info"><span class="=info_main"><span class="main_txt">&#39;<span class="txt">{=CHANNEL_NAME}</span>&#39;</span> {=LINK_NAME}</span><span class="info_sub">{=LINK_DESC}</span></div>'
}else{au='<div class="{=CLASS_PREFIX}_fw"><span class="={=CLASS_PREFIX}_fat"><span class="{=CLASS_PREFIX}_ftt">&#39;<span class="{=CLASS_PREFIX}_fst">{=CHANNEL_NAME}</span>&#39;</span> {=LINK_NAME}</span><span class="{=CLASS_PREFIX}_fas">{=LINK_DESC}</span></div>'
}var ar="ucm";
var ap=$Template(au).process({CHANNEL_NAME:ak,LINK_NAME:p[aj]+" 안보기",LINK_DESC:y[aj],CLASS_PREFIX:ar});
sShowLinkHtml=$Template(au).process({CHANNEL_NAME:ak,LINK_NAME:p[aj]+" 보기",LINK_DESC:"",CLASS_PREFIX:ar});
ab.html(("show"==al)?ap:sShowLinkHtml);
ab.data("status",("show"==al)?"hide":"show")
}else{alert(Y)
}}catch(at){JEagleEyeClient.sendError("[MYFEED] hideChannel API response parsing error : "+at)
}},onerror:function(){alert(Y)
},ontimeout:function(){alert(Y)
}});
ag.request({serviceCode:aj,type:Z,hideKey:ah});
ag=null
},f=function(Z){Z.stop($Event.CANCEL_DEFAULT);
var ac=$Element(Z.element);
var Y=ac.data("service");
var aa=ac.data("id");
var ab=ac.data("contentid");
var ad=$Ajax(R+"/proxy/sg/MyFeedServiceBO/hideContent.json",{method:"GET",type:"jsonp",timeout:5,onload:function(ah){var ag=ah.json();
try{if(0==ag.code){var ae=$ElementList("._MM_MF_HIDDEN_EACH[data-contentId='"+ab+"']");
if(ae.length()>0){var af=ae.get(0);
if(af){af.show("block")
}}}else{alert("이 글만 안보기가 실패하였습니다.")
}}catch(ai){JEagleEyeClient.sendError("[MYFEED] hideContent API response parsing error : "+ai)
}},onerror:function(){alert("이 글만 안보기가 실패하였습니다.")
},ontimeout:function(){alert("이 글만 안보기가 실패하였습니다.")
}});
ad.request({serviceCode:Y,messageIdList:aa});
ad=null
},c=function(aa,Z){var Y=$ElementList("._MM_MF_MORE[data-contentId='"+aa+"']");
if(Y.length()>0){if(Z){Y.show()
}else{Y.hide()
}}},H=function(ab,Z){var ad=$ElementList("._MM_MF_CONTENT[data-contentId='"+ab+"']");
if(ad.length()>0){var Y=ad.get(0);
var aa=$A(Y.queryAll("._MM_MF_HIDE_EACH_DIV"));
var ac=Y.query("._MM_MF_HIDE_EACH_OFF");
if(ac){aa.push(ac)
}aa.forEach(function(ae){if(Z){ae.show("block")
}else{ae.hide()
}})
}},r=function(Z){j(Z);
Z.stop($Event.CANCEL_DEFAULT);
var Y=$Element(Z.element);
var aa=Y.data("contentid");
$ElementList("._MM_MF_MORE_LAYER").hide();
c(aa,false);
H(aa,true)
},q=function(Z){Z.stop($Event.CANCEL_DEFAULT);
var Y=$Element(Z.element);
Y.hide();
var aa=Y.data("contentid");
$ElementList("._MM_MF_MORE_LAYER").hide();
c(aa,true);
H(aa,false)
},W=function(Y){Y.stop($Event.CANCEL_DEFAULT);
var Z=$Element(Y.element);
var ab=Z.parent();
if(ab){ab.hide()
}var aa=naver.main.GridInfo.getGridInfo("MYFEED","clickArea");
nclk(Y.element,aa+"setx","","")
},F=function(Y){Y.stop($Event.CANCEL_DEFAULT);
var aa=$Element(Y.element);
var Z=aa.parent();
if(Z){Z.hide()
}},B=function(Y){Y.stop($Event.CANCEL_DEFAULT);
var aa=$Element(Y.element);
var Z=aa.parent().parent().parent();
if(Z){Z.hide();
G.setTopBannerStatus()
}},t=function(aa){aa.stop($Event.CANCEL_DEFAULT);
var Z=$Element(aa.element);
Z.parent().hide();
var ab=Z.data("channel-id");
var Y=$$("._MM_MF_CHANNEL[data-channel-id='"+ab+"'] script");
$A(Y).forEach(function(ad){var ac=$Element(ad);
ac.afterHTML(ac.html())
});
naver.main.SectionManager.setHeight()
},A=function(Z){Z.stop($Event.CANCEL_DEFAULT);
var Y=$Element(Z.element);
var aa=Y.data("contentid");
var ac=$$("._MM_MF_SUB_CONTENT[data-parent-contentid='"+aa+"']");
$A(ac).forEach(function(ae){var ad=$Element(ae);
ad.show()
});
Y.hide();
var ab=Y.next();
if(ab){ab.show()
}naver.main.SectionManager.setHeight()
},d=function(Z){Z.stop($Event.CANCEL_DEFAULT);
var Y=$Element(Z.element);
var ab=Y.data("contentid");
var ac=$$("._MM_MF_SUB_CONTENT[data-parent-contentid='"+ab+"']");
$A(ac).forEach(function(ae){var ad=$Element(ae);
ad.hide()
});
Y.hide();
var aa=Y.prev();
if(aa){aa.show()
}naver.main.SectionManager.setHeight()
},u=function(Z){Z.stop($Event.CANCEL_DEFAULT);
var Y=$Element(Z.element);
var aa;
if(Y.hasClass("ucf_btn_help")){helpCloseButton=Y.parent().query("._MM_MF_FOCUS_INFO_BANNER_CLOSE");
if(helpCloseButton){aa=helpCloseButton.parent()
}}if(Y.hasClass("ucm_btn_help")){helpCloseButton=Y.parent().parent().query("._MM_MF_FOCUS_INFO_BANNER_CLOSE");
if(helpCloseButton){aa=helpCloseButton.parent()
}}if(Y.hasClass("uct_btn_help")){helpCloseButton=Y.parent().parent().query("._MM_MF_FOCUS_INFO_BANNER_CLOSE");
if(helpCloseButton){aa=helpCloseButton.parent()
}}if(aa){aa.toggle()
}},g=function(Z){Z.stop($Event.CANCEL_DEFAULT);
var Y=$Element(Z.element);
var aa=Y.parent();
if(aa){aa.hide()
}},K=function(){var ab=$ElementList("#_MM_MF_SERVICE_OPTION ._MM_MF_SERVICE_OPTION_ITEM");
ab.removeClass("ucs_oitem_on");
for(var Y=0;
Y<ab.length();
Y++){var aa=ab.get(Y);
var Z=aa.data("service");
if(N==Z){aa.addClass("ucs_oitem_on");
break
}}},C=function(Y,ae){var Z=$Template("serviceCode={=SERVICE_CODE}&type={=TYPE}&id={=ID}");
var ab=[];
for(var aa=0;
aa<Y.length;
aa++){var ac=Z.process({SERVICE_CODE:Y[aa].serviceCode,TYPE:Y[aa].type,ID:encodeURIComponent(Y[aa].id),});
ab.push(ac)
}var ad=$Ajax(R+"/invoker/subscribeAll.json?"+ab.join("&"),{method:"GET",type:"jsonp",timeout:5,onload:function(ah){var af=ah.json();
var ai=0;
var aj=af.message;
for(var ag=0;
ag<aj.length;
ag++){if(aj[ag].code==0){ai++
}}if(ai==0){alert("MY피드 추가에 실패하였습니다.")
}else{ae()
}},onerror:function(){alert("MY피드 추가에 실패하였습니다.")
},ontimeout:function(){alert("MY피드 추가에 실패하였습니다.")
}}).request();
ad=null
},a=function(Y,ac){var Z=$Template("serviceCode={=SERVICE_CODE}&type={=TYPE}&id={=ID}");
var aa=Z.process({SERVICE_CODE:Y[0].serviceCode,TYPE:Y[0].type,ID:encodeURIComponent(Y[0].id),});
var ab=$Ajax(R+"/invoker/unsubscribe.json?"+aa,{method:"GET",type:"jsonp",timeout:5,onload:function(ae){var ad=ae.json();
var af=ad.code;
if(af!=0){alert("MY피드 해지에 실패하였습니다.")
}else{ac()
}},onerror:function(){alert("MY피드 해지에 실패하였습니다.")
},ontimeout:function(){alert("MY피드 해지에 실패하였습니다.")
}}).request();
ab=null
},L=function(){for(var Y=0;
Y<$$("._MM_MF_TYPE").length;
Y++){if($Element($$("._MM_MF_TYPE")[Y]).hasClass("ucs_ba_on")){return $Element($$("._MM_MF_TYPE")[Y]).data("type")
}}},w=function(){naver.main.resources("menu").setSet("MYFEED");
var Y=location.href.split("#")[0];
setTimeout(function(){location.replace(Y)
},100)
},s=function(){var aa=naver.main.SectionManager.getSectionName();
if("MYFEED"===aa){var Z=$ElementList("._MM_MF_CONTENT");
if(Z.length()>0){var Y=Z.get(0).data("timestamp");
if(Y){$Cookie().set(E,Y,365*10)
}}e();
K();
if("DISCO"===N){$Cookie().set(Q,"1",365*10)
}}};
_onClickAboutDiscoButton=function(Y){Y.stop($Event.CANCEL_DEFAULT);
var Z=$Element("_MM_ABOUT_DISCO");
if(Z.hasClass("_MM_DISCO_ABOUT_OPEN")){Z.hide()
}else{Z.show("block")
}Z.toggleClass("_MM_DISCO_ABOUT_OPEN")
};
_onClickAboutDiscoClose=function(Y){$Element("_MM_ABOUT_DISCO").hide();
$Element("_MM_ABOUT_DISCO").toggleClass("_MM_DISCO_ABOUT_OPEN")
};
_onClickDiscoAppBanner=function(Y){Y.stop($Event.CANCEL_DEFAULT);
var Z=$Element(Y.element).data("href");
location.href=Z
};
return{init:O,update:K,refresh:s}
})();
naver.main.MyFeed.init();
$.createNamespace("naver.main").Journalist=(function(){var g="/api_snsinfra";
var a="{=STATUS} 이/가 실패하였습니다.";
function j(){b();
e()
}function b(){_welCT=$Element("ct")
}function e(){if(_welCT){_welCT.delegate("click","._MM_JR_SUBSCRIBE",$Fn(f).bind());
_welCT.delegate("click","._MM_JR_LAYER_CLOSE",$Fn(d).bind());
_welCT.delegate("click","._MM_JR_HELP_LAYER",$Fn(c).bind());
_welCT.delegate("click","._MM_JR_REFRESH",$Fn(h).bind())
}}function f(n){n.stop($Event.CANCEL_DEFAULT);
if(!naver.main.gVariable.isLogin){location.href="https://nid.naver.com/nidlogin.login?svctype=262144";
return
}var q=$Element(n.element);
var p=q.data("status");
var l=q.data("channelkey");
var o="?service=news&channelGroup=JOURNALIST&channelKey="+l;
var m="";
if(p=="subscribe"){m="구독"
}else{m="구독취소"
}a=$Template(a).process({STATUS:m});
var r=$Ajax(g+"/proxy/sg/MyFeedForMainSubjectServiceBO/"+p+".json"+o,{method:"GET",timeout:5,onload:function(t){var s=t.json();
try{if("SUCCESS"==s.message){q.hide();
if(p=="subscribe"){q.next(function(w){return $Element(w).hasClass("_MM_JR_SUBSCRIBE")
})[0].show("block")
}else{q.prev(function(w){return $Element(w).hasClass("_MM_JR_SUBSCRIBE")
})[0].show("block")
}}}catch(u){JEagleEyeClient.sendError("[JOURNALIST] subscribe API response parsing error : "+u)
}},onerror:function(){alert(a)
},ontimeout:function(){alert(a)
}}).request()
}function d(l){l.stop($Event.CANCEL_DEFAULT);
var m=$Element(l.element);
m.parent().hide()
}function c(l){l.stop($Event.CANCEL_DEFAULT);
$Element(l.element).next().show()
}function h(l){l.stop($Event.CANCEL_DEFAULT);
var o=$Element(l.element);
var p=o.data("exposurecount");
var n=naver.main.SectionManager.getSectionName();
var m="?menu="+n+"&exposureCount="+p;
var r=o.parent().prev(function(s){return $Element(s).hasClass("_MM_JR")
})[0];
var q=$Ajax("/nvhaproxy/feed/recommendJournalist.nhn"+m,{method:"GET",timeout:5,onload:function(t){var s=t.text();
r.html(s)
},onerror:function(){alert("다른 기자 보기에 실패하였습니다.")
},ontimeout:function(){alert("다른 기자 보기에 실패하였습니다.")
}}).request()
}return{init:j}
})();
naver.main.Journalist.init();
$.createNamespace("naver.main").rest=(function(o){var f="https://ssl.pstatic.net/static.cbox/js/cbox.core.js?v=20160503",c=null,s=naver.main.SectionManager,b="https://main.like.naver.com/static/js/likeIt.list.js?v=20160503",d=false,g=function(){var u=$Element("ct");
u.delegate("click",".sb_save",j);
u.delegate("click",".sb_reply",e)
},p=function(){if(jindo.m.isVertical()&&$("_MM_REST_HIMG")){if($Element("_MM_REST_HIMG").data("src")){$("_MM_REST_HIMG").src=$Element("_MM_REST_HIMG").data("src");
$Element("_MM_REST_HIMG").attr("data-src",null)
}}if((jindo.m.isVertical()==false||window.innerWidth>=480)&&$("_MM_REST_VIMG")){if($Element("_MM_REST_VIMG").data("src")){$("_MM_REST_VIMG").src=$Element("_MM_REST_VIMG").data("src");
$Element("_MM_REST_VIMG").attr("data-src",null)
}}var u=$Element($("_MM_REST_BOTTOM_BANNER"));
if(u&&u.attr("data-src")){u.attr("src",u.attr("data-src"));
u.attr("data-src",null)
}},j=function(u){u.stop();
var v=$Element("ct").query(".hid_wrap .hid_imgh").attr("src");
v=v.replace("http://static.naver.net/www","/restimg");
if(jindo.m.getDeviceInfo().android){r(v)
}else{m(v)
}},r=function(u){location.href=u+"?p__g=i__n"
},m=function(y){var w="http://"+window.location.hostname;
var x="itms://itunes.apple.com/WebObjects/MZStore.woa/wa/viewSoftware?id=393499958&mt=8";
var v="naversearchapp";
var u="imagedownload?version=14&imageUrl="+encodeURIComponent(w+y);
APP.runIosApp(v,x,u,true)
},e=function(u){u.stop();
h()
},q=function(){var u=$Element("comment_module");
if(!window.__htCboxOption){window.__htCboxOption={sId:"comment_module",sDomain:"https://ssl.pstatic.net/static.cbox",sApiDomain:"https://apis.naver.com/commentBox/cbox",bLogin:(o.isLogin)?true:false,sTicket:"post02",sObjectId:u.data("seq"),sTemplateId:"fold",sCssId:"default_w",htEventHandler:{afterList:function(){l()
},afterCreate:function(){l()
}}}
}DLScript.loadDS(f)
},l=function(){var u=$$.getSingle("#comment_module .u_cbox_count");
$("cboxCnt").innerHTML='<span class="imhid imhid_reply">댓글</span> '+u.innerHTML;
s.setHeight()
},n=function(){alert("단체아이디로는 댓글 작성이 안됩니다")
},h=function(){var u=$Element("comment_module");
if(u.visible()){u.hide()
}else{u.show()
}s.setHeight()
},a=function(){DLScript.loadDS(b,t)
},t=function(){if(d==false){nhn.LikeIt.list.util.init({sId:"NAVERMAIN",sDomain:"https://main.like.naver.com",bMobile:true,oLog:{nClicks:{like:"hid.like",unlike:"hid.unlike"}}});
d=true
}};
return{init:g,initComment:q,loadLikeIt:a,loadImage:p}
})(naver.main.gVariable);
$.createNamespace("naver.main").observer=(function(){var j=3,l=1,h=null,r=null,b=null,t=[],w=false,q=0,c=false,n=function(y){r=y;
g();
var x=jindo.m._getTranslate(0,0,jindo.m.useCss3d());
if(!naver.main.gVariable.isApp){if(jindo.m.getOsInfo().android&&jindo.m.getOsInfo().version<"4.4"){}else{$Element("sch").css("transform",x)
}}if(jindo.m.getOsInfo().android&&jindo.m.getOsInfo().version<"4.4"){}else{$("nav")&&$Element("nav").css("transform",x)
}},a=function(x){r=x;
$Element(window).attach("resize",o)
},g=function(){new jindo.m.ScrollEnd().attach("scrollEnd",function(){if(naver.main.SectionManager){f()
}else{m()
}})
},e=function(){if(r.f()){b=r.f();
r.f().attach("flicking",function(y){var x=r.getSectionName(y.nContentsIndex);
u(x);
f()
})
}else{setTimeout(e,200)
}},u=function(x){if(t.indexOf(x)>=0){return
}if(r.h(x)){r.h(x).attach("repaint",function(){f()
});
t.push(x);
f()
}else{setTimeout(function(){u(x)
},200)
}},o=function(){var x=jindo.m.getOsInfo();
if(x.android||x.ios){return
}if(w){clearTimeout(q)
}w=true;
var y=[];
y.push(r.getSectionName());
if(r.f()){y.push(r.getSectionName(r.f().getNextIndex()));
y.push(r.getSectionName(r.f().getPrevIndex()))
}p(y,0)
},p=function(A,x){if(x>=A.length){return
}var y=A[x];
var z=naver.main.SectionManager.h(y);
if(z){z.resizeView();
q=setTimeout(function(){z.repaint({nindex:0,bForce:true});
p(A,x+1)
},300)
}},v=function(){if(l>=j){m()
}l++;
d()
},d=function(){if(naver.main.SectionManager){naver.main.SectionManager.onScrollEnd();
naver.main.SectionManager.setHeight()
}},m=function(){if(h!=null){clearInterval(h)
}l=1;
h=null
},s=function(){clearInterval(h);
l=1;
h=setInterval(v,3000)
},f=function(){m();
if(naver.main.SectionManager){var x=naver.main.SectionManager.getSectionName();
if(!/NEWS|ENT|SPORTS|REST/.test(x)){s()
}}};
return{init:n,initForTalk:a}
})();
var naver=naver||{};
naver.main=naver.main||{};
naver.main.account=(function(){var l;
var f;
function m(p){var n=a(p);
var o={method:"get",timeout:5,onload:h,ontimeout:j,onerror:e};
l=$Ajax(d(n),o)
}function h(n){var o=n.json();
if(g(o)){f&&f.onload&&f.onload({account:b(o)})
}else{f&&f.onerror&&f.onerror()
}}function j(){JEagleEyeClient.sendError("[naver.main.account] get() ajax timeout : ");
f&&f.ontimeout&&f.ontimeout()
}function e(){JEagleEyeClient.sendError("[naver.main.account] get() ajax error : ");
f&&f.onerror&&f.onerror()
}function a(o){var n="";
if(o&&o.requestParam){n=o.requestParam
}return n
}function d(o){var n="/preview/index.json";
if(!!o){n+="?"+$H(o).toQueryString()
}return n
}function g(n){return(n&&n.result=="SUCCESS")
}function b(o){var n=o.data;
return{noti:n.noti,mail:n.mail,note:n.note,cafe:(n.cafe)?1:0,nick:n.nick,noti:n.noti,mileage:n.mileage,biztalk:n.biztalk}
}function c(n){f=n;
return l.request({uid:parseInt(Math.random()*10000000)})
}return{init:m,request:c}
})();
var naver=naver||{};
naver.main=naver.main||{};
naver.main.myteam=(function(){var e;
var d;
function g(){var h={method:"get",timeout:5,onload:a,ontimeout:f,onerror:c};
d=$Ajax("/nvhaproxy/feed/myteam",h)
}function b(){e=$Element($$.getSingle("._MM_myteam_ready"));
if(e){d.request()
}}function a(j){var h=$Element(j.text());
var l=e.attr("index");
h.attr("index",l);
e.after(h);
e.leave()
}function f(){JEagleEyeClient.sendError("[naver.main.myteam] ajax timeout")
}function c(){JEagleEyeClient.sendError("[naver.main.myteam] ajax error")
}return{init:g,refresh:b}
})();
var naver=naver||{};
naver.main=naver.main||{};
naver.main.notiBadge=(function(){var c={base:null,template:null};
function f(){c.base=$Element($("_MM_noti"));
c.template=$("_MM_tplNoti");
if(c.base&&c.template){b()
}}function b(){naver.main.account.init();
naver.main.account.request({onload:d})
}function d(g){a(g.account)
}function a(g){var h=g.noti;
if(h>0){e(h)
}}function e(j){var g=j;
if(parseInt(g)>99){g="99+"
}var h=$Template(c.template).process({noti:g});
c.base.appendHTML(h)
}return{init:f}
})();
$.createNamespace("naver.main.log").gtiming=(function(){setTimeout(function(){try{if(!window.edgeIP){return
}var f=naver.main.gVariable;
var b={};
b.act="WEB.gtiming";
if(f.isApp){switch(f.sUaType){case"ANDROID":b.act="ANDROID.gtiming";
break;
case"IOS":b.act="iPHONE.gtiming";
break;
case"IPAD":b.act="iPAD.gtiming";
break
}}b.svr=svr;
b.edgeIP=window.edgeIP;
b.firstEdgeIP=window.edgeIP.replace(/,.*/,"");
b.tz=(new Date()).toString().replace(/^.*\((.*)\).*$/,"$1");
b.isLight=!!$("fot_go_normal");
if(f.sRegionCode){b.rc=f.sRegionCode
}if(window.__bmrTime){b.bm=window.__bmrTime
}if(typeof performance!="undefined"&&performance.timing){var a=performance.timing;
for(key in a){b[key]=a[key]
}}if(typeof CH!="undefined"){var d=CH.query(b,"t");
CH.send(d)
}}catch(c){JEagleEyeClient.sendError("[Logging] fail to send log : "+c)
}},500)
});
$.createNamespace("naver.main").today=(function(){var b={};
b.aCardInfoList=[{cardId:"RTK",title:"실시간 급상승·뉴스토픽",clk:"cardklh",update:false},{cardId:"WETR",title:"날씨",clk:"cardwth",update:false},{cardId:"DIC",title:"사전",clk:"carddic",update:false},{cardId:"TRANS",title:"번역기",clk:"cardtrans",update:false},{cardId:"NOW",title:"이 시각 주요 뉴스",clk:"cardinws",update:false},{cardId:"RANK",title:"연령별 더 많이 본 뉴스",clk:"cardanws",update:false},{cardId:"SVC",title:"서비스 바로가기",clk:"cardsvc",update:false},{cardId:"VIDEO",title:"동영상 TOP 100",clk:"cardvideo",update:false},{cardId:"MUSIC",title:"뮤직 TOP 100",clk:"cardmusic",update:false},{cardId:"AIRS_NEWS",title:"추천 뉴스",clk:"cardnewsairs",update:true},{cardId:"AIRS_ENT",title:"추천 연예",clk:"cardentairs",update:true},{cardId:"AIRS_SPORTS",title:"추천 스포츠",clk:"cardsptairs",update:true},{cardId:"AIRS_VIDEO",title:"추천 동영상",clk:"cardvidairs",update:true}];
b.getCardInfo=function(d){for(var c in this.aCardInfoList){oInfo=this.aCardInfoList[c];
if(d===oInfo.cardId){return oInfo
}}return null
};
function a(e){if(!Array.isArray(e)||e.length<1){throw new Error("[TODAY] aCardList is non-array or empty array")
}for(var c in e){var d=e[c];
if(d!=="NONE"&&!b.getCardInfo(d)){throw new Error("[TODAY] invalid card id: "+d)
}}}b.setMyCardList=function(c){a(c);
$Cookie().set("MM_SEARCH_CARD_LIST",c.join(";"),3650)
};
b.getMyCardList=function(){var c=$Cookie().get("MM_SEARCH_CARD_LIST");
return c?c.split(";"):[]
};
return{data:b}
})();
$.createNamespace("naver.main.today").view=(function(){var q='<li class="unr_list_item unr_da_add" tabindex="0"><a href="https://m.search.naver.com/search.naver?where=m&sm={=from}&query={=q}" class="unr_item_link" data-clk="{=clkCode}"><span class="unr_item_ranking_wrap"><i class="unr_item_ranking">{=rank}<span class="blind">위</span></i></span><em class="unr_item_tit">{=k}</em></a><a href="http://m.datalab.naver.com/realtimeDetail.naver?query={=q}&where=main&datetime={=datetime}" class="unr_da" data-clk="{=clkCode}history"><span class="blind">데이터랩 그래프 보기</span></a></li>';
var s='<li class="unr_list_item" tabindex="0"><a href="https://m.search.naver.com/search.naver?where=m&sm={=from}&query={=q}" class="unr_item_link" data-clk="{=clkCode}"><span class="unr_item_ranking_wrap"><i class="unr_item_ranking">{=rank}<span class="blind">위</span></i></span><em class="unr_item_tit">{=k}</em></a></li>';
var ab='<li class="rtk_l" {if rank != 1}style="display:none;"{/if}><a href="https://m.search.naver.com/search.naver?where=m&sm={=from}&query={=q}" class="rtk_a" data-clk="kwd"><em class="rtk_n">{=rank}</em> <span class="rtk_t">{=k}</span></a></li>';
var H='<div class="ccn_title_wrap"><a href="https://m.blog.naver.com/PostView.nhn?blogId=naver_diary&logNo=220936643956&proxyReferer=https%3A%2F%2Fm.search.naver.com%2Fsearch.naver%3Fquery%3Dairs%26where%3Dm%26sm%3Dmob_hty.idx%26acq%3D%26acr%3D%26qdt%3D1" class="ccn_title_link"><h3 class="ccn_title">'+(naver.main.gVariable.isLogin?'<em class="ccn_target">'+naver.main.gVariable.nickname+"</em>님을 위한":'<em class="ccn_target all">모두를 위한</em>')+' <span class="ccn_main ccn_main_logo">{=title}</span></h3></a><a href="#" class="fct_more_btn" role="button" data-card-id="{=cardId}"><span class="blind">기능 더보기</span></a></div>';
var U='<span class="sp_rtk sprh_rtkup">상승</span> <em class="rtk_s">{=N}</em>';
var O='<span class="sp_rtk sprh_rtkdown">하락</span> <em class="rtk_s">{=N}</em>';
var C='<span class="rtkx_new">new</span>';
var x='<span class="rtkx_none">-</span>';
var l=$Element('<div class="ly_fct_more_wrap" style="display:none;"><a href="#" data-action="move_to_top" class="lfm_a"><span class="lfm_ico ico_change"></span>맨위로 위치변경</a><a href="#" data-action="remove" class="lfm_a"><span class="lfm_ico ico_delete"></span>이카드 삭제</a><a href="#" data-action="edit" class="lfm_a"><span class="lfm_ico ico_add"></span>카드 추가 및 위치변경</a><a href="#" data-action="close" class="lfm_close"><span class="blind">닫기</span></a></div>');
var w=naver.main.today.data.aCardInfoList;
var p={ko:{name:"한국어",target:["en","ja","zh-CN","zh-TW"],tools:["VOICE"]},en:{name:"영어",target:["ko","zh-CN","zh-TW","es","pt","id","th","ru","de","vi","hi"]},ja:{name:"일본어",target:["ko"],tools:["VOICE","CAMERA"]},"zh-CN":{name:"중국어(간체)",target:["ko","en"]},"zh-TW":{name:"중국어(번체)",target:["ko","en"]},th:{name:"태국어",target:["en"]},ru:{name:"러시아어",target:["en"]},de:{name:"독일어",target:["en"]},vi:{name:"베트남어",target:["en"]},hi:{name:"힌디어",target:["en"]},es:{name:"스페인어",target:["en"]},pt:{name:"포르투갈어",target:["en"]},id:{name:"인도네시아어",target:["en"]}};
var v={source:"ko",target:"en"};
var r=false;
var ae;
var Y=naver.main.gVariable;
var z=false;
var V="MM_LAB_TODAY_SETTING";
var ag=naver.main.resources("menu");
var c=location.search||"";
var u=$S(c.replace(/^\?(.*)/,"$1")).parseString();
var h;
function ad(){aa();
if(Y.isApp){return
}ai()
}function aa(){if(naver.main.SectionManager.getSectionName()!=="TODAY"){return
}I();
R();
j();
N();
e()
}function ai(){if(naver.main.SectionManager.f()){naver.main.SectionManager.f().attach("flicking",function(){aa()
})
}else{setTimeout(ai,200);
return
}}function af(){var al=$Element($$.getSingle("#ct .id_today .brick-vowel"));
if(!al){return
}var ao=null;
try{ao=JSON.parse(localStorage.getItem("MSDT.lcs"))
}catch(aq){}if(ao===null||typeof ao!=="object"){return
}function ay(aA,az){return aA+az
}var ap=0;
for(var ar in ao){var ak=ao[ar];
if(typeof ak==="object"){for(var am in ak){oDailyHistory=ak[am];
if(typeof oDailyHistory==="object"){ap+=oDailyHistory.TODAY||0
}}}}var an=$Element($$.getSingle("#ct .csa_banner_btn"));
try{var aw=naver.main.today.data.aCardInfoList.filter(function(az){return az.update
}).map(function(az){return az.cardId
}).join(";");
var au=$Element("MM_today_add_tooltip");
if(an.hasClass("csa_empty")&&localStorage.getItem("MM_today_add_tooltip")!==aw&&!au.visible()){au.show();
au.query(".csa_close_btn").attach("click",function(az){au.hide();
localStorage.setItem("MM_today_add_tooltip",aw)
})
}}catch(aq){}var aj=$Element("MM_today_boarding");
if((ap===0||ap===1)&&!aj.visible()){an.addClass("csa_empty");
aj.show();
aj.delegate("click","button.csa_btn_lclose",function(az){aj.hide()
})
}else{aj.hide()
}try{var at=$Element("MM_today_to_lab");
if(ap>1&&(localStorage.getItem("MM_today_lab_hide")!=="1"||localStorage.getItem("MM_today_lab_show")==="1")){at.query("button.csn_btn_close").attach("click",function(az){at.hide();
try{localStorage.removeItem("MM_today_lab_show")
}catch(aA){}});
at.show();
localStorage.setItem("MM_today_lab_hide","1");
at.delegate("click","a",function(az){try{localStorage.setItem("MM_today_lab_show","1")
}catch(aA){}})
}else{at.hide()
}}catch(aq){}var ax=$Element("MM_today_to_first");
if(ap===3&&naver.main.panelManager.getOnPanel().search("TODAY")!==0&&!ax.visible()){ax.show();
ax.query("button.ucf_btn_close").attach("click",function(az){ax.hide()
})
}else{ax.hide()
}if(naver.main.gVariable.bContentOnly){if(u.totalPanelCount==1){return
}}else{if(ag.getMenuList().length<=1){return
}}var av=$Element("MM_today_set_one");
if(ap===6&&naver.main.panelManager.getOnPanel()!=="TODAY"&&!av.visible()){av.show();
av.query("button.ucf_btn_close").attach("click",function(az){av.hide()
});
av.query("a.ucf_sa").attach("click",G)
}else{av.hide()
}}function R(){if(r){return
}r=true;
var ak=$Element("ct");
ak.delegate("click","._MM_rtk_tab",$Fn(P,this).bind());
ak.delegate("click","._MM_rtk_subTab",$Fn(J,this).bind());
ak.delegate("click","._MM_rtk_indicator",$Fn(D,this).bind());
ak.delegate("click","._MM_rtk_toggle",$Fn(ac,this).bind());
ak.delegate("click","._MM_rtk_infoIcon",$Fn(A,this).bind());
ak.delegate("click","._MM_rtk_infoClose",$Fn(n,this).bind());
ak.delegate("click",".MM_weather_search_location",$Fn(m,this).bind());
ak.delegate("click",".MM_go_news_demo_rank",$Fn(K,this).bind());
ak.delegate("click","#_MM_TODAY_TRANS_SOURCE",$Fn(a,this).bind());
ak.delegate("click","#_MM_TODAY_TRANS_TARGET",$Fn(Q,this).bind());
ak.delegate("click","._MM_TODAY_TRANS_SOURCE_ITEM",$Fn(d,this).bind());
ak.delegate("click","._MM_TODAY_TRANS_TARGET_ITEM",$Fn(ah,this).bind());
ak.delegate("click","._MM_TODAY_TRANS_CHANGE",$Fn(T,this).bind());
ak.delegate("click","#_MM_TODAY_TRANS_DELETE",$Fn(B,this).bind());
ak.delegate("submit","#_MM_TODAY_TRANS_FORM",$Fn(b,this).bind());
ak.delegate("input","#_MM_TODAY_TRANS_TEXT",$Fn(W,this).bind());
ak.delegate("click","a[data-card-id]",$Fn(E,this).bind());
l.delegate("click","a[data-action]",$Fn(M,this).bind());
ak.delegate("click","._MM_TODAY_SVC_APP",function(al){al.stop();
nhn.mobile.launchApp(al.element)
});
ak.delegate("click","._MM_TODAY_SURVEY_CLOSE",function(al){al.stop();
$Cookie().set("MM_TODAY_SURVEY","1",365*10);
$Element("_MM_TODAY_SURVEY").hide()
});
var aj=ak.query("._MM_BTN_EDIT_CARD");
if(aj){aj.attach("click",function(al){al.stop();
location.href="/today/edit/"
})
}}function G(aj){aj.stop();
if(naver.main.gVariable.bContentOnly){if(jindo.m.getOsInfo().android){inapphome.remainPanel("TODAY")
}else{location.replace("/naverapp/?cmd=remainPanel&menuCode=TODAY&version=5")
}return
}else{var ak=$Element("MM_today_only_confirm");
if(!!!ak){$Element("ct").parent().appendHTML("<div id='MM_today_only_confirm' class='ly_mo_reset' style='display:none;'><div class='lmr_b'><p class='lmr_t'><span class='lmr_st'></span><span class='lmr_st'>검색판</span>만 남기고 모든 주제가<br>홈에서 제외됩니다.</p><div class='lmr_bw'><button class='lmr_btno MM_today_only_cancel'>취소</button><button class='lmr_btok MM_today_only_ok'>검색판만 보기</button></div></div></div>");
ak=$Element("MM_today_only_confirm");
ak.delegate("click",".MM_today_only_cancel",function(){ak.hide();
nclk(aj.$value(),"tod.bnonlycancel","","")
});
ak.delegate("click",".MM_today_only_ok",function(){nclk(aj.$value(),"tod.bnonlyok","","");
ag.setMenuList("TODAY");
$Cookie().remove("MM_S");
$Cookie().set("MM_menu_complete","1",1);
location.href="/"
})
}ak.show()
}}function P(am){am.stop();
z=true;
var aj=$Element(am.element);
var ak=aj.parent().attr("id");
var al=Number(ak.replace("_MM_rtk_panel",""));
ae.moveTo(al,0)
}function J(am){am.stop();
z=true;
var aj=$Element(am.element);
var ak=aj.attr("id");
var al=Number(ak.replace("_MM_rtk_tab",""));
ae.moveTo(al,0)
}function D(am){am.stop();
z=true;
var aj=$Element(am.element);
var ak=aj.attr("id");
var al=Number(ak.replace("_MM_rtk_page",""));
ae.moveTo(al,0)
}function ac(al){L(al);
var aj=$Element(al.element);
var ak=aj.data("cookie-set")=="true"?true:false;
if(ak){X()
}else{I()
}}function A(al){var ak=al.element;
var aj=$Element(ak).query("! #_MM_rtk_base_dt");
aj.after(['<div class="rtkx_ly_chelp _MM_htp_close">','<p class="rtkx_chelp">뉴스토픽 섹션은 <br>언론사 기사섹션 기반으로 자동 분류됩니다.</p>','<button type="button" class="rtkx_btn_hclose _MM_rtk_infoClose"><span class="blind">기준 시간 안내 닫기</span></button>',"</div>"].join(""))
}function n(aj){y()
}function y(){var aj=$Element($$.getSingle("._MM_htp_close"));
aj&&aj.leave()
}function g(aj,am){var al="MM_TODAY_TOGGLE";
var ak=[];
if($Cookie().get(al)){ak=ak.concat($Cookie().get(al).split(";"))
}if(ak.indexOf(aj)>=0){ak.splice(ak.indexOf(aj),1)
}if(am){ak.push(aj)
}if(ak.length===0){$Cookie().remove(al)
}else{$Cookie().set(al,ak.join(";"),365*10)
}}function L(ao){ao.stop();
var ak=$Element(ao.element);
var am=ak.data("hide-id");
var al=ak.data("show-id");
var aj=ak.data("widget-name");
var an=ak.data("cookie-set")=="true"?true:false;
$Element(am).hide();
$Element(al).show();
g(aj,an);
naver.main.SectionManager.setHeight()
}function m(aj){aj.stop();
naver.main.geolocation.search({success:function(){location.reload()
}})
}function K(al){al.stop();
var ak=$Element($$.getSingle(".ubn_tab_on")).attr("data-tab-nav");
var aj="";
if(ak=="hit_age10"){aj="10"
}else{if(ak=="hit_age20"){aj="20"
}else{if(ak=="hit_age3040"){aj="30"
}else{if(ak=="hit_age50"){aj="50"
}}}}location.href="http://m.news.naver.com/rankingList.nhn?type=age&typeValue="+aj
}function I(){var aq=$Element("MM_search_rtk_flick");
if(!aq){return
}var at=$Template(q);
var az=$Template(s);
var al=$Template(ab);
var ay="<ol class='unr_list_wrap'>";
var ap="<ol class='unr_list_wrap'>";
var am="";
var aj="<ol class='unr_list_wrap'>";
var aw="<ol class='unr_list_wrap'>";
var au=Y.oRTK.d;
var ak=Y.oHTP.d;
var ax=Y.oRTKServerTimestamp;
var ao=svt;
bRtkDelay=o(ax,Y.oRTK.t);
bTopicDelay=f(ax,Y.oHTP.t);
var av=Y.oRTK.o;
for(var ar=0;
ar<10;
ar++){var an=au[ar];
an.rank=ar+1;
an.from="mtp_lve";
an.q=an.q||an.k;
an.ICO=Z(an);
an.clkCode="kwd";
an.datetime=av;
ay+=at.process(an);
am+=al.process(an);
if(ar==4){ay+="</ol><ol class='unr_list_wrap'>"
}}ay+="</ol>";
for(var ar=0;
ar<(au.length-10);
ar++){var an=au[ar+10];
an.rank=ar+11;
an.from="mtp_lve";
an.q=an.q||an.k;
an.ICO=Z(an);
an.clkCode="kwd";
an.datetime=av;
ap+=at.process(an);
am+=al.process(an);
if(ar==4){ap+="</ol><ol class='unr_list_wrap'>"
}}ap+="</ol>";
for(var ar=0;
ar<ak.length;
ar++){var an=ak[ar];
an.rank=ar+1;
an.from="mtp_htp.nws";
an.clkCode="khkwnews";
aj+=az.process(an);
if(ar==4){aj+="</ol><ol class='unr_list_wrap'>"
}}aj+="</ol>";
for(var ar=0;
ar<(ak.length-10);
ar++){var an=ak[ar+10];
an.rank=ar+1;
an.from="mtp_htp.ent";
an.clkCode="khkwentspo";
aw+=az.process(an);
if(ar==4){aw+="</ol><ol class='unr_list_wrap'>"
}}aw+="</ol>";
$Element("MM_rtk_list").html(ay);
$Element("MM_rtk_list2").html(ap);
$Element("MM_rtk_rolling_list").html(am);
$Element("MM_htp_list").html(aj);
$Element("MM_htp_list2").html(aw);
naver.main.rolling.start("todayRTK");
if($Element("_MM_TODAY_RANKING_EXT").visible()){X()
}}function Z(aj){var ak="";
switch(aj.c){case"up":ak=U;
break;
case"dw":ak=O;
break;
case"nw":ak=C;
break;
case"sm":ak=x;
break
}return $Template(ak).process({N:aj.n})
}function X(){var aj=$Element("MM_search_rtk_flick");
if(!aj){return
}if(ae){ae.moveTo(0,0);
return
}ae=new jindo.m.SlideFlicking(aj,{bHorizontal:true,sClassPrefix:"rtk-flick-",sContentClass:"panel",nTotalContents:4,nFlickThreshold:60,nDuration:250,bUseTimingFunction:false,bUseDiagonalTouch:false}).attach({flicking:function(ak){if(z===false){if(ak.bNext){nclk(aj.$value(),"tod.kflne","","")
}else{nclk(aj.$value(),"tod.kflpr","","")
}}S(ak.nContentsIndex);
z=false
}});
S(0);
if(naver.main.gVariable.bContentOnly&&jindo.m.getOsInfo().android&&typeof TEvent!=="undefined"){aj.$value().addEventListener("touchstart",function(ak){TEvent.touchStartEvent()
},false)
}}function S(aq){var aj;
if(aq<2){aj=0
}else{aj=2
}$ElementList(".unr_menu_selected").attr("aria-checked",false);
$ElementList(".unr_menu_selected").removeClass("unr_menu_selected");
$Element("_MM_rtk_panel"+aj).addClass("unr_menu_selected");
$Element("_MM_rtk_panel"+aj).attr("aria-checked",true);
$ElementList(".sprh_pgnon").removeClass("sprh_pgnon");
$Element("_MM_rtk_page"+aq).query(".sprh_pgn").addClass("sprh_pgnon");
$ElementList("._MM_rtk_indicator").attr("role","button").attr("aria-selected","false");
$Element("_MM_rtk_page"+aq).attr("aria-selected","true");
$ElementList(ae.getPanels()).attr("aria-hidden","true");
ae.getElement().attr("aria-hidden","false");
var an=$Element("_MM_rtkx_btm");
if(aq<2){$ElementList(".unr_btn_ktab_selected").attr("aria-checked",false);
$ElementList(".unr_btn_ktab_selected").removeClass("unr_btn_ktab_selected");
$Element("_MM_rtk_tab"+aq).addClass("unr_btn_ktab_selected");
$Element("_MM_rtk_tab"+aq).attr("aria-checked",true);
$Element("_MM_rtk_tabs").css("display","block");
$Element("_MM_rtk_help").css("display","none");
$Element("_MM_today_rtk_datalab_btn").css("display","block");
an.removeClass("rtkx_topic")
}else{$Element("_MM_rtk_tabs").css("display","none");
$Element("_MM_rtk_help").css("display","block");
$ElementList(".unr_btn_ktab_selected").attr("aria-checked",false);
$ElementList(".unr_btn_ktab_selected").removeClass("unr_btn_ktab_selected");
$Element("_MM_rtk_tab"+aq).addClass("unr_btn_ktab_selected");
$Element("_MM_rtk_tab"+aq).attr("aria-checked",true);
$Element("_MM_today_rtk_datalab_btn").css("display","none");
an.addClass("rtkx_topic")
}var ao="";
var ap="일시적 오류로 최신정보를 제공할 수 없습니다.";
var am="";
y();
if(aq>1){am=naver.main.gVariable.oHTP.u+' <button type="button" class="rtkx_btn_chelp _MM_rtk_infoIcon"><span class="blind">기준 시간 안내 열기</span></button>';
if(!bTopicDelay&&bRtkDelay){ap="&nbsp;"
}}else{ao=naver.main.gVariable.oRTK.s;
var al=ao.substr(25,2).toUpperCase();
var ak=Number(ao.substr(16,2));
if(al=="PM"&&ak!=12){ak+=12
}if(al=="AM"&&ak==12){ak=0
}if(ak<10){ak="0"+ak
}am='<span class="rtkx_cdate">'+ao.substr(0,12)+'</span> <span class="rtkx_ctime">'+ak+ao.substr(18,6)+" 기준</span>";
if(bTopicDelay&&!bRtkDelay){ap="&nbsp;"
}}an.removeClass("rtkx_err");
if(aq>1){if(bTopicDelay){$Element("_MM_rtk_base_err").show();
an.addClass("rtkx_err")
}else{$Element("_MM_rtk_base_err").hide()
}}else{if(bRtkDelay){$Element("_MM_rtk_base_err").show();
an.addClass("rtkx_err")
}else{$Element("_MM_rtk_base_err").hide()
}}$Element("_MM_rtk_base_dt").html(am)
}function o(ak,aj){if(!ak||!aj){return true
}if((Number(ak)*1000-Number(aj))>60000){return true
}return false
}function f(ak,al){if(!ak||!al){return true
}var an=new Date(ak*1000);
var aj=new Date(al);
var am=(Number(an)-(Number(aj)-540*60*1000))/1000;
return am>(3600*3+30*60)
}function N(){var an=$Element($$.getSingle("#_MM_TODAY_SVC .uss_flick"));
if(!an){return
}if(h){h.moveTo(0,0);
return
}if(!naver.main.gVariable.bContentOnly||!naver.main.inapp.isBSCPrevThan({androidV:550,iPhoneV:580,iPadV:135})){var al=an.query(".today-service-flick-panel:last-child");
var ap=$Element('<li class="uss_item"> <a href="#" class="uss_a"> <div class="uss_service"> <span class="blind">전체 서비스</span> </div> </a> </li>');
if(al.queryAll("li.uss_item").length!==5){al.query("ul.uss_l").append(ap)
}else{var ak=$Element(al.outerHTML());
$ElementList(ak.queryAll("ul li")).hide();
ak.query("ul.uss_l").append(ap);
al.parent().append(ak)
}ap.query("a.uss_a").attach("click",function(aq){aq.stop();
nclk({},"tod.servicegoset","","");
if(!naver.main.gVariable.bContentOnly){location.href="/aside/"
}else{try{inapphome.openSlideMenu()
}catch(ar){}}})
}var am=$Element($$.getSingle("#_MM_TODAY_SVC .uss_page"));
for(var aj=0;
aj<an.queryAll(".today-service-flick-panel").length;
aj++){am.append('<a href="#" class="uss_btn_page'+(aj===0?" uss_btn_on":"")+'"><span class="blind">'+(aj+1)+"페이지</span></a>")
}if(an){h=new jindo.m.SlideFlicking(an,{bHorizontal:true,sClassPrefix:"today-service-flick-",sContentClass:"panel",nFlickThreshold:60,nDuration:250,bUseTimingFunction:false,bUseDiagonalTouch:false}).attach({flicking:function(aq){$ElementList("#_MM_TODAY_SVC .uss_btn_page").removeClass("uss_btn_on").get(aq.nContentsIndex).addClass("uss_btn_on")
}});
$ElementList(an.queryAll(".today-service-flick-panel .uss_l")).show();
if(naver.main.gVariable.bContentOnly&&jindo.m.getOsInfo().android&&typeof TEvent!=="undefined"){an.$value().addEventListener("touchstart",function(aq){TEvent.touchStartEvent()
},false)
}}if(naver.main.gVariable.isLogin===false){return
}var ao=$Ajax("/preview/index.json?bizTalk=yes",{method:"get",timeout:3,onload:function(ar){var aq=ar.json();
if(aq&&aq.result=="SUCCESS"){setTimeout(function(){F(aq.data.mail,"svc.mail:1");
F(aq.data.note,"svc.note:1");
F(aq.data.biztalk,"svc.talktalk:1");
F(aq.data.cafe,"svc.cafe:1",true);
t()
},300)
}},ontimeout:function(){JEagleEyeClient.sendError("[Today] initService() ajax timeout : ")
},onerror:function(){JEagleEyeClient.sendError("[Today] initService() ajax error : ")
}});
ao.request({uid:parseInt(Math.random()*10000000)})
}function e(){if(naver.main.SectionManager.getSectionName()!=="TODAY"){return
}var ak=$Template(H);
var aj=$$(".MM_search_airs");
if(aj.length===0){return
}aj.forEach(function(an){var am=$Element(an);
am.removeClass("MM_search_airs");
var al=am.data("airs");
var ap=w.filter(function(aq){return aq.cardId==="AIRS_"+al
})[0];
if(ap){if(al==="ENT"||al==="NEWS"){am.append(ak.process({title:ap.title,cardId:ap.cardId}));
naver.main.Airs.callAirsNews(al,1,false,function(ar){var au=$ElementList($$("._MM_AIRS_TPL",$Element(ar)));
var at=$Element('<div class="_MM_AIRS"></div>');
for(var aq=0;
aq<au.length();
aq++){at.append(au.get(aq))
}am.append(at);
am.show()
})
}else{if(al==="VIDEO"){var ao=am.parent();
$Ajax("/nvhaproxy/content/today/airs/video.nhn",{timeout:3,onload:function(ar){var aq=$Element(ar.text());
aq.query("a.cb_title_airs_a").attr("href","https://m.blog.naver.com/PostView.nhn?blogId=naver_diary&logNo=220936643956&proxyReferer=https%3A%2F%2Fm.search.naver.com%2Fsearch.naver%3Fquery%3Dairs%26where%3Dm%26sm%3Dmob_hty.idx%26acq%3D%26acr%3D%26qdt%3D1");
aq.query(".cb_airs_logo").html("추천 동영상");
aq.query("button._MM_AIRS_REFRESH").attr("data-clk","movairsrefresh").parent().parent().parent().attr("data-airs","VIDEO");
aq.query(".cb_title_wrap").append('<a href="#" class="fct_more_btn" role="button" data-card-id="AIRS_VIDEO"><span class="blind">기능 더보기</span></a>');
$ElementList(aq.queryAll("ul li a")).attr("data-clk","movairscont");
am.before(aq)
},ontimeout:function(){JEagleEyeClient.sendError("[Today] init AiRS VIDEO ajax timeout : ")
},onerror:function(){JEagleEyeClient.sendError("[Today] init AiRS VIDEO ajax error : ")
}}).request()
}else{am.append(ak.process({title:ap.title,cardId:ap.cardId}));
naver.main.Airs.callAirsNews(al,1,false,function(ar){var aq=$Element($$.getSingle("._MM_MORE._MM_AIRS",$Element(ar)));
if(aq){aq.addClass("_MM_AIRS_CONTAINER");
am.append(aq);
am.show()
}})
}}}})
}function F(aj,an,ak){if(aj<1){return
}var am=(aj<100)?aj.toString():"99+";
var al=$Element($$.getSingle('[data-svc="'+an+'"]'));
if(al){if(ak){al.query("img.uss_m").after('<span class="uss_ico_new">NEW</span>')
}else{al.query("img.uss_m").after('<span class="uss_ico_bubble">'+am+"</span>")
}}}function t(){var aj=$Element($$.getSingle("[data-lab-revision]"));
if(aj){var ak=aj.attr("data-lab-revision");
var al=$Cookie().get("MM_LAB_REVISION")||"";
if(Number(ak)>Number(al)){F(1,"svc.nlabs:1",true)
}}}function a(ak){var aj=$Element(ak.element);
aj.toggleClass("ut_lang_on");
$Element("_MM_TODAY_TRANS_SOURCE_LIST").toggle("block");
$Element("_MM_TODAY_TRANS_TARGET_LIST").hide();
$Element("_MM_TODAY_TRANS_TARGET").removeClass("ut_lang_on")
}function d(ak){var aj=$Element(ak.element);
var al=aj.data("code");
v.source=al;
j();
nclk(ak.element,"tod.switch"+al.toLowerCase().replace("-",""),"","")
}function Q(ak){var aj=$Element(ak.element);
aj.toggleClass("ut_lang_on");
$Element("_MM_TODAY_TRANS_SOURCE_LIST").hide();
$Element("_MM_TODAY_TRANS_TARGET_LIST").toggle("block");
$Element("_MM_TODAY_TRANS_SOURCE").removeClass("ut_lang_on")
}function ah(al){var ak=$Element(al.element);
var aj=ak.data("code");
v.target=aj;
j();
nclk(al.element,"tod.switch"+aj.toLowerCase().replace("-",""),"","")
}function T(){var aj=v.source;
var ak=v.target;
v.source=ak;
v.target=aj;
j()
}function B(){$Element("_MM_TODAY_TRANS_TEXT").text("");
$Element("_MM_TODAY_TRANS_SUBMIT").addClass("ut_btn_disable")
}function b(aj){aj.stop();
var al=$Element("_MM_TODAY_TRANS_SOURCE").data("code")||"ko";
var am=$Element("_MM_TODAY_TRANS_TARGET").data("code")||"en";
var ak=$S($Element("_MM_TODAY_TRANS_TEXT").attr("value")).trim();
if(ak==""){return
}setTimeout(function(){location.href="http://translate.naver.com/#/"+al+"/"+am+"/"+ak
},50)
}function W(ak){ak.stop();
var aj=$S($Element(ak.srcElement).attr("value")).trim();
if(aj==""){$Element("_MM_TODAY_TRANS_DELETE").hide();
$Element("_MM_TODAY_TRANS_SUBMIT").addClass("ut_btn_disable")
}else{$Element("_MM_TODAY_TRANS_DELETE").show();
$Element("_MM_TODAY_TRANS_SUBMIT").removeClass("ut_btn_disable")
}}function j(){var ax=$Element("_MM_TODAY_TRANS_SOURCE");
var ap=$Element("_MM_TODAY_TRANS_TARGET");
if(!ax||!ap){return
}if($Element("_MM_TODAY_TRANS_TEXT").text()==""){$Element("_MM_TODAY_TRANS_DELETE").hide();
$Element("_MM_TODAY_TRANS_SUBMIT").addClass("ut_btn_disable")
}else{$Element("_MM_TODAY_TRANS_DELETE").show();
$Element("_MM_TODAY_TRANS_SUBMIT").removeClass("ut_btn_disable")
}var az=v.source;
var aj=v.target;
var au=p[az].target;
if(au.indexOf(aj)<0){v.target=au[0];
aj=v.target
}$Element("_MM_TODAY_TRANS_SOURCE").html(p[az].name);
$Element("_MM_TODAY_TRANS_SOURCE").data("code",az);
$Element("_MM_TODAY_TRANS_TARGET").html(p[aj].name);
$Element("_MM_TODAY_TRANS_TARGET").data("code",aj);
var aq='<li class="ut_litem"><button type="button" class="ut_btn_l _MM_TODAY_TRANS_TARGET_ITEM" data-code="{=CODE}">{=NAME}</button></li>';
var ay="";
var al="";
for(var ao=0;
ao<au.length;
ao++){var am=au[ao];
var an=$Template(aq).process({CODE:am,NAME:p[am].name});
if(ao<6){ay+=an
}else{al+=an
}}var ar="";
if(ay&&al){ar+='<ul class="ut_ll ut_lcol2">'+ay+"</ul>"
}else{if(ay){ar+='<ul class="ut_ll ut_lcol1">'+ay+"</ul>"
}}if(al){ar+='<ul class="ut_ll ut_lcol1">'+al+"</ul>"
}$Element("_MM_TODAY_TRANS_TARGET_LIST").html(ar);
var av=$ElementList("._MM_TODAY_TRANS_SOURCE_ITEM[data-code='"+az+"']").get(0);
var aw=$ElementList("._MM_TODAY_TRANS_TARGET_ITEM[data-code='"+aj+"']").get(0);
$ElementList("._MM_TODAY_TRANS_SOURCE_ITEM").removeClass("ut_selected");
$ElementList("._MM_TODAY_TRANS_TARGET_ITEM").removeClass("ut_selected");
av.addClass("ut_selected");
aw.addClass("ut_selected");
$Element("_MM_TODAY_TRANS_SOURCE").removeClass("ut_lang_on");
$Element("_MM_TODAY_TRANS_TARGET").removeClass("ut_lang_on");
$Element("_MM_TODAY_TRANS_SOURCE_LIST").hide();
$Element("_MM_TODAY_TRANS_TARGET_LIST").hide();
var ak=p[az].tools||[];
$Element("_MM_TODAY_TRANS_VOICE").hide();
$Element("_MM_TODAY_TRANS_CAMERA").hide();
for(var ao=0;
ao<ak.length;
ao++){$Element("_MM_TODAY_TRANS_"+ak[ao]).show()
}if(az=="ko"||az=="ja"){var at=$Element("_MM_TODAY_TRANS_VOICE").data(az+"-query");
$Element("_MM_TODAY_TRANS_VOICE").attr("data-ios-query",at);
$Element("_MM_TODAY_TRANS_VOICE").attr("data-android-query",at)
}}function E(ak){ak.stop();
nclk(ak.element,"tod.cardset","","");
var aj=$Element(ak.element);
if(l.visible()&&aj.parent().isEqual(l.parent())){l.hide()
}else{l.attr("data-card-id",aj.data("card-id")).show();
aj.after(l)
}}function M(am){am.stop();
var aj=l.data("card-id");
switch($Element(am.element).data("action")){case"move_to_top":nclk(am.element,"tod.cardtop","","");
var al=[aj].concat(naver.main.today.data.getMyCardList().filter(function(an){return an!=aj
}));
naver.main.today.data.setMyCardList(al);
window.scrollTo(0,0);
location.reload();
break;
case"remove":nclk(am.element,"tod.cardoff","","");
var al=naver.main.today.data.getMyCardList().filter(function(an){return an!=aj
});
if(!al||al.length===0){var ak=$Element($$.getSingle("#ct .id_today .uio_banner_btn"));
if(ak){ak.addClass("ubb_empty");
ak.prepend('<div class="ubb_title_wrap"> <h3 class="ubb_title">다양한 카드를 추가해보세요!</h3> </div>')
}al=["NONE"]
}naver.main.today.data.setMyCardList(al);
$Element(am.element).parent(function(an){return an.hasClass("grid1")
},10)[0].hide();
naver.main.SectionManager.setHeight();
break;
case"edit":nclk(am.element,"tod.cardadd","","");
location.href="/today/edit/";
break;
case"close":break
}l.hide()
}return{init:ad,initBanner:af}
})();
$.createNamespace("naver.main").School=(function(){var h;
var d;
var o;
var m;
var u=0;
var t;
var q;
var j=0;
var c="MM_QUIZ_SOLVED_";
var p=",";
function r(){a();
s();
if(h){f()
}}function g(){a();
if(h){f()
}}function a(){_welCT=$Element("ct");
if(_welCT){h=_welCT.child(function(w){return w.hasClass("_MM_QUIZ_CONTAINER")
})[0]
}if(h){d=$Element($$.getSingle("._MM_QUIZ_LIST",h));
m=$ElementList(d.queryAll("._MM_QUIZ_ITEM"));
u=m.length();
t=$Element($$.getSingle("._MM_QUIZ_MOVE_PREV",h));
q=$Element($$.getSingle("._MM_QUIZ_MOVE_NEXT",h));
o=$Element($$.getSingle("._MM_QUIZ_FINISH",h))
}}function s(){if(_welCT){_welCT.delegate("click","._MM_EXAMPLE",$Fn(v).bind());
_welCT.delegate("click","._MM_QUIZ_MOVE_PREV",$Fn(l).bind());
_welCT.delegate("click","._MM_QUIZ_MOVE_NEXT",$Fn(n).bind());
_welCT.delegate("click","._MM_QUIZ_NEXT",$Fn(n).bind())
}}function f(){m.hide();
var x=$Cookie().get(c+d.data("seq"));
var y=[];
if(x){y=x.split(p);
if(y!=null&&y.length>0){for(var z=0;
z<y.length;
z++){m.get(y[z]).removeClass("NOT_SOLVED")
}}}var D=m.length();
if(D>0&&D==y.length){o.show();
h.query("._MM_QUIZ_CURRENT").text(D);
h.show();
return
}var w=0;
for(var z=0;
z<D;
z++){var C=m.get(z);
if(C.hasClass("NOT_SOLVED")){var A=$Element($$.getSingle("._MM_QUIZ_QUESTION",C));
if(A){A.show();
A.parent().show();
break
}}w++
}var B=$Element($$.getSingle("._MM_QUIZ_MOVE_AREA",h));
B.show();
b(w,true);
h.show()
}function e(y,C){var x=m.get(y);
x.hide();
$Element($$.getSingle("._MM_QUIZ_QUESTION",x)).hide();
$Element($$.getSingle("._MM_QUIZ_DESC",x)).hide();
if(C==u){m.hide();
o.show();
t.hide();
q.hide()
}var A=m.get(C);
var w=true;
if(A.hasClass("NOT_SOLVED")){var z=$Element($$.getSingle("._MM_QUIZ_QUESTION",A)).show();
z.show();
w=true
}else{var B=$Element($$.getSingle("._MM_QUIZ_DESC",A));
B.show();
w=false
}A.show();
b(C,w)
}function b(w,x){var y=w+1;
j=w;
h.query("._MM_QUIZ_CURRENT").text(y);
if(x){t.show();
q.show()
}else{t.hide();
q.hide()
}if(y==1){t.hide()
}if(y==u){q.hide()
}}function v(y){y.stop();
var z=$Element(y.element);
var x=z.data("correct");
var B="._MM_QUIZ_WRONG";
if(x){B="._MM_QUIZ_CORRECT"
}var A=$Element($$.getSingle(B,h));
A.show();
setTimeout(function(){A.hide();
var D=$Element($$.getSingle("! ._MM_QUIZ_ITEM",z));
D.removeClass("NOT_SOLVED");
$Element($$.getSingle("._MM_QUIZ_QUESTION",D)).hide();
$Element($$.getSingle("._MM_QUIZ_DESC",D)).show();
b(j,false)
},1000);
var C=c+d.data("seq");
var w=$Cookie().get(C);
if(w!=null&&w!=""){w=w+p+j
}else{w=j
}$Cookie().set(C,w,1)
}function n(w){w.stop();
e(j,j+1)
}function l(w){w.stop();
e(j,j-1)
}return{init:r,refresh:g}
})();
naver.main.School.init();
$.createNamespace("naver.main").VideoFeed=(function(){var j,g="/api_tv",d="/api_tvlog",a;
var e=function(){h();
f()
},h=function(){j=$Element("ct")
},f=function(){j.delegate("click","._MM_TVCH_SUBSCRIBE",$Fn(c,this).bind());
j.delegate("click","._MM_TVCH_UNSUBSCRIBE",$Fn(b,this).bind())
},c=function(p){p.stop($Event.CANCEL_DEFAULT);
if(!naver.main.gVariable.isLogin){location.href="https://nid.naver.com/nidlogin.login?svctype=262144";
return
}var o=$Element(p.element);
var n=o.data("channel-id");
var l={channelId:n};
var m="/api/subscription/channel/subscribe";
var q=$Ajax(g+m,{method:"GET",timeout:3,onload:function(u){var r=u.json();
try{var s=r.header;
if(s.code=="failure"){if(s.text=="NOT LOGIN"){location.href="https://nid.naver.com/nidlogin.login?svctype=262144"
}}else{if(s.code=="success"){o.text("구독중");
o.addClass("ct_btn_on");
o.removeClass("_MM_TVCH_SUBSCRIBE");
o.addClass("_MM_TVCH_UNSUBSCRIBE");
o.data("clk","rcmsubsed")
}}}catch(t){JEagleEyeClient.sendError("[TV] recommend video subscribe response parsing error : "+t)
}},ontimeout:function(){alert("구독에 실패 하였습니다.")
},onerror:function(){alert("구독에 실패 하였습니다.")
}}).request(l)
},b=function(o){o.stop($Event.CANCEL_DEFAULT);
var n=$Element(o.element);
var m=n.data("channel-id");
var l={channelId:m};
var q="/api/subscription/channel/unsubscribe";
var p=$Ajax(g+q,{method:"GET",timeout:3,onload:function(u){var r=u.json();
try{var s=r.header;
if(s.code=="failure"){if(s.text=="NOT LOGIN"){location.href="https://nid.naver.com/nidlogin.login?svctype=262144"
}}else{if(s.code=="success"){n.text("구독");
n.removeClass("ct_btn_on");
n.addClass("_MM_TVCH_SUBSCRIBE");
n.removeClass("_MM_TVCH_UNSUBSCRIBE");
n.data("clk","rcmsubs")
}}}catch(t){JEagleEyeClient.sendError("[TV] recommend video unsubscribe response parsing error : "+t)
}},ontimeout:function(){alert("구독해지에 실패 하였습니다.")
},onerror:function(){alert("구독해지에 실패 하였습니다.")
}}).request(l)
};
return{init:e,}
})().init();
if(typeof naver==="undefined"){naver={}
}naver.main=naver.main||{};
naver.main.lifeWeatherIndex=$Class({MODULE_NAME:"naver.main.lifeWeatherIndex",$init:function(a){this._initVars(a);
this._attachEvent()
},_initVars:function(a){this._htOption=a;
this._welCT=$Element("ct")
},_attachEvent:function(){var a=this;
this._welCT.delegate("click","._MM_lifeWeatherIndexLocation",function(b){a._drawLoadingStatus(true);
naver.main.geolocation.search({success:function(c){a._drawLoadingStatus(false);
a._onSuccess()
},nvgeoTimeout:3,fail:function(){a._drawLoadingStatus(false)
},geolocationOptions:{enableHighAccuracy:true,timeout:5000,maximumAge:0}})
});
this._welCT.delegate("click","._MM_lifeWeatherIndexMore",function(c){var b=$Element(c.element);
var e="cw_up";
var d=$Element($$.getSingle(".id_cui_weatherindex"));
if(b.hasClass(e)){b.first().text("지수 펼치기");
$ElementList(d.queryAll("._MM_lifeWeatherIndexMore")).removeClass(e);
$ElementList(d.queryAll("._MM_hidden")).hide()
}else{b.first().html("지수 접기");
$ElementList(d.queryAll("._MM_lifeWeatherIndexMore")).addClass(e);
$ElementList(d.queryAll("._MM_hidden")).show()
}})
},_onSuccess:function(){$Ajax("/nvweather_mmap?path=include/grid/lifeWeatherIndexBanner&fname=LIFE_WEATHER_INDEX",{method:"get",timeout:5,onload:function(c){var a=c.text();
var b=$Element($$.getSingle(".id_cui_weatherindex"));
b&&b.html(a)
},ontimeout:function(){JEagleEyeClient.sendError("[naver.main.lifeWeatherIndex] update() ajax timeout")
},onerror:function(){JEagleEyeClient.sendError("[naver.main.lifeWeatherIndex] update() ajax error")
}}).request()
},_drawLoadingStatus:function(b){var a=$Element($$.getSingle("._MM_lifeWeatherIndexLocation"));
var c="cw_ico_loading";
if(b){a.addClass(c)
}else{a.removeClass(c)
}}}).extend(jindo.m.Component);
$.createNamespace("naver.main").entertainment=(function(){var d=naver.main.gVariable;
var j=20;
var h=null;
var e=null;
var l=null;
var a=null;
var n=null;
var f=[];
var o=0;
function p(){r();
b.init();
if(d.isApp){return
}}function r(){h=$Element("MM_tvprogram");
if(naver.main.SectionManager.getSectionName()!=="ENT"||!h){return
}if(h.data("ent-subs-init")==="done"){return
}h.attr("data-ent-subs-init","done");
if(e&&(!d.isLogin||a!==null)){g.draw();
return
}m(g.draw)
}function m(s){if(d.isLogin){$Ajax("/api_snsinfra/proxy/sg/EntCnlServiceBO/getSubscribingEntCnls.json?poolId=1",{timeout:3,type:"jsonp",onload:function(u){var t=u.json();
if(t.code===null||t.code!==0||t.result===null){JEagleEyeClient.sendError("Fail to get myChannels");
return
}if(t.result.length>0){a=t.result.map(function(v){return v.subscribeId.channelKey
})
}else{a=[]
}if(e){q();
s()
}},ontimeout:function(){JEagleEyeClient.sendError("Ajax timeout - getting myEntChannels")
},onerror:function(){JEagleEyeClient.sendError("Ajax error - getting myEntChannels")
}}).request()
}if(e){return
}$Ajax("/include/grid/entertainment/channelsV2.json",{timeout:3,onload:function(u){var t=u.json();
o=t.snsInfraChannelCount;
e=$A(t.channelsInfo).shuffle().$value();
if(!d.isLogin||a!==null){q();
s()
}},ontimeout:function(){JEagleEyeClient.sendError("Ajax timeout - getting entChannels")
},onerror:function(){JEagleEyeClient.sendError("Ajax error - getting entChannels")
}}).request()
}function q(){var v=null;
try{v=JSON.parse(window.sessionStorage.getItem("MM_ent_channelKeys"))
}catch(y){v=null
}if(v){l=v;
var x=[];
for(var t in l){var w=c(l[t]);
if(w){x.push(w)
}}if(x.length===e.length){e=x
}}else{var u=e.filter(function(z){return z.isBroadToday
});
var s=e.filter(function(z){return !z.isBroadToday
});
e=u.concat(s);
l=e.map(function(z){return z.subscribeId.channelKey
});
try{window.sessionStorage.setItem("MM_ent_channelKeys",JSON.stringify(l))
}catch(y){}}if(a&&a.length){a=a.filter(function(z){return l.indexOf(z)>-1
})
}}function c(t){for(var s in e){var u=e[s];
if(u.subscribeId.channelKey===t){return u
}}return null
}var g={sLoginUrl:"https://nid.naver.com/nidlogin.login?svctype=262144&url="+location.href,sSettingUrl:"http://m.entertain.naver.com/tvBrand?islayer=true&ref=main",getChannelsPage:function(){return h.query(".MM_ent_channels")
},getEditPage:function(){return h.query(".MM_ent_channels_edit")
},template:{channelsFoldTemplate:$Template('<div class="ct_banner">{=title}<a href="#" class="ct_banner_link MM_ent_channels_open" data-clk="tvdramatabopen">최신 콘텐츠 보기</a></div>'),channelsInner:$Template('<div class="ct_title_wrap"> <div class="ct_title_tab"> <a href="{=url}" class="ct_tta" data-clk="{=clk}">{=linkText}</a> <a href="#" class="ct_tta ct_ton MM_ent_channels_fold" data-clk="tvdramatabfold"><span class="ct_tta_close">접기</span></a> </div> <h3 class="ct_title"> <span class="ct_main">{=title}</span> <button type="button" class="ct_btn_help"><span class="blind">추천 도움말</span></button> </h3> <div class="ct_ly_help" style="display: none;z-index:3000;"> <p class="ct_help">현재 방송중인 드라마와 예능<br>프로그램을 구독하고 최신<br>콘텐츠를 확인할 수 있습니다.</p><button type="button" class="ct_btn_hclose"><span class="blind">추천 도움말 닫기</span></button> </div> </div> <div class="ct_scroll" role="tablist"> <div class="scroll-area _MM_HORIZONTAL_SCROLL _MM_IRREGULAR_WIDTH" role="presentation"> <div class="scroll-container" role="presentation" style="width:6000px;"> </div> </div> </div> <ul class="uio_thumbnail"> </ul> '),channelWrap:$Template('<ul class="ct_pl panelArea" role="presentation">{=sList}{if addMore}<li class="ct_pitem" role="presentation"><a href="http://m.entertain.naver.com/tvBrand?islayer=true&ref=main" data-clk="tvdramamore" class="ct_pa ct_pa_more" role="tab" aria-selected="false"><span class="blind">구독 TV 프로그램 추가</span></a></li>{/if}</ul>'),channelTab:$Template('<li class="ct_pitem" role="presentation"> <a href="#" class="ct_pa" role="tab" aria-selected="true" data-channel-key="{=channelKey}"> <div class="ct_pmw"> <img src="{=img}" width="43" height="43" alt="{=name}" class="ct_pm"> </div> </a> </li> '),vod:$Template('<li class="ut_item"><a href="{=url}" class="ut_a" data-clk="{=clk}"> <span class="ut_mw"><img src="{=img}?type=f270_166" width="100%" alt="{=title}" class="ut_m"><span class="spuio spuio_movie_big">영상</span></span> <span class="ut_d"><strong class="ut_t">{=title}</strong></span> </a></li> '),article:$Template('<li class="ut_item"><a href="{=url}" class="ut_a" data-clk="tvdramachocont">{=title}</a></li> '),subscribe:$Template('<div class="ct_sbox_tw"> <span class="ct_sbox_t">{=name}</span> <p class="ct_sbox_s"><span class="ct_sbox_d">구독하고, 더 많은 소식을 받아볼까요?</span> </p><button type="button" class="ct_btn_rdesc" data-channel-key="{=channelKey}" data-clk="tvdramabtn">구독</button> </div>'),infoFooter:$Template('<div class="ct_info MM_infoFooter"><a href="http://m.entertain.naver.com/tvBrand?islayer=true&amp;ref=main" data-clk="tvdramafooter" class="ct_iab">{=prefixText}<span class="ct_iabn">{=count}개 프로그램</span>을 {=postfixText}</a></div>'),talk:$Template('<div class="ct_sbox_tab"><a href="http://m.entertain.naver.com/tvBrand/{=dssId}/talk" class="ct_iab" data-clk="tvdramatalk">TALK<span class="ct_iabn">{=talkCnt}</span></a> <a href="http://m.entertain.naver.com/tvBrand/{=dssId}/news" class="ct_iab" data-clk="tvdramamore">영상&뉴스 더보기</a></div>')},draw:function(){h.show();
var t=g.getChannelsPage();
t.hide();
g.getEditPage().hide();
var s={};
s.title=(a&&a.length>0)?"구독한 TV 프로그램":"TV 프로그램 구독";
s.url=d.isLogin?g.sSettingUrl:g.sLoginUrl;
s.clk=d.isLogin?"tvdramaset":"tvdramalogin";
s.linkText=d.isLogin?"설정":"로그인";
t.show();
if(naver.main.resources("templateStatus").isFoldTvDrama()){t.html(g.template.channelsFoldTemplate.process(s))
}else{t.html(g.template.channelsInner.process(s));
g.drawChannelsTab();
g.drawContents()
}},getSelectedChannels:function(){if(f.length>0){return f
}var t=0;
var s=e;
if(a&&a.length>0){e.filter(function(u){return a.indexOf(u.subscribeId.channelKey)>-1
}).forEach(function(u){if(t<j){f.push(u.subscribeId.channelKey);
t++
}});
s=e.filter(function(u){return a.indexOf(u.subscribeId.channelKey)===-1
})
}if(t>=j){return f
}s.forEach(function(u){if(t<j){f.push(u.subscribeId.channelKey);
t++
}});
return f
},drawChannelsTab:function(){var z=g.getChannelsPage().query(".ct_scroll .scroll-container");
if(!z){return
}var v="";
var y="";
var u="";
var t=g.getSelectedChannels();
if(a&&a.length>0){g.getSelectedChannels().filter(function(B){return a.indexOf(B)>-1
}).forEach(function(B){var C=c(B);
v+=g.template.channelTab.process({img:C.img,name:$S(C.name).escapeHTML().$value(),channelKey:C.subscribeId.channelKey})
});
u=g.template.channelWrap.process({sList:v,addMore:false});
t=g.getSelectedChannels().filter(function(B){return a.indexOf(B)<0
})
}if(t.length>0){t.forEach(function(B){var C=c(B);
y+=g.template.channelTab.process({img:C.img,name:$S(C.name).escapeHTML().$value(),channelKey:C.subscribeId.channelKey})
});
u+=g.template.channelWrap.process({sList:y,addMore:true})
}z.html(u);
var A=z.query("ul.ct_pl li.ct_pitem a.ct_pa[data-channel-key]");
try{var x=window.sessionStorage.getItem("MM_ent_channelKey");
if(x){A=z.query("ul.ct_pl li.ct_pitem a.ct_pa[data-channel-key="+x+"]")||A
}}catch(w){}A.addClass("ct_pa_on");
var s=$$("a.ct_pa",z).indexOf(A.$value());
if(s>5){g.getChannelsPage().query(".scroll-area").data("scroll-pos",s*59)
}naver.main.HorizontalScroll.setHorizontalScrollEventOnTemplate()
},drawContents:function(){var u=g.getChannelsPage();
if(!u){return
}var s=u.query(".ct_pa_on").data("channel-key");
var v=c(s);
var t=a&&a.indexOf(s)!==-1;
g.drawVod(v,t);
$ElementList(u.queryAll(".uio_text, .ct_sbox, .ct_info")).hide();
if(t){g.drawArticleAndTalk(v)
}else{g.drawSubscribe(v)
}g.drawInfoFooter();
n=s
},drawInfoFooter:function(){var s=(!!a&&!isNaN(a.length))?a.length:0;
var t=o-s;
var u=g.getChannelsPage().query(".MM_infoFooter");
if(!!u){u.leave()
}var v=g.template.infoFooter.process({prefixText:(d.isLogin)?"":"로그인 후",count:t,postfixText:(s>0)?"더 구독할 수 있어요":"구독해 보세요"});
g.getChannelsPage().appendHTML(v)
},drawVod:function(v,t){var s=g.getChannelsPage().query(".uio_thumbnail");
var u="";
var w=t?"tvdramachocont":"tvdramacommcont";
v.contents.vod.slice(0,2).forEach(function(x){var y=x.url.search("http")===0?x.url:"http://"+x.url;
u+=g.template.vod.process({url:y,clk:w,img:x.imgUrl,title:$S(x.title).escapeHTML().$value()})
});
s.html(u)
},drawArticleAndTalk:function(w){var u=g.getChannelsPage();
var t=u.query(".uio_text")||$Element('<ul class="uio_text"> </ul>');
var v="";
w.contents.art.slice(0,3).forEach(function(y){var x=y.url.search("http")===0?y.url:"http://"+y.url;
v+=g.template.article.process({url:x,title:$S(y.title).escapeHTML().$value()})
});
t.html(v).show();
u.query(".uio_thumbnail").after(t);
if(w.talkCnt<0){return
}var s=u.query(".ct_sbox")||$Element('<div class="ct_sbox"> </div>');
s.html(g.template.talk.process({talkCnt:(""+w.talkCnt).replace(/(\d)(?=(\d{3})+(?!\d))/g,"$1,"),dssId:w.dssId})).show();
t.after(s)
},drawSubscribe:function(u){var t=g.getChannelsPage();
var s=t.query(".ct_sbox")||$Element('<div class="ct_sbox"> </div>');
s.html(g.template.subscribe.process({channelKey:u.subscribeId.channelKey,name:$S(u.name).escapeHTML().$value()})).show();
t.query(".uio_thumbnail").after(s)
},drawEditPage:function(B){var u=g.getEditPage();
g.getChannelsPage().hide();
u.show();
var s=e.filter(function(C){return g.getSelectedChannels().indexOf(C.subscribeId.channelKey)>-1
});
if(u.child().length===0){u.html(g.template.editInner.process());
var x=8;
var w=Math.ceil(s.length/x);
for(var A=0;
A<w;
A++){var y=$Element('<div class="flick-panel"> <ul class="ct_l"></ul> </div>');
u.query(".flick-container").append(y);
var z=s.slice(A*8,(A+1)*8);
for(var t in z){var v=z[t];
y.query("ul.ct_l").append(g.template.channelCheckBox.process({img:v.img,channelKey:v.subscribeId.channelKey,name:$S(v.name).escapeHTML().$value()}))
}u.query(".ct_page").append('<button type="button" class="ct_btn_page'+(A==0?" ct_btn_on":"")+'"><span class="blind">'+(A+1)+"</span></button>")
}new jindo.m.SlideFlicking(u.query(".ct_flick"),{bHorizontal:true,sClassPrefix:"flick-",sContentClass:"panel",nFlickThreshold:60,nDuration:250,bUseTimingFunction:false,bUseDiagonalTouch:false}).attach({flicking:function(C){$ElementList(u.queryAll("button.ct_btn_page")).removeClass("ct_btn_on").get(C.nContentsIndex).addClass("ct_btn_on")
}});
if(naver.main.gVariable.bContentOnly&&jindo.m.getOsInfo().android&&typeof TEvent!=="undefined"){u.query(".ct_flick").$value().addEventListener("touchstart",function(C){TEvent.touchStartEvent()
},false)
}if(B){u.query("button.ct_btn_close").hide()
}}if(a&&a.length>0){e.forEach(function(D){var C=D.subscribeId.channelKey;
if(a.indexOf(C)<0){g.ChannelCheckBox.off(C)
}else{g.ChannelCheckBox.on(C)
}})
}},ChannelCheckBox:{on:function(s){var t=g.getEditPage().query("[data-channel-key="+s+"]");
if(!t){return
}t.addClass("ct_aon").attr("aria-checked",true);
g.ChannelCheckBox.checkFooterBtn()
},off:function(s){var t=g.getEditPage().query("[data-channel-key="+s+"]");
if(!t){return
}t.removeClass("ct_aon").attr("aria-checked",false);
g.ChannelCheckBox.checkFooterBtn()
},checkFooterBtn:function(){var s=g.getEditPage();
if(s.queryAll("a.ct_aon").length<1&&!s.query(".ct_btn_close").visible()){s.query(".MM_choose").show();
s.query(".MM_submit").hide()
}else{s.query(".MM_choose").hide();
s.query(".MM_submit").show()
}}}};
var b={init:function(){var s=$Element("ct");
s.delegate("click","#MM_tvprogram button.ct_btn_help",b.onclickInfoBtn);
s.delegate("click","#MM_tvprogram button.ct_btn_hclose",b.onclickInfoBtn);
s.delegate("click","#MM_tvprogram a.ct_pa[data-channel-key]",b.onclickChannelTab);
s.delegate("click","#MM_tvprogram a.ct_right_a.MM_show_edit",b.onclickEditBtn);
s.delegate("click","#MM_tvprogram button.ct_btn_rdesc",b.onclickSubscribeAChannel);
s.delegate("click","#MM_tvprogram button.ct_btn_close",b.onclickCloseEditBtn);
s.delegate("click","#MM_tvprogram a.ct_a",b.onclickChannelCheckBox);
s.delegate("click","#MM_tvprogram a.ct_ia",b.onclickSubscribeChannels);
s.delegate("click","#MM_tvprogram .MM_ent_channels_fold",b.onclickFoldTemplate);
s.delegate("click","#MM_tvprogram .MM_ent_channels_open",b.onclickOpenTemplate)
},onclickInfoBtn:function(s){s.stop();
var t=h.query(".ct_ly_help");
if(t.visible()){t.hide();
nclk({},"ent.tvdramahelpclose","","")
}else{t.show();
nclk({},"ent.tvdramahelp","","")
}},onclickChannelTab:function(s){s.stop();
$ElementList(h.queryAll("a.ct_pa.ct_pa_on")).removeClass("ct_pa_on");
$Element(s.element).addClass("ct_pa_on");
g.drawContents();
try{window.sessionStorage.setItem("MM_ent_channelKey",$Element(s.element).data("channel-key"))
}catch(t){}if(!d.isLogin){nclk({},"ent.tvdramaloginlist","","")
}else{nclk({},"ent.tvdramataplist","","")
}},onclickEditBtn:function(s){s.stop();
g.drawEditPage()
},onclickSubscribeAChannel:function(t){t.stop();
if(!d.isLogin){location.href=g.sLoginUrl;
return
}var s=$Element(t.element).data("channel-key");
b.subscribe(s)
},onclickChannelCheckBox:function(t){t.stop();
var u=$Element(t.element);
var s=u.data("channel-key");
if(u.hasClass("ct_aon")){g.ChannelCheckBox.off(s)
}else{g.ChannelCheckBox.on(s)
}nclk({},"ent.tvdramalist","","")
},onclickSubscribeChannels:function(y){y.stop();
var v=g.getEditPage();
var A=v.queryAll("a.ct_aon").map(function(B){return B.data("channel-key")
});
var x=A.filter(function(B){return a.indexOf(B)<0
});
var z=a.filter(function(B){return A.indexOf(B)<0
}).filter(function(B){return !!v.query("a.ct_a[data-channel-key="+B+"]")
}).map(function(B){return $Ajax("/api_snsinfra/invoker/unsubscribe.json?serviceCode=tvcast&type=CHANNEL&id="+B,{timeout:3,type:"jsonp"})
});
var u=[];
var w=false;
if(x.length>0){var t="/api_snsinfra/invoker/subscribeAll.json";
t+="?serviceCode="+x.map(function(B){return"tvcast"
}).join(",");
t+="&type="+x.map(function(B){return"CHANNEL"
}).join(",");
t+="&id="+x.join(",");
u.push($Ajax(t,{timeout:3,type:"jsonp"}));
w=true
}window.localStorage.setItem("MM_ent_subsdone","1");
var s=u.concat(z);
if(!s||s.length<1){g.draw();
return
}$AAjaxes(s).request(function(C){var B=0;
if(w){B=1;
onResp=C[0];
if(onResp.status()!==200){JEagleEyeClient.sendError("Ajax fail - ent subscribeAll")
}}for(;
B<C.length;
B++){offResp=C[B];
if(offResp.status()!==200){JEagleEyeClient.sendError("Ajax fail - ent unsubscribe")
}}m(g.draw);
nclk({},"ent.tvdramachoice","","")
})
},onclickFoldTemplate:function(s){s.stop();
naver.main.resources("templateStatus").setTvDramaStatus(1);
g.draw()
},onclickOpenTemplate:function(s){s.stop();
naver.main.resources("templateStatus").setTvDramaStatus(0);
g.draw()
},onclickCloseEditBtn:function(s){s.stop();
g.getChannelsPage().show();
g.getEditPage().hide();
nclk({},"ent.tvdramaclose","","")
},subscribe:function(s){$Ajax("/api_snsinfra/invoker/subscribe.json?serviceCode=tvcast&type=CHANNEL&id="+s,{timeout:3,type:"jsonp",onload:function(t){if(t===null||t.json()===null||t.json().code!==0){alert("구독에 실패하였습니다.\n잠시 후 다시 시도해주세요.");
return
}m(g.draw)
},ontimeout:function(){JEagleEyeClient.sendError("Ajax timeout - subscribe ent channel")
},onerror:function(){JEagleEyeClient.sendError("Ajax error - subscribe ent channel")
}}).request()
}};
return{init:p,initComponent:r}
})();
if(typeof naver==="undefined"){naver={}
}naver.main=naver.main||{};
naver.main.siblingContentChecker=$Class({MODULE_NAME:"naver.main.siblingContentChecker",$init:function(a){this._initVars(a);
this._attachEvent();
naver.main.resources("siblingCARGAME").updateCombinedType()
},_initVars:function(a){this._welCT=$Element("ct")
},_attachEvent:function(){if(!this._hasPanel("ITTECH")){this._welCT.delegate("click","[data-section=CARGAME] a",$Fn(this._onClickLinkInCARGAME,this).bind())
}},_hasPanel:function(b){var a=naver.main.resources("menu").getAllMenuList();
return(a.indexOf(b)>=0)
},_onClickLinkInCARGAME:function(b){var a=b.element.href;
this._updateClickedContentHistory(a,"siblingCARGAME","CARGAME","ITTECH")
},_updateClickedContentHistory:function(b,a,d,c){var e=naver.main.resources(a).getUsedContentType();
var g="";
var f="";
if(b.indexOf("mainSiblingPanel="+d)>=0){g=d
}else{if(b.indexOf("mainSiblingPanel="+c)>=0){g=c
}}if(g===d){if(e==="0"){f=0
}else{if(e==="1"){f=1
}else{if(e==="2"){f=0
}else{f=1
}}}}else{if(g===c){if(e==="0"){f=0
}else{if(e==="1"){f=0
}else{if(e==="2"){f=2
}else{f=2
}}}}}if(f!==""){naver.main.resources(a).setUsedContentType(f)
}}}).extend(jindo.m.Component);
$.createNamespace("naver.main").placeRegionGuide=(function(s){var s=naver.main.gVariable;
var p=s.allowPlaceCodes;
var c="MM_PL";
var b="MM_PL_LOC";
var a="MM_PL_NEW";
var t="MM_PL_MORE";
var z='<em class="point">다른 지역</em>의 <em class="point">동네소식</em>도 확인해보세요';
var f="16";
var y="2017-12-14";
function v(){j();
w();
q();
o();
r()
}function j(){if($Cookie().get("MM_PL_RCM")!=null){$Cookie().remove("MM_PL_RCM")
}if($Cookie().get("MM_PL_RCM_TIME")!=null){$Cookie().remove("MM_PL_RCM_TIME")
}}function w(){mainObserver.attachCustomEvent("showPanel","naver.main.placeRegionGuide",$Fn(function(B){if(B.sPanel==="PLACE"){o()
}},this).bind());
_welCT=$Element("ct");
if(_welCT){_welCT.delegate("click","._MM_REGION",$Fn(A).bind());
_welCT.delegate("click","._MM_REGION_MORE",$Fn(h).bind());
_welCT.delegate("click","._MM_MYPLACE_LOCATION_BTN",$Fn(g,this).bind())
}}function A(C){C.stop();
var D=$Element(C.element);
var B=D.data("code");
naver.main.resources("menu").setSet("PLACE");
$Cookie().set(c,B,3650);
$Cookie().set(b,B,10);
if(B===f&&$Cookie().get("MM_PL_NEW_DOT")==null){$Cookie().set("MM_PL_NEW_DOT","1",3650)
}location.replace(location.href)
}function h(B){B.stop();
var D=$Element(B.element);
var F=$Element("_MM_REGION_TAB");
D.toggleClass("cp_more_on");
F.toggle();
F.toggleClass("cp_tab_on");
if(F.visible()){$Cookie().remove(t)
}else{$Cookie().set(t,"1",3650)
}var C=naver.main.SectionManager.getSectionName();
var E=naver.main.GridInfo.getGridInfo(C,"clickArea");
nclk(B.element,E+"regmore","","")
}function g(B){$Element(B.element).addClass("loading");
if(!navigator.geolocation){alert("위치 정보를 사용할 수 없는 단말기 입니다.");
x();
return
}naver.main.geolocation.search({success:e,fail:x})
}function e(B){var C=B.code.substr(0,2);
C=l(C);
if($A(p).indexOf(C)>-1){$Cookie().set(c,C,3650);
$Cookie().set(b,C,10);
location.replace(location.href)
}else{var D=$Element("place_location_desc");
if(D){D.html("현 지역은 아직 제공되지 않습니다.")
}n()
}x()
}function x(){$ElementList("#ct .loading").removeClass("loading")
}function r(){var B=new Date();
var E=new Date(y);
var D=Math.floor((E.getTime()-B.getTime())/(1000*60*60*24))+1;
if(D<1){return
}$Cookie().set(a,f,D);
var C=$$("._MM_REGION[data-code='"+f+"'] >span")[0];
if($Element($$("._MM_REGION[data-code='"+f+"']")[0])!=null&&!$Element($$("._MM_REGION[data-code='"+f+"']")[0]).hasClass("cp_aon")&&C!=null&&$Cookie().get("MM_PL_NEW_DOT")==null&&C.children.length<1){$Element(C).appendHTML('<span class="cp_new">신규</span>');
$Element("place_location_desc").html('새로 추가된 <em class="point">'+m(f)+"</em>지역 소식을 확인해보세요")
}}function q(){var C=$Cookie().get(b);
if(C&&($A(p).indexOf(C)>-1)){var B=$Element("place_location_desc");
if(B){B.html('<em class="point">'+m(C)+"</em>지역으로 변경되었습니다.")
}$Cookie().remove(b);
n()
}}function o(){var C=naver.main.SectionManager.getSectionName();
if(C!=="PLACE"){return
}var B=$Cookie().get(c);
if(B){u()
}}function u(){var E=s.sRegionCode;
if(typeof E=="undefined"||E.length<2){return
}var D=$Cookie().get(c);
var C=E.substr(0,2);
C=l(C);
if(D==C){return
}if($A(p).indexOf(C)<0){return
}if($Cookie().get(a)&&$Cookie().get(a)===C&&$Cookie().get("MM_PL_NEW_DOT")==null){return
}var H=$Element("place_location_desc");
if(H){H.html('방문하신 <em class="point">'+m(C)+"</em>지역 소식을 확인해보세요")
}var B=$ElementList("._MM_REGION");
for(var F=0;
F<B.length();
F++){var G=B.get(F);
if(G.data("code")==C){if(G.child()[0]){G.child()[0].appendHTML('<span class="cp_recommend">추천</span>')
}break
}}n()
}function n(){var B=$Element("place_location_desc");
if(!B){return
}setTimeout(function(){B.html(z)
},5000)
}function l(B){if(B==="15"||B==="17"){B="07"
}return B
}function d(){var C=new Date();
var D=C.getMonth()+1;
var B=C.getDate();
return[C.getFullYear(),(D>9?"":"0")+D,(B>9?"":"0")+B].join("-")
}function m(B){var C="";
if(B==="01"){C="강원"
}else{if(B==="02"){C="경기"
}else{if(B==="09"){C="서울"
}else{if(B==="14"){C="제주"
}else{if(B==="11"){C="인천"
}else{if(B==="08"){C="부산"
}else{if(B==="07"){C="대전·세종·충남"
}else{if(B==="16"){C="충북"
}}}}}}}}return C
}return{init:v}
})(naver.main.gVariable);
naver.main.placeRegionGuide.init();
$.createNamespace("naver.main").ondemand=(function(){function b(){a()
}function a(){var g="SocialPlugin";
var c=false;
var e=$Element("ct");
function f(){var l=naver.main.GridInfo;
var j=naver.main.SectionManager;
var m=$Element("ct").css("padding-top");
var h=m?parseInt(m.replace("px","")):0;
window.__splugin=SocialPlugIn_Core({evKey:"mobilemain",serviceName:"모바일메인",dimmed:"fixed",onClick:function(n){},onShow:function(p){var n=l.getGridInfo(j.getSectionName(),"clickArea");
nclk({},n+"pagesend","","");
var o=naver.main.resources("agent").compareNaverappServiceCode({androidCode:330,iPhoneCode:390,iPadCode:119});
if(!Number.isNaN(o)&&o>=0){if(jindo.m.getOsInfo().ipad){$Element("naver-splugin-dimmed").css("top",(document.body.scrollTop-200)+"px");
$Element("naver-splugin-dimmed").css("position","absolute");
return
}APP.run("naverapp://","","main?showTopBtn=NO",false)
}},onHide:function(){var n=l.getGridInfo(j.getSectionName(),"clickArea");
nclk({},n+"sendclose","","");
var o=naver.main.resources("agent").compareNaverappServiceCode({androidCode:330,iPhoneCode:390});
if(!Number.isNaN(o)&&o>=0){APP.run("naverapp://","","main?showTopBtn=YES",false)
}}})
}function d(j){j.stop();
var q="naver-splugin-sdk",l=new Date(),p=l.getFullYear(),o=l.getMonth()+1,h=l.getDate();
var m=document.createElement("script");
m.id=q;
m.type="text/javascript";
m.charset="utf-8";
m.async=false;
$Element(m).attach("load",function(){if(!c){c=true;
e.undelegate("click",".naver-splugin",d);
f();
$Element(j.element).fireEvent("click")
}});
m.src=("https://ssl.pstatic.net/spi/js/release/ko_KR/splugin.m.js?"+p+(o<10?"0"+o:o)+(h<10?"0"+h:h));
var n=document.getElementsByTagName("head")[0];
n.appendChild(m,n)
}e.delegate("click",".naver-splugin",d)
}return{init:b}
})();
if(typeof naver==="undefined"){naver={}
}naver.main=naver.main||{};
naver.main.siblingPanels=$Class({MODULE_NAME:"naver.main.siblingPanels",$init:function(a){this._initVars(a);
this._attachEvent()
},_initVars:function(a){this._htOption=a
},_initComponent:function(){},_attachEvent:function(){mainObserver.attachCustomEvent("onLoadJS",this.MODULE_NAME,$Fn(this._onLoadJS,this).bind())
},_onLoadJS:function(a){this._setPanelEditedUser();
this._siblingForUnusedUser("VIDEO;LIVING;FINANCE;HEALTH")
},_setPanelEditedUser:function(){if(naver.main.resources("agent").isNaverapp()){if(window.inapphome&&window.inapphome.changeToEditedUser){window.inapphome.changeToEditedUser("true")
}}else{var a=naver.main.resources("menu").getMenuList();
naver.main.resources("menu").setMenuList(a.join(";"))
}},_siblingForUnusedUser:function(a){if(naver.main.gVariable.sDefaultSectionId!=="REST"){naver.main.panelManager.cleanUnusedPanel({bisRefresh:true,nPeriod:60,bisForce:true,sTargetPanelCode:a,bisShowToastBanner:false})
}}}).extend(jindo.m.Component);
$.createNamespace("naver.main").newsChannel=(function(a,f,m){var h=null;
var d=0;
var n=0;
var c=3;
var g=true;
var j=3;
function l(){o();
mainObserver.attachCustomEvent("onLoadPanel","naver.main.newsChannel",function(p){o()
});
mainObserver.attachCustomEvent("appmainload","naver.main.newsChannel",function(q){var p=decodeURIComponent(q.from);
if(q&&q.from&&/https?:\/\/media\.naver\.com\/channel\/setting\.nhn.*/.test(p)){naver.main.PageRefresh.run()
}})
}function o(){if(h&&h.data("initialized")==="true"){return
}h=$Element("MM_news_channel");
if(!h){return
}d=parseInt(h.data("oid-length"));
n=parseInt(h.data("subscribe-count"));
c=h.queryAll("._MM_JOURNAL_BOX").filter(function(p){return p.visible()
}).length;
e.init();
b.init();
e.update();
h.attr("data-initialized","true")
}var e={init:function(){if(h.query(".ccj_banner")||h.query(".ccj_banner_light")){if($Cookie().get("MM_CHANNEL_BANNER")=="N"){h.query(".ccj_banner_close").hide()
}return
}},update:function(){if(h.query(".ccj_banner")){return
}j=n<10?3:5;
if(n>0){h.query(".ccj_count").html(n);
h.query(".ccj_title_wrap .ccj_sub").show();
$Cookie().set("MM_CHANNEL_SHOW_COUNT",Math.min(c,n),30)
}e.showInfo()
},showMoreCard:function(p){if(c>=n){e.update();
return
}if(!g){return
}g=false;
p=c+p>n?n-c:p;
$Ajax("/sub/content/newsChannel/nvnews_channel.shtml?service=news&group=channel&start="+c+"&cnt="+p,{timeout:3,onload:function(q){$Element(q.text()).queryAll("._MM_JOURNAL_BOX").forEach(function(r){h.query(".ccj_info").before(r)
});
c+=p;
e.update();
naver.main.SectionManager.setHeight();
g=true
},onerror:function(){g=true
},ontimeout:function(){g=true
}}).request()
},moveBannerToBottom:function(){var p=$$.getSingle("#ct .id_news .MM_panel_add_banner");
if(p){$Element(p).before(h)
}h.query(".ccj_banner_close").hide()
},hideBanner:function(){h.hide()
},showInfo:function(){var v=h.query(".ccj_info")||$Element('<div class="ccj_info"></div>');
var s='<a data-clk="chbanneradd" class="ccj_btn_add" href="http://media.naver.com/channel/setting.nhn?back=main&tab=total"><em class="ccj_count">%d개 채널</em>을 더 설정 할 수 있어요 <span class="ccj_add">추가하기</span></a>';
var r='<button type="button" class="ccj_btn_more fold">접기</button>';
var t='<button type="button" class="ccj_btn_more">채널 더보기</button>';
var p=h.queryAll("._MM_JOURNAL_BOX");
var q=p[p.length-1];
q.after(v);
v.html("");
if(c<n){v.html(t)
}var u=n<10?3:5;
if(u<c){v.html(r+v.html())
}if(c==n){if(n<d){v.html(s.replace("%d",d-n)+v.html())
}}}};
var b={init:function(){h.delegate("click",".ccj_btn_sub[data-group][data-id]",b.onclickUnfollowBtn);
h.delegate("click",".ccj_btn_more",b.onclickMoreBtn);
h.delegate("click",".ccj_banner_close",b.onclickBnrCloseBtn)
},onclickUnfollowBtn:function(q){q.stop();
var p=$Element(q.element);
naver.main.customAlert("T9",{text:'네이버 메인에서 <span class="la_st">'+p.data("press")+"</span><br/>채널이 제외됩니다.",okText:"완료",noText:"취소",okCallback:function(){$Ajax("/api_media/channel/removeChannel.nhn?officeId="+p.data("id"),{method:"delete",onload:function(r){if(!r||!r.text||r.text()!="true"){return
}var t=p.parent(function(v){return v.hasClass("_MM_JOURNAL_BOX")
},5)[0];
h.query(".ccj_title_wrap").after(t.hide());
c--;
n--;
var u=h.queryAll("._MM_JOURNAL_BOX").filter(function(v){return v.visible()
});
if(u.length===0){naver.main.PageRefresh.run();
return
}if(h.query(".id_ad")){u[0].after(h.query(".id_ad"))
}var s=n<10?3:5;
if(u.length>=s){e.update();
return
}e.showMoreCard(1)
},onerror:function(r){}}).request()
}})
},onclickMoreBtn:function(p){p.stop();
if($Element(p.element).hasClass("fold")){nclk({},"new.chclose","","");
var s=n<10?3:5;
var r=h.queryAll("._MM_JOURNAL_BOX").filter(function(t){return t.visible()
}).slice(s);
if(r.length===0){return
}r.forEach(function(t){h.query(".ccj_title_wrap").after(t.hide())
});
c=s;
e.update();
naver.main.SectionManager.setHeight();
var q=$A(h.queryAll("._MM_JOURNAL_BOX")).filter(function(t){return t.visible()
}).get(s-1);
if(q){window.scrollTo(0,q.offset().top)
}}else{nclk({},"new.chmore","","");
e.showMoreCard(j)
}},onclickBnrCloseBtn:function(p){p.stop();
$Cookie().set("MM_CHANNEL_BANNER","N",7);
e.hideBanner()
},};
return{init:l,initComponent:o,}
})();
$.createNamespace("naver.main").newsChannelPromotion=(function(){var g=null;
var j=false;
var f=false;
function h(){e();
mainObserver.attachCustomEvent("showPanel","naver.main.newsChannelPromotion",e)
}function e(){if(j||naver.main.SectionManager.getSectionName()!="NEWS"){return
}g=$Element("ct").query(".MM_NEWS_CHANNEL_PROMOTION_BANNER");
if(!g){return
}c.init();
b.init();
j=true
}function d(){return $A(g.queryAll(".MM_NEWS_CHANNEL_PROMOTION_ITEM[aria-selected=true]")).map(function(l){return{oid:l.data("oid"),name:l.data("press")}
}).$value()
}var c={init:function(){c.refreshInfo()
},refreshHorizontalScroll:function(l){naver.main.HorizontalScroll.refreshHorizontalScrollByIndex(l.query("[data-hscroll-index]").data("hscroll-index"))
},refreshInfo:function(){var l=g.query(".MM_NEWS_CHANNEL_PROMOTION_SAVE");
if(d().length>0){l.removeClass("disabled")
}else{l.addClass("disabled")
}},};
function a(){setTimeout(function(){var l=location.origin+"/naverapp/?cmd=onMenu&menuCode=NEWS&hash=MM_NEWS_CHANNEL_PROMOTION_BANNER,NEWS_CHANNEL";
location.href="https://nid.naver.com/nidlogin.login?svctype=262144&url="+encodeURIComponent(l)
},100)
}var b={init:function(){g.delegate("click",".MM_NEWS_CHANNEL_PROMOTION_REFRESH",b.onClickRefreshButton);
g.delegate("click",".MM_NEWS_CHANNEL_PROMOTION_ITEM",b.onClickItem);
g.delegate("click",".MM_NEWS_CHANNEL_PROMOTION_SAVE",b.onClickSaveButton)
},onClickRefreshButton:function(n){n.stop();
if(naver.main.gVariable.isLogin==false){a()
}var o=$A(g.queryAll(".MM_NEWS_PROMOTION_GROUP"));
var m=0;
var q=null;
o.forEach(function(t,s,r){if(t.visible()){m=s;
q=t;
$A.Break()
}});
var l=(m+1)%o.length();
var p=o.get(l);
q.hide();
p.show();
c.refreshHorizontalScroll(p)
},onClickItem:function(l){l.stop();
if(naver.main.gVariable.isLogin==false){a()
}var m=$Element(l.delegatedElement);
m.attr("aria-selected",m.attr("aria-selected")=="false"?"true":"false");
c.refreshInfo()
},onClickSaveButton:function(m){var n=d();
if(f||n.length==0){return
}if(naver.main.gVariable.isLogin==false){a()
}f=true;
c.refreshInfo();
var l=$A(n).map(function(p){return{group:"channel",id:p.oid}
}).$value();
var o=$Ajax("/nvfever_api/news/v1/followings",{method:"post",postBody:true,timeout:3,onload:b.onLoadSaveAjax,onerror:b.onLoadSaveAjax,ontimeout:b.onLoadSaveAjax});
o.header("Content-Type","application/json");
o.request(JSON.stringify(l))
},onLoadSaveAjax:function(m){var l=200<=m.status()&&m.status()<=299;
if(l){$Cookie().set("MM_L_HASH","NEWS_CHANNEL");
naver.main.PageRefresh.run()
}else{f=false;
c.refreshInfo()
}}};
return{init:h,}
})();</script></head>
<body>
<div class="u_skip"><a href="https://m.naver.com/#ct">본문 바로가기</a></div>
<div class="header">


<div id="sch" class="sch" style="transform: translate(0px, 0px);">
<section>
<div class="sch_w _sch_w">

<h1 id="_lg_h" class="lg_h">
<div class="lg_aw">
<img src="./place_home_files/mobile_110629401121.png" width="200" height="48" alt="네이버" class="lg_m">
<a href="http://m.naver.com/" class="lg_a" onclick="Logo.click();nclk(this,&#39;sch.logo&#39;,&#39;&#39;,&#39;&#39;);"><span class="blind">스페셜로고 바로가기</span></a>
</div>
</h1>


<form role="search" name="search" id="search" action="https://m.search.naver.com/search.naver" onsubmit="nclk(this,&#39;sch.search&#39;,&#39;&#39;,&#39;&#39;);if (oKeywordHistory) oKeywordHistory.add(document.querySelector(&#39;#query&#39;).value);">
<span class="sch_inpw _sch_inpw">
<span class="sch_inpw_in">
    <input type="text" id="query" name="query" title="검색어 입력" value="" class="sch_inp" autocomplete="off" maxlength="255" data-initval="" onfocus="this.setAttribute(&#39;data-focus&#39;,&#39;focus&#39;);">
<input type="hidden" name="where" value="m">
<input type="hidden" id="sm" name="sm" value="mtp_hty">
<button id="clear_input" type="button" class="sch_del" style="display:none"><span class="sprh sprh_del">입력 내용 삭제</span></button>
<span class="sch_region">
<button type="button" class="sch_btn" data-ios-scheme="naversearchapp" data-ios-query="search?qmenu=voicerecg&amp;version=26" data-ios-install="393499958" data-ios-universal-fullurl="https://naverapp.m.naver.com/?urlScheme=naversearchapp%3A%2F%2Fsearch%3Fqmenu%3Dvoicerecg%26version%3D26" data-android-scheme="naversearchapp" data-android-query="search?qmenu=voicerecg&amp;version=26" data-android-package="com.nhn.android.search" onclick="nclk(this, &#39;sch.inspeak&#39;, &#39;&#39;, &#39;&#39;, 1);nhn.mobile.launchApp(this);return false;">
<span class="sprh sprh_region_mic">인식검색 음성검색</span>
</button>
<button type="button" class="sch_btn" data-ios-scheme="naversearchapp" data-ios-query="search?qmenu=searchbyimage&amp;version=26" data-ios-install="393499958" data-ios-universal-fullurl="https://naverapp.m.naver.com/?urlScheme=naversearchapp%3A%2F%2Fsearch%3Fqmenu%3Dsearchbyimage%26version%3D26" data-android-scheme="naversearchapp" data-android-query="search?qmenu=searchbyimage&amp;version=26" data-android-package="com.nhn.android.search" onclick="nclk(this, &#39;sch.sbi&#39;, &#39;&#39;, &#39;&#39;, 1);nhn.mobile.launchApp(this);return false;">
<span class="sprh sprh_region_lens">인식검색 스마트렌즈</span>
</button>
</span>
</span>
</span>
<button type="submit" class="sch_submit"><span class="sprh sprh_submit">검색</span></button>
</form>
<a href="https://m.naver.com/aside/" id="_MM_noti" class="sch_hw" onclick="nclk(this,&#39;sch.drawer&#39;, &#39;&#39;,&#39;&#39;);">
<span class="sprh sprh_sch_ham">확장영역 열기</span>

</a>
<a id="set_start" href="https://m.naver.com/panel/" class="sch_menu" data-abba="1" onclick="nclk(this,&#39;sch.edit&#39;,&#39;&#39;,&#39;&#39;);">
<span class="sprh sprh_sch_menu">메뉴 순서 변경하기</span>
</a>
</div>
<div class="u_atcp_wrap">
<div class="u_sggt_wrap2" id="nx_suggest_recent" style="display:none;">
<div class="sggt_fixer _sggt_fixer">
<div class="sggt_header"><h2 class="tit">최근 검색어<a href="https://m.help.naver.com/support/alias/search/word_m/word_m6.naver" class="imsc ico_help" onclick="nclk(this, &#39;sxt.help&#39;, &#39;&#39;, &#39;&#39;);">도움말</a></h2></div>
<div class="sggt_container">
<ul class="kwd_lst _kwd_lst">
<li class="type_date" data-query="@in_txt@" data-rank="@rank@">
<a href="https://m.naver.com/#" class="kwd" onclick="oKeywordHistory.select(event);"><span class="fix">@txt@</span></a>
<em class="date">@date@.</em>
<a href="https://m.naver.com/#" role="button" class="bt_del" onclick="oKeywordHistory.remove(event);"><span class="imsc">삭제</span></a>
</li>
</ul>
<div id="nx_suggest_recent_off" class="kwd_info kwd_off" style="display: none;">검색어 저장 기능이 꺼져 있습니다.<br><span class="kwd_dsc">설정이 초기화된다면 <a href="https://m.help.naver.com/support/alias/search/word_m/word_m6.naver" class="kwd_help" onclick="nclk(this, &#39;sxt.help&#39;, &#39;&#39;, &#39;&#39;);">도움말</a>을 확인해주세요.</span></div>
<div id="nx_suggest_recent_nothing" class="kwd_info kwd_none" style="display: none;">최근 검색어 내역이 없습니다.<br><span class="kwd_dsc">설정이 초기화된다면 <a href="https://m.help.naver.com/support/alias/search/word_m/word_m6.naver" class="kwd_help" onclick="nclk(this, &#39;sxt.help&#39;, &#39;&#39;, &#39;&#39;);">도움말</a>을 확인해주세요.</span></div>
</div>
<div class="sggt_footer">
<span class="side_opt_area">
<span class="opt_del"><a id="nx_suggest_recent_clear" href="https://m.naver.com/#">전체삭제</a></span>
<span class="opt_off" id="nx_suggest_recent_unuse"><a href="javascript:;">자동저장 <span class="txt_off">끄기</span><span class="txt_on">켜기</span></a></span>
<span class="opt_help"><a href="https://m.help.naver.com/support/alias/search/word_m/word_m6.naver" onclick="nclk(this, &#39;sxt.help&#39;, &#39;&#39;, &#39;&#39;);">도움말</a></span>
</span>
<button type="button" id="nx_suggest_recent_close" class="u_atcp_fcb u_atcp_x">닫기</button>
</div>
</div>
</div>
<div class="u_atcp_area" id="autocomplete_layer" style="display:none;">
<script type="text/template" id="_atcp_answer_2"><p class="atcp_crt" onclick="oAutoComplete.selectAnswer(event, 2, true, '@1@', '@2@');"><a href="javascript:;" class="atcp_crt_a">@5@<span> </span><strong class="atcp_crt_sn">@6@</strong></a></p></script>
<script type="text/template" id="_atcp_answer_3"><p class="atcp_crt atcp_lotto" onclick="oAutoComplete.selectAnswer(event, 3, true, '@1@', '@2@');"><a href="javascript:;" class="atcp_crt_a"><strong class="tit"><em>@5@</em>회차</strong><time datetime="@datetime@">@13@.</time><span class="lotto"><em class="n@6@">@6@</em><em class="n@7@">@7@</em><em class="n@8@">@8@</em><em class="n@9@">@9@</em><em class="n@10@">@10@</em><em class="n@11@">@11@</em><em class="imsc_bf bonus n@12@">@12@</em></span></a></p></script>
<script type="text/template" id="_atcp_answer_9"><p class="atcp_crt atcp_crt_sm" onclick="oAutoComplete.selectAnswer(event, 9, true, '@1@', '@2@');"><a href="javascript:;" class="atcp_crt_a">@5@<span class="atcp_exchr_@11@"><strong class="atcp_exchr">@6@</strong>원 <span class="atcp_exchr_arrow">@10@</span>@8@(@9@%)</span><span class="atcp_exchr_pr">@7@</span></a></p></script>
<script type="text/template" id="_atcp_answer_11"><p class="atcp_crt atcp_crt_sm" onclick="oAutoComplete.selectAnswer(event, 11, true, '@1@', '@2@');"><a href="javascript:;" class="atcp_crt_a">@14@<span class="atcp_weat">@7@ <strong class="atcp_weat_@12@">@8@<span class="atcp_weat_cels">&deg;c</span></strong> <span class="atcp_weat_bar">ㅣ</span> <span class="atcp_weat_fall">@9@ <strong class="atcp_weat_down_fall">@10@</strong>@11@</span></span> <span class="atcp_weat_pr">@5@</span></a></p></script>
<script type="text/template" id="_atcp_answer_15"><p class="atcp_crt atcp_quick" onclick="oAutoComplete.selectAnswer(event, 15, true, '@1@', '@2@');"><a href="javascript:;" class="imsc_bf atcp_crt_a" data-kin_param="@6@"><span class="quick">&lsquo;@1@&rsquo;</span><span class="atcp_crt_t">지식iN @5@ 답변 보기</span></a></p></script>
<script type="text/template" id="_atcp_answer_16"> <li class="u_atcp_l u_atcp_rcmmd" data-rank="@rank@" data-query="@query@"><a href="javascript:;" class="u_atcp_a" onclick="oAutoComplete.selectAnswer(event, 16, true, '@1@', '@2@');"><div class="u_atcp_ap"><mark class="u_atcp_mk">@txt@</mark> @intend@</div></a><button type="button" class="u_atcp_add" onclick="oAutoComplete.extendKeyword(event);"><span class="u_atcp_addb"><span class="u_vc">추가</span></span></button></li></script>
<script type="text/template" id="_atcp_answer_17"><p class="atcp_crt atcp_url" onclick="oAutoComplete.selectAnswer(event, 17, false, '@1@', '@2@');"><a href="http://_5_" class="imsc_bf atcp_crt_a" onclick="nclk(this, 'sug.ansdirect', '', '')"><span class="url">@5@</span><span class="atcp_crt_t">사이트로 바로 이동</span></a></p></script>
<script type="text/template" id="_atcp_answer_18"><p class="atcp_crt" onclick="oAutoComplete.selectAnswer(event, 18, true, '@5@', '@2@');"><a href="javascript:;" class="u_atcp_a u_atcp_happy">@5@</a></p></script>
<script type="text/template" id="_atcp_answer_19"><div class="atcp_crt atcp_eatery" onclick="oAutoComplete.selectAnswer(event, 19, true, '@1@', '@2@');"><a href="javascript:;" class="txt name">@5@</a><a href="javascript:;" class="txt addr">@6@</a><div class="btn_area"><a href="tel:@7@" class="btn tel _btn_tel" onclick="nclk(this, 'sug.acall', '', '')"><span class="imsc"></span>@7@</a><a href="http://m.map.naver.com/viewer/map.nhn?pinId=@8@" class="btn map _btn_map" onclick="nclk(this, 'sug.amap', '', '')"><span class="imsc"></span>지도</a><button class="naver-splugin btn sns _btn_sns" data-evkey="ac_restaurant" data-service-name="통합검색" onclick="nclk({}, 'sug.ashare', '', '')"><span class="naver-splugin-c imsc">보내기</span></button></div></div></script>
<script type="text/template" id="_atcp_answer_10"><p class="atcp_crt atcp_crt_sm" onclick="oAutoComplete.selectAnswer(event, 10, true, '@1@', '@2@');"><a href="javascript:;" class="atcp_crt_a">@14@<span class="atcp_weat">@7@ <strong class="atcp_weat_@12@">@8@<span class="atcp_weat_cels">&deg;c</span></strong> <span class="atcp_weat_bar">ㅣ</span> <span class="atcp_weat_fall">@9@ <strong class="atcp_weat_down_fall">@10@</strong><span class="atcp_weat_cels">@11@</span></span></span> <span class="atcp_weat_pr">@5@</span></a></p></script>
<div class="atcp_crt_w _atcp_answer_wrap"></div>
<ul title="자동완성" class="u_atcp u_atcp_at _u_atcp">
<li class="u_atcp_l" data-query="@in_txt@" data-rank="@rank@">
<a href="javascript:;" class="u_atcp_a@link_css@@li_class@" onclick="oAutoComplete.select(event);"><div class="u_atcp_ap">@txt@</div></a>
<button type="button" class="u_atcp_add _u_atcp_add" style="display:@ex_btn@" onclick="oAutoComplete.extendKeyword(event);"><span class="u_atcp_addb"><span class="u_vc">추가</span></span></button>
<button type="button" class="u_atcp_quick" style="display:@link_btn@" onclick="oAutoComplete.moveURL(event);">바로이동</button>
</li>
</ul>
<div class="u_atcp_alert" id="nx_ac_alert" style="display:none;">
<p class="imsc_bf dsc_txt">제19대 대통령선거 후보에 대해 5월 9일 선거일까지 자동완성 기능이 제공되지 않습니다. <a href="http://naver_diary.blog.me/220979435037" onclick="nclk(this, &#39;sug.vote&#39;, &#39;&#39;, &#39;&#39;);">자세히보기</a></p>
</div>
<div class="u_atcp_plus is_opened _u_atcp_plus">
<div class="switch">
<input type="checkbox" id="ck_plus1">
<label for="ck_plus1"><span>컨텍스트 자동완성</span></label>
</div>
<div class="layer_plus _layer_plus" style="display:none">
<strong class="tit">컨텍스트 자동완성</strong>
<p class="dsc _off_dsc"><em class="txt">동일한 시간대/연령/남녀별</em> 사용자 그룹의<br>관심사에맞춰 자동완성을 제공합니다.</p>
<p class="dsc _on_dsc" style="display:none">ON/OFF설정은<br>해당 기기(브라우저)에 저장됩니다.</p>
<div class="btn_area">
<a href="https://nid.naver.com/nidlogin.login?svctype=262144" class="btn btn_login _btn_login" onclick="nclk(this, &#39;sug.cxlogin&#39;, &#39;&#39;, &#39;&#39;);">로그인</a>
<a href="https://m.help.naver.com/support/contents/contentsView.nhn?contentsNo=6171&amp;lang=ko" class="btn btn_view" onclick="nclk(this, &#39;sug.cxlink&#39;, &#39;&#39;, &#39;&#39;);">자세히 보기</a>
</div>
<button type="button" class="btn_close _btn_close" onclick="nclk(this, &#39;sug.cxhide&#39;, &#39;&#39;, &#39;&#39;)"><i class="imsc ico_close">컨텍스트 자동완성 레이어 닫기</i></button>
</div>
<div class="dsc_plus">
<a href="https://m.help.naver.com/support/alias/search/word_m/word_m1.naver" class="dsc_area" onclick="nclk(this, &#39;sug.cxhelp&#39;, &#39;&#39;, &#39;&#39;);"><span class="dsc _dsc">시간대와 관심사에 맞춘 <em class="txt">컨텍스트 자동완성</em></span><span class="ico_help"><i class="imsc">도움말</i></span></a>
</div>
</div>
<div class="u_atcp_fc">
<button type="button" id="switch_input" class="u_atcp_fcb">자동완성 끄기</button>
<span class="u_atcp_dv">|</span>
<a href="https://m.help.naver.com/support/alias/search/word_m/word_m2.naver" type="button" class="u_atcp_fcb u_atcp_help" onclick="nclk(this, &#39;sug.help&#39;, &#39;&#39;, &#39;&#39;);">도움말</a>
<span class="u_atcp_dv">|</span>
<a href="https://m.help.naver.com/support/alias/search/word_m/word_m3.naver" class="u_atcp_report" onclick="nclk(this, &#39;sug.report&#39;, &#39;&#39;, &#39;&#39;);">신고</a>
<button id="close_input" type="button" class="u_atcp_fcb u_atcp_x">닫기</button>
</div>
</div>
</div>

<div id="_rs_content" class="u_recognize u_recognize_srch" style="display: none;">
<h3 class="blind">인식검색 리스트</h3>
<div class="rcre_hd">
<p class="rcre_d"><em class="type_sound">소리</em>, <em class="type_text">문자</em>, <em class="type_image">이미지</em>로 검색</p>
<strong class="rcre_ac"><a href="https://m.naver.com/#" class="rcs_hlk" onclick="APP.init();location.href = (naver.main.gVariable.sUaType == &#39;ANDROID&#39;) ? APP._APP_INSTALL_URL_ANDROID : APP._APP_INSTALL_URL_IOS;return false;">네이버앱 설치</a></strong>
</div>
<ul class="lst_reg">
<li class="m2"><a href="https://m.naver.com/#" data-ios-scheme="naversearchapp" data-ios-query="search?qmenu=music&amp;version=1" data-ios-install="393499958" data-android-scheme="naversearchapp" data-ios-universal-fullurl="https://naverapp.m.naver.com/?urlScheme=naversearchapp%3A%2F%2Fsearch%3Fqmenu%3Dmusic%26version%3D1" data-android-query="search?qmenu=music&amp;version=1" data-android-package="com.nhn.android.search" onclick="nclk(this, &#39;rec.music&#39;, &#39;&#39;, &#39;&#39;, 1);nhn.mobile.launchApp(this);return false;"><span class="type_sound imsc_bf"></span>음악</a></li>
<li class="m1"><a href="https://m.naver.com/#" data-ios-scheme="naversearchapp" data-ios-query="search?qmenu=voicerecg&amp;version=1" data-ios-install="393499958" data-android-scheme="naversearchapp" data-ios-universal-fullurl="https://naverapp.m.naver.com/?urlScheme=naversearchapp%3A%2F%2Fsearch%3Fqmenu%3Dvoicerecg%26version%3D1" data-android-query="search?qmenu=voicerecg&amp;version=1" data-android-package="com.nhn.android.search" onclick="nclk(this, &#39;rec.voice&#39;, &#39;&#39;, &#39;&#39;, 1);nhn.mobile.launchApp(this);return false;"><span class="type_sound imsc_bf"></span>음성</a></li>
<li class="m4"><a href="https://m.naver.com/#" data-ios-scheme="naversearchapp" data-ios-query="search?qmenu=hanja&amp;version=2" data-ios-install="393499958" data-android-scheme="naversearchapp" data-ios-universal-fullurl="https://naverapp.m.naver.com/?urlScheme=naversearchapp%3A%2F%2Fsearch%3Fqmenu%3Dhanja%26version%3D2" data-android-query="search?qmenu=hanja&amp;version=2" data-android-package="com.nhn.android.search" onclick="nclk(this, &#39;rec.hanja&#39;, &#39;&#39;, &#39;&#39;, 1);nhn.mobile.launchApp(this);return false;"><span class="type_text imsc_bf"></span>한자</a></li>
<li class="m3"><a href="https://m.naver.com/#" data-ios-scheme="naversearchapp" data-ios-query="search?qmenu=japanese&amp;version=1" data-ios-install="393499958" data-android-scheme="naversearchapp" data-ios-universal-fullurl="https://naverapp.m.naver.com/?urlScheme=naversearchapp%3A%2F%2Fsearch%3Fqmenu%3Djapanese%26version%3D1" data-android-query="search?qmenu=japanese&amp;version=1" data-android-package="com.nhn.android.search" onclick="nclk(this, &#39;rec.jp&#39;, &#39;&#39;, &#39;&#39;, 1);nhn.mobile.launchApp(this);return false;"><span class="type_text imsc_bf"></span>일본어</a></li>
<li class="m5"><a href="https://m.naver.com/#" data-ios-scheme="naversearchapp" data-ios-query="search?qmenu=qrcode&amp;version=1" data-ios-install="393499958" data-android-scheme="naversearchapp" data-ios-universal-fullurl="https://naverapp.m.naver.com/?urlScheme=naversearchapp%3A%2F%2Fsearch%3Fqmenu%3Dqrcode%26version%3D1" data-android-query="search?qmenu=qrcode&amp;version=1" data-android-package="com.nhn.android.search" onclick="nclk(this, &#39;rec.code&#39;, &#39;&#39;, &#39;&#39;, 1);nhn.mobile.launchApp(this);return false;"><span class="type_image imsc_bf"></span>QR·바코드</a></li>
<li class="m6"><a href="https://m.naver.com/#" data-ios-scheme="naversearchapp" data-ios-query="search?qmenu=wine&amp;version=1" data-ios-install="393499958" data-android-scheme="naversearchapp" data-ios-universal-fullurl="https://naverapp.m.naver.com/?urlScheme=naversearchapp%3A%2F%2Fsearch%3Fqmenu%3Dwine%26version%3D1" data-android-query="search?qmenu=wine&amp;version=1" data-android-package="com.nhn.android.search" onclick="nclk(this, &#39;rec.smart&#39;, &#39;&#39;, &#39;&#39;, 1);nhn.mobile.launchApp(this);return false;"><span class="type_image imsc_bf"></span>스마트렌즈<em class="ico_beta imsc">Beta</em></a></li>
</ul>
</div>

</section>
</div>

<div id="rcre" class="rcre" style="display:none;"></div>








</div>


 








<div id="ct">
<div id="mflick" style="height: 3135px;">
<div id="prepend" class="grid_prepend" style="display:none">
<a href="https://m.naver.com/#" class="grid_prepend_a"><span class="spuio spuio_prepend"></span> 새&nbsp;&nbsp;글</a>
</div>
<div class="flick-container">
<div id="_MM_FLICK_FIRST_PANEL" class="flick-panel">
<div class="wrap id_place" data-id="PLACE">








<div class="grid1_wrap brick-house" data-section="PLACE" data-rev="171214042034" data-time="201712140420" data-last="true" data-linenum="26" data-contspos="22">
<div class="brick-vowel">
		<div class="grid1 id_cui_change_notify" style="display: block;" index="0">
			<div class="cui_change_notify">
				<div class="ccn_title_wrap">
					<a href="../naver/high12.html" class="ccn_title_a" data-clk="separationbtnmore">
						<h3 class="ccn_title"><span class="ccn_ico_notice">공지</span> 12월 플레이스가 <strong class="ccn_tst">우리동네</strong>로 변경됩니다.</h3>
					</a>
				</div>
			</div>
		</div>
	<div class="grid1 id_cui_placeweather" data-tags="지역선택" index="3">
	<div class="cui_placeweather" data-seq="752344">
		
<div class="cp_locale_group" data-monitor-weather="20171214090001">
<a href="https://m.naver.com/#" class="cp_btn_more cp_more_on _MM_REGION_MORE">다른지역</a>
<div class="cp_locale_area">
<strong class="locale_name">인천</strong>
<span class="locale_info">
<span class="forecast"><span class="imw imw07">흐림</span></span>
<span class="celsius">-3°</span>
<button type="button" class="btn_locale _MM_MYPLACE_LOCATION_BTN"><span class="blind">내위치</span></button>
</span>
</div>
</div>

			<div id="_MM_REGION_TAB" class="cp_tab_group cp_tab_on">
			<ul class="cp_l">
				<li class="cp_item">
					<a href="https://m.naver.com/#" class="_MM_REGION cp_a" data-code="09" data-area="PLACE" data-gdid="UAT_2123210" data-clk="tabzsu"><span class="name">서울</span></a>
				</li>
				<li class="cp_item">
					<a href="https://m.naver.com/#" class="_MM_REGION cp_a" data-code="02" data-area="PLACE" data-gdid="UAT_2123210" data-clk="tabzgg"><span class="name">경기</span></a>
				</li>
				<li class="cp_item">
					<a href="https://m.naver.com/#" class="_MM_REGION cp_a" data-code="01" data-area="PLACE" data-gdid="UAT_2123210" data-clk="tabzgw"><span class="name">강원</span></a>
				</li>
				<li class="cp_item">
					<a href="https://m.naver.com/#" class="_MM_REGION cp_a" data-code="14" data-area="PLACE" data-gdid="UAT_2123210" data-clk="tabzjj"><span class="name">제주</span></a>
				</li>
				<li class="cp_item">
					<a href="https://m.naver.com/#" class="_MM_REGION cp_a cp_aon" data-code="11" data-area="PLACE" data-gdid="UAT_2123210" data-clk="tabzic"><span class="name">인천</span></a>
				</li>
				<li class="cp_item">
					<a href="https://m.naver.com/#" class="_MM_REGION cp_a" data-code="08" data-area="PLACE" data-gdid="UAT_2123210" data-clk="tabzbs"><span class="name">부산</span></a>
				</li>
				<li class="cp_item">
					<a href="https://m.naver.com/#" class="_MM_REGION cp_a" data-code="07" data-area="PLACE" data-gdid="UAT_2123210" data-clk="tabzcd"><span class="name">대전·세종·충남</span></a>
				</li>
				<li class="cp_item">
					<a href="https://m.naver.com/#" class="_MM_REGION cp_a" data-code="16" data-area="PLACE" data-gdid="UAT_2123210" data-clk="tabzcp"><span class="name">충북</span></a>
				</li>
			</ul>
			<div class="cp_alarm_area">
			
					<p class="cp_alarm_snippet" id="place_location_desc"><em class="point">다른 지역</em>의 <em class="point">동네소식</em>도 확인해보세요</p>
					
				</div>
		</div>
	</div>
</div>


<div class="grid1 id_rtk _MM_RTK_WEATHER" style="display:none;" index="6">
<div class="grid1_inner">


<div id="rtk" class="rtk" style="display: block;">
<h3 class="rtk_tit">실시간급상승</h3>
<ul class="rtk_u"><li class="rtk_l"><a href="https://m.search.naver.com/search.naver?where=m&amp;sm=mtp_lve&amp;query=%EB%AC%B8%ED%9D%AC%EC%98%A5" class="rtk_a" data-clk="kwd" data-rank="16" onfocus="javascript:naver.main.RTK.stop();" onblur="javascript:naver.main.RTK.start();"> <em class="rtk_n">16</em> <span class="rtk_t">문희옥</span></a></li></ul>
<a href="javascript:naver.main.RTK.expand();" class="rtk_toggle"><span class="sprh_arrow_dwn"><span class="blind">실급검 확장영역 열기</span></span></a>
</div>
<div id="rtkx" class="rtkx" style="display:none">
</div>


</div>
</div>
<div class="grid1 id_wt2_w _MM_RTK_WEATHER" style="display:none;" index="9">
<div class="grid1_inner _MM_WEATHER_BANNER">
<div class="uio_weather" data-monitor-weather="20171214090151">
<div class="uw_locale">
<button type="button" class="uw_btn_local _MM_WEATHER_LOC" data-clk="weatherhere" data-type="TODAY"><span class="blind">현재 위치</span></button>
</div>
<ul class="uw_l _ROLLING">

<li class="uw_item" role="button" style="display: none;">
<div class="uw_forecast">
<div class="uw_fw">
<div class="uw_fic"><span class="imw imw01">맑음</span><span class="uw_fn">-15˚</span></div>
<div class="uw_ft">오늘 오전</div>
</div>
<div class="uw_fw">
<div class="uw_fic"><span class="imw imw05">구름많음</span><span class="uw_fn">0˚</span></div>
<div class="uw_ft">오늘 오후</div>
</div>
</div>
<div class="uw_icon"><span class="imw imw05">구름많음</span></div>
<div class="uw_foretemp">
<div class="uw_ftt">춘천</div>
<span class="uw_deg">-15<span class="blind">도</span></span>
</div>
<a href="https://m.search.naver.com/search.naver?query=%EC%B6%98%EC%B2%9C%EC%8B%9C%20%EA%B0%95%EB%82%A8%EB%8F%99%20%EB%82%A0%EC%94%A8&amp;where=m&amp;sm=mtp_clk.weather" class="uw_a" data-clk="weather" data-type="TODAY"><span class="blind">네이버 날씨 검색결과 바로가기</span></a>
</li>
<li class="uw_item" style="display: none;" role="button">
<div class="uw_forecast">
<div class="uw_fw">
<div class="uw_fic"><span class="imw imw01">맑음</span><span class="uw_fn">-4˚</span></div>
<div class="uw_ft">오늘 오전</div>
</div>
<div class="uw_fw">
<div class="uw_fic"><span class="imw imw05">구름많음</span><span class="uw_fn">6˚</span></div>
<div class="uw_ft">오늘 오후</div>
</div>
</div>
<div class="uw_icon"><span class="imw imw03">구름조금</span></div>
<div class="uw_foretemp">
<div class="uw_ftt">강릉</div>
<span class="uw_deg">-2<span class="blind">도</span></span>
</div>
<a href="https://m.search.naver.com/search.naver?query=%EA%B0%95%EB%A6%89%EC%8B%9C%20%EA%B0%95%EB%82%A8%EB%8F%99%20%EB%82%A0%EC%94%A8&amp;where=m&amp;sm=mtp_clk.weather" class="uw_a" data-clk="weather" data-type="TODAY"><span class="blind">네이버 날씨 검색결과 바로가기</span></a>
</li>
<li class="uw_item" style="display: none;" role="button">
<div class="uw_forecast">
<div class="uw_fw">
<div class="uw_fic"><span class="imw imw23">흐리고 가끔 눈</span><span class="uw_fn">0˚</span></div>
<div class="uw_ft">오늘 오전</div>
</div>
<div class="uw_fw">
<div class="uw_fic"><span class="imw imw07">흐림</span><span class="uw_fn">3˚</span></div>
<div class="uw_ft">오늘 오후</div>
</div>
</div>
<div class="uw_icon"><span class="imw imw07">흐림</span></div>
<div class="uw_foretemp">
<div class="uw_ftt">울릉/독도</div>
<span class="uw_deg">3<span class="blind">도</span></span>
</div>
<a href="https://m.search.naver.com/search.naver?query=%EC%9A%B8%EB%A6%89%EA%B5%B0%20%EB%B6%81%EB%A9%B4%20%EB%82%A0%EC%94%A8&amp;where=m&amp;sm=mtp_clk.weather" class="uw_a" data-clk="weather" data-type="TODAY"><span class="blind">네이버 날씨 검색결과 바로가기</span></a>
</li>
<li class="uw_item" style="display: list-item;" role="button">
<div class="uw_forecast">
<div class="uw_fw">
<div class="uw_fic"><span class="imw imw03">구름조금</span><span class="uw_fn">-4˚</span></div>
<div class="uw_ft">오늘 오전</div>
</div>
<div class="uw_fw">
<div class="uw_fic"><span class="imw imw03">구름조금</span><span class="uw_fn">6˚</span></div>
<div class="uw_ft">오늘 오후</div>
</div>
</div>
<div class="uw_icon"><span class="imw imw05">구름많음</span></div>
<div class="uw_foretemp">
<div class="uw_ftt">광주</div>
<span class="uw_deg">-6<span class="blind">도</span></span>
</div>
<a href="https://m.search.naver.com/search.naver?query=%EB%8F%99%EA%B5%AC%20%EB%8C%80%EC%9D%B8%EB%8F%99%20%EB%82%A0%EC%94%A8&amp;where=m&amp;sm=mtp_clk.weather" class="uw_a" data-clk="weather" data-type="TODAY"><span class="blind">네이버 날씨 검색결과 바로가기</span></a>
</li>
<li class="uw_item" style="display: none;" role="button">
<div class="uw_forecast">
<div class="uw_fw">
<div class="uw_fic"><span class="imw imw01">맑음</span><span class="uw_fn">-9˚</span></div>
<div class="uw_ft">오늘 오전</div>
</div>
<div class="uw_fw">
<div class="uw_fic"><span class="imw imw03">구름조금</span><span class="uw_fn">5˚</span></div>
<div class="uw_ft">오늘 오후</div>
</div>
</div>
<div class="uw_icon"><span class="imw imw01">맑음</span></div>
<div class="uw_foretemp">
<div class="uw_ftt">대구</div>
<span class="uw_deg">-8<span class="blind">도</span></span>
</div>
<a href="https://m.search.naver.com/search.naver?query=%EC%A4%91%EA%B5%AC%20%EB%8F%99%EC%9D%B8%EB%8F%991%EA%B0%80%20%EB%82%A0%EC%94%A8&amp;where=m&amp;sm=mtp_clk.weather" class="uw_a" data-clk="weather" data-type="TODAY"><span class="blind">네이버 날씨 검색결과 바로가기</span></a>
</li>
<li class="uw_item" style="display: none;" role="button">
<div class="uw_forecast">
<div class="uw_fw">
<div class="uw_fic"><span class="imw imw03">구름조금</span><span class="uw_fn">-9˚</span></div>
<div class="uw_ft">오늘 오전</div>
</div>
<div class="uw_fw">
<div class="uw_fic"><span class="imw imw03">구름조금</span><span class="uw_fn">2˚</span></div>
<div class="uw_ft">오늘 오후</div>
</div>
</div>
<div class="uw_icon"><span class="imw imw03">구름조금</span></div>
<div class="uw_foretemp">
<div class="uw_ftt">대전</div>
<span class="uw_deg">-9<span class="blind">도</span></span>
</div>
<a href="https://m.search.naver.com/search.naver?query=%EB%8F%99%EA%B5%AC%20%EC%9B%90%EB%8F%99%20%EB%82%A0%EC%94%A8&amp;where=m&amp;sm=mtp_clk.weather" class="uw_a" data-clk="weather" data-type="TODAY"><span class="blind">네이버 날씨 검색결과 바로가기</span></a>
</li>
<li class="uw_item" style="display: none;" role="button">
<div class="uw_forecast">
<div class="uw_fw">
<div class="uw_fic"><span class="imw imw01">맑음</span><span class="uw_fn">-2˚</span></div>
<div class="uw_ft">오늘 오전</div>
</div>
<div class="uw_fw">
<div class="uw_fic"><span class="imw imw03">구름조금</span><span class="uw_fn">9˚</span></div>
<div class="uw_ft">오늘 오후</div>
</div>
</div>
<div class="uw_icon"><span class="imw imw01">맑음</span></div>
<div class="uw_foretemp">
<div class="uw_ftt">부산</div>
<span class="uw_deg">-1<span class="blind">도</span></span>
</div>
<a href="https://m.search.naver.com/search.naver?query=%EC%A4%91%EA%B5%AC%20%EB%82%A8%ED%8F%AC%EB%8F%99%20%EB%82%A0%EC%94%A8&amp;where=m&amp;sm=mtp_clk.weather" class="uw_a" data-clk="weather" data-type="TODAY"><span class="blind">네이버 날씨 검색결과 바로가기</span></a>
</li>
<li class="uw_item" style="display: none;" role="button">
<div class="uw_forecast">
<div class="uw_fw">
<div class="uw_fic"><span class="imw imw03">구름조금</span><span class="uw_fn">-9˚</span></div>
<div class="uw_ft">오늘 오전</div>
</div>
<div class="uw_fw">
<div class="uw_fic"><span class="imw imw05">구름많음</span><span class="uw_fn">1˚</span></div>
<div class="uw_ft">오늘 오후</div>
</div>
</div>
<div class="uw_icon"><span class="imw imw05">구름많음</span></div>
<div class="uw_foretemp">
<div class="uw_ftt">서울</div>
<span class="uw_deg">-10<span class="blind">도</span></span>
</div>
<a href="https://m.search.naver.com/search.naver?query=%EC%A4%91%EA%B5%AC%20%EC%9D%84%EC%A7%80%EB%A1%9C1%EA%B0%80%20%EB%82%A0%EC%94%A8&amp;where=m&amp;sm=mtp_clk.weather" class="uw_a" data-clk="weather" data-type="TODAY"><span class="blind">네이버 날씨 검색결과 바로가기</span></a>
</li>
<li class="uw_item" style="display: none;" role="button">
<div class="uw_forecast">
<div class="uw_fw">
<div class="uw_fic"><span class="imw imw03">구름조금</span><span class="uw_fn">-2˚</span></div>
<div class="uw_ft">오늘 오전</div>
</div>
<div class="uw_fw">
<div class="uw_fic"><span class="imw imw05">구름많음</span><span class="uw_fn">1˚</span></div>
<div class="uw_ft">오늘 오후</div>
</div>
</div>
<div class="uw_icon"><span class="imw imw07">흐림</span></div>
<div class="uw_foretemp">
<div class="uw_ftt">백령</div>
<span class="uw_deg">-3<span class="blind">도</span></span>
</div>
<a href="https://m.search.naver.com/search.naver?query=%EC%98%B9%EC%A7%84%EA%B5%B0%20%EB%B0%B1%EB%A0%B9%EB%A9%B4%20%EB%82%A0%EC%94%A8&amp;where=m&amp;sm=mtp_clk.weather" class="uw_a" data-clk="weather" data-type="TODAY"><span class="blind">네이버 날씨 검색결과 바로가기</span></a>
</li>
<li class="uw_item" style="display: none;" role="button">
<div class="uw_forecast">
<div class="uw_fw">
<div class="uw_fic"><span class="imw imw03">구름조금</span><span class="uw_fn">-8˚</span></div>
<div class="uw_ft">오늘 오전</div>
</div>
<div class="uw_fw">
<div class="uw_fic"><span class="imw imw03">구름조금</span><span class="uw_fn">3˚</span></div>
<div class="uw_ft">오늘 오후</div>
</div>
</div>
<div class="uw_icon"><span class="imw imw03">구름조금</span></div>
<div class="uw_foretemp">
<div class="uw_ftt">전주</div>
<span class="uw_deg">-7<span class="blind">도</span></span>
</div>
<a href="https://m.search.naver.com/search.naver?query=%EC%A0%84%EC%A3%BC%EC%8B%9C%20%EB%8D%95%EC%A7%84%EA%B5%AC%20%EA%B0%95%ED%9D%A5%EB%8F%99%20%EB%82%A0%EC%94%A8&amp;where=m&amp;sm=mtp_clk.weather" class="uw_a" data-clk="weather" data-type="TODAY"><span class="blind">네이버 날씨 검색결과 바로가기</span></a>
</li>
<li class="uw_item" style="display: none;" role="button">
<div class="uw_forecast">
<div class="uw_fw">
<div class="uw_fic"><span class="imw imw03">구름조금</span><span class="uw_fn">3˚</span></div>
<div class="uw_ft">오늘 오전</div>
</div>
<div class="uw_fw">
<div class="uw_fic"><span class="imw imw05">구름많음</span><span class="uw_fn">9˚</span></div>
<div class="uw_ft">오늘 오후</div>
</div>
</div>
<div class="uw_icon"><span class="imw imw05">구름많음</span></div>
<div class="uw_foretemp">
<div class="uw_ftt">제주</div>
<span class="uw_deg">7<span class="blind">도</span></span>
</div>
<a href="https://m.search.naver.com/search.naver?query=%EC%84%9C%EA%B7%80%ED%8F%AC%EC%8B%9C%20%EA%B0%95%EC%A0%95%EB%8F%99%20%EB%82%A0%EC%94%A8&amp;where=m&amp;sm=mtp_clk.weather" class="uw_a" data-clk="weather" data-type="TODAY"><span class="blind">네이버 날씨 검색결과 바로가기</span></a>
</li>
<li class="uw_item" style="display: none;" role="button">
<div class="uw_forecast">
<div class="uw_fw">
<div class="uw_fic"><span class="imw imw01">맑음</span><span class="uw_fn">-10˚</span></div>
<div class="uw_ft">오늘 오전</div>
</div>
<div class="uw_fw">
<div class="uw_fic"><span class="imw imw03">구름조금</span><span class="uw_fn">1˚</span></div>
<div class="uw_ft">오늘 오후</div>
</div>
</div>
<div class="uw_icon"><span class="imw imw01">맑음</span></div>
<div class="uw_foretemp">
<div class="uw_ftt">청주</div>
<span class="uw_deg">-9<span class="blind">도</span></span>
</div>
<a href="https://m.search.naver.com/search.naver?query=%EC%B2%AD%EC%A3%BC%EC%8B%9C%20%EC%83%81%EB%8B%B9%EA%B5%AC%20%EA%B8%88%EC%B2%9C%EB%8F%99%20%EB%82%A0%EC%94%A8&amp;where=m&amp;sm=mtp_clk.weather" class="uw_a" data-clk="weather" data-type="TODAY"><span class="blind">네이버 날씨 검색결과 바로가기</span></a>
</li>

</ul>
</div>

</div>
</div>

<!--EMPTY-->

<div class="grid1 id_uio_cd_rtkwt _MM_RTK_WEATHER_BANNER" index="12">
<div class="uio_cd_rtkwt">
<p class="ucr_t">
<span class="ucr_st">실시간급상승 검색어</span>와 <span class="ucr_st">날씨</span>를 <br>이 화면에서 보시겠어요?</p>
<a href="https://m.naver.com/#" class="_MM_RTK_WEATHER_YES ucr_a" data-clk="kadd">네, 여기에서 볼래요</a>
<button type="button" class="_MM_RTK_WEATHER_NO ucr_btn_close" data-clk="kaddclose"><span class="blind">안내 닫기</span></button>
</div>
</div>


<div class="grid1 id_cui_twothumbs" data-tags="행사캘린더" index="15">
    <div class="cui_twothumbs" data-seq="755889">
        <div class="ct_title_wrap">
        <h3 class="ct_title"><span class="ct_main">동네 문화 · 행사 · 축제</span><span class="ct_sub">우리 뭐할까?</span></h3>
            </div>
            <ul class="ct_list">
            <li class="ct_item">
                    <a href="../naver/neareventboard.html" class="ct_a" data-area="PLACE" data-clk="card" data-gdid="UAT_2144576" data-ugdid="90000003_00000000000000337E34EA31">
                        <div class="ct_mw lzImg" style="background-color:#48818d;">
                            <img src="./place_home_files/mobile_171532546590c.jpg" width="100%" alt="" class="ct_m fade loaded" data-width="339" data-height="222">
                            <span class="cui_word">전시</span></div>
                        <div class="ct_tw">
                            <span class="ct_t"><span class="cui_em">공존의 혁신 생체모방</span><span class="ct_ts"><br>~12.16</span></span>
                            <div class="ct_o">
                                <span class="ct_on">강화 고인돌체육관</span>
                                </div>
                            </div>
                    </a>
                </li>
                <li class="ct_item">
                    <a href="../naver/neareventboard1.html" class="ct_a" data-area="PLACE" data-clk="card" data-gdid="UAT_2144577" data-ugdid="00055f7ca0_0000AAC677">
                        <div class="ct_mw lzImg" style="background-color:#b2b09c;">
                            <img src="./place_home_files/mobile_171544493593m.jpg" width="100%" alt="" class="ct_m fade loaded" data-width="339" data-height="222">
                            <span class="cui_word">행사</span></div>
                        <div class="ct_tw">
                            <span class="ct_t"><span class="cui_em">아동친화도시 기념식</span><span class="ct_ts"><br>12.22 오후 2시</span></span>
                            <div class="ct_o">
                                <span class="ct_on">서구문화회관 대공연장</span>
                                </div>
                            </div>
                    </a>
                </li>
                <li class="ct_item">
                    <a href="../naver/neareventboard2.html" class="ct_a" data-area="PLACE" data-clk="card" data-gdid="UAT_2144578" data-ugdid="90000003_00000000000000337C999E0C">
                        <div class="ct_mw lzImg" style="background-color:#c7ae91;">
                            <img src="./place_home_files/mobile_155604739693c.jpg" width="100%" alt="" class="ct_m fade loaded" data-width="339" data-height="222">
                            <span class="cui_word">콘서트</span></div>
                        <div class="ct_tw">
                            <span class="ct_t"><span class="cui_em">라온 북콘서트</span><span class="ct_ts"><br>~12.20 격주 수요일</span></span>
                            <div class="ct_o">
                                <span class="ct_on">남구 café 라온</span>
                                </div>
                            </div>
                    </a>
                </li>
                <li class="ct_item">
                    <a href="../naver/neareventboard3.html" class="ct_a" data-area="PLACE" data-clk="card" data-gdid="UAT_2144579" data-ugdid="90000003_00000000000000337E078252">
                        <div class="ct_mw lzImg" style="background-color:#a2906c;">
                            <img src="./place_home_files/mobile_164741714464c.jpg" width="100%" alt="" class="ct_m fade loaded" data-width="339" data-height="222">
                            <span class="cui_word">공연</span></div>
                        <div class="ct_tw">
                            <span class="ct_t"><span class="cui_em">&lt;호두까기 인형&gt;</span><span class="ct_ts"><br>12.15~16</span></span>
                            <div class="ct_o">
                                <span class="ct_on">중구문화회관</span>
                                </div>
                            </div>
                    </a>
                </li>
                </ul>
        </div>
</div>
<div class="grid1 id_uio_cd_txtlink" data-tags="동네강좌배너" index="18">
	<div class="uio_cd_txtlink" data-seq="750992">
		<div class="uct_tw">
			<a href="../naver/neareventbottom.html" class="uct_a" data-area="PLACE" data-clk="card" data-gdid="UAT_2116396">
				<div class="uct_t">' 캔들, 플라워, 드로잉, 베이킹 등 재미있는 클래스들 '</div>
				<div class="uct_s">동네 강좌를 소개해주세요<span class="spuio spuio_uct_arr"></span></div>
			</a>
		</div>
	</div>
</div><div class="grid1 id_uio_cd_txtlink" data-tags="동네그림배너" index="21">
	<div class="uio_cd_txtlink" data-seq="751037">
		<div class="uct_tw">
			<a href="../naver/neareventbottom21.html" class="uct_a" data-area="PLACE" data-clk="card" data-gdid="UAT_2116461">
				<div class="uct_t">' 날이 좋아서.. 날이 좋지 않아서.. 날이 적당해서.. '</div>
				<div class="uct_s">재미있는 어반스케치 해보세요<span class="spuio spuio_uct_arr"></span></div>
			</a>
		</div>
	</div>
</div><div class="grid1 id_cui_hotplace" data-seq="755257" data-tags="신규가게" index="24">
	<div class="cui_hotplace">
		<div class="ch_title_wrap">
			<h3 class="ch_title">
					<span class="ch_main">동네 새로 생긴 곳</span><span class="ch_sub">여기 다녀왔어요</span>
				</h3>
			</div>		
		<div class="ch_list_wrap">
			<ul class="ch_l">
				<li class="ch_item">
					<a href="../naver/newvillage.html" class="ch_la" data-area="PLACE" data-gdid="UAT_2141231" data-ugdid="90000003_00000000000000337B789AB0" data-clk="areacdcont">
						<div class="ch_lmw">
							<div class="ch_mw lzImg">
										<img height="100%" width="100%" alt="" class="ch_m fade loaded change" src="./place_home_files/mobile_10503591913c.jpg">
									</div>
									<div class="ch_mw lzImg">
										<img height="100%" width="100%" alt="" class="ch_m fade loaded change" src="./place_home_files/mobile_105052533180c.jpg">
									</div>
									<div class="ch_mw lzImg">
										<img height="100%" width="100%" alt="" class="ch_m fade loaded change" src="./place_home_files/mobile_105059469497c.jpg">
									</div>
								</div>
						<div class="ch_tw">
							<div class="ch_t">
								<span class="ch_ts">계란 초밥이 맛있어서 믿음이 가는 청라 스시집</span>
							</div>
							<div class="ch_o">
								<span class="ch_on cui_em">본참치&amp;스시</span>
								<span class="ch_on">음식점</span>
							</div>
						</div>
					</a>
				</li>
				<li class="ch_item">
					<a href="../naver/newvillage1.html" class="ch_la" data-area="PLACE" data-gdid="UAT_2141232" data-ugdid="90000003_00000000000000337D8DEBF1" data-clk="areacdcont">
						<div class="ch_lmw">
							<div class="ch_mw lzImg">
										<img height="100%" width="100%" alt="" class="ch_m fade loaded change" src="./place_home_files/mobile_105108135628m.jpg">
									</div>
									<div class="ch_mw lzImg">
										<img height="100%" width="100%" alt="" class="ch_m fade loaded change" src="./place_home_files/mobile_105117433496c.jpg">
									</div>
								</div>
						<div class="ch_tw">
							<div class="ch_t">
								<span class="ch_ts">무인 스터디 카페를 찾는다면 딱인 인하대 카페</span>
							</div>
							<div class="ch_o">
								<span class="ch_on cui_em">커피서관</span>
								<span class="ch_on">카페</span>
							</div>
						</div>
					</a>
				</li>
				</ul>
		</div>
	</div>
</div><div class="grid1 id_cui_bundle" data-tags="책방모음" index="26"><div class="cui_bundle" data-seq="755924">
        <div class="cb_title_wrap">
            <a href="http://m.blog.naver.com/nv_place/221024842846" class="cb_title_a" data-area="PLACE" data-clk="cardmore">
                        <h3 class="cb_title"><span class="cb_main">동네 책방 소식 모음</span><span class="cb_sub">동네에서 만나는 책, 커피, 작가, 모임</span></h3>
                    </a>
                </div>
        <div class="cb_list_wrap">
            <ul class="cb_list">
                <li class="cb_litem">
                        <a href="../naver/villagebooks.html" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2144655" data-ugdid="90000003_00000000000000337E04E8C9">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#ae9f8c;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_155605779679.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 '말앤북스'</span><span class="cb_ts"><br> 컨셉진 신간 52호가 도착했어요</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                <li class="cb_litem">
                        <a href="../naver/villagebooks1.html	" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2144656" data-ugdid="90000003_00000000000000337DD3065A">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#ae907e;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_151358156383.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">전동 '홍예서림'</span><span class="cb_ts"><br>홍예문 근처에 위치한 동네책방</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                </ul>
            </div>
        </div>
</div><div class="grid1 id_cui_triplethumbs" data-tags="동네사진모음" index="27">
    <div class="cui_triplethumbs" data-seq="756432">
        <div class="ct_title_wrap">
            <h3 class="ct_title"><span class="ct_sub">동네 한바퀴 #3</span></h3>
            </div>
        <ul class="ct_list">
            <li class="ct_item">
                <a href="../naver/villageone.html" class="ct_a" data-area="PLACE" data-clk="card" data-gdid="UAT_2147895" data-ugdid="">
                    <div class="ct_mw lzImg" style="background-color:#98aeaf;">
                        <img width="100%" alt="" class="ct_m fade loaded change" data-width="222" data-height="222" src="./place_home_files/cropImg_222x222_113602148964683123.jpeg">
                        </div>
                    <div class="ct_tw">
                        <span class="ct_t"><span class="ct_ts">미추홀공원, 호수, 전통탈</span></span>
                        </div>
                </a>
            </li>
            <li class="ct_item">
                <a href="../naver/villagetwo.html" class="ct_a" data-area="PLACE" data-clk="card" data-gdid="UAT_2147897" data-ugdid="">
                    <div class="ct_mw lzImg" style="background-color:#b7ac71;">
                        <img width="100%" alt="" class="ct_m fade loaded change" data-width="222" data-height="222" src="./place_home_files/cropImg_222x222_113602166979011068.jpeg">
                        </div>
                    <div class="ct_tw">
                        <span class="ct_t"><span class="ct_ts">여행, 인천, 벽화</span></span>
                        </div>
                </a>
            </li>
            <li class="ct_item">
                <a href="../naver/villagethree.html" class="ct_a" data-area="PLACE" data-clk="card" data-gdid="UAT_2147899" data-ugdid="">
                    <div class="ct_mw lzImg" style="background-color:#d2c6b7;">
                        <img width="100%" alt="" class="ct_m fade loaded change" data-width="222" data-height="222" src="./place_home_files/cropImg_222x222_113602186302822966.jpeg">
                        </div>
                    <div class="ct_tw">
                        <span class="ct_t"><span class="ct_ts">소래습지, 드론, 출사</span></span>
                        </div>
                </a>
            </li>
            </ul>
    </div>
</div>
	</div>
<div class="brick-vowel">
		<div class="grid1 id_cui_twothumbs" data-tags="새소식이미지" index="1">
    <div class="cui_twothumbs" data-seq="755769">
        <div class="ct_title_wrap">
        <h3 class="ct_title"><span class="ct_main">동네 새소식</span><span class="ct_sub">인천은 지금?</span></h3>
            </div>
            <ul class="ct_list">
            
<%for(int i=1; i<5; i++){  
		pbean = pmgr.getMember(i);
		String lname = pbean.getLname();
		String sliderimg = pbean.getSliderimg();
%>
	            <li class="ct_item">
                    <a href="../naver/village.jsp?index=<%=i %>" class="ct_a" data-area="PLACE" data-clk="card" data-gdid="UAT_2144111" data-ugdid="90000003_00000000000000337DF958F1">
                        <div class="ct_mw lzImg" style="background-color:#f4eee4;">
                            <img src="<%=sliderimg%>" width="100%" alt="" class="ct_m fade loaded" data-width="339" data-height="222">
                            </div>
                        <div class="ct_tw">
                            <span class="ct_t"><span class="ct_ts"><%=lname%></span></span>
                            </div>
                    </a>
                </li>
<%} %>
                </ul>
        </div>
</div>
<div class="grid1 id_uio_cd_txtlink" index="4">
	<div class="uio_cd_txtlink" data-seq="752673">
		<div class="uct_tw">
			<a href="../naver/bottom_place_open.html" class="uct_a" data-area="PLACE" data-clk="card" data-gdid="UAT_2129539">
				<div class="uct_t"><b>' 플레이스 충북 오픈 ! '</b></div>
				<div class="uct_s">다양한 동네의 소식들을 매일 빠르게 확인하세요~<span class="spuio spuio_uct_arr"></span></div>
			</a>
		</div>
	</div>
</div><div class="grid1 id_uio_cd_premento" data-tags="동네지도" index="7">
		<div class="uio_cd_premento" data-seq="750946">
			<div class="ucp_tit_wrap _MM_TOGGLE_WRAP">
				<a href="../naver/villagemap.html" class="ucp_top_a" data-clk="card" data-gdid="UAT_2116268" data-ugdid="">
					<div class="ucp_tmw lzImg"><img src="./place_home_files/mobile_165639689523.PNG" alt="" width="36" height="36" data-fixedsize="true" class="ucp_tm fade loaded"></div>
					<h3 class="ucp_tit"><span class="ucp_ptag sub_cate">동네 지도</span>동네의  문화 · 행사 · 축제 소식들</h3>
				</a>
				</div>
			<div class="ucp_post">
				<a href="../naver/villagemap.html" class="ucp_a" data-clk="card" data-gdid="UAT_2116268" data-ugdid="">
					<div class="ucp_mw lzImg" style="background-color:#fff7de;"><img src="./place_home_files/mobile_065838781221.jpg" alt="" width="100%" class="ucp_m fade loaded"></div>
					<div class="ucp_tw">
						<div class="ucp_flex">
							<div class="ucp_t"><b>'인천의 문화 · 행사 · 축제'</b></div>
							<div class="ucp_s">동네 곳곳에서 진행되는 축제,전시,공연,음악회,마켓,강연,영화 상영</div>
						</div>
					</div>
				</a>
			</div>
		</div>
	</div>
		
	<div class="grid1 id_uio_cd_premento" data-tags="동네지도" index="10">
		<div class="uio_cd_premento" data-seq="751014">
			<div class="ucp_tit_wrap _MM_TOGGLE_WRAP">
				<a href="../naver/villagemap1.html" class="ucp_top_a" data-clk="card" data-gdid="UAT_2116429" data-ugdid="">
					<div class="ucp_tmw lzImg"><img src="./place_home_files/mobile_165639689523.PNG" alt="" width="36" height="36" data-fixedsize="true" class="ucp_tm fade loaded"></div>
					<h3 class="ucp_tit"><span class="ucp_ptag sub_cate">동네 지도</span>동네 작은 공방들 모여요</h3>
				</a>
				</div>
			<div class="ucp_post">
				<a href="../naver/villagemap1.html" class="ucp_a" data-clk="card" data-gdid="UAT_2116429" data-ugdid="">
					<div class="ucp_mw lzImg" style="background-color:#fffff0;"><img src="./place_home_files/mobile_070012204411.jpg" alt="" width="100%" class="ucp_m fade loaded"></div>
					<div class="ucp_tw">
						<div class="ucp_flex">
							<div class="ucp_t"><b>'인천의 동네 공방'</b></div>
							<div class="ucp_s">캔들, 플라워, 드로잉, 베이킹 등 재미있는 클래스 함께 배워요</div>
						</div>
					</div>
				</a>
			</div>
		</div>
	</div>
		
	<div class="grid1 id_cui_subscribeplace" data-tags="동네피드" index="13">
        <div class="cui_subscribeplace" data-seq="752138">
            <div class="cs_title_wrap">
                <h3 class="cs_title">
                    <span class="cs_main">동네소식</span>
                </h3>
                <a href="../naver/wevillage.html" class="cs_right_a" data-clk="set">우리동네 설정</a>
            </div>
            <div class="cs_list_wrap">
                        <div class="cs_list_title _MM_MYPLACE" data-servicecode="blog" data-type="Neighbor" data-id="ifacpr" data-office="인천문화재단" data-service="블로그">
                                    <a href="../naver/villageblog.html" class="cs_lta cs_has_btn _MM_MYPLACE_LINK" data-clk="editor">
                                        <span class="cs_ltmw lzImg" style="background-color:#f8f8f8;">
                                            <img width="36" height="36" alt="" class="cs_ltm fade loaded change" data-fixedsize="true" src="./place_home_files/saved_resource">
                                        </span>
                                        <span class="cs_lttw">
                                            <span class="cs_ltt">인천문화재단</span>
                                            <span class="cs_lto">
                                                <span class="cs_lton">블로그</span>
                                                <span class="cs_lton">(재)인천문화재단의 공식 블로그입니다.</span>
                                            </span>
                                        </span>
                                    </a>
                                    <button type="button" class="cs_btn_subscribe _MM_MYPLACE_SUBSCRIBE_BTN" data-clk="on">구독</button>
                                </div>
                                <ul class="cs_l">
                            <li class="cs_item">
                                <a href="../naver/village4_bottom1.html" class="cs_a" data-clk="cont">
                                    <div class="cs_mw lzImg" style="background-color:#f8f8f8;">
                                            <img width="90" height="90" alt="" class="cs_m fade loaded change" data-fixedsize="true" src="./place_home_files/saved_resource(1)">
                                        </div>
                                    <div class="cs_tw">
                                        <span class="cs_t"> 인천뮤지엄파크 건립추진을 위한 아젠다발굴 세미나</span>
                                        <span class="cs_d"></span>
                                <span class="cs_div">
                                    <span class="cs_sn">2일 전</span>
                                </span>
                                    </div>
                                </a>
                            </li>
                            <li class="cs_item">
                                <a href="../naver/village4_bottom2.html" class="cs_a" data-clk="cont">
                                    <div class="cs_mw lzImg" style="background-color:#f8f8f8;">
                                            <img width="90" height="90" alt="" class="cs_m fade loaded change" data-fixedsize="true" src="./place_home_files/saved_resource(2)">
                                        </div>
                                    <div class="cs_tw">
                                        <span class="cs_t"> [소식]2018 공연예술 연습공간 대관안내</span>
                                        <span class="cs_d"></span>
                                <span class="cs_div">
                                    <span class="cs_sn">5일 전</span>
                                </span>
                                    </div>
                                </a>
                            </li>
                            </ul>
                            <div class="cs_list_title _MM_MYPLACE" data-servicecode="blog" data-type="Neighbor" data-id="arex_blog" data-office="공항철도" data-service="블로그">
                                    <a href="../naver/airport.html" class="cs_lta cs_has_btn _MM_MYPLACE_LINK" data-clk="editor">
                                        <span class="cs_ltmw lzImg" style="background-color:#f8f8f8;">
                                            <img width="36" height="36" alt="" class="cs_ltm fade loaded change" data-fixedsize="true" src="./place_home_files/saved_resource(3)">
                                        </span>
                                        <span class="cs_lttw">
                                            <span class="cs_ltt">공항철도</span>
                                            <span class="cs_lto">
                                                <span class="cs_lton">블로그</span>
                                                <span class="cs_lton">공항철도</span>
                                            </span>
                                        </span>
                                    </a>
                                    <button type="button" class="cs_btn_subscribe _MM_MYPLACE_SUBSCRIBE_BTN" data-clk="on">구독</button>
                                </div>
                                <ul class="cs_l">
                            <li class="cs_item">
                                <a href="../naver/airport_blog.html" class="cs_a" data-clk="cont">
                                    <div class="cs_mw lzImg" style="background-color:#f8f8f8;">
                                            <img width="90" height="90" alt="" class="cs_m fade loaded change" data-fixedsize="true" src="./place_home_files/saved_resource(4)">
                                        </div>
                                    <div class="cs_tw">
                                        <span class="cs_t"> [모두의 공항철도] 5화♥낙조 열차, 해맞이 열차편 _가족/연인/친구/혼자의 공항철도</span>
                                        <span class="cs_d">공항철도는 매년 연말, 연시에 낙조 열차(해넘이 열차)와 해맞이 열차를 운영하고 있습니다. 가족, 연인, 친구 등 사랑하는 사람들과 함께 또는 혼자서 의미 있는 추억을 만들어 보세요! 아름다운 인천 바다의 해넘이, 해돋이를 감상하러 가는 가장 빠른 길, 공항철도가 함께합니다.</span>
                                <span class="cs_div">
                                    <span class="cs_sn">12시간 전</span>
                                </span>
                                    </div>
                                </a>
                            </li>
                            <li class="cs_item">
                                <a href="../naver/airport_blog1.html" class="cs_a" data-clk="cont">
                                    <div class="cs_mw lzImg" style="background-color:#f8f8f8;">
                                            <img width="90" height="90" alt="" class="cs_m fade loaded change" data-fixedsize="true" src="./place_home_files/saved_resource(5)">
                                        </div>
                                    <div class="cs_tw">
                                        <span class="cs_t"> 공항철도 타고 가는 2017 크리스마스 축제</span>
                                        <span class="cs_d">길거리를 걷다보면 들려오는 크리스마스 캐롤에 마음이 두근거린다. 곧 다가오는 크리스마스를 어떻게 하면 멋지게 보낼 수 있을까? 어딜가나 사람이 많은 크리스마스에는 대중교통 이용이 답이다 ! 공항철도를 타고 갈 수 있는 2017 크리스마스 축제를 소개한다. 1. 롯데월드 크리스마스 미라클 2017꿈과 희망이 가득한 놀이동산 롯데월드 어드벤처가 오는 11월 1</span>
                                <span class="cs_div">
                                    <span class="cs_sn">18시간 전</span>
                                </span>
                                    </div>
                                </a>
                            </li>
                            </ul>
                            </div>
                </div>
    </div>
<div class="grid1 id_cui_triplethumbs" data-tags="동네사진모음" index="19">
    <div class="cui_triplethumbs" data-seq="756430">
        <div class="ct_title_wrap">
            <h3 class="ct_title"><span class="ct_main">목요일 풍경 모음</span><span class="ct_sub">동네 한바퀴 #1</span></h3>
            </div>
        <ul class="ct_list">
            <li class="ct_item">
                <a href="../naver/view_blog.html" class="ct_a" data-area="PLACE" data-clk="card" data-gdid="UAT_2147812" data-ugdid="">
                    <div class="ct_mw lzImg" style="background-color:#ff8930;">
                        <img width="100%" alt="" class="ct_m fade loaded change" data-width="222" data-height="222" src="./place_home_files/cropImg_222x222_113602029303467007.jpeg">
                        </div>
                    <div class="ct_tw">
                        <span class="ct_t"><span class="ct_ts">부평, 메롱, 맛있다</span></span>
                        </div>
                </a>
            </li>
            <li class="ct_item">
                <a href="../naver/view_blog1.html" class="ct_a" data-area="PLACE" data-clk="card" data-gdid="UAT_2147814" data-ugdid="">
                    <div class="ct_mw lzImg" style="background-color:#be8b67;">
                        <img width="100%" alt="" class="ct_m fade loaded change" data-width="222" data-height="222" src="./place_home_files/cropImg_222x222_113602051226420673.jpeg">
                        </div>
                    <div class="ct_tw">
                        <span class="ct_t"><span class="ct_ts">수제버거, 평리단길, 즐거움</span></span>
                        </div>
                </a>
            </li>
            <li class="ct_item">
                <a href="../naver/view_blog2.html" class="ct_a" data-area="PLACE" data-clk="card" data-gdid="UAT_2147815" data-ugdid="">
                    <div class="ct_mw lzImg" style="background-color:#aeac9f;">
                        <img width="100%" alt="" class="ct_m fade loaded change" data-width="222" data-height="222" src="./place_home_files/cropImg_222x222_113602071995150432.jpeg">
                        </div>
                    <div class="ct_tw">
                        <span class="ct_t"><span class="ct_ts">송도석산, 드라마, 오랜만</span></span>
                        </div>
                </a>
            </li>
            </ul>
    </div>
</div><div class="grid1 id_uio_cd_txtlink" index="22">
	<div class="uio_cd_txtlink" data-seq="756677">
		<div class="uct_tw">
			<a href="../naver/view_blog_bottom.html" class="uct_a" data-area="PLACE" data-clk="card" data-gdid="UAT_2149342">
				<div class="uct_t"><b>동네 강좌 '모음' 코너 , 안녕 ... ! (12.31)</b></div>
				<div class="uct_s">이제 모음은 ' 동네 강좌 검색 ' 에서 만나요~<span class="spuio spuio_uct_arr"></span></div>
			</a>
		</div>
	</div>
</div>













































<div class="grid1 id_uio_text _MM_CONTENT_HISTORY_BANNER" index="25">
<div class="grid1_inner">
<ul class="uio_text">
<li class="ut_item">
<a href="../naver/content_bottom.html" class="ut_a" data-area="PLACE_11" data-clk="">
<span class="sub_cate">더보기</span> 지난 플레이스  콘텐츠를 모아보세요!
</a>
</li>
</ul>
</div>
</div>

	</div>
<div class="brick-vowel">
		<div class="grid1 id_cui_text" data-tags="새소식텍스트" index="2">
    <div class="cui_text" data-seq="755770">
        <ul class="ct_l">
            <li class="ct_item">
                <a href="../naver/right_menu.html" class="ct_a" data-area="PLACE" data-clk="card" data-gdid="UAT_2144115" data-ugdid="90000003_00000000000000337E2F6895">
                        <span class="cui_em">강화</span>마니산 관광안내소 개소 기념 이벤트(~12.20)</a>
            </li>
            <li class="ct_item">
                <a href="../naver/right_menu1.html" class="ct_a" data-area="PLACE" data-clk="card" data-gdid="UAT_2144116" data-ugdid="90000003_00000000000000337E119CD8">
                        <span class="cui_em">공모전</span>계양산 전통시장 홍보영상 UCC(~18.1.15)</a>
            </li>
            <li class="ct_item">
                <a href="../naver/right_menu2.html" class="ct_a" data-area="PLACE" data-clk="card" data-gdid="UAT_2144117" data-ugdid="90000003_00000000000000337E12E047">
                        <span class="cui_em">남구</span>2018 인천 공연예술 연습 공간 대관 안내</a>
            </li>
            <li class="ct_item">
                <a href="../naver/right_menu3.html" class="ct_a" data-area="PLACE" data-clk="card" data-gdid="UAT_2144118" data-ugdid="00055f7ca0_0000A97DA4">
                        <span class="cui_em">인천</span>인천항 제1항로(팔미도~북항) 준설 가시화</a>
            </li>
            </ul>
    </div>
</div>

<div class="grid1 id_cui_twothumbs" data-tags="동네사진" index="5">
    <div class="cui_twothumbs" data-seq="755225">
        <div class="ct_title_wrap">
        <h3 class="ct_title"><span class="ct_main">풍경</span><span class="ct_sub">동네 한바퀴</span></h3>
            </div>
        <ul class="ct_list ct_lyitem">
            <li class="ct_item">
                    <a href="../naver/view_village.html" class="ct_a" data-area="PLACE" data-clk="card" data-gdid="UAT_2141110" data-ugdid="">
                        <div class="ct_mw lzImg" style="background-color:#bba391;">
                            <img src="./place_home_files/mobile_102913200513c.jpg" width="100%" alt="왕산, 감성, 힐링" class="ct_m fade loaded" data-width="339" data-height="339">
                            </div>
                        <div class="ct_tw">
	                            <span class="ct_t"><span class="ct_ts">왕산, 감성, 힐링</span></span>
	                        </div>
                        </a>
                </li>
                <li class="ct_item">
                    <a href="../naver/view_village1.html" class="ct_a" data-area="PLACE" data-clk="card" data-gdid="UAT_2141111" data-ugdid="">
                        <div class="ct_mw lzImg" style="background-color:#746675;">
                            <img src="./place_home_files/mobile_102957926889c.jpg" width="100%" alt="스케이트, 동인천, 트리" class="ct_m fade loaded" data-width="339" data-height="339">
                            </div>
                        <div class="ct_tw">
	                            <span class="ct_t"><span class="ct_ts">스케이트, 동인천, 트리</span></span>
	                        </div>
                        </a>
                </li>
                </ul>
    </div>
</div>

<div class="grid1 id_cui_bundle" data-tags="동네강좌" index="8"><div class="cui_bundle" data-seq="756466">
        <div class="cb_title_wrap">
            <h3 class="cb_title"><span class="cb_main">동네 강좌</span><span class="cb_sub">함께 배워요</span></h3>
                </div>
        <div class="cb_list_wrap">
            <ul class="cb_list">
                <li class="cb_litem">
                        <a href="../naver/village_study.html" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2148388" data-ugdid="90000003_00000000000000337DBD0B10">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#a8a8a0;">
                                    <img src="./place_home_files/mobile_123551444992c.jpg" width="100%" class="ub_m fade loaded" data-width="222" data-height="145">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 마유크림&amp;페이스보습오일</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.1.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                <li class="cb_litem">
                        <a href="../naver/village_study1.html" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2148390" data-ugdid="90000003_00000000000000337E27BB8F">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#b2977d;">
                                    <img src="./place_home_files/mobile_123556434297c.jpg" width="100%" class="ub_m fade loaded" data-width="222" data-height="145">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">송도 에이브릴29</span><span class="cb_ts"><br> 빈티지 틴케이스 캔들 클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.1.10</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                <li class="cb_litem">
                        <a href="../naver/village_study2.html" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2148391" data-ugdid="90000003_00000000000000337E24E2FD">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#c7fce8;">
                                    <img src="./place_home_files/mobile_123603937513c.jpg" width="100%" class="ub_m fade loaded" data-width="222" data-height="145">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">작전동 감성수수</span><span class="cb_ts"><br> 붓펜캘리그라피 엽서 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">선착순</span>
                                        <span class="cb_on">12.16, 18, 29</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                <li class="cb_litem">
                        <a href="../naver/village_study3.html" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2148393" data-ugdid="90000003_00000000000000337E31D966">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#f9f7e5;">
                                    <img src="./place_home_files/mobile_123609960423c.jpg" width="100%" class="ub_m fade loaded" data-width="222" data-height="145">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">남동구 꼼지락꼼지락</span><span class="cb_ts"><br> 프랑스자수 클래스 모집</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.2.28</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                </ul>
            </div>
        <div class="cb_info">
            <a href="../naver/all_village_study.html" class="cb_ia" data-area="PLACE" data-clk="cardmore">동네 강좌 모두 보기</a>
        </div>
        </div>
</div><div class="grid1 id_cui_twothumbs" data-tags="동네그림" index="11">
    <div class="cui_twothumbs" data-seq="755328">
        <div class="ct_title_wrap">
        <h3 class="ct_title"><span class="ct_main">그림으로 보는 동네</span><span class="ct_sub">나는 예술가!</span></h3>
            </div>
        <ul class="ct_list ct_lyitem">
            <li class="ct_item">
                    <a href="../naver/picture.html" class="ct_a" data-area="PLACE" data-clk="card" data-gdid="UAT_2141658" data-ugdid="">
                        <div class="ct_mw lzImg" style="background-color:#fffbce;">
                            <img src="./place_home_files/cropImg_339x339_113512128066216219.jpeg" width="100%" alt="북극서점" class="ct_m fade loaded" data-width="339" data-height="339">
                            </div>
                        <div class="ct_tw">
	                            <span class="ct_t"><span class="ct_ts">북극서점</span></span>
	                        </div>
                        </a>
                </li>
                <li class="ct_item">
                    <a href="../naver/picture1.html" class="ct_a" data-area="PLACE" data-clk="card" data-gdid="UAT_2141659" data-ugdid="">
                        <div class="ct_mw lzImg" style="background-color:#cbbebf;">
                            <img src="./place_home_files/mobile_111532781175m.jpg" width="100%" alt="그 곳에 가면 천사가 있다  –  동인천 북광장과 중앙시장" class="ct_m fade loaded" data-width="339" data-height="339">
                            </div>
                        <div class="ct_tw">
	                            <span class="ct_t"><span class="ct_ts">그 곳에 가면 천사가 있다  –  동인천 북광장과 중앙시장</span></span>
	                        </div>
                        </a>
                </li>
                </ul>
    </div>
</div>












<div class="grid1 id_cui_text" data-tags="동네지식인,중구" index="14">
    <div class="cui_text" data-seq="755311">
        <div class="ct_title_wrap">
            <h3 class="ct_title"><span class="ct_main">동네 Q&amp;A</span><span class="ct_sub">중구 궁금해요</span></h3>
                </div>
        <ul class="ct_l">
            <li class="ct_item">
                <a href="../naver/village_q&a.html" class="ct_a" data-area="PLACE" data-clk="card" data-gdid="UAT_2141568" data-ugdid="10000009_00001148270d">
                        인천 연안부두에서 연평도 여객선 시간</a>
            </li>
            <li class="ct_item">
                <a href="../naver/village_q&a1.html" class="ct_a" data-area="PLACE" data-clk="card" data-gdid="UAT_2141569" data-ugdid="10000009_0000114873f2">
                        인천공항 근처에 오렌즈 있나요?</a>
            </li>
            <li class="ct_item">
                <a href="../naver/village_q&a2.html" class="ct_a" data-area="PLACE" data-clk="card" data-gdid="UAT_2141570" data-ugdid="10000009_000011487581">
                        사진 속의 장소가 어디인지 알려주세요</a>
            </li>
            <li class="ct_item">
                <a href="../naver/village_q&a3.html" class="ct_a" data-area="PLACE" data-clk="card" data-gdid="UAT_2141571" data-ugdid="">
                        &gt;&gt;중구 궁금한 것 질문하기</a>
            </li>
            </ul>
    </div>
</div>

<div class="grid1 id_cui_video_ranking" data-nav-on-class="cvr_ta_on" index="17">
	<div class="cui_video_ranking">
		<div class="cvr_title_wrap">
			<h3 class="cvr_title">
				<span class="cvr_main">BEST</span><span class="cvr_sub">어제 많이 본 콘텐츠</span>
			</h3>
			<button type="button" class="cvr_btn_thelp _MM_BESTCLICK_HELP_BTN" data-clk="rankinghelp"><span class="blind">안내 열기</span></button>
			<div class="cvr_ly_thelp _MM_BESTCLICK_HELP_INFO" style="display:none">
				<p class="cvr_hd">이전 하루 동안 가장 인기 <br>있었던 콘텐츠입니다.</p>
				<button type="button" class="cvr_btn_hclose _MM_BESTCLICK_HELP_INFO_CLOSE" data-clk="rankinghelpclose"><span class="blind">안내 닫기</span></button>
			</div>
		</div>
		
		<div class="cvr_list_wrap">
				
<ol class="cvr_list">
<li class="cvr_list_item">
<a href="../naver/best_content.html" class="cvr_li_link" data-clk="rankingdayscont">
<div class="cvr_li_ranking">
<ul class="cvr_ranking_info">
<li class="cvr_ranking_number"><span class="blind">순위</span>1</li>
</ul>
</div>
<div class="cvr_li_info">
<h4 class="cvr_info_title">인천의 새로운 명물 '디스코버스' 사용설명서</h4>
</div>
<div class="cvr_li_thumb-wrap">
<img src="./place_home_files/mobile_162333889351c.jpg" alt="인천의 새로운 명물 &#39;디스코버스&#39; 사용설명서" class="cvr_thumb">
</div>
</a>
</li>
<li class="cvr_list_item">
<a href="../naver/best_content1.html" class="cvr_li_link" data-clk="rankingdayscont">
<div class="cvr_li_ranking">
<ul class="cvr_ranking_info">
<li class="cvr_ranking_number"><span class="blind">순위</span>2</li>
</ul>
</div>
<div class="cvr_li_info">
<h4 class="cvr_info_title">태국 음식을 제대로 맛볼 수 있는 송도 태국 음식점</h4>
</div>
<div class="cvr_li_thumb-wrap">
<img src="./place_home_files/mobile_162328902176m.jpg" alt="태국 음식을 제대로 맛볼 수 있는 송도 태국 음식점" class="cvr_thumb">
</div>
</a>
</li>
<li class="cvr_list_item">
<a href="../naver/best_content2.html" class="cvr_li_link" data-clk="rankingdayscont">
<div class="cvr_li_ranking">
<ul class="cvr_ranking_info">
<li class="cvr_ranking_number"><span class="blind">순위</span>3</li>
</ul>
</div>
<div class="cvr_li_info">
<h4 class="cvr_info_title">희망의 끈을 놓지 않은 명인, 부평 피자 달인 되다</h4>
</div>
<div class="cvr_li_thumb-wrap">
<img src="./place_home_files/mobile_155626406763c.jpg" alt="희망의 끈을 놓지 않은 명인, 부평 피자 달인 되다" class="cvr_thumb">
</div>
</a>
</li>
<li class="cvr_list_item">
<a href="../naver/best_content3.html" class="cvr_li_link" data-clk="rankingdayscont">
<div class="cvr_li_ranking">
<ul class="cvr_ranking_info">
<li class="cvr_ranking_number"><span class="blind">순위</span>4</li>
</ul>
</div>
<div class="cvr_li_info">
<h4 class="cvr_info_title">연수구에서 푸드초이스의 정석 짠단코스 즐겨보자</h4>
</div>
<div class="cvr_li_thumb-wrap">
<img src="./place_home_files/mobile_155614869279c.jpg" alt="연수구에서 푸드초이스의 정석 짠단코스 즐겨보자" class="cvr_thumb">
</div>
</a>
</li>
<li class="cvr_list_item">
<a href="../naver/best_content4.html" class="cvr_li_link" data-clk="rankingdayscont">
<div class="cvr_li_ranking">
<ul class="cvr_ranking_info">
<li class="cvr_ranking_number"><span class="blind">순위</span>5</li>
</ul>
</div>
<div class="cvr_li_info">
<h4 class="cvr_info_title">송현근린공원에서 멋진 대형 크리스마스 트리 감상!</h4>
</div>
<div class="cvr_li_thumb-wrap">
<img src="./place_home_files/mobile_155501377248m.jpg" alt="송현근린공원에서 멋진 대형 크리스마스 트리 감상!" class="cvr_thumb">
</div>
</a>
</li>
</ol>

				</div>
			</div>
</div><div class="grid1 id_cui_triplethumbs" data-tags="동네사진모음" index="20">
    <div class="cui_triplethumbs" data-seq="756431">
        <div class="ct_title_wrap">
            <h3 class="ct_title"><span class="ct_sub">동네 한바퀴 #2</span></h3>
            </div>
        <ul class="ct_list">
            <li class="ct_item">
                <a href="../naver/village2_one.html" class="ct_a" data-area="PLACE" data-clk="card" data-gdid="UAT_2147855" data-ugdid="">
                    <div class="ct_mw lzImg" style="background-color:#c19770;">
                        <img width="100%" alt="" class="ct_m fade loaded change" data-width="339" data-height="339" src="./place_home_files/mobile_20325614577.jpg">
                        </div>
                    <div class="ct_tw">
                        <span class="ct_t"><span class="ct_ts">월미도, 해질녘, 석양</span></span>
                        </div>
                </a>
            </li>
            <li class="ct_item">
                <a href="../naver/village2_two.html" class="ct_a" data-area="PLACE" data-clk="card" data-gdid="UAT_2147857" data-ugdid="">
                    <div class="ct_mw lzImg" style="background-color:#c5cabe;">
                        <img width="100%" alt="" class="ct_m fade loaded change" data-width="222" data-height="222" src="./place_home_files/cropImg_222x222_113602116904169582.jpeg">
                        </div>
                    <div class="ct_tw">
                        <span class="ct_t"><span class="ct_ts">퇴근길, 영종도, 눈</span></span>
                        </div>
                </a>
            </li>
            <li class="ct_item">
                <a href="../naver/village2_three.html" class="ct_a" data-area="PLACE" data-clk="card" data-gdid="UAT_2147859" data-ugdid="">
                    <div class="ct_mw lzImg" style="background-color:#debba2;">
                        <img width="100%" alt="" class="ct_m fade loaded change" data-width="222" data-height="222" src="./place_home_files/cropImg_222x222_113602126428330160.jpeg">
                        </div>
                    <div class="ct_tw">
                        <span class="ct_t"><span class="ct_ts">가좌동, 분위기, 아늑</span></span>
                        </div>
                </a>
            </li>
            </ul>
    </div>
</div><div class="grid1 id_cui_bundle" data-tags="동네강좌모음" index="23"><div class="cui_bundle" data-seq="756378">
        <div class="cb_title_wrap">
            <h3 class="cb_title"><span class="cb_main">동네 강좌 모음</span><span class="cb_sub">함께 배워요</span></h3>
                </div>
        <div class="cb_list_wrap">
            <ul class="cb_list">
                <li class="cb_litem">
                        <a href="../naver/village_study_all.html" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147682" data-ugdid="90000003_00000000000000337DC7495C">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#f0cb8f;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_12242462387c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 천연비누자격증 취득 클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">12.11 ~ 18.2.28</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                <li class="cb_litem">
                        <a href="../naver/village_study_all1.html" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147683" data-ugdid="90000003_00000000000000337E157CBC">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#b2957a;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_122446366542c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">중구 프롬숲</span><span class="cb_ts"><br> 가드닝 취미반 클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">선착순</span>
                                        <span class="cb_on">~ 12.29</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                <li class="cb_litem">
                        <a href="../naver/village_study_all2.html" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147684" data-ugdid="90000003_00000000000000337E1ED244">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#ddd2bd;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_122501381276c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">작전동 감성수수</span><span class="cb_ts"><br> 석고방향제 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.2.28</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/sseon_82/221159871952" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147685" data-ugdid="90000003_00000000000000337E27D5D0">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#d9b390;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_122514651709c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">송도 에이브릴29</span><span class="cb_ts"><br> 베이직소이캔들과 티라이트만들기</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.1.10</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/tngk98/221156807089" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147110" data-ugdid="90000003_00000000000000337DF911B1">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#dad2c3;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_16470380567c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">작전동 감성수수</span><span class="cb_ts"><br> 수채화 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">선착순</span>
                                        <span class="cb_on">12.15, 12.21</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/tommy486jk/221134861533" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147111" data-ugdid="90000003_00000000000000337CAA34DD">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#a0c781;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_154911398914c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">석바위시장역 따락</span><span class="cb_ts"><br> 소이캔들 자격증 클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">선착순</span>
                                        <span class="cb_on">~12.15</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/quiltjang2/221144808437" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147112" data-ugdid="90000003_00000000000000337D41FBF5">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#e5d1b8;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_160647439463c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">남구 퀼트쟁이</span><span class="cb_ts"><br> 크리스마스 퀼트리스 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.15</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/wyh5757/221119472404" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147113" data-ugdid="90000003_00000000000000337BBF6314">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#e9ddd9;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_162946340146m.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">동인천역 아틀리에다정한</span><span class="cb_ts"><br> 손뜨개 블랭킷 만들기 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">선착순</span>
                                        <span class="cb_on">~12.16</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/neulsolgil_/221115668195" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147114" data-ugdid="90000003_00000000000000337B8556E3">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#cfbd98;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_12263959258c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">남구 늘솔길</span><span class="cb_ts"><br> 동백마르세이유 보습비누 만들기</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.16</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/sseon_82/221141652219" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147115" data-ugdid="90000003_00000000000000337D11D2FB">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#908178;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_121533539459c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">송도 에이브릴29</span><span class="cb_ts"><br> 우유병을 재활용한 캔들만들기</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.16</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/sseon_82/221141985883" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147116" data-ugdid="90000003_00000000000000337D16EA5B">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#a08890;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_153238834947c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">송도 에이브릴29</span><span class="cb_ts"><br> 빈티지소품에 어울리는 테이퍼초</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.17</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/aprilbaking/221155475507" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147117" data-ugdid="90000003_00000000000000337DE4C033">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#ffeae5;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_161203436169c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">남동구 에이프릴베이킹</span><span class="cb_ts"><br> 산타케이크 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">선착순</span>
                                        <span class="cb_on">12.18,19,24</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/jasw66/221118036255" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147118" data-ugdid="90000003_00000000000000337BA9791F">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#f4e8dd;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_121245891842c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">백운역 제페토손뜨개공방</span><span class="cb_ts"><br> 손뜨개 파우치가방 만들기</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.18</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/tngk98/221156718224" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147119" data-ugdid="90000003_00000000000000337DF7B690">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#eefff0;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_161333773469c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">작전동 감성수수</span><span class="cb_ts"><br> 냅킨아트 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">선착순</span>
                                        <span class="cb_on">12.19</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/dynos3/221153998562" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147120" data-ugdid="90000003_00000000000000337DCE36E2">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#ceb68f;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_162707765434c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 이토타워 에버레스팅</span><span class="cb_ts"><br> 12월 NAHA LEVEL1 지도사 자격증 과정</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">선착순</span>
                                        <span class="cb_on">12.19부터</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/tngk98/221145457317" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147121" data-ugdid="90000003_00000000000000337D4BE2A5">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#ffffc3;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_153223739789c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">작전동 감성수수</span><span class="cb_ts"><br> 붓펜 캘리그라피 취미반</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">선착순</span>
                                        <span class="cb_on">12.20, 27</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/neulsolgil_/221120874978" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147122" data-ugdid="90000003_00000000000000337BD4C9E2">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#9b949c;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_164150218168c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">남구 늘솔길</span><span class="cb_ts"><br> 히아루론산마유크림, 발효재생스킨 만들기</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.20</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/tommy486jk/221151596405" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147123" data-ugdid="90000003_00000000000000337DA98F75">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#a6aa98;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_16215805254c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">석바위시장역 따락</span><span class="cb_ts"><br> 아로마 캔들 자격증반 모집</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.20</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/jneverland10/221118052745" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147124" data-ugdid="90000003_00000000000000337BA9B989">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#e8e2da;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_121255253909c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">송도 카페스위트코드</span><span class="cb_ts"><br> 성인취미미술 여행스케치 수강생 모집</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.20</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/tngk98/221153043660" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147125" data-ugdid="90000003_00000000000000337DBFA4CC">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#d2c3ab;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_123434437743c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">작전동 감성수수</span><span class="cb_ts"><br>클레이아트 무료 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">선착순</span>
                                        <span class="cb_on">12.21</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/do5mi/221151744439" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147126" data-ugdid="90000003_00000000000000337DABD1B7">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#a79481;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_162202797108c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">남동구 꽃그리고 향기만들고</span><span class="cb_ts"><br> 조끼 원피스만들기 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.22</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/toymum/221130237040" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147127" data-ugdid="90000003_00000000000000337C63A470">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#b29780;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_161322495888c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">청라 죠슈아트리</span><span class="cb_ts"><br> 원어민 놀이영어 클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">선착순</span>
                                        <span class="cb_on">~12.23 토요일 11시, 12시</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/aprilbaking/221150475809" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147128" data-ugdid="90000003_00000000000000337D987621">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#ffe1b7;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_161540720901c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 에이프릴베이킹</span><span class="cb_ts"><br> 크리스마스마카롱 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">선착순</span>
                                        <span class="cb_on">~12.23</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/kimny0620/221143166270" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147129" data-ugdid="90000003_00000000000000337D28ED3E">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#917a55;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_123416507955m.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">중구 프롬숲</span><span class="cb_ts"><br> 아라우카리아 크리스마스트리 원데이</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.23</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/kimny0620/221156687159" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147130" data-ugdid="90000003_00000000000000337DF73D37">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#d5af7d;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_161327569296m.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">중구 프롬숲</span><span class="cb_ts"><br> 크리스마스 원형 리스 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.23</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/aprilbaking/221150500564" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147131" data-ugdid="90000003_00000000000000337D98D6D4">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#f9bfa7;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_162512573925c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 에이프릴베이킹</span><span class="cb_ts"><br> 캐릭터마카롱 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">선착순</span>
                                        <span class="cb_on">~12.24</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/ryunra_floweroom/221144332597" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147132" data-ugdid="90000003_00000000000000337D3AB935">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#9b7236;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_162914907417c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">중구 련라꽃방</span><span class="cb_ts"><br> 크리스마스트리, 드라이리스, 테라리움</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~ 12.24</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/stjje/221086475227" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147133" data-ugdid="90000003_000000000000003379C7E3DB">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#cbaa71;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_12124284674c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 디오공방</span><span class="cb_ts"><br>원목페인팅 원데이특강</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.25</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/tngk98/221154858031" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147686" data-ugdid="90000003_00000000000000337DDB542F">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#abcdcb;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_12260305312c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">작전동 감성수수</span><span class="cb_ts"><br> 드림케쳐 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">선착순</span>
                                        <span class="cb_on">12.27</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/do5mi/221158449189" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147687" data-ugdid="90000003_00000000000000337E122025">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#d9b8bb;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_16583635373c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">남동구 꽃그리고 향기만들고</span><span class="cb_ts"><br> 크리스마스 캔들 원데이특강</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.27</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/stjje/221089157991" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147134" data-ugdid="90000003_000000000000003379F0D367">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#f0d5c9;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_174553364444.gif">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 디오공방</span><span class="cb_ts"><br>천연 바디로션 만들기 원데이특강</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.28</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/dynos3/221157216377" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147135" data-ugdid="90000003_00000000000000337DFF5079">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#ffeedd;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_164819586433c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 이토타워 에버레스팅</span><span class="cb_ts"><br> 에센셜 오일을 이용한 향수만들기</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">선착순</span>
                                        <span class="cb_on">~ 12.30</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/dellhouse/221113678487" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147136" data-ugdid="90000003_00000000000000337B66FA97">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#bbbbba;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_12263107473c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 천연매직에어쿠션 원데이</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">선착순</span>
                                        <span class="cb_on">~12.30</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/heejooda/221106640478" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147137" data-ugdid="90000003_00000000000000337AFB965E">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#e4d6c5;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_160441479656c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 장아뜰리에</span><span class="cb_ts"><br> 색연필화 단체특강</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.30</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/dellhouse/221139560136" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147138" data-ugdid="90000003_00000000000000337CF1E6C8">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#ddd1c6;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_122046353203c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 주방비누 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/dellhouse/221135276072" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147139" data-ugdid="90000003_00000000000000337CB08828">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#bbbab6;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_153355208934m.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 지성, 여드름 숯비누 만들기 원데이</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/dellhouse/221113094113" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147140" data-ugdid="90000003_00000000000000337B5E0FE1">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#ece2c2;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_164155317472c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 반려동물 천연비누 만들기 원데이</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/dellhouse/221113768555" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147141" data-ugdid="90000003_00000000000000337B685A6B">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#847266;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_121815626566m.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 명품 천연화장품 4종 원데이</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/kimny0620/221154875635" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147142" data-ugdid="90000003_00000000000000337DDB98F3">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#a79480;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_16264192190c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">중구 프롬숲</span><span class="cb_ts"><br> 가드닝 쁘띠 클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/dellhouse/221118131997" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147143" data-ugdid="90000003_00000000000000337BAAEF1D">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#fffff1;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_162931337909c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 세탁비누+쳔연주방비누 + 섬유유연제 원데이</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/soon21207/221113214139" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147144" data-ugdid="90000003_00000000000000337B5FE4BB">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#e4dccf;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_163726226619c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 순이네다락방</span><span class="cb_ts"><br> 머그컵/포토머그컵 만들기 원데이</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/caferain0511/221120290140" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147145" data-ugdid="90000003_00000000000000337BCBDD5C">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#ffd1e5;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_163732989717c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">계양구 비에스티공방</span><span class="cb_ts"><br> 커플바스붐 만들기 원데이</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/dellhouse/221118929071" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147146" data-ugdid="90000003_00000000000000337BB718AF">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#c6c1ba;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_163713794412c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 어른, 어린이 천연치약만들기</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/dellhouse/221075086980" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147147" data-ugdid="90000003_0000000000000033791A1E84">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#958c76;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_121239175878c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 15종 한방탈모샴푸 만들기</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/dellhouse/221090641484" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147148" data-ugdid="90000003_00000000000000337A07764C">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#f5f1ea;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_121148551300c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 천연세탁비누 만들기</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/dellhouse/221125565558" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147149" data-ugdid="90000003_00000000000000337C1C5C76">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#cabda8;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_170443278919c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 립밤만들기 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/inni0525/221105627870" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147150" data-ugdid="90000003_00000000000000337AEC22DE">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#d2b39d;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_11260556980c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">부평 이니아뜰리에</span><span class="cb_ts"><br> 촉촉보습천연립밤 만들기</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/heejooda/221117354016" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147151" data-ugdid="90000003_00000000000000337B9F1020">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#a2af8f;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_162938861898c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 장아뜰리에</span><span class="cb_ts"><br> 파스텔화 그리기</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집/예약필수</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/dellhouse/221120513645" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147152" data-ugdid="90000003_00000000000000337BCF466D">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#c3c5ca;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_163731309180c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 반려견 입욕제 만들기</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/dellhouse/221142283704" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147153" data-ugdid="90000003_00000000000000337D1B75B8">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#d5c6ca;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_152621994688c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 촉촉 딥클랜징 오일만들기</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/fri79end/221126861325" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147154" data-ugdid="90000003_00000000000000337C30220D">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#cdc1a3;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_161555899420c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 비염에 좋은 청비수 스프레이&amp;청비고 연고</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/dellhouse/221126542250" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147155" data-ugdid="90000003_00000000000000337C2B43AA">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#fdfbe8;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_163725450727c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 상비연고 자운고밤 만들기 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/yourblanc/221122318288" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147156" data-ugdid="90000003_00000000000000337BEACFD0">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#aa9381;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_170456630556c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">남구 유어블랑</span><span class="cb_ts"><br> 천연비누 전문가과정</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">선착순</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/w_cake/221130591785" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147157" data-ugdid="90000003_00000000000000337C690E29">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#cdbdb3;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_163947422300c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">남동구 더블유케이크</span><span class="cb_ts"><br> 앙금플라워떡케이크 정규강좌</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/yourblanc/221122481812" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147158" data-ugdid="90000003_00000000000000337BED4E94">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#c1b3a4;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_161548966745c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">남구 유어블랑</span><span class="cb_ts"><br> 캔들 자격증 클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">선착순</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/inni0525/221091018945" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147159" data-ugdid="90000003_00000000000000337A0D38C1">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#d5c7b7;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_112822737432c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">부평 이니아뜰리에</span><span class="cb_ts"><br> 천연화장품-마유,재생크림 만들기</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/fri79end/221131520639" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147160" data-ugdid="90000003_00000000000000337C773A7F">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#99a390;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_161329673290c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 촉촉바디로션&amp;아보카도바디오일 원데이</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/ysh_6099/221132168113" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147161" data-ugdid="90000003_00000000000000337C811BB1">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#d6d3c5;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_161348893954m.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">남동구 베이지클래스</span><span class="cb_ts"><br> 앙금떡케이크 11월 수강생 모집</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/petaroma/221140992243" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147162" data-ugdid="90000003_00000000000000337D07C0F3">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#aabbc5;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_121432111251c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">당하동 별사랑공방</span><span class="cb_ts"><br> 강아지 구름비누 만들기 클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/fri79end/221124938113" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147163" data-ugdid="90000003_00000000000000337C12C981">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#cbbbaa;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_161654170667c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 산양유 저온숙성 천연비누 원데이</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/dellhouse/221133883599" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147164" data-ugdid="90000003_00000000000000337C9B48CF">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#a8a09c;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_164835902438c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 지성피부를 위한 남극해천일염어성초비누</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/dellhouse/221113771881" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147165" data-ugdid="90000003_00000000000000337B686769">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#ddc6c1;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_122031315662m.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 반려동물 아로마강사 2급과정</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">선착순</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/neulsolgil_/221128057666" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147166" data-ugdid="90000003_00000000000000337C426342">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#cdae90;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_163728885260c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">남구 늘솔길</span><span class="cb_ts"><br> 흑맥주 비누 반들기</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/dellhouse/221124262943" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147167" data-ugdid="90000003_00000000000000337C087C1F">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#9fa87a;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_164138939299c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 반려동물 공기정화 탈취 아로마 스프레이</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/fri79end/221129928353" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147168" data-ugdid="90000003_00000000000000337C5EEEA1">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#a09f9c;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_112815464968c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 아보카도핸드로션 + 레몬리퀴드솝 제작</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/dellhouse/221124079356" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147169" data-ugdid="90000003_00000000000000337C05AEFC">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#b2a87a;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_121539301862m.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 반려견 해충, 진드기 퇴치 스프레이 원데이</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/rome337/221133941164" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147170" data-ugdid="90000003_00000000000000337C9C29AC">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#f9cfba;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_165421741929c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">패션스타트NCC 인천청라점</span><span class="cb_ts"><br> 티매트만들기 원데이 특강</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">선착순</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/heejooda/221109923405" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147171" data-ugdid="90000003_00000000000000337B2DAE4D">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#dcb6d8;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_210411820437.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 장아뜰리에</span><span class="cb_ts"><br> 수채 꽃세밀화 그리기</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/soon21207/221103398212" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147172" data-ugdid="90000003_00000000000000337ACA1D44">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#e8d1af;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_164202444588c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 순이네다락방</span><span class="cb_ts"><br> 젤캔들 제작 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/dellhouse/221139621668" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147173" data-ugdid="90000003_00000000000000337CF2D724">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#e6d8bb;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_121440715346c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 버진 아보카도 보습비누 클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/heejooda/221112487103" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147174" data-ugdid="90000003_00000000000000337B54CCBF">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#e5cdb4;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_121803221100c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 장아뜰리에</span><span class="cb_ts"><br> 수채 인물화 그리기</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/dellhouse/221142065980" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147175" data-ugdid="90000003_00000000000000337D18233C">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#e8d9bb;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_12370151074c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 유기농 진피 산양유 비누 원데이</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/heejooda/221130568796" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147176" data-ugdid="90000003_00000000000000337C68B45C">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#ffffff;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_12234036903c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 장아뜰리에</span><span class="cb_ts"><br> 감성일러스트 그리기</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/zbxfeel/221090289614" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147177" data-ugdid="90000003_00000000000000337A0217CE">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#e6dcc5;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_163736863841c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">남동구 결 마크라메</span><span class="cb_ts"><br> 마크라메 플랜트행거/월행잉 만들기</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/daaep/221053744871" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147178" data-ugdid="90000003_000000000000003377D476E7">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#d9b691;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_113342892195c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">남구 가온화</span><span class="cb_ts"><br>가온화에서 민화배우기</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/dk7421/221153008793" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147179" data-ugdid="90000003_00000000000000337DBF1C99">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#8d8579;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_123438353499c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">청라 스윗가든</span><span class="cb_ts"><br> 업사이클링 테라피캔들 강좌</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/PostView.nhn?blogId=pulran88&amp;logNo=221081215732" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147180" data-ugdid="90000003_00000000000000337977A2F4">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#9f9182;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_141249821697m.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">남구 풀란</span><span class="cb_ts"><br>천연비누 만들기 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/zbxfeel/221090289614" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147181" data-ugdid="90000003_00000000000000337A0217CE">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#dce0da;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_174559989387.gif">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">남동구 결 마크라메</span><span class="cb_ts"><br>마크라메 플랜트 행거/월행잉</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/jjs-217/221091309958" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147182" data-ugdid="90000003_00000000000000337A11A986">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#fffff1;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_115807744204.gif">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">남동구 꼼지락꼼지락</span><span class="cb_ts"><br>프랑스자수 클래스 모집</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/zbxfeel/221096259099" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147183" data-ugdid="90000003_00000000000000337A5D2E1B">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#d9d2cb;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_165932178851c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">남동구 결 마크라메</span><span class="cb_ts"><br> 마크라메 티코스터 만들기</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="https://m.blog.naver.com/shlvj79/221045545639" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147184" data-ugdid="90000003_000000000000003377575AA7">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#e9d8d1;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_112126701852c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">남동구 주니스토리</span><span class="cb_ts"><br> 앙금 플라워케이크 클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시 모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/petaroma/221113593792" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147185" data-ugdid="90000003_00000000000000337B65AFC0">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#e4dccb;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_121824213531c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">당하동 별 사랑공방</span><span class="cb_ts"><br> 자운고 반려동물 천연비누</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/petaroma/221120069521" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147186" data-ugdid="90000003_00000000000000337BC87F91">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#d6ba9f;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_164202581522c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">당하동 별사랑공방</span><span class="cb_ts"><br> 반려동물 허브비누 만들기</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/inni0525/221128553546" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147187" data-ugdid="90000003_00000000000000337C49F44A">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#c2bbaf;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_163732531960c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">부평 이니아뜰리에</span><span class="cb_ts"><br> 부평천연한방샴푸만들기 원데이클래스!</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/inni0525/221122768511" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147188" data-ugdid="90000003_00000000000000337BF1AE7F">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#eee0cf;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_153857223291c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">부평 이니아뜰리에</span><span class="cb_ts"><br> 천연화장품(아로마) 취미반</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">선착순</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/marihandmade/221070566741" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147189" data-ugdid="90000003_000000000000003378D52555">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#ffba7c;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_175204477877c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">서구 마리핸드메이드</span><span class="cb_ts"><br>마리핸드메이드 마리돌 강사반 모집</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/petaroma/221067692789" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147190" data-ugdid="90000003_000000000000003378A94AF5">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#ffafce;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_17285218802.gif">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">서구 별사랑공방</span><span class="cb_ts"><br> 나와 반려견을 위한 솔트입욕제 만들기</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/dalsbridge/221147836251" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147191" data-ugdid="90000003_00000000000000337D702F5B">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#f4d199;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_164104204423c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">동구 달쓰브릿지</span><span class="cb_ts"><br> 크리스마스 케이크 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/dellhouse/221145300165" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147192" data-ugdid="90000003_00000000000000337D497CC5">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#dad8d2;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_121133555217c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 시어버터 왕습비누 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/leehyenean/221148928115" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147193" data-ugdid="90000003_00000000000000337D80D873">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#d8c5a6;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_18560246810.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">작전동 루시네레시피</span><span class="cb_ts"><br> 쌀베이킹원데이클래스- 무지개 쌀케이크</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/petaroma/221090343563" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147194" data-ugdid="90000003_00000000000000337A02EA8B">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#ffffff;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_115902659773.gif">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">서구 별사랑공방</span><span class="cb_ts"><br>반려동물 밤만들기 클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/petaroma/221091903017" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147195" data-ugdid="90000003_00000000000000337A1AB629">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#c39f87;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_115804223451.gif">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">서구 별사랑공방</span><span class="cb_ts"><br>반려동물위한 피모에센스 만들기</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/petaroma/221077833562" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147196" data-ugdid="90000003_00000000000000337944075A">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#ffdc8c;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/cropImg_222x145_103855537814588053.jpeg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">서구 별사랑공방</span><span class="cb_ts"><br>반려동물 아로마테라피 취미반</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/okyun007/221157581009" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147688" data-ugdid="90000003_00000000000000337E04E0D1">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#af9b8b;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_165825431741c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">부평구 솝스토리</span><span class="cb_ts"><br> 한방 보습로션 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/skygkxm/221151569703" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147197" data-ugdid="90000003_00000000000000337DA92727">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#b77e6e;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_1625341441c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 이토타워 펭스케이크</span><span class="cb_ts"><br> 장미앙금쿠키 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">선착순</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/petaroma/221067762201" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147198" data-ugdid="90000003_000000000000003378AA5A19">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#b47c7c;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/cropImg_222x145_102734830134852293.gif">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">서구 별사랑공방</span><span class="cb_ts"><br> 강아지 머드팩 만들기 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="https://m.blog.naver.com/dksthgml1123/221079857495" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147199" data-ugdid="90000003_00000000000000337962E957">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#be9d7d;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_141312851946m.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">서구 안쏘라이스케이크</span><span class="cb_ts"><br>직장인 앙금쿠키 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/gree357/221149051337" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147200" data-ugdid="90000003_00000000000000337D82B9C9">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#b3a38b;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_121139683873m.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">서구 다온</span><span class="cb_ts"><br> 찰꿀빵 8종 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/leehyenean/221143054784" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147201" data-ugdid="90000003_00000000000000337D2739C0">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#c1aa90;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_123410784321m.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">작전동 루시네레시피</span><span class="cb_ts"><br> 견과류바만들기 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/petaroma/221143175257" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147202" data-ugdid="90000003_00000000000000337D291059">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#cac2c5;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_12181928942c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">당하동 별사랑공방</span><span class="cb_ts"><br> 펫아로마테라피 취미반</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/noolba/221106205588" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147203" data-ugdid="90000003_00000000000000337AF4F394">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#d2b689;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_160435171464c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">송도 베르디움 더퍼스트아파트</span><span class="cb_ts"><br> 리본공예 헤어핀 만들기 원데이</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/dellhouse/221142961837" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147204" data-ugdid="90000003_00000000000000337D25CEAD">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#bebfbf;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_153215638974c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 라벤더 알로에 수분 촉촉 크림</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/leehyenean/221133453588" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147205" data-ugdid="90000003_00000000000000337C94B914">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#dabea3;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_171059176928c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">작전동 루시네레시피</span><span class="cb_ts"><br> 11-12월 마카롱 원데이 클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/ppk357/221157153898" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147206" data-ugdid="90000003_00000000000000337DFE5C6A">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#b8a4b0;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_164724275313c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">인천시청역 디자인푸름</span><span class="cb_ts"><br> 나만의 컵 만들기 수업</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">선착순</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/skygkxm/221149664421" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147207" data-ugdid="90000003_00000000000000337D8C14A5">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#f0d5be;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_121145654731c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 이토타워 펭스케이크</span><span class="cb_ts"><br> 미리크리스마스 앙금떡케이크 원데이</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/yubeen85/221150916716" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147208" data-ugdid="90000003_00000000000000337D9F306C">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#ddd2c7;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_16154821764c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">당하동 별사랑공방</span><span class="cb_ts"><br> 펫아로마테라피 아카데미 클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/dellhouse/221139622094" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147209" data-ugdid="90000003_00000000000000337CF2D8CE">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#b7b2b0;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_16063671468c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 남극해천일염 시어퍼터 퍼퓸비누 원데이</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/marihandmade/221097369669" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147210" data-ugdid="90000003_00000000000000337A6E2045">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#fbbb84;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_165937908419c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">청라 마리핸드메이드</span><span class="cb_ts"><br>명랑페인팅 강사반 모집</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/yourblanc/221157284515" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147211" data-ugdid="90000003_00000000000000337E005AA3">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#fbd5ab;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_164827529260c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">남구 유어블랑</span><span class="cb_ts"><br> 스노우/스테인/스노우레인캔들 원데이</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/stjje/221095137883" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147212" data-ugdid="90000003_00000000000000337A4C125B">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#eec698;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_160943980743c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 디오공방</span><span class="cb_ts"><br> 마크라메 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">선착순</span>
                                        <span class="cb_on">~12.31, 매주 목</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/pulran88/221058422972" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147213" data-ugdid="90000003_0000000000000033781BD8BC">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#cfb2ab;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_15440375220c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">남구 풀란</span><span class="cb_ts"><br> 천연 화장품&amp;비누 전문가 자격증반</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시 모집</span>
                                        <span class="cb_on">~12.31. 개별문의</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/petaroma/221108762311" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147214" data-ugdid="90000003_00000000000000337B1BF6C7">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#f8d1a0;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_163311565586.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">당하동 별사랑공방</span><span class="cb_ts"><br> 강아지 진피비누 만들기</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12월 말</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/petaroma/221100018177" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147215" data-ugdid="90000003_00000000000000337A968A01">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#ded3d5;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_122318409910.gif">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">당하동 별 사랑공방</span><span class="cb_ts"><br> 반려동물을 위한 편백비누 원데이</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12월 말</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/petaroma/221103240759" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147216" data-ugdid="90000003_00000000000000337AC7B637">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#cea291;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_121202306249c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">당하동 별 사랑공방</span><span class="cb_ts"><br> 펫아로마테라피 강아지 발바닥밤</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12월 말</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/petaroma/221116617379" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147217" data-ugdid="90000003_00000000000000337B93D2A3">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#b4a8b4;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_15311431386c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">당하동 별사랑공방</span><span class="cb_ts"><br> 반려동물을 위한 보습폭탄 미스트</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12월 말</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/petaroma/221093332036" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147218" data-ugdid="90000003_00000000000000337A308444">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#b8acac;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_161452167951c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">검단 별사랑공방</span><span class="cb_ts"><br> 강아지/고양이 로션 만들기</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">수시모집</span>
                                        <span class="cb_on">~12월 말</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/petaroma/221117668362" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147219" data-ugdid="90000003_00000000000000337BA3DC0A">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#d5d2c5;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_121140862661c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">당하동 별사랑공방</span><span class="cb_ts"><br> 반려동물 아로마테라피 취미반</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~12월 말</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/petaroma/221134742408" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147220" data-ugdid="90000003_00000000000000337CA86388">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#c5b8ae;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_154856815256c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">당하동 별사랑공방</span><span class="cb_ts"><br> 강아지 미스트 만들기</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.1.1</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/petaroma/221140968983" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147221" data-ugdid="90000003_00000000000000337D076617">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#d5d3c1;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_121332869565c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">당하동 별사랑공방</span><span class="cb_ts"><br> 강아지 바스솔트 만들기</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.1.1</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/petaroma/221137618329" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147222" data-ugdid="90000003_00000000000000337CD44599">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#dab4bd;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_164903219396c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">당하동 별사랑공방</span><span class="cb_ts"><br> 천연재료로 만드는 세탁세제 강좌</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.1.1</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/petaroma/221133281756" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147223" data-ugdid="90000003_00000000000000337C9219DC">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#ba9794;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_171047791226c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">당하동 별사랑공방</span><span class="cb_ts"><br> 강아지 마사지 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.1.1</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/petaroma/221138462652" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147224" data-ugdid="90000003_00000000000000337CE127BC">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#eae8da;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_1747211790c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">당하동 별사랑공방</span><span class="cb_ts"><br> 반려동물 천연비누 전문가 과정</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.1.1</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/jasw66/221130129041" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147225" data-ugdid="90000003_00000000000000337C61FE91">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#ca9f56;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_112819189800c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">부평구 제페토손뜨개공방</span><span class="cb_ts"><br> 손뜨개공방 수강생 모집</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.1.3</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/sseon_82/221155069892" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147226" data-ugdid="90000003_00000000000000337DDE8FC4">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#9c9389;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_162647577301c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">송도 에이브릴29</span><span class="cb_ts"><br> 시나몬캔들 만들기 키즈클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.1.4</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/sseon_82/221134753841" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147227" data-ugdid="90000003_00000000000000337CA89031">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#af9d85;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_155011389886c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">송도 에이브릴29</span><span class="cb_ts"><br> 캔들자격증 클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.1.7</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/sseon_82/221157349922" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147230" data-ugdid="90000003_00000000000000337E015A22">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#b8b2ac;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_164823611140c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">송도 에이브릴29</span><span class="cb_ts"><br> 다양한 컬러의 테이퍼초 만들기</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.1.7</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/sseon_82/221133758251" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147233" data-ugdid="90000003_00000000000000337C995F2B">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#8c8781;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_155854144599c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">송도 에이브릴29</span><span class="cb_ts"><br> 마크라메 가방 만들기</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.1.8</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/stepartnet/221151180050" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147235" data-ugdid="90000003_00000000000000337DA33512">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#fff5ea;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_161554138888c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">남동구 스텝아트</span><span class="cb_ts"><br> 취미사진 배우기</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">선착순</span>
                                        <span class="cb_on">18.1.9 개강</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/dkfma2010/221156970802" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147236" data-ugdid="90000003_00000000000000337DFB9132">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#caaf9f;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_164720419223c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">서구 달콤한우리사이</span><span class="cb_ts"><br> 아이싱쿠키 클래스 자격증과정</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">선착순</span>
                                        <span class="cb_on">모집 ~18.1.9</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/dalsbridge/221139702375" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147237" data-ugdid="90000003_00000000000000337CF41267">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#baa772;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_17474834602c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">동구 달쓰브릿지</span><span class="cb_ts"><br>바리스타 자격증 클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시 모집</span>
                                        <span class="cb_on">~18.1.11</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/wyh5757/221101696489" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147238" data-ugdid="90000003_00000000000000337AB025E9">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#ffeeba;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_171131879679c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">동인천역 아틀리에다정한</span><span class="cb_ts"><br> 포근한 뜨개가방 만들기</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">선착순</span>
                                        <span class="cb_on">~18.1.14</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/jneverland10/221138873820" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147239" data-ugdid="90000003_00000000000000337CE76DDC">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#d9d9d5;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_171600110209.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">송도 카페스위트코드</span><span class="cb_ts"><br> 12월 수채화 성인취미미술 클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.1.20</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/the-zerami/221140447694" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147240" data-ugdid="90000003_00000000000000337CFF71CE">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#e2d3c6;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_12132151726c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">연수구 더제라미</span><span class="cb_ts"><br> 꽃방향제 만들기 키즈원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~1.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/fri79end/221145303468" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147241" data-ugdid="90000003_00000000000000337D4989AC">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#c9afb4;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_160349395154c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 아로니아 천연비누 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~1.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/gree357/221149039006" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147242" data-ugdid="90000003_00000000000000337D82899E">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#ffd3da;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_160400299277c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">서구 다온</span><span class="cb_ts"><br> 수제도장 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~1.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/soon21207/221139675057" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147243" data-ugdid="90000003_00000000000000337CF3A7B1">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#e2beaf;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_121326922883c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 순이네다락방</span><span class="cb_ts"><br> 석고방향제, 캔들 제작 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.1.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/yubeen85/221157566176" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147244" data-ugdid="90000003_00000000000000337E04A6E0">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#b8b2b7;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_164838315568c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">당하동 별사랑공방</span><span class="cb_ts"><br> 반려동물 세럼 만들기</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.1.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/fri79end/221149381096" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147245" data-ugdid="90000003_00000000000000337D87C1E8">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#d5cbc2;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_162150231306c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 메시지 소이캔들 &amp; 티라이트캔들</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~ 18.1.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/ebbcake/221151733370" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147246" data-ugdid="90000003_00000000000000337DABA67A">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#aaa79c;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_162520252116c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">남구 에뜨왈봉봉</span><span class="cb_ts"><br> 소이플라워 캔들 클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.1.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/fri79end/221142109563" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147247" data-ugdid="90000003_00000000000000337D18CD7B">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#c2bbb2;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_123405349816c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 바스피즈&amp;바스쏠트 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.1.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/dk7421/221145583137" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147248" data-ugdid="90000003_00000000000000337D4DCE21">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#a3a082;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_153229727463c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">청라 스윗가든</span><span class="cb_ts"><br> 두피케어미스트 원데이강좌</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.1.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/fri79end/221151044850" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147249" data-ugdid="90000003_00000000000000337DA124F2">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#b3aaa2;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_122549236705c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 햄프씨드 품은 시어버터비누 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.1.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/joli7942/221156485561" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147250" data-ugdid="90000003_00000000000000337DF429B9">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#b2a7a0;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_16121789110c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">연수구 미미카페공방</span><span class="cb_ts"><br>소이캔들자격증클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~ 18.1.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/yubeen85/221153335454" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147251" data-ugdid="90000003_00000000000000337DC4189E">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#d2c5b3;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_122554318654c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">서구 별사랑공방</span><span class="cb_ts"><br>  반려동물아로마테라피 전문가과정</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.1.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/fri79end/221142132878" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147252" data-ugdid="90000003_00000000000000337D19288E">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#948882;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_121812932601m.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 블랙슈가스크럽+바디미스트 원데이</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~ 18.1.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/fri79end/221152682081" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147253" data-ugdid="90000003_00000000000000337DBA2061">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#b6aca6;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_164650928149c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 버블바쓰바 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~ 18.1.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/ebbcake/221151733370" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147254" data-ugdid="90000003_00000000000000337DABA67A">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#aaa79c;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_162520252116c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">남구 에뜨왈봉봉</span><span class="cb_ts"><br> 소이플라워 캔들 클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.1.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/teakgallery/221135375467" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147255" data-ugdid="90000003_00000000000000337CB20C6B">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#b3a7a0;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_154906255127c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">연수구 티크목공방</span><span class="cb_ts"><br> 직장인을 위한 목공방 겨울 수업 및 실습</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">선착순</span>
                                        <span class="cb_on">~18.1.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/son074/221149103878" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147256" data-ugdid="90000003_00000000000000337D838706">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#bbbebd;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_160421617913c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">서구 에코하우스</span><span class="cb_ts"><br> MP보석비누 만들기 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.1.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/tngk98/221152172737" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147257" data-ugdid="90000003_00000000000000337DB25AC1">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#cbb89f;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_162910671447c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">작전동 감성수수</span><span class="cb_ts"><br> 캘리그라피 지도사 2급 자격증 과정</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.1.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/dellhouse/221149488424" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147258" data-ugdid="90000003_00000000000000337D896528">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#ecd5b6;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_162906702726c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 모유비누 만들기 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.1.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/fri79end/221138726227" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147259" data-ugdid="90000003_00000000000000337CE52D53">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#e8c2b8;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_1747139355c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 감기연고&amp;감기예방스프레이 원데이</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.1.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/ebbcake/221151733370" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147260" data-ugdid="90000003_00000000000000337DABA67A">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#aaa79c;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_162520252116c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">남구 에뜨왈봉봉</span><span class="cb_ts"><br> 소이플라워 캔들 클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.1.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/sewingsudio/221154981734" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147261" data-ugdid="90000003_00000000000000337DDD3766">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#aec5cd;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_162644383936c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">학익동 소잉스튜디오</span><span class="cb_ts"><br> 드림캐쳐 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.1.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/the-zerami/221141738826" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147262" data-ugdid="90000003_00000000000000337D13254A">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#e6be93;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_12153914375c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">연수구 더제라미</span><span class="cb_ts"><br> 드라이플라워 젤캔들홀더 원데이</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.1.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/soon21207/221118976577" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147263" data-ugdid="90000003_00000000000000337BB7D241">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#f9d6a7;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_164001540443c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 순이네다락방</span><span class="cb_ts"><br> 젤캔들 제작 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.1.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/fri79end/221132903734" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147264" data-ugdid="90000003_00000000000000337C8C5536">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#e1d2c5;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_123346978403c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 15종 한방&amp; 허브 샴푸바 1kg 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.1.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/soon21207/221156024276" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147265" data-ugdid="90000003_00000000000000337DED1FD4">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#dde5de;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_161321136457c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 순이네다락방</span><span class="cb_ts"><br> 석고방향제/디퓨저 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~ 18.1.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/sseon_82/221075851894" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147266" data-ugdid="90000003_00000000000000337925CA76">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#97a495;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_122324385149c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">송도 에이브릴29</span><span class="cb_ts"><br> 캔들 자격증 클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.1.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/petaroma/221132560402" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147267" data-ugdid="90000003_00000000000000337C871812">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#cabdba;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_122331538757c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">당하동 별사랑공방</span><span class="cb_ts"><br> 반려동물 눈물자국제거 - 눈물파우더 만들기</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.1.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/dk7421/221152228492" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147268" data-ugdid="90000003_00000000000000337DB3348C">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#c5b09b;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_161339798459c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">청라 스윗가든</span><span class="cb_ts"><br> 아로마 우먼시크릿클렌져 원데이강좌</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~ 18.1.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/yubeen85/221150930376" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147269" data-ugdid="90000003_00000000000000337D9F65C8">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#ab8d88;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_12342962531c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">서구 별사랑공방</span><span class="cb_ts"><br>  반려동물 천연비누 전문가과정</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">선착순</span>
                                        <span class="cb_on">~18.1.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/dellhouse/221152778911" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147689" data-ugdid="90000003_00000000000000337DBB9A9F">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#e0cac7;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_165820723378c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 핸드로션 만들기 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~ 18.1.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/dk7421/221150593135" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147270" data-ugdid="90000003_00000000000000337D9A406F">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#caab97;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_161544486921c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">청라 스윗가든</span><span class="cb_ts"><br> 아토케어천연비누만들기강좌</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.1.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/yubeen85/221155567975" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147271" data-ugdid="90000003_00000000000000337DE62967">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#9fa29b;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_161209976763c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">당하동 별사랑공방</span><span class="cb_ts"><br> 강아지마사지 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~ 18.1.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/fri79end/221130826185" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147272" data-ugdid="90000003_00000000000000337C6CA1C9">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#ded3c5;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_122328430321c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 남극해 천일염 여드름&amp;지성케어 숙성비누</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.1.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/inni0525/221138957738" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147273" data-ugdid="90000003_00000000000000337CE8B5AA">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#e4c6b0;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_123443343994c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">부평 이니아뜰리에</span><span class="cb_ts"><br> 프리미엄 클렌징오일 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.1.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/neulsolgil_/221158021861" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147690" data-ugdid="90000003_00000000000000337E0B9AE5">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#beb0b2;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_165830490452c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">남구 늘솔길</span><span class="cb_ts"><br> 블럭캔들, 소이캔들 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.2.10</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/son074/221155394992" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147274" data-ugdid="90000003_00000000000000337DE385B0">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#fdf9ed;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_16265162189c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">청라 에코하우스</span><span class="cb_ts"><br> 반려동물 아로마테라피 취미과정</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.2.28</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/ppk357/221150032970" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147275" data-ugdid="90000003_00000000000000337D91B44A">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#6d4b3c;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_161537388135c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">인천시청역 디자인푸름</span><span class="cb_ts"><br> 실용캘리그라피 취미반 모집</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.2.28</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/inni0525/221133578017" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147276" data-ugdid="90000003_00000000000000337C969F21">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#c1b4ab;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_152629522897c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">부평 이니아뜰리에</span><span class="cb_ts"><br> 안티에이징에센스, 천연카렌듈라 바디워시</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.2.28</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/zbxfeel/221119908894" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147277" data-ugdid="90000003_00000000000000337BC60C1E">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#f4ece6;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_163846769530c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">남동구 결 마크라메</span><span class="cb_ts"><br> 마크라메+위빙 겨울벽장식 원데이</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.2.28</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/quiltjang2/221136972211" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147278" data-ugdid="90000003_00000000000000337CCA69B3">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#bfab99;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_164851662750c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">석바위시장역 퀼트쟁이</span><span class="cb_ts"><br> 퀼트 브롯치 만들기 강좌</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.2.28</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/inni0525/221104864748" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147279" data-ugdid="90000003_00000000000000337AE07DEC">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#cfb2a2;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_171115896127c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">부평 이니아뜰리에</span><span class="cb_ts"><br> 자운고,자운밤,한방연고 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.2.28</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/fri79end/221140294813" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147280" data-ugdid="90000003_00000000000000337CFD1C9D">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#b2b2b2;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_161155825369c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 두손공방</span><span class="cb_ts"><br> 천연스킨케어 강사 취득반</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.2.28</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/inni0525/221146826911" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147281" data-ugdid="90000003_00000000000000337D60C89F">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#ded5c5;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_16043124842c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">부평 이니아뜰리에</span><span class="cb_ts"><br> 코코넛핸드크림 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.2.28</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/ccddtjsdud/221151895037" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147282" data-ugdid="90000003_00000000000000337DAE1DFD">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#ffffe8;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_122559336622c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 벨라클래스</span><span class="cb_ts"><br> 디퓨저 만들기 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.3.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/stjje/221149709724" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147283" data-ugdid="90000003_00000000000000337D8CC59C">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#c7beb4;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_121152153845c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 디오공방</span><span class="cb_ts"><br> 수제도장만들기 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.6.30</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/sewingsudio/221144206051" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147284" data-ugdid="90000003_00000000000000337D38CAE3">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#ffcdc3;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_121823875671c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">학익동 소잉스튜디오</span><span class="cb_ts"><br> 마리핸드메이드 마리돌 수업</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~18.11.20</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/heejooda/221150760759" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147287" data-ugdid="90000003_00000000000000337D9CCF37">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#babbae;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_16215343566c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">구월동 장아뜰리에</span><span class="cb_ts"><br> 한옥 풍경그리기 1:1 수업</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">~ 18.12.31</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="https://m.blog.naver.com/fri79end/221046584066" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147288" data-ugdid="90000003_000000000000003377673302">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#9b8582;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_184946937211.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">남구 두손공방</span><span class="cb_ts"><br> 천연 스킨케어 만들기</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시 모집</span>
                                        <span class="cb_on">개별 문의</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="https://m.blog.naver.com/pulran88/221053287786" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147289" data-ugdid="90000003_000000000000003377CD7D6A">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#c5ae99;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_112615587698c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">남구 풀란</span><span class="cb_ts"><br>천연 화장품&amp;비누 원데이클래스</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시 모집</span>
                                        <span class="cb_on">개별 문의</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/bsfcheongna/221098124033" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147290" data-ugdid="90000003_00000000000000337A79A301">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#fff0dd;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_18010072265c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">소잉팩토리 청라점</span><span class="cb_ts"><br> 철릭한복원피스 만들기</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">개별문의</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                
                            <li class="cb_litem _MM_FOLD_ITEM" style="display:none;">
                            
                        <a href="http://m.blog.naver.com/qqq6425/221094605598" class="cb_la" data-area="PLACE" data-clk="card" data-gdid="UAT_2147291" data-ugdid="90000003_00000000000000337A43F31E">
                        <div class="cb_ltable">
                            <div class="cb_mcell">
                                <div class="cb_mw lzImg" style="background-color:#979489;">
                                    <img width="100%" class="ub_m fade loaded change" data-width="222" data-height="145" src="./place_home_files/mobile_174735118568c.jpg">
                                    </div>
                            </div>
                            <div class="cb_tcell">
                                <div class="cb_tw">
                                    <div class="cb_t"><span class="cui_em">서구 드림아트POP</span><span class="cb_ts"><br> 캘리그라피 정규반 모집</span></div>
                                    <div class="cb_o">
                                        <span class="cb_on">상시모집</span>
                                        <span class="cb_on">개별문의</span></div>
                                    </div>
                            </div>
                        </div>
                    </a>
                </li>
                </ul>
            <div class="cb_info">
                    
                    <button type="button" class="cb_btn_more _MM_FOLD _MM_FOLD_SET" data-clk="groupopen" data-seq="756378">더보기</button>
                    <button type="button" class="cb_btn_fold _MM_FOLD _MM_FOLD_REMOVE" data-clk="groupfold" data-seq="756378" style="display:none;">접기</button>
                    
                </div>
            </div>
        </div>
</div><div class="grid1 id_uio_banner_subject MM_panel_add_banner"> <div class="grid1_inner"> <div class="uio_banner_subject"> <a href="../naver/naver_plus.html" data-clk="editbanner" class="ubs_link_area" role="button"> <div class="ubs_text_wrap" tabindex="0"><em class="ubs_tit">판 추가</em><p class="ubs_text">네이버 홈에서 더 많은 판 보기</p></div> <div class="ubs_btn"><span class="ubs_btn_text">추가</span></div> </a> </div> </div> </div></div>
<div class="brick-vowel">
		</div>
</div>



</div>
</div>

<div class="flick-panel"> </div>
<div class="flick-panel"> </div>

</div>
</div>
<div id="grid_loading" class="grid_loading" style="display: none;"><span class="ic_loading">로딩중...</span></div>
<div id="more_btn" class="grid_more" style="display:none;"><a href="https://m.naver.com/#" class="gm_a">더보기<span class="sprh sprh_gmarr"></span></a></div>
<div id="panel_preload" style="display:none;"></div>
<div id="check_width" style="display:none;"></div>
</div>
<div class="section_panelauthor" id="_MM_PANEL_EDITOR_AREA" style="display:none;">
<a href="https://m.naver.com/" class="sp_link">
<h3 class="sp_title"><em class="point" id="_MM_PANEL_EDITOR"></em>에서 콘텐츠 배열·운영을 담당합니다.</h3>
<span class="sp_info">Update <em class="sp_date" id="_MM_PANEL_LAST_UPDATED"></em></span>
</a>
</div>
<div id="contents_footer" class="footer_wrap" style="position: relative; display: block;">
<div class="footer">
<div class="fpg">
<div id="menu_prev_next" style="display: none;">
<a href="https://m.naver.com/#" class="fpg_a fpg_apv"><span class="sprh sprh_fpgprev">이전</span></a>
<span class="fpg_n"><em class="fpg_non">0</em> / 0</span>
<a href="https://m.naver.com/#" class="fpg_a fpg_anx"><span class="sprh sprh_fpgnext">다음</span></a>
</div>
</div>
<div class="tol">
<span class="tol_fs">
<button type="button" class="tol_fssic" onclick="nclk(this,&#39;fct.small&#39;,&#39;&#39;,&#39;&#39;);">가<span class="sprh sprh_tolminus">작게보기</span></button>
<button type="button" class="tol_fslic" onclick="nclk(this,&#39;fct.large&#39;,&#39;&#39;,&#39;&#39;);">가<span class="sprh sprh_tolplus">크게보기</span></button>
</span>

<a href="https://m.naver.com/#" class="tol_top"><span class="sprh sprh_toltop"></span>TOP</a>

</div>
</div>
<p class="tol_mes" style="display:none"></p>
<div class="fot">
<footer role="contentinfo">
<p class="fot_p">
<a href="https://nid.naver.com/nidlogin.login?svctype=262144&amp;url=http://m.naver.com/" class="fot_pa" onclick="nclk(this,&#39;fot.login&#39;,&#39;&#39;,&#39;&#39;);">로그인</a>
<a href="https://nid.naver.com/mobile/user/help/naverProfile.nhn?lang=ko_KR" class="fot_pa" onclick="nclk(this,&#39;fot.myinfo&#39;,&#39;&#39;,&#39;&#39;);">내 정보관리</a>
<a id="fot_go_light" href="https://m.naver.com/#" class="fot_pa" style="display: inline-block;">라이트홈<span class="ico_fot_n" style="display:none;">N</span></a>
<a href="http://www.naver.com/?mobile" class="fot_pa" onclick="nclk(this,&#39;fot.gopc&#39;,&#39;&#39;,&#39;&#39;);">PC버전</a>

</p>
<p class="fot_p2">
<a href="http://nid.naver.com/mobile/user/help/termAgree.nhn?m=viewTermAgree1" class="fot_p2a" onclick="nclk(this,&#39;fot.agreement&#39;,&#39;&#39;,&#39;&#39;);">이용약관</a>
<a href="http://nid.naver.com/mobile/user/help/termAgree.nhn?m=viewTermAgree3" class="fot_p2a" onclick="nclk(this,&#39;fot.privacy&#39;,&#39;&#39;,&#39;&#39;);"><strong>개인정보처리방침</strong></a>
<a href="http://m.searchad.naver.com/" class="fot_p2a" onclick="nclk(this,&#39;fot.sa&#39;,&#39;&#39;,&#39;&#39;);">검색마케팅</a>
</p>
<p class="fot_p3">
<a href="http://www.nhncorp.com/" class="fot_p3a fot_cp" onclick="nclk(this,&#39;fot.nhncorp&#39;,&#39;&#39;,&#39;&#39;);">ⓒ NAVER Corp.</a>
<a href="https://m.help.naver.com/support/index.nhn" class="fot_p3a" onclick="nclk(this,&#39;fot.help&#39;,&#39;&#39;,&#39;&#39;);">네이버 고객센터</a>
</p>
</footer>
</div>
</div>

<a id="btn_top" href="https://m.naver.com/#TOP" class="imh im_top" style="opacity: 1; display: inline; zoom: 1;">맨위로</a>

<div id="set_start_layer" class="ly_favortab" style="display: none;"></div>
<div id="ly_beauty_event" class="ly_beauty_event" style="display:none;"><div class="area_lbe"><div class="lbe_wrap"><div class="lbe_tw"><p class="lbe_t"></p><p class="lbe_s" style="display:none;"><span class="sp_lbe_edit">홈편집</span>아이콘을 눌러<br>순서를 변경해보세요.</p></div></div></div></div>
<div id="_MM_RTK_CONFIRM" class="ly_beauty_event" style="display:none;" onclick="$Element(this).hide();">
<div class="area_lbe">
<div class="lbe_wrap">
<div class="lbe_tw lbe_tw4">
<p class="lbe_t"><span class="lbe_pn">실시간 급상승 검색어</span>와<br><span class="lbe_pn">날씨</span>는 이 화면에<br>항상 노출됩니다!</p>
</div>
</div>
</div>
</div>
<div id="_MM_SUBSCRIBE_SUCCESS_LAYER" class="area_ly_toast" style="display:none;">
<p class="alt_msg spmo"><span class="alt_name">구독 컨텐츠</span>는 포스트 MY 피드에서 볼 수 있습니다.</p>
</div>
<div id="_MM_SUBSCRIBE_FAILURE_LAYER" class="area_ly_toast" style="display:none;">
<p class="alt_msg spmo">잠시 후 <span class="alt_name">다시 시도</span>해 주세요.</p>
</div>
<div id="_MM_TOAST_LAYER" class="area_ly_toast" style="display:none;">
<p class="alt_msg spmo"></p>
</div>
<div id="ly_mo_reset" class="ly_mo_reset">
<div class="lmr_b">
<p class="lmr_t">네이버 홈 메뉴를 <br>변경하시겠습니까?</p>
<div class="lmr_bw">
<button class="lmr_btno">아니오</button>
<button class="lmr_btok">예</button>
</div>
</div>
</div>
<div id="_MM_ALERT_DIALOG" class="ly_mo_reset">
<div class="lmr_b">
<p id="_MM_ALERT_DIALOG_TITLE" class="lmr_t"></p>
<div class="lmr_bw">
<button class="lmr_btno _MM_ALERT_DIALOG_CANCEL">아니오</button>
<button class="lmr_btok _MM_ALERT_DIALOG_OK">예</button>
</div>
</div>
</div>
<div id="guide_myfeed" class="ly_guide_mychannel" style="display: none;" onclick="setTimeout(function() { $Element(&#39;guide_myfeed&#39;).hide();}, 100);">
<div class="uio_cd_channelguide">
<div class="lgm_bw">
<div class="lgm_bg">
<h3 class="blind">MY채널에서 모아보자!</h3>
<ul class="blind">
<li>내 관심 커뮤니티인 이웃 블로그, 카페, 포스트 새글</li>
<li>구독한 네이버TV 채널의 동영상과 단골샵의 신상</li>
</ul>

<a href="https://nid.naver.com/nidlogin.login?svctype=262144&amp;url=http://m.naver.com/" class="lgm_btn_view"><span class="blind">MY피드 보기</span></a>

<button type="button" class="lgm_btn_close" onclick="$Element(&#39;guide_myfeed&#39;).hide(); return false;"><span class="blind">MY피드 설명 닫기</span></button>
</div>
</div>
</div>
</div>
<div id="_MM_MENU_COMPLETE" class="ly_work_complete" style="display: none;">
<p class="lwc_t">적용완료</p>
</div>
<div id="dmm" class="dmm"></div>
<div id="_MM_VETA" style="display:none;"></div>




<div id="_MM_FLOTING_LAYER" class="popup_wrapper _web">
<!-- EMPTY -->
</div>

<div id="_MM_ALERT_T9" class="ly_alert" style="display:none;">
<div class="la_b">
<div class="la_flex">
<div class="la_tw">
<p class="la_t" id="_MM_ALERT_T9_MSG" data-area-name="text"><span class="la_st">얼럿 콘텐츠</span>를 입력합니다. 두 줄이 넘지 않도록 작성하는 것이 좋습니다.</p>
</div>
</div>
<div class="la_btns">
<button class="la_btn _MM_ALERT_T9_BTN_1" data-action="cancel">취소</button>
<button class="la_btn la_ok _MM_ALERT_T9_BTN_2" data-action="ok">확인</button>
</div>
</div>
</div>
<div id="_MM_ALERT_T10" class="ly_alert" style="display:none;">
<div class="la_b">
<div class="la_flex">
<div class="la_tw">
<h4 class="la_tit" data-area-name="title"></h4>
<p class="la_t" data-area-name="text"></p>
</div>
</div>
<div class="la_btns">
<button class="la_btn" data-action="cancel">취소</button>
<button class="la_btn la_ok" data-action="ok">설정해제</button>
</div>
</div>
</div>
<div id="_MM_ALERT_T12" class="ly_alert" style="display:none">
<div class="la_b">
<div class="la_flex">
<div class="la_tw">
<p class="la_t" id="_MM_ALERT_T12_MSG"><span class="la_st">단순한 안내</span>'확인' 버튼만 제공</p>
</div>
</div>
<div class="la_chkbtns">
<button class="la_chk" onclick="naver.main.CommonLayer.hideLayer(&#39;_MM_ALERT_T12&#39;);">확인</button>
</div>
</div>
</div>

<script src="./place_home_files/mo.veta.core.min.js.다운로드"></script>
<script type="text/template" id="MM_TPL_AIRS">
<div class="gird1_inner" data-template="airsNews">
<div class="cui_cupid_news {= CCN_CLASS}">
<div class="ccn_title_wrap">
<a href="{= TITLE_URL}" class="ccn_title_link" data-area="{= PANEL}" data-clk="airsinfo">
<h3 class="ccn_title">

<span class="ccn_target"><em class="nickname">모두를 위한</em></span>

<span class="ccn_main ccn_main_logo">추천</span>
</h3>
</a>
<button type="button" class="ccn_btn_close _MM_AIRS_CLOSE" data-area="{= PANEL}"  data-clk="airsclose"><span class="blind">추천{= UI_NAME} 닫기</span></button>
</div>
{if UI_TYPE == 'TEXT'}
<div class="cui_text _MM_MORE _MM_AIRS">
{= ITEM_GROUP_HTML}
{= MORE_BUTTON_HTML}
</div>
{/if}
{if UI_TYPE == 'IMAGE'}
<div class="cui_bundle _MM_MORE _MM_AIRS">
<div class="cb_list_wrap">
{= ITEM_GROUP_HTML}
</div>
{= MORE_BUTTON_HTML}
</div>
{/if}
{if UI_TYPE == 'MULTI'}
<div class="cui_bundle _MM_MORE _MM_AIRS">
<div class="cb_list_wrap">
{= ITEM_GROUP_HTML}
</div>
{= MORE_BUTTON_HTML}
</div>
{/if}
</div>
<div class="cui_cupid_news">
<div class="ccn_title_wrap ccn_banner _MM_AIRS_COMMENT_AREA" style="display:none;">
<a href="#" onclick="return false;" class="ccn_title_link _MM_AIRS_COMMENT_LINK" data-area="{= PANEL}"  data-clk="airscomment">
<h3 class="ccn_title" style="display: block;">
<span class="ccn_main ccn_main_logo">추천 {= UI_NAME}</span> 사용해보니 어떠신지요?<span class="ccn_sub_btn">의견쓰기</span>
</h3>
</a>
</div>
<div class="ccn_survey_wrap _MM_AIRS_COMMENT" style="display:none">
<h3 class="ccn_title"><span class="ccn_main">남기실 의견</span>이 있으시면 이야기해 주세요!</h3>
<div class="ccn_survey_form">
<div class="ccn_ta_wrap">
<textarea class="ccn_survey_text _MM_AIRS_COMMENT_CONTENT" rows="3" required maxlength="100" placeholder="전달해 주신 의견 하나하나 귀 기울여, 보다 좋은 서비스가 되도록 노력하겠습니다."></textarea>
</div>
<div class="ccn_sbtns">
<button class="ccn_sbtn_close _MM_AIRS_COMMENT_CLOSE_BTN" type="button">닫기</button>
<button class="ccn_sbtn_submit _MM_AIRS_COMMENT_SEND_BTN" type="button" onclick="naver.main.Airs.sendComment(this);">의견보내기</button>
</div>
</div>
</div>
<div class="ccn_survey_done _MM_AIRS_COMMENT_SEND_FINISH_LAYER" style="display:none">
<h3 class="ccn_dt">참여해 주셔서 감사합니다.</h3>
<p class="ccn_svt">여러분의 의견을 귀 기울여 듣고 개선해 나가겠습니다.</p>
</div>
</div>
</div>
</script>
<script type="text/template" id="MM_TPL_AIRS_MORE_BUTTON">
<div class="ccn_info">
<button type="button" class="ccn_btn_more _MM_MORE_START _MM_AIRS_MORE_BTN" data-more-unit="{= MORE_ITEM_COUNT}" data-area="{= PANEL}"  data-clk="airsmore">더보기</button>
{if SHOW_REFRESH_BUTTON == true}<button type="button" class="ccn_btn_refresh _MM_MORE_END _MM_AIRS_REFRESH" style="display:none;" data-area="{= PANEL}"  data-clk="airsrefresh">새로운 {= UI_NAME} 가져오기</button>{/if}
</div>
</script>
<script type="text/template" id="MM_TPL_AIRS_REFRESH_BUTTON">
<div class="ccn_info _MM_AIRS_TPL">
<button type="button" class="ccn_btn_refresh _MM_AIRS_REFRESH" data-area="{= PANEL}"  data-clk="airsrefresh">새로운 {= UI_NAME} 가져오기</button>
</div>
</script>
<script type="text/template" id="MM_TPL_AIRS_ITEM_GROUP">
<ul class="ct_l _MM_AIRS_DATA" data-start="{= START_INDEX}" data-total="{= TOTAL_COUNT}" data-model-version="{= MODEL_VERSION}" data-session-id="{= SESSION_ID}">
{= ITEM_HTML}
</ul>
</script>
<script type="text/template" id="MM_TPL_AIRS_IMAGE_ITEM_GROUP">
<ul class="cb_list _MM_AIRS_DATA" data-start="{= START_INDEX}" data-total="{= TOTAL_COUNT}" data-model-version="{= MODEL_VERSION}" data-session-id="{= SESSION_ID}">
{= ITEM_HTML}
</ul>
</script>
<script type="text/template" id="MM_TPL_AIRS_MULTI_IMAGE_ITEM_GROUP">
<div class="cb_list_wrap _MM_AIRS_TPL _MM_AIRS_DATA" data-start="{= START_INDEX}" data-total="{= TOTAL_COUNT}" data-model-version="{= MODEL_VERSION}" data-session-id="{= SESSION_ID}">
<ul class="cb_list">
{= ITEM_HTML}
</ul>
</div>
</script>
<script type="text/template" id="MM_TPL_AIRS_MULTI_TWO_THUMBS_ITEM_GROUP">
<div class="ccn_list_wrap _MM_AIRS_TPL _MM_AIRS_DATA" data-start="{= START_INDEX}" data-total="{= TOTAL_COUNT}" data-model-version="{= MODEL_VERSION}" data-session-id="{= SESSION_ID}">
<ul class="uio_thumbnail">
{= ITEM_HTML}
</ul>
</div>
</script>
<script type="text/template" id="MM_TPL_AIRS_MULTI_TEXT_ITEM_GROUP">
<div class="ccn_list_wrap _MM_AIRS_TPL _MM_AIRS_DATA" data-start="{= START_INDEX}" data-total="{= TOTAL_COUNT}" data-model-version="{= MODEL_VERSION}" data-session-id="{= SESSION_ID}">
<ul class="uio_text">
{= ITEM_HTML}
</ul>
</div>
</script>
<script type="text/template" id="MM_TPL_AIRS_ITEM">
<li class="ct_item _MM_MORE_ITEM" {= DISPLAY_MODE}>
<a href="{= MOBILE_URL }" class="ct_a _MM_AIRS_DATA_ITEM" data-area="{= PANEL}" data-clk="airscont" data-gdid="{= GDID }" data-more="{= DATA_MORE }" data-item-rank="{= ITEM_RANK}"> {= TITLE }</a>
</li>
</script>
<script type="text/template" id="MM_TPL_AIRS_IMAGE_ITEM">
<li class="cb_litem _MM_MORE_ITEM" {= DISPLAY_MODE}>
<a href="{= MOBILE_URL }" class="cb_la _MM_AIRS_DATA_ITEM" data-area="{= PANEL}" data-clk="airscont" data-gdid="{= GDID }" data-more="{= DATA_MORE }" data-item-rank="{= ITEM_RANK}">
<div class="cb_ltable">
{if IMAGE_URL != ''}
<div class="cb_mcell">
<div class="cb_mw">
<img src="{=IMAGE_URL}" alt="" width="100%" class="ub_m">
</div>
</div>
{/if}
<div class="cb_tcell">
<div class="cb_tw">
<div class="cb_t"><span class="cb_ts">{= TITLE }</span></div>
</div>
</div>
</div>
</a>
</li>
</script>
<script type="text/template" id="MM_TPL_AIRS_MULTI_IMAGE_ITEM">
<li class="cb_litem cb_lright">
<a href="{= MOBILE_URL}" class="cb_la _MM_AIRS_DATA_ITEM" data-area="{= PANEL}" data-clk="airscont" data-gdid="{= GDID }" data-more="{= DATA_MORE }" data-item-rank="{= ITEM_RANK}">
<div class="cb_ltable">
<div class="cb_tcell">
<div class="cb_tw">
<div class="cb_t">{= TITLE}</div>
{if AUTHOR}
<div class="cb_div">
{if SOURCE != ""}<span class="cb_sn">{= SOURCE}</span>{/if}
<div class="cb_o">
{if AUTHOR_IMAGE}
<div class="cb_mws">
<img src="{= AUTHOR_IMAGE}" width="26" height="26" alt="{= AUTHOR}" class="cb_ms">
</div>
{/if}
<span class="cb_on">{= AUTHOR}</span>
</div>
</div>
{/if}
</div>
</div>
<div class="cb_mcell">
<div class="cb_mw"><img src="{= IMAGE_URL}" width="100%" alt="" class="utl_m"></div>
</div>
</div>
</a>
</li>
</script>
<script type="text/template" id="MM_TPL_AIRS_MULTI_TWO_THUMBS_ITEM">
<li class="ut_item">
<a href="{= MOBILE_URL}" class="ut_a _MM_AIRS_DATA_ITEM" data-area="{= PANEL}" data-clk="airscont" data-gdid="{= GDID }" data-more="{= DATA_MORE }" data-item-rank="{= ITEM_RANK}">
<span class="ut_mw">
<img src="{= IMAGE_URL}" width="100%" alt="" class="ut_m">
</span>
<span class="ut_d"><strong class="ut_t">{= TITLE}</strong></span>
</a>
</li>
</script>
<script type="text/template" id="MM_TPL_AIRS_MULTI_TEXT_ITEM">
<li class="ut_item"><a href="{= MOBILE_URL}" class="ut_a _MM_AIRS_DATA_ITEM" data-area="{= PANEL}" data-clk="airscont" data-gdid="{= GDID }" data-more="{= DATA_MORE }" data-item-rank="{= ITEM_RANK}">{= TITLE}</a></li>
</script>
<script type="text/template" id="MM_TPL_AIRS_MULTI_THREE_THUMBS_ITEM">
<li class="ut_item">
<a href="{= MOBILE_URL}" class="ut_a _MM_AIRS_DATA_ITEM" data-area="{= PANEL}" data-clk="airscont" data-gdid="{= GDID }" data-more="{= DATA_MORE }" data-item-rank="{= ITEM_RANK}">
<div class="ut_mw">
<img src="{= IMAGE_URL}" width="100%" alt="" class="ut_m">
</div>
<div class="ut_tw">
<span class="ut_ds">{= TITLE}</span>
</div>
</a>
</li>
</script>

<script type="text/template" id="_MM_AIRS_NEWS_SERIES_ITEM_TEMPLATE">
{for article in articles}
<li class="cs_item _MM_AIRS_NEWS_SERIES_ITEM" data-index="{=article.index}">
<a href="{=article.articleUrl}" class="cs_a _MM_AIRS_NEWS_SERIES_ITEM_LINK" onclick="nclk(this,'{=article.contentClickCode}','','');">
{if article.articleImageUrl != ""}
<div class="cs_mw">
<img src="{=article.articleImageUrl}" width="{=article.imageWidth}" height="{=article.imageHeight}" alt="" class="cs_m">
{if article.articleType == "2"}
<span class="cui_ico_movie"><span class="blind">영상</span></span>
{/if}
</div>
{/if}
<div class="cs_flex">
<div class="cs_tw">
<span role="link" tabindex="0" class="cs_t cui_em _MM_AIRS_NEWS_SERIES_HOTISSUE_LINK" onclick="nclk(this,'{=article.seriesTitleClickCode}','','');" data-link="{=article.seriesUrl}">{=article.seriesTitle}</span>
<span class="cs_d">{=article.articleTitle}</span>
<span class="cs_o">{=article.officeName}</span>
</div>
</div>
</a>
</li>
{/for}
</script>

<div id="_MM_ASIDE_LAB_REVISION" data-lab-revision="15"></div>
<script>
function callAvailableFunctionsBeforeOnload() {
resetWeatherForApp();
}
function resetWeatherForApp() {
var url = "/nvweather_mmap?path=include/grid/weatherBanner&fname=WEATHER",
ajax = new XMLHttpRequest();
ajax.open("GET", url, true);
ajax.onreadystatechange = function(){
if(ajax.readyState == 4) {
if(ajax.status == 200) {
var html = ajax.responseText;
if (html.search(/ERROR/) < 0) {
var weather = document.getElementById("ct").querySelector("._MM_WEATHER_BANNER");
if (weather !== null) {
weather.innerHTML = html;
}
}
}
}
}
ajax.send(null);
}
function initVariable() {
$.createNamespace("naver.main").gVariable = {
sViewType : "mobile",
sUaViewType : "mobile",
nLargeCardSize : 15,
nSmallCardSize : 40,
isLogin : false,

sUserGender : "(none)",
notSupportBrowser : "TRUE",
sUaType : "",
isApp : false,
isInApp : false,
sBrowserType : "NATIVE",
sTrace : "",
sDefaultSectionId : "PLACE",
isMobile : false,
bNoFlicking : false,
isOnePanel : true,
bDividedLoading : false,
bContentOnly : false,
bMizOn : false,
bMyFeed : true,

sMyFeedService : "",
allowPlaceCodes : ['01', '02', '09', '14', '11', '08', '07', '16'],
oRTK : 

{
"t": "1513210380000",
"s": "2017.12.14. (목) 09:13:00 AM",
"o": "2017-12-14T09:13:00",
"d": [
{
"k": "온수역",
"c": "sm",
"a": "동일",
"n": "0",
"q": "%EC%98%A8%EC%88%98%EC%97%AD"
},
{
"k": "수요미식회 만두",
"c": "sm",
"a": "동일",
"n": "0",
"q": "%EC%88%98%EC%9A%94%EB%AF%B8%EC%8B%9D%ED%9A%8C+%EB%A7%8C%EB%91%90"
},
{
"k": "온수역 사고",
"c": "up",
"a": "상승",
"n": "1",
"q": "%EC%98%A8%EC%88%98%EC%97%AD+%EC%82%AC%EA%B3%A0"
},
{
"k": "토트넘 브라이튼",
"c": "dw",
"a": "하락",
"n": "1",
"q": "%ED%86%A0%ED%8A%B8%EB%84%98+%EB%B8%8C%EB%9D%BC%EC%9D%B4%ED%8A%BC"
},
{
"k": "1호선 사고",
"c": "sm",
"a": "동일",
"n": "0",
"q": "1%ED%98%B8%EC%84%A0+%EC%82%AC%EA%B3%A0"
},
{
"k": "김호영",
"c": "sm",
"a": "동일",
"n": "0",
"q": "%EA%B9%80%ED%98%B8%EC%98%81"
},
{
"k": "1호선",
"c": "sm",
"a": "동일",
"n": "0",
"q": "1%ED%98%B8%EC%84%A0"
},
{
"k": "12월 14일 데이",
"c": "sm",
"a": "동일",
"n": "0",
"q": "12%EC%9B%94+14%EC%9D%BC+%EB%8D%B0%EC%9D%B4"
},
{
"k": "이승우",
"c": "sm",
"a": "동일",
"n": "0",
"q": "%EC%9D%B4%EC%8A%B9%EC%9A%B0"
},
{
"k": "홍미영",
"c": "sm",
"a": "동일",
"n": "0",
"q": "%ED%99%8D%EB%AF%B8%EC%98%81"
},
{
"k": "김남규 교수",
"c": "up",
"a": "상승",
"n": "1",
"q": "%EA%B9%80%EB%82%A8%EA%B7%9C+%EA%B5%90%EC%88%98"
},
{
"k": "강철비",
"c": "up",
"a": "상승",
"n": "1",
"q": "%EA%B0%95%EC%B2%A0%EB%B9%84"
},
{
"k": "허경영",
"c": "up",
"a": "상승",
"n": "1",
"q": "%ED%97%88%EA%B2%BD%EC%98%81"
},
{
"k": "엄정화",
"c": "up",
"a": "상승",
"n": "3",
"q": "%EC%97%84%EC%A0%95%ED%99%94"
},
{
"k": "손흥민 골",
"c": "sm",
"a": "동일",
"n": "0",
"q": "%EC%86%90%ED%9D%A5%EB%AF%BC+%EA%B3%A8"
},
{
"k": "문희옥",
"c": "sm",
"a": "동일",
"n": "0",
"q": "%EB%AC%B8%ED%9D%AC%EC%98%A5"
},
{
"k": "유시민 청원",
"c": "up",
"a": "상승",
"n": "2",
"q": "%EC%9C%A0%EC%8B%9C%EB%AF%BC+%EC%B2%AD%EC%9B%90"
},
{
"k": "신아영",
"c": "sm",
"a": "동일",
"n": "0",
"q": "%EC%8B%A0%EC%95%84%EC%98%81"
},
{
"k": "토트넘",
"c": "dw",
"a": "하락",
"n": "8",
"q": "%ED%86%A0%ED%8A%B8%EB%84%98"
},
{
"k": "허그데이",
"c": "nw",
"a": "",
"n": "0",
"q": "%ED%97%88%EA%B7%B8%EB%8D%B0%EC%9D%B4"
}
]
}

,
oHTP : {
"api": "kvfarm",
"t": "2017-12-14T06:30Z",
"s": "12.14. (목) 06:30 AM 기준",
"u": "2017.12.14. 02:30 ~  05:30 기준",
"d": [
{
"k": "미국 금리인상",
"c": "nw",
"a": "",
"n": "0",
"q": "%EB%AF%B8%EA%B5%AD+%EA%B8%88%EB%A6%AC%EC%9D%B8%EC%83%81"
},
{
"k": "정치자금법 위반 혐의",
"c": "sm",
"a": "동일",
"n": "0",
"q": "%EC%A0%95%EC%B9%98%EC%9E%90%EA%B8%88%EB%B2%95+%EC%9C%84%EB%B0%98+%ED%98%90%EC%9D%98"
},
{
"k": "가수 문희옥",
"c": "sm",
"a": "동일",
"n": "0",
"q": "%EA%B0%80%EC%88%98+%EB%AC%B8%ED%9D%AC%EC%98%A5"
},
{
"k": "文대통령 방중",
"c": "nw",
"a": "",
"n": "0",
"q": "%E6%96%87%EB%8C%80%ED%86%B5%EB%A0%B9+%EB%B0%A9%EC%A4%91"
},
{
"k": "美공화 지도부 세제개편 단일안 합의",
"c": "nw",
"a": "",
"n": "0",
"q": "%E7%BE%8E%EA%B3%B5%ED%99%94+%EC%A7%80%EB%8F%84%EB%B6%80+%EC%84%B8%EC%A0%9C%EA%B0%9C%ED%8E%B8+%EB%8B%A8%EC%9D%BC%EC%95%88+%ED%95%A9%EC%9D%98"
},
{
"k": "인천시장 출마 선언",
"c": "sm",
"a": "동일",
"n": "0",
"q": "%EC%9D%B8%EC%B2%9C%EC%8B%9C%EC%9E%A5+%EC%B6%9C%EB%A7%88+%EC%84%A0%EC%96%B8"
},
{
"k": "규제 아닌 육성안",
"c": "nw",
"a": "",
"n": "0",
"q": "%EA%B7%9C%EC%A0%9C+%EC%95%84%EB%8B%8C+%EC%9C%A1%EC%84%B1%EC%95%88"
},
{
"k": "틸러슨 제안",
"c": "sm",
"a": "동일",
"n": "0",
"q": "%ED%8B%B8%EB%9F%AC%EC%8A%A8+%EC%A0%9C%EC%95%88"
},
{
"k": "최경환 체포동의안",
"c": "sm",
"a": "동일",
"n": "0",
"q": "%EC%B5%9C%EA%B2%BD%ED%99%98+%EC%B2%B4%ED%8F%AC%EB%8F%99%EC%9D%98%EC%95%88"
},
{
"k": "트럼프의 예루살렘 선언",
"c": "sm",
"a": "동일",
"n": "0",
"q": "%ED%8A%B8%EB%9F%BC%ED%94%84%EC%9D%98+%EC%98%88%EB%A3%A8%EC%82%B4%EB%A0%98+%EC%84%A0%EC%96%B8"
},
{
"k": "라디오스타 김호영",
"c": "sm",
"a": "동일",
"n": "0",
"q": "%EB%9D%BC%EB%94%94%EC%98%A4%EC%8A%A4%ED%83%80+%EA%B9%80%ED%98%B8%EC%98%81"
},
{
"k": "토트넘 손흥민",
"c": "nw",
"a": "",
"n": "0",
"q": "%ED%86%A0%ED%8A%B8%EB%84%98+%EC%86%90%ED%9D%A5%EB%AF%BC"
},
{
"k": "로봇이 아니야 채수빈",
"c": "sm",
"a": "동일",
"n": "0",
"q": "%EB%A1%9C%EB%B4%87%EC%9D%B4+%EC%95%84%EB%8B%88%EC%95%BC+%EC%B1%84%EC%88%98%EB%B9%88"
},
{
"k": "이판사판 동하",
"c": "sm",
"a": "동일",
"n": "0",
"q": "%EC%9D%B4%ED%8C%90%EC%82%AC%ED%8C%90+%EB%8F%99%ED%95%98"
},
{
"k": "전생에 웬수들 이보희",
"c": "nw",
"a": "",
"n": "0",
"q": "%EC%A0%84%EC%83%9D%EC%97%90+%EC%9B%AC%EC%88%98%EB%93%A4+%EC%9D%B4%EB%B3%B4%ED%9D%AC"
},
{
"k": "엑소 Ko Ko Bop",
"c": "nw",
"a": "",
"n": "0",
"q": "%EC%97%91%EC%86%8C+Ko+Ko+Bop"
},
{
"k": "북한 안데르센 감독",
"c": "nw",
"a": "",
"n": "0",
"q": "%EB%B6%81%ED%95%9C+%EC%95%88%EB%8D%B0%EB%A5%B4%EC%84%BC+%EA%B0%90%EB%8F%85"
},
{
"k": "POP 거리로 나온 미술",
"c": "nw",
"a": "",
"n": "0",
"q": "POP+%EA%B1%B0%EB%A6%AC%EB%A1%9C+%EB%82%98%EC%98%A8+%EB%AF%B8%EC%88%A0"
},
{
"k": "수목드라마 흑기사 신세경",
"c": "nw",
"a": "",
"n": "0",
"q": "%EC%88%98%EB%AA%A9%EB%93%9C%EB%9D%BC%EB%A7%88+%ED%9D%91%EA%B8%B0%EC%82%AC+%EC%8B%A0%EC%84%B8%EA%B2%BD"
},
{
"k": "데뷔 20주년",
"c": "nw",
"a": "",
"n": "0",
"q": "%EB%8D%B0%EB%B7%94+20%EC%A3%BC%EB%85%84"
}
]
},
oEditor : {"DESIGN":{"panelCode":"DESIGN","panelTitle":"디자인","editor":"디자인프레스(주)","buttonText":"의견남기기","buttonUrl":"http://m.blog.naver.com/designpress2016/220960274093","exposeYN":"Y","lastUpdatedAt":"2017-03-23 19:33:46.835","lastRevision":"2017.12.14"},"MYFEED":{"panelCode":"MYFEED","panelTitle":"MY피드","editor":null,"buttonText":null,"buttonUrl":null,"exposeYN":null,"lastUpdatedAt":null,"lastRevision":null},"LAW":{"panelCode":"LAW","panelTitle":"법률","editor":"(주)법률N미디어","buttonText":"의견남기기","buttonUrl":"http://blog.naver.com/naverlaw/221063633529","exposeYN":"Y","lastUpdatedAt":"2017-08-03 16:34:18.927","lastRevision":"2017.12.14"},"TODAY":{"panelCode":"TODAY","panelTitle":"검색","editor":"","buttonText":"","buttonUrl":"","exposeYN":"N","lastUpdatedAt":"2017-11-13 18:22:39.045","lastRevision":null},"SHOPPING":{"panelCode":"SHOPPING","panelTitle":"쇼핑","editor":null,"buttonText":null,"buttonUrl":null,"exposeYN":null,"lastUpdatedAt":null,"lastRevision":"2017.12.14"},"CULTURE":{"panelCode":"CULTURE","panelTitle":"책문화","editor":null,"buttonText":null,"buttonUrl":null,"exposeYN":null,"lastUpdatedAt":null,"lastRevision":"2017.12.14"},"JOB":{"panelCode":"JOB","panelTitle":"JOB&","editor":"(주)잡스엔","buttonText":"의견남기기","buttonUrl":"http://m.blog.naver.com/jobarajob/220966274768","exposeYN":"Y","lastUpdatedAt":"2017-03-27 21:01:51.042","lastRevision":"2017.12.14"},"VIDEO":{"panelCode":"VIDEO","panelTitle":"동영상","editor":null,"buttonText":null,"buttonUrl":null,"exposeYN":null,"lastUpdatedAt":null,"lastRevision":"2017.12.14"},"MOMKIDS":{"panelCode":"MOMKIDS","panelTitle":"맘·키즈","editor":null,"buttonText":null,"buttonUrl":null,"exposeYN":null,"lastUpdatedAt":null,"lastRevision":"2017.12.14"},"FINANCE":{"panelCode":"FINANCE","panelTitle":"경제M","editor":null,"buttonText":null,"buttonUrl":null,"exposeYN":null,"lastUpdatedAt":null,"lastRevision":"2017.12.14"},"BOOM":{"panelCode":"BOOM","panelTitle":"뿜","editor":null,"buttonText":null,"buttonUrl":null,"exposeYN":"N","lastUpdatedAt":"2017-08-10 16:43:38.777","lastRevision":"2017.12.14"},"ENT":{"panelCode":"ENT","panelTitle":"연예","editor":null,"buttonText":null,"buttonUrl":null,"exposeYN":null,"lastUpdatedAt":null,"lastRevision":null},"PLACE":{"panelCode":"PLACE","panelTitle":"플레이스","editor":null,"buttonText":null,"buttonUrl":null,"exposeYN":null,"lastUpdatedAt":null,"lastRevision":null},"NEWS":{"panelCode":"NEWS","panelTitle":"뉴스","editor":null,"buttonText":null,"buttonUrl":null,"exposeYN":null,"lastUpdatedAt":null,"lastRevision":null},"LIVINGHOME":{"panelCode":"LIVINGHOME","panelTitle":"리빙","editor":null,"buttonText":null,"buttonUrl":null,"exposeYN":null,"lastUpdatedAt":null,"lastRevision":"2017.12.14"},"LIVING":{"panelCode":"LIVING","panelTitle":"푸드","editor":null,"buttonText":null,"buttonUrl":null,"exposeYN":null,"lastUpdatedAt":null,"lastRevision":"2017.12.14"},"ANIMAL":{"panelCode":"ANIMAL","panelTitle":"동물공감","editor":"(주)동그람이","buttonText":"의견남기기","buttonUrl":"http://m.blog.naver.com/animalandhuman/221081025234","exposeYN":"Y","lastUpdatedAt":"2017-08-24 18:16:27.813","lastRevision":"2017.12.14"},"CHINA":{"panelCode":"CHINA","panelTitle":"중국","editor":"(주)차이나랩","buttonText":"의견남기기","buttonUrl":"http://m.blog.naver.com/china_lab/220962617005","exposeYN":"Y","lastUpdatedAt":"2017-03-23 19:33:56.337","lastRevision":"2017.12.14"},"SCHOOL":{"panelCode":"SCHOOL","panelTitle":"스쿨잼","editor":"(주)스쿨잼","buttonText":"의견남기기","buttonUrl":"http://m.blog.naver.com/naverschool/220966254204","exposeYN":"Y","lastUpdatedAt":"2017-08-09 20:31:59.692","lastRevision":"2017.12.14"},"BBOOM":{"panelCode":"BBOOM","panelTitle":"웹툰·뿜","editor":null,"buttonText":null,"buttonUrl":null,"exposeYN":null,"lastUpdatedAt":null,"lastRevision":"2017.12.14"},"BUSINESS":{"panelCode":"BUSINESS","panelTitle":"비즈니스","editor":"㈜인터비즈","buttonText":"의견남기기","buttonUrl":"http://m.blog.naver.com/naver_business/220964064035","exposeYN":"Y","lastUpdatedAt":"2017-05-26 11:28:14.964","lastRevision":"2017.12.14"},"SPORTS":{"panelCode":"SPORTS","panelTitle":"스포츠","editor":null,"buttonText":null,"buttonUrl":null,"exposeYN":null,"lastUpdatedAt":null,"lastRevision":null},"TRAVEL":{"panelCode":"TRAVEL","panelTitle":"여행+","editor":"(주)여플","buttonText":"의견남기기","buttonUrl":"http://m.blog.naver.com/the_trip/220965039674","exposeYN":"Y","lastUpdatedAt":"2017-03-23 19:33:52.734","lastRevision":"2017.12.14"},"CARGAME":{"panelCode":"CARGAME","panelTitle":"차·테크","editor":null,"buttonText":null,"buttonUrl":null,"exposeYN":null,"lastUpdatedAt":null,"lastRevision":"2017.12.14"},"MOVIE":{"panelCode":"MOVIE","panelTitle":"영화","editor":"(주)씨네플레이","buttonText":"의견남기기","buttonUrl":"http://m.blog.naver.com/nv_movie/220966299516","exposeYN":"Y","lastUpdatedAt":"2017-03-27 21:02:00.574","lastRevision":"2017.12.14"},"PICK":{"panelCode":"PICK","panelTitle":"20PICK","editor":null,"buttonText":null,"buttonUrl":null,"exposeYN":null,"lastUpdatedAt":null,"lastRevision":"2017.05.01"},"HEALTH":{"panelCode":"HEALTH","panelTitle":"건강","editor":null,"buttonText":null,"buttonUrl":null,"exposeYN":null,"lastUpdatedAt":null,"lastRevision":"2017.12.14"},"BEAUTY":{"panelCode":"BEAUTY","panelTitle":"패션뷰티","editor":null,"buttonText":null,"buttonUrl":null,"exposeYN":null,"lastUpdatedAt":null,"lastRevision":"2017.12.14"},"MUSIC":{"panelCode":"MUSIC","panelTitle":"뮤직","editor":null,"buttonText":null,"buttonUrl":null,"exposeYN":null,"lastUpdatedAt":null,"lastRevision":"2017.12.14"},"ITTECH":{"panelCode":"ITTECH","panelTitle":"테크","editor":"(주)테크플러스","buttonText":"의견남기기","buttonUrl":"https://m.blog.naver.com/tech-plus/221100065864","exposeYN":"Y","lastUpdatedAt":"2017-09-21 17:22:35.480","lastRevision":"2017.12.14"},"WEDDING":{"panelCode":"WEDDING","panelTitle":"연애·결혼","editor":"(주)썸랩","buttonText":"의견남기기","buttonUrl":"https://m.blog.naver.com/sum-lab/221084190193","exposeYN":"Y","lastUpdatedAt":"2017-08-31 18:14:37.779","lastRevision":"2017.12.14"},"SHOW":{"panelCode":"SHOW","panelTitle":"공연전시","editor":"(주)아티션","buttonText":"의견남기기","buttonUrl":"http://m.blog.naver.com/allthat_art/221004173428","exposeYN":"Y","lastUpdatedAt":"2017-06-22 19:39:37.619","lastRevision":"2017.12.14"},"SCIENCE":{"panelCode":"SCIENCE","panelTitle":"과학","editor":null,"buttonText":null,"buttonUrl":null,"exposeYN":null,"lastUpdatedAt":null,"lastRevision":"2017.12.14"},"WITH":{"panelCode":"WITH","panelTitle":"함께N","editor":null,"buttonText":null,"buttonUrl":null,"exposeYN":null,"lastUpdatedAt":null,"lastRevision":"2017.12.14"},"FARM":{"panelCode":"FARM","panelTitle":"FARM","editor":"(주)아그로플러스","buttonText":"의견남기기","buttonUrl":"http://blog.naver.com/nong-up/220968195588","exposeYN":"Y","lastUpdatedAt":"2017-04-06 18:38:42.613","lastRevision":"2017.12.14"},"GAMEAPP":{"panelCode":"GAMEAPP","panelTitle":"게임","editor":null,"buttonText":null,"buttonUrl":null,"exposeYN":null,"lastUpdatedAt":null,"lastRevision":"2017.12.14"}},
sAd : "https://mv.ad.naver.com/adshow",
bAdMarketingCalled : false,
bLcsAppCalled : false,
sFontSize : "fzoom",
nPaddingTop : 0,
htPromotionPanel : {
"timestamp" : "20171207184000",
"list" : [
]
},
age : "(none)",
nickname : "(none)",
globalOrigin : "",


sPanelRanking : "NEWS;BOOM;ITTECH;BBOOM;ENT;MOVIE;SPORTS;LIVINGHOME;FINANCE;BEAUTY;TRAVEL;HEALTH;GAMEAPP;ANIMAL;LIVING;JOB;SHOW;LAW;FARM;CARGAME;MOMKIDS;CULTURE;WEDDING;SCIENCE;CHINA;DESIGN;BUSINESS;MUSIC;SHOPPING;VIDEO;WITH;AUTO;LIFE;PLACE;PICK",
sPanelAll : "NEWS;ENT;SPORTS;BBOOM;LIVING;SHOPPING;BEAUTY;VIDEO;CULTURE;CARGAME;GAMEAPP;FINANCE;MOMKIDS;MUSIC;JOB;HEALTH;MYFEED;WITH;LIVINGHOME;SCIENCE;TRAVEL;MOVIE;PLACE;DESIGN;CHINA;TODAY;SCHOOL;BUSINESS;FARM;SHOW;LAW;BOOM;ANIMAL;WEDDING;ITTECH",
sPanelDefaultOn : "NEWS;ENT;SPORTS;SHOPPING",





sPanelOn : "NEWS;ENT;SPORTS;SHOPPING;VIDEO"



,
oRTKServerTimestamp : "1513210409"
};

}
var LogError=function(b){var a=new Image();a.src="https://cecs.naver.com/?m="+b+"&u="+document.location+"&l=1115"};DLScript={quSXI:new Array(),quS:new Array(),retry:0,isLoad:function(a){for(var b=this.quS.length-1;b>=0;b--){if(this.quS[b]===a){return true}}return false},_runOnload:function(b,d,c){if(!d){return}var a=b.readyState;if(typeof a==="undefined"&&!b.onloadDone){b.onloadDone=true;(c)?setTimeout(d,100):b.onload=d;return}if(("loaded"===a||"complete"===a)&&!b.onloadDone){b.onloadDone=true;setTimeout(d,100)}else{if(this.retry<10){this.retry++;setTimeout(function(){DLScript._runOnload(b,d,c)},10)}}},_createJSDom:function(c,b){var a=document.createElement("script");if(b=="src"){a.src=c}else{a.text=c}return a},_appendJSDom:function(a){document.getElementsByTagName("head")[0].appendChild(a)},loadDS:function(b,d,c){if(!this.isLoad(b)){this.quS[this.quS.length]=b;
var a=this._createJSDom(b,"src");this._runOnload(a,d,c);this._appendJSDom(a)}else{if(d){setTimeout(d,100)}}},loadXI:function(c,i,g,d){if(!this.isLoad(c)){this.quS[DLScript.quS.length]=c;var h=this.quSXI.length;if(d){var a={response:null,onload:g,done:false};DLScript.quSXI[h]=a}try{if(window.localStorage){try{var b=localStorage.getItem("MM_DL_"+c+"_uid");var m=localStorage.getItem("MM_DL_"+c)}catch(j){JEagleEyeClient.sendError("[DL] localStorge getItem() : "+j)}if(m&&i&&b==i){if(d){DLScript.quSXI[h].response=m;DLScript.injectScripts()}else{var f=DLScript._createJSDom(m,"text");DLScript._runOnload(f,g,true);DLScript._appendJSDom(f)}return}}}catch(e){}var k=DLScript.getXHRObject();if(!k){JEagleEyeClient.sendError("[DL] XHRObject is NULL");this.loadDS(c,g);return}k.onreadystatechange=function(){if(k.readyState==4){if(k.status==200||k.status==0){var o=k.responseText;
try{if(window.localStorage&&i){DLScript.clearLS();localStorage.setItem("MM_DL_"+c,o);localStorage.setItem("MM_DL_"+c+"_uid",i)}}catch(p){ if (!p.code || !p.QUOTA_EXCEEDED_ERR || p.code != p.QUOTA_EXCEEDED_ERR) { JEagleEyeClient.sendError("[DL] localStorge setItem() : "+p) } }if(d){DLScript.quSXI[h].response=o;DLScript.injectScripts()}else{var n=DLScript._createJSDom(o,"text");DLScript._runOnload(n,g,true);DLScript._appendJSDom(n)}}else{JEagleEyeClient.sendError("[DL] status is not 200(0) - "+k.status);DLScript.removeUrl(c);DLScript.clearLS();setTimeout(g,100)}}};var l="";if(i){l=(c.indexOf("?")>0)?"&"+i:"?"+i}k.open("GET",c+l,true);k.setRequestHeader("Content-Type","application/x-www-form-urlencoded; charset=utf-8");k.setRequestHeader("charset","utf-8");k.send("")}else{if(g){setTimeout(g,100)}}},injectScripts:function(){var a=DLScript.quSXI.length;for(var c=0;c<a;c++){var d=DLScript.quSXI[c];if(!d.done){if(!d.response){break
}else{d.done=true;var b=DLScript._createJSDom(d.response,"text");DLScript._runOnload(b,d.onload,true);DLScript._appendJSDom(b)}}}},getXHRObject:function(){var c=false;try{c=new XMLHttpRequest()}catch(f){var b=["Msxml2.XMLHTTP","Microsoft.XMLHTTP","Msxml2.XMLHTTP.6.0","Msxml2.XMLHTTP.3.0"];var a=b.length;for(var d=0;d<a;d++){try{c=new ActiveXObject(b[d])}catch(f){JEagleEyeClient.sendError("[DL] getXHRObject : "+f.description);continue}break}}finally{return c}},loadWS:function(a){document.write('<script src="'+a+'" type="text/javascript"><\/script>')},clearLS:function(){if(window.localStorage){try{ var aKeys = []; for(var i = 0; i < localStorage.length; i++) { var sKey = localStorage.key(i); if (sKey.indexOf("MM_DL_") != 0) { continue; } aKeys.push(sKey); } for (var idx in aKeys) { localStorage.removeItem(aKeys[idx]); } }catch(a){JEagleEyeClient.sendError("[DL] clearLS : "+a)}}},removeUrl:function(a){for(var b=this.quS.length-1;b>=0;b--){if(this.quS[b]===a){this.quS[b]=""}}}};
var CU={}; CU.resetWeatherForApp = function(){}
</script>

<script>
var isOnload = false;

var loadJindo = "https://s.pstatic.net/nm/js/c/jindo_20170928.min.js" 
var JSUID = "2017120801";
var loadJSFile = "/js/c/nmain_20171208.min.js";
var retry = 0;
if(!naver.main.LcsLog) { naver.main.LcsLog = (function(gv, gridInfo) {
var gridInfo = gridInfo,
lcsDo = function(sSectionId, htParam) {
try {
setTimeout(function() {
naver.main.LcsLog.lcsDo(sSectionId, htParam);
}, 500);
} catch(e) {console.error(e); JEagleEyeClient.sendError("[LCS2]lcs_do error : " + e.description); }
};
return { lcsDo : lcsDo };
})(naver.main.gVariable, naver.main.GridInfo);
}
function fReloadCSS(sUrl) {
var elCSS = document.createElement('link');
elCSS.setAttribute('rel', 'stylesheet');
elCSS.setAttribute('type', 'text/css')
elCSS.setAttribute('href', sUrl);
document.getElementsByTagName('head')[0].appendChild(elCSS);
JEagleEyeClient.sendError("[CSS RELOAD] url : " + sUrl);
}
function loadJS() {
if (!isOnload) {
isOnload = true;
DLScript.loadDS(loadJindo, function() {
initVariable();
DLScript.loadXI(loadJSFile, JSUID, ready);
});
// CSS RELOAD
var elHead = document.getElementsByTagName('head')[0];
var sHeadPosition = elHead.style['position'] || document.defaultView.getComputedStyle(elHead, null).getPropertyValue('position') || document.defaultView.getComputedStyle(elHead, null)['position'];
if (sHeadPosition != 'relative') {
fReloadCSS('https://s.pstatic.net/nm/css/w_g171207.css');
}
}
}
function ready() {
if(typeof window.naver.main.SectionManager == "undefined" && retry < 10) {
retry++;
DLScript.loadDS(mainScript+"?"+JSUID + retry, ready);
setTimeout(function(){if(!isReady){ready();}},1000);
} else {
start();
}
}
function start() {
if(typeof fnClockBanner === "function") {
fnClockBanner();
}
naver.main.PageRefresh.init("NATIVE");
var mms = $Cookie().get("MM_S");
var ids = ($("nav") && eval($Element("nav").query(".nav_u").data("ids"))) || "";
if( !!mms && $("nav") && ids.indexOf(mms) < 0) {
$Cookie().remove("MM_S");
$Cookie().remove("MM_margin");
naver.main.PageRefresh.run(ids[0]);
return;
}
if(mms !== naver.main.gVariable.sDefaultSectionId) {
$Cookie().set("MM_S", naver.main.gVariable.sDefaultSectionId, 1/24/60*10);
}
CommonApp.init();
naver.main.menuStatus(naver.main.gVariable);


naver.main.SectionManager.init();
naver.main.newsChannel.init();
naver.main.newsChannelPromotion.init();

naver.main.Search.init(naver.main.gVariable);

naver.main.NaverApp.init();
naver.main.Aside.initApp();
naver.main.Banner.init();
naver.main.RTK.init();
naver.main.observer.init(naver.main.SectionManager);
naver.main.HorizontalScroll.setHorizontalScrollEventOnTemplate();
naver.main.Panel.processClose();
naver.main.toggleLayer.init();
naver.main.notiBadge.init();
naver.main.entertainment.init();
naver.main.ondemand.init();
CommonApp.showPopupForAndroidLowerVersion();
new naver.main.lifeWeatherIndex();
new naver.main.siblingPanels();
if (bUsainEnabled) {
nx_usain_beacon.add_tag(("main." + naver.main.gVariable.sDefaultSectionId + "." + naver.main.gVariable.sBrowserType).toLowerCase());
nx_usain_beacon.send("https://log-usain.m.naver.com");
}
naver.main.log.gtiming();
oAbbaInfo = {
"serviceKey" : "(none)",
"cache" : "(none)",
"expId" : "(none)",
"varId" : "(none)",
"varName" : "(none)"
};
var nAbbaCacheTime = parseInt(oAbbaInfo.cache, 10);
var nAbbaExpId = parseInt(oAbbaInfo.expId, 10);
if (nAbbaCacheTime > 0) {
$Cookie().set("ABBA_CACHED", "1", (1 / 24 / 60) * nAbbaCacheTime);
if (nAbbaExpId > 0) {
$Cookie().set("ABBA_SERVICE_KEY", oAbbaInfo.serviceKey, (1 / 24 / 60) * nAbbaCacheTime);
$Cookie().set("ABBA_EXP_ID", oAbbaInfo.expId, (1 / 24 / 60) * nAbbaCacheTime);
$Cookie().set("ABBA_VAR_ID", oAbbaInfo.varId, (1 / 24 / 60) * nAbbaCacheTime);
$Cookie().set("ABBA_VAR_NAME", oAbbaInfo.varName, (1 / 24 / 60) * nAbbaCacheTime);
}
}
// 주제&폰트 변경 시
if ($Cookie().get("MM_menu_complete")) {
$Element("_MM_MENU_COMPLETE").show();
setTimeout(function() {
$Element("_MM_MENU_COMPLETE").disappear(1);
}, 500);
$Cookie().remove("MM_menu_complete");
}
try { naver.main.today.view.init(); } catch(e){ JEagleEyeClient.sendError("[TODAY] error init panel : " + e.description); };

mainObserver.attachCustomEvent("onLoadJS", "index.html", function() {
if (typeof inapphome == "undefined") {
return;
}
if (inapphome.sendLocationLog) {
inapphome.sendLocationLog(false);
}
})
mainObserver.fireCustomEvent("onLoadJS", "index.html");

}

if (window.addEventListener) { window.addEventListener("load", function() { loadJS(); }, true); } else if (window.attachEvent) { window.attachEvent("onload", loadJS); } else { window.onload = loadJS; }
setTimeout(loadJS, 3000);

try { BMR.run(location.protocol + "//sp.naver.com/sp",1); } catch(e) { JEagleEyeClient.sendError("[BMR] run error : " + e.description); }
</script>


</body></html>