<%@page import="movie.ReviewBean"%>
<%@page import="java.util.Vector"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:useBean id="bean" class="movie.ReviewBean"/>
<jsp:setProperty name="bean" property="*" />
<%
		request.setCharacterEncoding("utf-8");
		int on=-1;
		String idk = (String)session.getAttribute("idKey");
		String index = request.getParameter("index");
%>
<!DOCTYPE html>
<!-- saved from url=(0073)http://movie.naver.com/movie/bi/mi/reviewwrite.nhn?code=155665&from=list# -->
<html lang="ko"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>강철비 : 네이버 영화</title>
<link rel="stylesheet" type="text/css" href="./movie_reView_files/movie.all.css">
</head>
<body>

<div id="wrap" class="basic">
<form name="form" action="movie_reViewProc.jsp">
<script type="text/javascript">
function delayed_submit(object) {
	if (navigator.userAgent.indexOf('MSIE') == -1) {
		var b = c = new Date();
      	while ((b.getTime() - c.getTime()) < 100) {
			b = new Date();
      	}
	} 
}
function staron(a){
	document.getElementById("pointStarRatingValue").innerHTML=a.title;
	for(i=0;i<11;i++){
		if(document.getElementById("star"+i).className.match(' on')){
			document.getElementById("star"+i).className = document.getElementById("star"+i).className.replace(' on','');
		}
	}
	a.className=a.className+" on";
};
function removeTitle() {
	/* alert( document.getElementById("smartEditorIframe").contentWindow.document.body.innerHTML);		
	alert( document.getElementById("smartEditorIframe").contentWindow.document.body.content);		
	alert("a"); */		
	var a = document.getElementById("inputTitle");
	if(a.value=="리뷰 제목을 입력하세요.")
		a.value="";
}
</script>
<input type="text" name="writer" value="작성자">
<div id="content">
	<div class="article">
		<div class="obj_section noline center_obj">
			<div class="review">
				<div class="title_area">
					<h4 class="h_review_wrt"><strong class="blind">리뷰쓰기</strong></h4>
					<a onclick="history.back()" class="review_list"><em>목록보기</em></a><!-- N=a:rwr.list -->
				</div>
				<fieldset class="ipt_table" id="reviewFieldset">
					<legend><span class="blind">리뷰입력 폼</span></legend>
					<table summary="리뷰쓰기 테이블" class="wrt_board">
					<caption>리뷰를 입력하세요</caption>
					<tbody>
					<tr>
					<th scope="row" class="frst_tr"><span class="subject1">영화</span></th>
					<td class="frst_tr"> <strong class="title">강철비</strong></td>
					</tr>
					<tr>
					<th scope="row"><span class="subject2"><label for="inputTitle" class="subject2">제목</label></span></th>
					<td><input onclick="removeTitle()" type="text" class="tx_field" value="리뷰 제목을 입력하세요." name="title" id="inputTitle"></td>
					</tr>
					<tr>
					<th scope="row" class="tr_star"><span class="subject3">별점</span></th>
					<td class="tr_star">
						<!-- [D] 개봉전인경우 : <div class="input_star"> 에 클래스 b_star 추가
							별점이 비활성화인경우 : <div class="input_star"> 에 클래스 st_disabled 추가 -->
						<div class="input_star">
							<!-- [D] st_off 영역에 마우스 오버시 : 클래스 st_over 추가
								버튼 선택시 : 선택된 버튼 클래스 'on' 추가, 대체텍스트 '선택됨' 추가
								짝수 점수 버튼에 클래스 st_r 추가
								디폴트는 화면에 보이지 않는 0점 버튼 -->
							<div class="star_score" id="pointSection" >
								<div class="st_off" id="pointStarRating">
								<%for(int i=0;i<11;i++) {%>
									<%if(i%2==0) {%><button id="star<%=i%>" onmouseover="staron(this)" type="button" title="<%=i %>" class="_pointStarRatingList st_r"><%=i %>점</button>
									<%}else {%><button id="star<%=i%>" onmouseover="staron(this)" type="button" title="<%=i %>" class="_pointStarRatingList"><%=i %>점</button>
									<%}
								}%>
								</div>
								<!-- [D]별점이 비활성화인경우에만 star_count 클래스 내에 em class="dis" -->
								<span class="star_count">
								<em id="pointStarRatingValue">10</em>
								</span>
							</div>
						</div>
						<div id="pointLayerSection" class="t_layer_score" style="display:none">
							<strong class="blind">별점을 선택하세요</strong>
							<ul class="t_list_score" >
								<li><a href="http://movie.naver.com/movie/bi/mi/reviewwrite.nhn?code=155665&amp;from=list#" onclick="return false;" class="_pointStarLayerList" title="10"><span class="star"><span class="on"></span></span><em>10</em></a></li>
								<li><a href="http://movie.naver.com/movie/bi/mi/reviewwrite.nhn?code=155665&amp;from=list#" onclick="return false;" class="_pointStarLayerList" title="9"><span class="star"><span class="on"></span></span><em>9</em></a></li>
								<li><a href="http://movie.naver.com/movie/bi/mi/reviewwrite.nhn?code=155665&amp;from=list#" onclick="return false;" class="_pointStarLayerList" title="8"><span class="star"><span class="on"></span></span><em>8</em></a></li>
								<li><a href="http://movie.naver.com/movie/bi/mi/reviewwrite.nhn?code=155665&amp;from=list#" onclick="return false;" class="_pointStarLayerList" title="7"><span class="star"><span class="on"></span></span><em>7</em></a></li>
								<li class="b_none"><a href="http://movie.naver.com/movie/bi/mi/reviewwrite.nhn?code=155665&amp;from=list#" onclick="return false;" class="_pointStarLayerList" title="6"><span class="star"><span class="on"></span></span><em>6</em></a></li>
								<li class="col_right"><a href="http://movie.naver.com/movie/bi/mi/reviewwrite.nhn?code=155665&amp;from=list#" onclick="return false;" class="_pointStarLayerList" title="5"><span class="star"><span class="on"></span></span><em>5</em></a></li>
								<li class="col_right"><a href="http://movie.naver.com/movie/bi/mi/reviewwrite.nhn?code=155665&amp;from=list#" onclick="return false;" class="_pointStarLayerList" title="4"><span class="star"><span class="on"></span></span><em>4</em></a></li>
								<li class="col_right"><a href="http://movie.naver.com/movie/bi/mi/reviewwrite.nhn?code=155665&amp;from=list#" onclick="return false;" class="_pointStarLayerList" title="3"><span class="star"><span class="on"></span></span><em>3</em></a></li>
								<li class="col_right"><a href="http://movie.naver.com/movie/bi/mi/reviewwrite.nhn?code=155665&amp;from=list#" onclick="return false;" class="_pointStarLayerList" title="2"><span class="star"><span class="on"></span></span><em>2</em></a></li>
								<li class="b_none col_right"><a href="http://movie.naver.com/movie/bi/mi/reviewwrite.nhn?code=155665&amp;from=list#" onclick="return false;" class="_pointStarLayerList" title="1"><span class="star"><span class="on"></span></span><em>1</em></a></li>
							</ul>
						</div>
					</td>
					</tr>
						<tr>
						<th scope="row" class="align_v tr_img"><span class="subject4">이미지삽입</span></th>
						<td>
							<div class="ifr_thumb" id="photoList">
								<iframe src="./movie_reView_files/reviewwrite_photoList.html" name="imageSelectFrame" id="imageFrame" width="100%" frameborder="0" scrolling="no" class="ifr" height="202px"></iframe>
							</div>
							<p class="ifr_desc">첨부하실 이미지를 선택하시면 이미지가 자동으로 본문에 삽입됩니다.<br>
							최대 10장까지 선택하여 첨부하실 수 있습니다. </p>
						</td>
						</tr>
				</tbody> 
                </table>
                <dl class="sm_sepertate"> 
                	<dt class="subject5"><label for="textareaBody"><em class="blind">내용</em></label></dt> 
                	<dd> 
  						<div class="editor_area">
<link rel="stylesheet" type="text/css" href="./movie_reView_files/common_editor_ko.css">
<link rel="stylesheet" type="text/css" href="./movie_reView_files/common_editor_tool_ko.css">
<script type="text/javascript" src="./movie_reView_files/jindo.all.js.다운로드"></script>
<script type="text/javascript" src="./movie_reView_files/sharpei.ku.js.다운로드"></script>
<script>
	Ajax.initFlash('/js/smartEditor/ajax_070604.swf');
</script><div style="position:absolute;top:-1000px;left:-1000px"><object id="tmpSwf86099190" width="1" height="1" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0"><param name="movie" value="/js/smartEditor/ajax_070604.swf"><param name="allowScriptAccess" value="always"><embed name="tmpSwf86099190" src="/js/smartEditor/ajax_070604.swf" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" width="1" height="1" allowscriptaccess="always" swliveconnect="true"></object></div>

	<div id="naver_common_editor">
		<table width="100%" cellspacing="0" cellpadding="0" class="wrap" id="toolbox" style="height: 450px;">
		<caption>스마트 에디터</caption>
		<tbody><tr>
		<!-- 우측 메뉴 사용 시, 아래 셀에 colspan="2" 추가 -->
		<td class="tool_bg">
			<table width="100%" cellspacing="0" cellpadding="0">
			<caption>편집 메뉴</caption>
			<tbody><tr valign="top">
			<td class="item">
			<span class="family"><img src="./movie_reView_files/btn_n_font.gif" alt="command:fontname" width="47" height="21" style="position: relative; cursor: pointer;" title="글꼴" nhn:command="fontname" nhn:argument="undefined" nhn:state="normal"></span>
			<span class="size"><img src="./movie_reView_files/btn_n_size.gif" alt="command:fontsize" width="47" height="21" title="글자크기" nhn:command="fontsize" nhn:argument="undefined" nhn:state="normal" style="cursor: pointer;"></span>
			<span class="make01"><img src="./movie_reView_files/btn_n_bold.gif" alt="command:bold" width="22" height="21" title="굵게(Ctrl+B)" nhn:command="bold" nhn:argument="undefined" nhn:state="normal" style="cursor: pointer;"><img src="./movie_reView_files/btn_n_underline.gif" alt="command:underline" width="21" height="21" title="밑줄(Ctrl+U)" nhn:command="underline" nhn:argument="undefined" nhn:state="normal" style="cursor: pointer;"><img src="./movie_reView_files/btn_n_Italic.gif" alt="command:italic" width="21" height="21" title="기울게(Ctrl+I)" nhn:command="italic" nhn:argument="undefined" nhn:state="normal" style="cursor: pointer;"><img src="./movie_reView_files/btn_n_strike.gif" alt="command:strikethrough" width="21" height="21" title="취소선" nhn:command="strikethrough" nhn:argument="undefined" nhn:state="normal" style="cursor: pointer;"><img src="./movie_reView_files/btn_n_color.gif" alt="command:fontcolor" width="21" height="21" title="글자색상" nhn:command="fontcolor" nhn:argument="undefined" nhn:state="normal" style="cursor: pointer;"><img src="./movie_reView_files/btn_n_bgcolor.gif" alt="command:fontbackgroundcolor" width="21" height="21" title="배경색상" nhn:command="fontbackgroundcolor" nhn:argument="undefined" nhn:state="normal" style="cursor: pointer;"></span>
			<span class="make02"><img src="./movie_reView_files/btn_n_alignleft.gif" alt="command:justifyleft" width="22" height="21" title="왼쪽 정렬" nhn:command="justifyleft" nhn:argument="undefined" nhn:state="normal" style="cursor: pointer;"><img src="./movie_reView_files/btn_n_aligncenter.gif" alt="command:justifycenter" width="21" height="21" title="중간 정렬" nhn:command="justifycenter" nhn:argument="undefined" nhn:state="normal" style="cursor: pointer;"><img src="./movie_reView_files/btn_n_alignright.gif" alt="command:justifyright" width="21" height="21" title="오른쪽 정렬" nhn:command="justifyright" nhn:argument="undefined" nhn:state="normal" style="cursor: pointer;"><img src="./movie_reView_files/btn_n_alignjustify.gif" alt="command:justifyfull" width="21" height="21" title="양쪽 정렬" nhn:command="justifyfull" nhn:argument="undefined" nhn:state="normal" style="cursor: pointer;"><img src="./movie_reView_files/btn_n_numberset.gif" width="20" height="21" alt="command:insertorderedlist" title="숫자목록" nhn:command="insertorderedlist" nhn:argument="undefined" nhn:state="normal" style="cursor: pointer;"><img src="./movie_reView_files/btn_n_markset.gif" width="20" height="21" alt="command:insertunorderedlist" title="기호목록" nhn:command="insertunorderedlist" nhn:argument="undefined" nhn:state="normal" style="cursor: pointer;"><img src="./movie_reView_files/btn_n_outdent.gif" width="21" height="21" alt="command:outdent" title="내어쓰기" nhn:command="outdent" nhn:argument="undefined" nhn:state="normal" style="cursor: pointer;"><img src="./movie_reView_files/btn_n_indent.gif" width="21" height="21" alt="command:indent" title="들여쓰기" nhn:command="indent" nhn:argument="undefined" nhn:state="normal" style="cursor: pointer;"></span>
			<span class="make03"><img src="./movie_reView_files/btn_n_quotation.gif" alt="command:quote" width="21" height="21" title="인용구 설정/해제" nhn:command="quote" nhn:argument="undefined" nhn:state="normal" style="cursor: pointer;"><img src="./movie_reView_files/btn_n_lineheight.gif" alt="command:lineheight" width="20" height="21" title="줄간격" nhn:command="lineheight" nhn:argument="undefined" nhn:state="normal" style="cursor: pointer;"></span>
			<!--<span class="make04"><img src="http://imgmovie.naver.net/2007/img/editor/btn_n_url.gif" alt="command:hyperlink" width="28" height="21"><img src="http://imgmovie.naver.net/2007/img/editor/btn_n_emoticon.gif" width="20" height="21" alt="command:emoticoninsertion"><img src="http://imgmovie.naver.net/2007/img/editor/btn_n_table.gif" width="22" height="21" alt="command:inserttable"><img src="http://imgmovie.naver.net/2007/img/editor/btn_n_sign.gif" width="20" height="21" alt="command:scharinsertion"><img src="http://imgmovie.naver.net/2007/img/editor/btn_n_enlarged.gif" width="19" height="21" alt="command:searchkeyword"><img src="http://imgmovie.naver.net/2007/img/editor/btn_n_spelling.gif" alt="command:spellcheck" width="21" height="21"></span>-->
			<span class="more_tool" style="position: relative;"><img src="./movie_reView_files/btn_more.gif" alt="command:more:tool_items" width="15" height="21" title="더보기" nhn:command="more" nhn:argument="tool_items" nhn:state="normal" style="cursor: pointer;"><div id="tool_items" style="width: 140px; display: none; position: absolute; left: -125px; top: 9px; z-index: 100;">
				<div class="tool_items_layer rbox03">
					<div class="rbox03_t"><div></div></div>
					<div class="rbox03_bg">
						<!-- rbox03_conts -->
						<div class="rbox03_conts">
							<span class="make04"><img src="./movie_reView_files/btn_n_url.gif" alt="command:hyperlink" width="28" height="21" title="링크" nhn:command="hyperlink" nhn:argument="undefined" nhn:state="normal" style="cursor: pointer;"><img src="./movie_reView_files/btn_n_emoticon.gif" width="20" height="21" alt="command:emoticoninsertion" title="이모티콘" nhn:command="emoticoninsertion" nhn:argument="undefined" nhn:state="normal" style="cursor: pointer;"><img src="./movie_reView_files/btn_n_table.gif" width="22" height="21" alt="command:inserttable" title="표 삽입" nhn:command="inserttable" nhn:argument="undefined" nhn:state="normal" style="cursor: pointer;"><img src="./movie_reView_files/btn_n_sign.gif" width="20" height="21" alt="command:scharinsertion" title="특수기호 삽입" nhn:command="scharinsertion" nhn:argument="undefined" nhn:state="normal" style="cursor: pointer;"><img src="./movie_reView_files/btn_n_enlarged.gif" width="19" height="21" alt="command:searchkeyword" title="찾기/바꾸기" nhn:command="searchkeyword" nhn:argument="undefined" nhn:state="normal" style="cursor: pointer;"><img src="./movie_reView_files/btn_n_spelling.gif" alt="command:spellcheck" width="21" height="21" title="맞춤법 검사" nhn:command="spellcheck" nhn:argument="undefined" nhn:state="normal" style="cursor: pointer;"></span>
							<!--<span class="make03"><img src="http://imgmovie.naver.net/2007/img/editor/btn_n_quotation.gif" alt="command:quote" width="21" height="21"><img src="http://imgmovie.naver.net/2007/img/editor/btn_n_lineheight.gif" alt="command:lineheight" width="20" height="21"></span>-->
						</div>
						<!-- //rbox03_conts -->
					</div>
					<div class="rbox03_b"><div></div></div>
				</div>
			</div></span>
			</td>
			<td width="75" class="tool_option3"><span class="option"><input type="checkbox" name="" value="" id="html" onclick="Editor.$(&#39;textbox&#39;).execCommand(&#39;html&#39;,this,this.checked);" tabindex="1"><label for="html">html</label></span></td>
			</tr>
			</tbody></table>
			<!--
			520 ~ 539 버전 : width 140px
			540 ~ 649 버전 : width 186px
			-->
		</td>
		</tr>
		<tr>
		<td class="b_tool_bg"></td>
		<!-- 우측 메뉴 사용 시, 아래 셀 주석 해제 -->
		<!--<td class="b_tool_bg2"></td>-->
		</tr>
		<tr valign="top">
		<td class="read">
			<table id="contentTable" width="100%" height="100%" cellspacing="0" cellpadding="0">
			<caption>본문 영역</caption>
			<tbody><tr id="spellcheckModeRow" style="height:25px;display:none">
				<td>
					<div class="spelling_test">
						<div class="spelling_text">
							<span id="spellcheckModeText">맞춤법에 어긋난 단어가 1<strong>개</strong> 있습니다.</span><br>
							<p class="notice"><span>표시된 단어</span>를 클릭하셔서 맞춤법을 수정하실 수 있습니다.
						</p></div>
						<div class="btns">
							<img src="./movie_reView_files/btn_respelling.gif" width="92" height="22" alt="맞춤법 재검사" onclick="Editor.$(&#39;textbox&#39;).execCommand(&#39;spellcheck&#39;,this);Editor.$(&#39;textbox&#39;).execCommand(&#39;spellcheck&#39;,this);">
							<img src="./movie_reView_files/btn_spellingend.gif" width="56" height="24" alt="검사종료" onclick="Editor.$(&#39;textbox&#39;).execCommand(&#39;spellcheck&#39;,this);">
						</div>
						<p class="cboth"></p>
					</div>
				</td>
			</tr>
			<tr>
					<td tabindex="2" style="height: 459px;">
						<iframe	src="./movie_reView_files/default.html"
							id="smartEditorIframe" name="smartEditorIframe"
							frameborder="0" allowtransparency="true"
							width="100%" height="100%"
							style="width: 100%; height: 459px;" >
						</iframe>
					<textarea id="textbox" 
					style="visibility: visible; height: 459px; border: 0px; 
					width: 100%; display: none;"></textarea></td>
			</tr>
			</tbody></table>
		</td>
		<!-- 우측 메뉴 사용 시, 아래 셀 주석 해제 -->
		<!--<td class="attach">
			<h4 id="file_attach_menu_title">파일첨부</h4>
			<ul id="file_attach_menu">
				<li class="photo" onmousedown="Event.stop(event)"><a href="#act" onmousedown="attachArea.check(attachPhoto);return false;">사진</a></li>
				<li class="map" id="attach_map" onmousedown="Event.stop(event)"><a href="#act" onmousedown="attachArea.check(attachAreaForDb.attachDbMap);return false">지도</a></li>
				<li class="avi" id="attach_video" onmousedown="Event.stop(event)"><a href="#act" onmousedown="attachArea.check(attachMovie);return false;">동영상</a></li>
				<li class="file"><a id="btn_file" onmouseover="try{with(this.style){textDecoration='underline';color='#004790'}}catch(e){}" onmouseout="try{with(this.style){textDecoration=color=''}}catch(e){}">파일</a></li>
				<li class="music" id="attach_music" onmousedown="Event.stop(event)"><a href="#act" onmousedown="attachArea.check(attachMusic);return false;">음악</a></li>
				<li class="toon" id="attach_toon" onmousedown="Event.stop(event)"><a href="#act" onmousedown="attachArea.check(attachToon);return false;">툰</a></li>
				<li class="picture" id="attach_sketch" onmousedown="Event.stop(event)"><a href="#act" onmousedown="attachArea.check(attachSketch);return false;">그림</a></li>
			</ul>

			<h4 id="db_attach_menu_title">DB첨부</h4>
			<ul id="db_attach_menu" class="db">
				<li onmousedown="Event.stop(event)"><a href="#act" onmousedown="attachAreaForDb.check(attachAreaForDb.attachDbBook);return false;">책DB</a></li>
				<li onmousedown="Event.stop(event)"><a href="#act" onmousedown="attachAreaForDb.check(attachAreaForDb.attachDbMovie);return false;">영화DB</a></li>
				<li onmousedown="Event.stop(event)"><a href="#act" onmousedown="attachAreaForDb.check(attachAreaForDb.attachDbDrama);return false;">드라마DB</a></li>
				<li onmousedown="Event.stop(event)"><a href="#act" onmousedown="attachAreaForDb.check(attachAreaForDb.attachDbMusic);return false;">음악DB</a></li>
				<li onmousedown="Event.stop(event)"><a href="#act" onmousedown="attachAreaForDb.check(attachAreaForDb.attachDbShop);return false;">상품DB</a></li>
				<li onmousedown="Event.stop(event)"><a href="#act" onmousedown="attachAreaForDb.check(attachAreaForDb.attachDbPeople);return false;">인물DB</a></li>
				<li onmousedown="Event.stop(event)"><a href="#act" onmousedown="attachAreaForDb.check(attachAreaForDb.attachDbWeather);return false;">날씨DB</a></li>
				<li onmousedown="Event.stop(event)"><a href="#act" onmousedown="attachAreaForDb.check(attachAreaForDb.attachDbEncyc);return false;">백과사전DB</a></li>
			</ul>
		</td>
		-->
		</tr>
		</tbody></table>
		<ul class="post" style="display:none">
			<li id="filelist_container" style="display:none">
				<label>첨부 파일</label>
				<div id="file_list" class="file_list" style="display:none">
					<ul id="fileTxtArea" class="file_txt" style="display: none;">
					<xmp id="fileTxtArea_template" style="display:none">
					<li class="#classname#"><a href="#">#filename#</a> <span>#filesize# <img src="http://imgmovie.naver.net/2007/img/editor/btn_file_delete.gif" width="12" height="11" alt="파일 삭제" class="delete_btn" onclick="attachArea.delFile(#fileid#,'fileTxtArea')"></span></li>
					</xmp>
					</ul>

					<ul id="fileThumbArea" class="file_thumb" style="display: none;">
					<xmp id="fileThumbArea_template" style="display:none">
					<li><p><img src="#thumbnail#" width="48" height="38" alt=""></p> <span>#filesize# <img src="http://imgmovie.naver.net/2007/img/editor/btn_file_delete.gif" width="12" height="11" alt="파일 삭제" class="delete_btn" onclick="attachArea.delFile(#fileid#,'fileThumbArea')"></span></li>
					</xmp>
					</ul>
				</div>
				<div class="amount"><span><strong id="filesizeCurrent">0</strong>KB</span>  <span class="section">/</span> <span class="total"><span id="filesizeTotal">1024</span>KB</span> <div class="graph"><span id="filesizeGuage" style="width:0%; height:7px;"></span></div></div>
			</li>
		</ul>
		<!-- template -->
		<div id="edit_skin" style="display:none">
			<!-- fontname_items -->
			<div class="fontname_items">
				<div class="rbox03">
					<div class="rbox03_t"><div></div></div>
					<div class="rbox03_bg">
						<!-- rbox03_conts -->
						<div class="rbox03_conts">
							<ul id="fn_name_list">
							</ul>
						</div>
						<!-- //rbox03_conts -->
					</div>
					<div class="rbox03_b"><div></div></div>
				</div>
			</div>
			<!-- //fontname_items -->
			<!-- fontsize_items -->
			<div class="fontsize_items">
				<div class="rbox03">
					<div class="rbox03_t"><div></div></div>
					<div class="rbox03_bg">
						<!-- rbox01_conts -->
						<div class="rbox03_conts">
							<ul id="fs_size_list">
							</ul>
						</div>
						<!-- //rbox01_conts -->
					</div>
					<div class="rbox03_b"><div></div></div>
				</div>
			</div>
			<!-- //fontsize_items -->
			<!-- fontcolor_items -->
			<div class="fontcolor_items">
			<!-- fontcolor_top_items -->
			<div class="fontcolor_top_items">
				<div class="rbox02">
					<div class="rbox02_t"><div></div></div>
					<div class="rbox02_bg">
						<!-- rbox02_conts -->
						<div class="rbox02_conts">
						<table id="fc_color_tbl" cellspacing="1" cellpadding="0">
						<caption>글자색 선택</caption>
						<tbody><tr>
							<td bgcolor="#FF0000"></td>
							<td bgcolor="#FF6C00"></td>
							<td bgcolor="#FFAA00"></td>
							<td bgcolor="#FFEF00"></td>
							<td bgcolor="#A6CF00"></td>
							<td bgcolor="#009E25"></td>
							<td bgcolor="#00B0A2"></td>
							<td bgcolor="#0075C8"></td>
							<td bgcolor="#3A32C3"></td>
							<td bgcolor="#7820B9"></td>
							<td bgcolor="#EF007C"></td>
							<td bgcolor="#000000"></td>
							<td bgcolor="#252525"></td>
							<td bgcolor="#464646"></td>
							<td bgcolor="#636363"></td>
							<td bgcolor="#7D7D7D"></td>
							<td bgcolor="#9A9A9A"></td>
						</tr>
						<tr>
							<td bgcolor="#FFE8E8"></td>
							<td bgcolor="#F7E2D2"></td>
							<td bgcolor="#F5EDDC"></td>
							<td bgcolor="#F5F4E0"></td>
							<td bgcolor="#EDF2C2"></td>
							<td bgcolor="#DEF7E5"></td>
							<td bgcolor="#D9EEEC"></td>
							<td bgcolor="#C9E0F0"></td>
							<td bgcolor="#D6D4EB"></td>
							<td bgcolor="#E7DBED"></td>
							<td bgcolor="#F1E2EA"></td>
							<td bgcolor="#ACACAC"></td>
							<td bgcolor="#C2C2C2"></td>
							<td bgcolor="#CCCCCC"></td>
							<td bgcolor="#E1E1E1"></td>
							<td bgcolor="#EBEBEB"></td>
							<td bgcolor="#FFFFFF"></td>
						</tr>
						<tr>
							<td bgcolor="#E97D81"></td>
							<td bgcolor="#E19B73"></td>
							<td bgcolor="#D1B274"></td>
							<td bgcolor="#CFCCA2"></td>
							<td bgcolor="#CFCCA2"></td>
							<td bgcolor="#61B977"></td>
							<td bgcolor="#53AEA8"></td>
							<td bgcolor="#518FBB"></td>
							<td bgcolor="#6A65BB"></td>
							<td bgcolor="#9A54CE"></td>
							<td bgcolor="#E573AE"></td>
							<td bgcolor="#5A504B"></td>
							<td bgcolor="#767B86"></td>
							<td rowspan="2" colspan="4"><img id="fc_bt_cp_more" src="./movie_reView_files/btn_fontcolor_more.gif" alt="" width="47" height="23"></td>
						</tr>
						<tr>
							<td bgcolor="#951015"></td>
							<td bgcolor="#6E391A"></td>
							<td bgcolor="#785C25"></td>
							<td bgcolor="#5F5B25"></td>
							<td bgcolor="#4C511F"></td>
							<td bgcolor="#1C4827"></td>
							<td bgcolor="#0D514C"></td>
							<td bgcolor="#1B496A"></td>
							<td bgcolor="#2B285F"></td>
							<td bgcolor="#45245B"></td>
							<td bgcolor="#721947"></td>
							<td bgcolor="#352E2C"></td>
							<td bgcolor="#3C3F45"></td>
						</tr>
						</tbody></table>
						</div>
						<!-- //rbox02_conts -->
					</div>
					<div class="rbox02_b"><div></div></div>
				</div>
			</div>
			<!-- //fontcolor_items -->
			<!-- pickercolor_items -->
			<div id="fc_div_cp" class="pickercolor_items" style="display:none">
				<div class="rbox02">
					<div class="rbox02_t"><div></div></div>
					<div class="rbox02_bg">
						<!-- rbox01_conts -->
						<div class="rbox02_conts">
							<div class="color_set"><div class="color_box"><span id="fc_txt_color" class="color" style="background-color:#B9DE73;"></span></div>  <input type="text" id="fc_txt_colorCode" value="#6CB858" class="box_input" style="width:68px; height:20px;"> <img id="fc_bt_cp_ok" src="./movie_reView_files/btn_fontcolor_apply.gif" alt="" width="33" height="20" class="btn01"> <span><img id="fc_bt_cp_less" src="./movie_reView_files/btn_x_close.gif" alt="close" width="15" height="14"></span></div>
							<div id="fc_cp"></div>
						</div>
						<!-- //rbox01_conts -->
					</div>
					<div class="rbox02_b"><div></div></div>
				</div>
			</div>
			<!-- //pickercolor_items -->
			</div>
			<!-- //fontcolor_items -->

			<!-- fontbackgroundcolor_items -->
			<div class="fontbackgroundcolor_items">
			<!-- fontbackgroundcolor_items -->
			<div class="fontbackgroundcolor_top_items">
				<div class="rbox02">
					<div class="rbox02_t"><div></div></div>
					<div class="rbox02_bg">
						<!-- rbox02_conts -->
						<div class="rbox02_conts">
						<table id="fbgc_list_tbl" cellspacing="0" cellpadding="0" class="bg">
						<caption>글자 배경색 선택</caption>
						<tbody><tr>
							<td bgcolor="#000000" style="color:#FFFFFF;"><div>가나다</div></td>
							<td bgcolor="#9334D8" style="color:#FFFFFF;"><div>가나다</div></td>
							<td class="last" bgcolor="#FF0000" style="color:#FFFFFF;"><div>가나다</div></td>
						</tr>
						<tr>
							<td bgcolor="#333333" style="color:#FFFF00;"><div>가나다</div></td>
							<td bgcolor="#0000FF" style="color:#FFFFFF;"><div>가나다</div></td>
							<td class="last" bgcolor="#FF6600" style="color:#FFFFFF;"><div>가나다</div></td>
						</tr>
						<tr>
							<td bgcolor="#8E8E8E" style="color:#FFFFFF;"><div>가나다</div></td>
							<td bgcolor="#009999" style="color:#FFFFFF;"><div>가나다</div></td>
							<td class="last" bgcolor="#FFA700" style="color:#FFFFFF;"><div>가나다</div></td>
						</tr>
						<tr>
							<td bgcolor="#FFDAED" style="color:#000000;"><div>가나다</div></td>
							<td bgcolor="#E4FF75" style="color:#000000;"><div>가나다</div></td>
							<td class="last" bgcolor="#CC9900" style="color:#FFFFFF;"><div>가나다</div></td>
						</tr>
						<tr>
							<td bgcolor="#99DCFF" style="color:#000000;"><div>가나다</div></td>
							<td bgcolor="#A6FF4D" style="color:#000000;"><div>가나다</div></td>
							<td class="last" bgcolor="#FFFFFF" style="color:#000000;"><div>가나다</div></td>
						</tr>
						</tbody></table>

						<table id="fbgc_color_tbl" cellspacing="1" cellpadding="0" class="color">
						<caption>글자 배경색 선택</caption>
						<tbody><tr>
							<td bgcolor="#FF0000"></td>
							<td bgcolor="#FF6C00"></td>
							<td bgcolor="#FFAA00"></td>
							<td bgcolor="#FFEF00"></td>
							<td bgcolor="#A6CF00"></td>
							<td bgcolor="#009E25"></td>
							<td bgcolor="#00B0A2"></td>
							<td bgcolor="#0075C8"></td>
							<td bgcolor="#3A32C3"></td>
							<td bgcolor="#7820B9"></td>
							<td bgcolor="#EF007C"></td>
							<td bgcolor="#000000"></td>
							<td bgcolor="#252525"></td>
							<td bgcolor="#464646"></td>
							<td bgcolor="#636363"></td>
							<td bgcolor="#7D7D7D"></td>
							<td bgcolor="#9A9A9A"></td>
						</tr>
						<tr>
							<td bgcolor="#FFE8E8"></td>
							<td bgcolor="#F7E2D2"></td>
							<td bgcolor="#F5EDDC"></td>
							<td bgcolor="#F5F4E0"></td>
							<td bgcolor="#EDF2C2"></td>
							<td bgcolor="#DEF7E5"></td>
							<td bgcolor="#D9EEEC"></td>
							<td bgcolor="#C9E0F0"></td>
							<td bgcolor="#D6D4EB"></td>
							<td bgcolor="#E7DBED"></td>
							<td bgcolor="#F1E2EA"></td>
							<td bgcolor="#ACACAC"></td>
							<td bgcolor="#C2C2C2"></td>
							<td bgcolor="#CCCCCC"></td>
							<td bgcolor="#E1E1E1"></td>
							<td bgcolor="#EBEBEB"></td>
							<td bgcolor="#FFFFFF"></td>
						</tr>
						<tr>
							<td bgcolor="#E97D81"></td>
							<td bgcolor="#E19B73"></td>
							<td bgcolor="#D1B274"></td>
							<td bgcolor="#CFCCA2"></td>
							<td bgcolor="#CFCCA2"></td>
							<td bgcolor="#61B977"></td>
							<td bgcolor="#53AEA8"></td>
							<td bgcolor="#518FBB"></td>
							<td bgcolor="#6A65BB"></td>
							<td bgcolor="#9A54CE"></td>
							<td bgcolor="#E573AE"></td>
							<td bgcolor="#5A504B"></td>
							<td bgcolor="#767B86"></td>
							<td rowspan="2" colspan="4"><img id="fbgc_bt_cp_more" src="./movie_reView_files/btn_fontcolor_more(1).gif" alt="" width="47" height="23"></td>
						</tr>
						<tr>
							<td bgcolor="#951015"></td>
							<td bgcolor="#6E391A"></td>
							<td bgcolor="#785C25"></td>
							<td bgcolor="#5F5B25"></td>
							<td bgcolor="#4C511F"></td>
							<td bgcolor="#1C4827"></td>
							<td bgcolor="#0D514C"></td>
							<td bgcolor="#1B496A"></td>
							<td bgcolor="#2B285F"></td>
							<td bgcolor="#45245B"></td>
							<td bgcolor="#721947"></td>
							<td bgcolor="#352E2C"></td>
							<td bgcolor="#3C3F45"></td>
						</tr>
						</tbody></table>
						</div>
						<!-- //rbox02_conts -->
					</div>
					<div class="rbox02_b"><div></div></div>
				</div>
			</div>
			<!-- //fontbackgroundcolor_top_items -->

			<!-- pickercolor_items -->
			<div id="fbgc_div_cp" class="pickercolor_items" style="display:none">
				<div class="rbox02">
					<div class="rbox02_t"><div></div></div>
					<div class="rbox02_bg">
						<!-- rbox01_conts -->
						<div class="rbox02_conts">
							<div class="color_set"><div class="color_box"><span id="fbgc_txt_color" class="color" style="background-color:#B9DE73;"></span></div><input type="text" id="fbgc_txt_colorCode" value="#6CB858" class="box_input" style="width:68px; height:20px;"><img id="fbgc_bt_cp_ok" src="./movie_reView_files/btn_fontcolor_apply.gif" alt="" width="33" height="20" class="btn01"><span><img id="fbgc_bt_cp_less" src="./movie_reView_files/btn_x_close(1).gif" alt="close" width="15" height="14"></span></div>
							<div id="fbgc_cp"></div>
						</div>
						<!-- //rbox01_conts -->
					</div>
					<div class="rbox02_b"><div></div></div>
				</div>
			</div>
			<!-- //pickercolor_items -->
			</div>
			<!-- //fontbackgroundcolor_items -->

			<!-- lineheight_items -->
			<div class="lineheight_items">
				<div class="rbox03">
				<div class="rbox03_t"><div></div></div>
				<div class="rbox03_bg">
				<!-- rbox01_conts -->
				<div class="rbox03_conts">
				<ul id="lh_height_list"></ul>
				</div>
				<!-- //rbox01_conts -->
				</div>
				<div class="rbox03_b"><div></div></div>
				</div>
			</div>
			<!-- //lineheight_items -->

			<!-- Special Character Insertion -->
			<!-- code_items -->
			<div class="scharinsertion_items">
				<div class="rbox02">
				<div class="rbox02_t"><div></div></div>
				<div class="rbox02_bg">
				<!-- rbox02_conts -->
				<div class="rbox02_conts">
				<div class="kind">
				<a id="cset1" class="this_on">일반기호</a>
				<span class="bar">|</span>
				<a id="cset2">숫자와 단위</a>
				<span class="bar">|</span>
				<a id="cset3">원,괄호</a>
				<span class="bar">|</span>
				<a id="cset4">한글</a>
				<span class="bar">|</span>
				<a id="cset5">그리스,라틴어</a>
				<span class="bar">|</span>
				<a id="cset6">일본어</a>
				<span class="close">
				<a href="http://movie.naver.com/movie/bi/mi/reviewwrite.nhn?code=155665&amp;from=list#"><img src="./movie_reView_files/btn_x_close(1).gif" alt="close" width="15" height="14" onclick="{act|close}"></a>
				</span>
				</div>
				<table id="charTable" width="419" cellspacing="1" cellpadding="0"></table>
				<div class="insert">
				<label for="code">선택한 기호</label>
				<input type="text" name="" value="" id="specialChar" class="box_input" style="width:306px;height:20px;">
				<img src="./movie_reView_files/btn_confirm.gif" alt="확인" width="38" height="21" onclick="{act|insertschar}" style="cursor:pointer">
				</div>
				</div>
				<!-- //rbox02_conts -->
				</div>
				<div class="rbox02_b"><div></div></div>
				</div>
			</div>
			<!-- //code_items -->

			<!-- emoticon_items -->
			<span class="emoticoninsertion_items">
			<!-- emoticon_items -->
			<div class="emoticon_items">
				<div class="rbox02">
					<div class="rbox02_t"><div></div></div>
					<div class="rbox02_bg">
						<!-- rbox02_conts -->
						<div class="rbox02_conts">
						<div class="kind">
						<a id="eset1" class="this_on">표정</a>
						<span class="bar">|</span>
						<a id="eset2">동식물</a>
						<span class="bar">|</span>
						<a id="eset3">사물1</a>
						<span class="bar">|</span>
						<a id="eset4">사물2</a>
						<span class="bar">|</span>
						<a id="eset5">말풍선</a>
						<span class="close"><img src="./movie_reView_files/btn_x_close(1).gif" alt="{act|close}" width="15" height="14" onclick="{act|close}" style="cursor:pointer"></span>
						</div>

						<table id="emoTable" width="281" cellspacing="1" cellpadding="0" class="list">
						</table>

						</div>
						<!-- //rbox02_conts -->
					</div>
					<div class="rbox02_b"><div></div></div>
				</div>
			</div>
			</span>
			<!-- //emoticon_items -->

			<!-- url_items -->
			<span class="hyperlink_items">
			<div class="url_items">
				<div class="rbox02">
					<div class="rbox02_t"><div></div></div>
					<div class="rbox02_bg">
						<!-- rbox02_conts -->
						<div class="rbox02_conts">
						<div class="make">
						<fieldset>
						<legend>하이퍼링크</legend>
						<div class="hyperlink"><input type="text" id="hlnk_txt_url" value="http://" class="box_input"></div>
						</fieldset>
						<div class="make_btm"></div>
					</div>
					<div class="btn02">
						<img src="./movie_reView_files/btn_confirm.gif" style="cursor: pointer" onclick="{act|link}" alt="확인" width="38" height="21">
						<img src="./movie_reView_files/btn_cancel.gif" style="cursor: pointer" onclick="{act|close}" alt="취소" width="38" height="21">
					</div>
					</div>
					<!-- //rbox02_conts -->
					</div>
					<div class="rbox02_b"><div></div></div>
				</div>
			</div>
			</span>
			<!-- //url_items -->
			<!-- quote_items -->
			<div class="quote_items">
				<div class="rbox02">
					<div class="rbox02_t"><div></div></div>
					<div class="rbox02_bg">
						<!-- rbox02_conts -->
						<div class="rbox02_conts">
						<ul>
							<li><a><img src="./movie_reView_files/quote_layer01.gif" width="32" height="34" alt=""></a></li>
							<li><a><img src="./movie_reView_files/quote_layer02.gif" width="32" height="34" alt=""></a></li>
							<li><a><img src="./movie_reView_files/quote_layer03.gif" width="32" height="34" alt=""></a></li>
							<li><a><img src="./movie_reView_files/quote_layer04.gif" width="32" height="34" alt=""></a></li>
							<li><a><img src="./movie_reView_files/quote_layer05.gif" width="32" height="34" alt=""></a></li>
							
							<li><a><img src="./movie_reView_files/quote_layer07.gif" width="32" height="34" alt=""></a></li>
							<li><a><img src="./movie_reView_files/quote_layer08.gif" width="32" height="34" alt=""></a></li>
							<li class="last"><a><img src="./movie_reView_files/quote_layer09.gif" width="32" height="34" alt=""></a></li>
						</ul>
						</div>
						<!-- //rbox02_conts -->
					</div>
					<div class="rbox02_b"><div></div></div>
				</div>
			</div>
			<!-- //quote_items -->
			<!-- table_items -->
			<div class="inserttable_items">
				<div class="inserttable_top_items">
					<div class="rbox02">
						<div class="rbox02_t"><div></div></div>
						<div class="rbox02_bg">

							<!-- rbox02_conts -->
							<div class="rbox02_conts">
								<div class="make" id="insertTable_plugin_cellrow">
									<fieldset>
										<legend>칸 수 지정</legend>
										<table width="200" cellspacing="0" cellpadding="0">
										<caption>표 칸 수 지정</caption>
										<colgroup><col width="73">
										<col width="137">

										</colgroup><tbody><tr valign="top">
										<td>
											<table cellspacing="0" cellpadding="0">
											<tbody><tr>
											<td class="tit">행</td>
											<td><div class="control"><span><img src="./movie_reView_files/btn_updown.gif" alt="" width="15" height="16" usemap="#btnRows"></span></div></td>
											</tr>
											<tr><td height="5" colspan="2"></td></tr>

											<tr>
											<td class="tit">열</td>
											<td><div class="control"><span><img src="./movie_reView_files/btn_updown.gif" alt="" width="15" height="16" usemap="#btnCols"></span></div></td>
											</tr>
											</tbody></table>
											<map name="btnRows">
											<area alt="" coords="0,0,16,8" href="http://movie.naver.com/movie/bi/mi/reviewwrite.nhn?code=155665&amp;from=list#" onclick="{act|change|&#39;chRows&#39;, &#39;ADD&#39; }">
											<area alt="" coords="0,9,16,20" href="http://movie.naver.com/movie/bi/mi/reviewwrite.nhn?code=155665&amp;from=list#" onclick="{act|change|&#39;chRows&#39;, &#39;SUB&#39; }">
											</map>
											<map name="btnCols">
											<area alt="" coords="0,0,16,8" href="http://movie.naver.com/movie/bi/mi/reviewwrite.nhn?code=155665&amp;from=list#" onclick="{act|change|&#39;chCols&#39;, &#39;ADD&#39; }">
											<area alt="" coords="0,9,16,20" href="http://movie.naver.com/movie/bi/mi/reviewwrite.nhn?code=155665&amp;from=list#" onclick="{act|change|&#39;chCols&#39;, &#39;SUB&#39; }">
											</map>
											<map name="btnBorder">
											<area alt="" coords="0,0,16,8" href="http://movie.naver.com/movie/bi/mi/reviewwrite.nhn?code=155665&amp;from=list#" onclick="{act|change|&#39;chBorder&#39;, &#39;ADD&#39; }">
											<area alt="" coords="0,9,16,20" href="http://movie.naver.com/movie/bi/mi/reviewwrite.nhn?code=155665&amp;from=list#" onclick="{act|change|&#39;chBorder&#39;, &#39;SUB&#39; }">
											</map>
										</td>
										<td>
											<div style="overflow:hidden;width:137px;">
											<table id="insertTable_plugin_pretable" border="0" width="100%" height="40" cellspacing="1" cellpadding="0" bgcolor="#B7BBB5">
											<tbody><tr bgcolor="#FFFFFF">
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											</tr>
											<tr bgcolor="#FFFFFF">
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											</tr>
											<tr bgcolor="#FFFFFF">
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											</tr>
											<tr bgcolor="#FFFFFF">
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											</tr>
											</tbody></table>
											</div>
										</td>
										</tr>
										</tbody></table>
									</fieldset>
								<div class="make_btm"></div>
								</div>

								<div class="make">
									<fieldset>
										<legend>표 속성 지정</legend>

										<table width="200" cellspacing="0" cellpadding="0">
										<caption>표 속성 지정</caption>
										<colgroup><col width="57">
										<col width="143">
										</colgroup><tbody><tr valign="top">
										<td class="tit">테두리 굵기</td>
										<td><div class="control"><span><img src="./movie_reView_files/btn_updown.gif" alt="" width="15" height="16" usemap="#btnBorder"></span></div></td>
										</tr>
										<tr><td height="5" colspan="2"></td></tr>

										<tr>
										<td height="20" class="tit02">테두리 색</td>
										<td><div class="color_set"><div class="color_box" onclick="{act|Viewcolorpicker|0 }" style="cursor:pointer"><span id="borderColor" class="color" style="background-color:#B7BBB5;"></span></div>  <img src="./movie_reView_files/btn_search.gif" alt="찾기" width="33" height="20" class="btn01"></a></div></td>
										</tr>
										<tr><td height="3" colspan="2"></td></tr>
										<tr>
										<td class="tit02">표 배경색</td>

										<td><div class="color_set"><div class="color_box" onclick="{act|Viewcolorpicker|1 }" style="cursor:pointer"><span id="backColor" class="color" style="background-color:#FFFFFF;"></span></div>  <a href="http://movie.naver.com/movie/bi/mi/reviewwrite.nhn?code=155665&amp;from=list#" onclick="{act|Viewcolorpicker|1 }"><img src="./movie_reView_files/btn_search.gif" alt="찾기" width="33" height="20" class="btn01"></a></div></td>
										</tr>
										<tr><td height="10" colspan="2"></td></tr>
										</tbody></table>
									</fieldset>
								<div class="make_btm"></div>
								</div>

								<div class="btn02"><a href="http://movie.naver.com/movie/bi/mi/reviewwrite.nhn?code=155665&amp;from=list#" onclick="{act|insert}"><img src="./movie_reView_files/btn_confirm.gif" alt="확인" width="38" height="21"></a> <a href="http://movie.naver.com/movie/bi/mi/reviewwrite.nhn?code=155665&amp;from=list#" onclick="{act|close}"><img src="./movie_reView_files/btn_cancel.gif" alt="취소" width="38" height="21"></a></div>

							</div>
							<!-- //rbox02_conts -->
						</div>
						<div class="rbox02_b"><div></div></div>
					</div>
				</div>

			<!-- pickercolor_items _For Table -->		
			<div id="table_div_cp">
			<!-- table_cp_top_items -->
			<div class="fontcolor_top_items">
					<div class="rbox02" style="position:relative">
						<div class="rbox02_t"><div></div></div>
						<div class="rbox02_bg">
							<!-- rbox02_conts -->
							<div class="rbox02_conts">
							<table id="table_color_tbl" cellspacing="1" cellpadding="0">
							<caption>표 색 지정</caption>
							<tbody><tr>
							<td bgcolor="#FF0000"></td>
							<td bgcolor="#FF6C00"></td>
							<td bgcolor="#FFAA00"></td>
							<td bgcolor="#FFEF00"></td>
							<td bgcolor="#A6CF00"></td>
							<td bgcolor="#009E25"></td>
							<td bgcolor="#00B0A2"></td>
							<td bgcolor="#0075C8"></td>
							<td bgcolor="#3A32C3"></td>
							<td bgcolor="#7820B9"></td>
							<td bgcolor="#EF007C"></td>
							<td bgcolor="#000000"></td>
							<td bgcolor="#252525"></td>
							<td bgcolor="#464646"></td>
							<td bgcolor="#636363"></td>
							<td bgcolor="#7D7D7D"></td>
							<td bgcolor="#9A9A9A"></td>
							</tr>
							<tr>
							<td bgcolor="#FFE8E8"></td>
							<td bgcolor="#F7E2D2"></td>
							<td bgcolor="#F5EDDC"></td>
							<td bgcolor="#F5F4E0"></td>
							<td bgcolor="#EDF2C2"></td>
							<td bgcolor="#DEF7E5"></td>
							<td bgcolor="#D9EEEC"></td>
							<td bgcolor="#C9E0F0"></td>
							<td bgcolor="#D6D4EB"></td>
							<td bgcolor="#E7DBED"></td>
							<td bgcolor="#F1E2EA"></td>
							<td bgcolor="#ACACAC"></td>
							<td bgcolor="#C2C2C2"></td>
							<td bgcolor="#CCCCCC"></td>
							<td bgcolor="#E1E1E1"></td>
							<td bgcolor="#EBEBEB"></td>
							<td bgcolor="#FFFFFF"></td>
							</tr>
							<tr>
							<td bgcolor="#E97D81"></td>
							<td bgcolor="#E19B73"></td>
							<td bgcolor="#D1B274"></td>
							<td bgcolor="#CFCCA2"></td>
							<td bgcolor="#CFCCA2"></td>
							<td bgcolor="#61B977"></td>
							<td bgcolor="#53AEA8"></td>
							<td bgcolor="#518FBB"></td>
							<td bgcolor="#6A65BB"></td>
							<td bgcolor="#9A54CE"></td>
							<td bgcolor="#E573AE"></td>
							<td bgcolor="#5A504B"></td>
							<td bgcolor="#767B86"></td>
							<td rowspan="2" colspan="4"><img onclick="{act|Viewcolorpicker_tc|0 }" style="cursor:pointer" src="./movie_reView_files/btn_fontcolor_more.gif" alt="" width="47" height="23"></td>
							</tr>
							<tr>
							<td bgcolor="#951015"></td>
							<td bgcolor="#6E391A"></td>
							<td bgcolor="#785C25"></td>
							<td bgcolor="#5F5B25"></td>
							<td bgcolor="#4C511F"></td>
							<td bgcolor="#1C4827"></td>
							<td bgcolor="#0D514C"></td>
							<td bgcolor="#1B496A"></td>
							<td bgcolor="#2B285F"></td>
							<td bgcolor="#45245B"></td>
							<td bgcolor="#721947"></td>
							<td bgcolor="#352E2C"></td>
							<td bgcolor="#3C3F45"></td>
							</tr>
							</tbody></table>
							</div>
							<!-- //rbox02_conts -->
						</div>
						<div class="rbox02_b"><div></div></div>

				</div>
			</div>
			<!-- //fontcolor_items -->
				
				<div id="table_div_cp_bottom" class="pickercolor_items" style="display:none;">

						<div class="rbox02" style="position:relative">
							<div class="rbox02_t"><div></div></div>
							<div class="rbox02_bg">
								<!-- rbox01_conts -->
								<div class="rbox02_conts">
									<div class="color_set"><div class="color_box"><span id="tbg_txt_color" class="color" style="background-color:#B9DE73;"></span></div><input type="text" id="tbg_txt_colorCode" value="#6CB858" class="box_input" style="width:68px; height:20px;"><a href="http://movie.naver.com/movie/bi/mi/reviewwrite.nhn?code=155665&amp;from=list#" onclick="{act|selcolor}"><img id="tbg_bt_cp_ok" src="./movie_reView_files/btn_fontcolor_apply.gif" alt="" width="33" height="20" class="btn01"></a><span><a href="http://movie.naver.com/movie/bi/mi/reviewwrite.nhn?code=155665&amp;from=list#" onclick="{act|closecp}"><img src="./movie_reView_files/btn_x_close(1).gif" alt="close" width="15" height="14"></a></span></div>
									<div id="cp_table"></div>
								</div>
								<!-- //rbox01_conts -->
							</div>
							<div class="rbox02_b"><div></div></div>
						</div>
					</div>

			</div>
			<!-- //pickercolor_items _For Table -->

			</div>
			<!-- //table_items -->

			<!-- search_items -->
			<div class="searchkeyword_items">
				<div class="rbox01">
					<div class="rbox01_bt">
						<div></div>
						<h4 class="subject">찾기/바꾸기  <span><a href="http://movie.naver.com/movie/bi/mi/reviewwrite.nhn?code=155665&amp;from=list#close" onclick="{act|close}"><img src="./movie_reView_files/btn_x_close(1).gif" alt="close" width="15" height="14"></a></span></h4>
					</div>
					<div class="rbox01_bbg">
						<!-- rbox01_conts -->
						<div class="rbox01_conts">
							<div class="tab_menu"><img src="./movie_reView_files/tab_serch01.gif" alt="" width="89" height="23" usemap="#tab_menu1"></div>
							<map name="tab_menu1">
							<area alt="바꾸기" coords="40,2,87,21" href="http://movie.naver.com/movie/bi/mi/reviewwrite.nhn?code=155665&amp;from=list#" onclick="{act|goreplace}">
							</map>
							<div class="box_line">
								<span class="ul_bg"></span>
								<ul>
																			
																		</ul>
							</div>

							<div class="box_line_btm"><div></div></div>

							<div class="btn"><a href="http://movie.naver.com/movie/bi/mi/reviewwrite.nhn?code=155665&amp;from=list#" onclick="{act|search}"><img src="./movie_reView_files/btn_next_search.gif" alt="다음찾기" width="62" height="21"></a> <a href="http://movie.naver.com/movie/bi/mi/reviewwrite.nhn?code=155665&amp;from=list#" onclick="{act|close}"><img src="./movie_reView_files/btn_edit_cancel.gif" alt="취소" width="38" height="21"></a></div>

						</div>
						<!-- //rbox01_conts -->
					</div>
					<div class="rbox01_b"><div></div></div>
				</div>
			</div>

			<!-- //search_items -->

			<!-- replace_items -->
			<div class="replacekeyword_items">
				<div class="rbox01">
					<div class="rbox01_bt">
						<div></div>
						<h4 class="subject">찾기/바꾸기  <span><a href="http://movie.naver.com/movie/bi/mi/reviewwrite.nhn?code=155665&amp;from=list#" onclick="{act|close}"><img src="./movie_reView_files/btn_x_close(1).gif" alt="close" width="15" height="14"></a></span></h4>
					</div>
					<div class="rbox01_bbg">

						<!-- rbox01_conts -->
						<div class="rbox01_conts">

							<div class="tab_menu"><img src="./movie_reView_files/tab_serch02.gif" alt="" width="89" height="23" usemap="#tab_menu2"></div>
							<map name="tab_menu2">
							<area alt="찾기" coords="1,2,38,21" href="http://movie.naver.com/movie/bi/mi/reviewwrite.nhn?code=155665&amp;from=list#" onclick="{act|gosearch}">
							</map>

							<div class="box_line_btm"><div></div></div>

							<div class="btn"><a href="http://movie.naver.com/movie/bi/mi/reviewwrite.nhn?code=155665&amp;from=list#" onclick="{act|search}"><img src="./movie_reView_files/btn_next_search02.gif" alt="다음찾기" width="55" height="21"></a> <a href="http://movie.naver.com/movie/bi/mi/reviewwrite.nhn?code=155665&amp;from=list#" onclick="{act|replace}"><img src="./movie_reView_files/btn_replace.gif" alt="바꾸기" width="48" height="21"></a> <a href="http://movie.naver.com/movie/bi/mi/reviewwrite.nhn?code=155665&amp;from=list#" onclick="{act|allreplace}"><img src="./movie_reView_files/btn_all_replace.gif" alt="모두바꾸기" width="69" height="21"></a> <a href="http://movie.naver.com/movie/bi/mi/reviewwrite.nhn?code=155665&amp;from=list#" onclick="{act|close}"><img src="./movie_reView_files/btn_edit_cancel.gif" alt="취소" width="38" height="21"></a></div>
						</div>
						<!-- //rbox01_conts -->
					</div>
					<div class="rbox01_b"><div></div></div>
				</div>
			</div>
			<!-- //replace_items -->

			<span id="spellcheck_suggestionlayer">
			<div id="edit_module" style="width:118px; position:relative; top:-1px; left:-1px;">
				<table width="100%" cellspacing="0" cellpadding="0">
				<caption>착기/바꾸기</caption>
				<tbody><tr valign="top">
				<td>
					<div>
						<!--shadow removed [[-->
							<div class="spell_check">
								<ul>{REPLACE}</ul>
								<div class="spell_search">
									<input type="text" id="chspell" value="직접입력" style="width:70px; height:19px; font-size:12px;" onfocus="this.value=&#39;&#39;;spellcheckDocPlugin.directInput=1;">
									<img src="./movie_reView_files/btn_spellingedit.gif" width="31" height="20" alt="" style="vertical-align:top;" onclick="spellcheckDocPlugin.changeSpell(this.previousSibling.previousSibling.value)">
								</div>
							</div>
						<!--]] shadow removed-->
					</div>
				</td>
				</tr>
				</tbody></table>
			</div>
			</span>
		</div>
		<!-- //template -->
	</div>

			
<script>
	var url_thumbnail2 = "";

		$('textbox').style.visibility = 'visible';

		var alignFilter = {
			onSave : function(sHTML) {
				var re = /<!--\s*DBATTACH[0-9]+\s*-->/g;
				var m  = sHTML.match(re);
		
				if (m == null || m.length == 0) return sHTML;
				
				re = /<(p|div) (.*?align\s*=\s*.*?)>((?:(?:.|\s)(?!<\1[> ]))*?)<!--\s*(DBATTACH[0-9]+)\s*-->((?:(?:.|\s)(?!<\1[> ]))*?)<\/\1>/ig;
				
				return sHTML.replace(re,'<div $2>$3<!--$4-->$5</div>');
			}
		};

		var oTagFilter = {
			_re :  /<(applet|script|iframe|style|link|meta|body|base|plaintext|xmp|xml)\s*.*?>[\w\W]*?<\/\1[^>]*>/ig,
			
			onSave : function(html) {
				return html.replace(this._re, '');
			}
		};

		quoteFilter = {
			type01 : '<blockquote style="margin:14px 0px 20px 40px;"><table cellspacing="0" cellpadding="0" width="100%"><tr><td style="width:2px;background:url(http://imgmovie.naver.net/2007/img/editor/bg_quote01.gif) repeat;_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=\'http://imgmovie.naver.net/2007/img/editor/bg_quote01.gif\',sizingMethod=\'scale\');_background:none"></td><td style="padding:1px 0 0 9px;color:#444444; line-height:1.2;">#string#</td></tr></table></blockquote>',
			type02 : '<blockquote style="margin:14px 0px 20px 40px;"><table cellpadding="0" cellspacing="0" width="100%"><tr><td><div style="position:relative;_height:1px;padding:1px 12px 0 12px;color:#444444; line-height:1.4;background:url(http://imgmovie.naver.net/2007/img/editor/bg_quote02.png) no-repeat;_background:none;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src=\'http://imgmovie.naver.net/2007/img/editor/bg_quote02.png\',sizingMethod=\'crop\');">#string#<div style="position:absolute;width:9px;height:7px;background:url(http://imgmovie.naver.net/2007/img/editor/bg_quote02_2.png) no-repeat;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src=\'http://imgmovie.naver.net/2007/img/editor/bg_quote02_2.png\',sizingMethod=\'crop\');right:0;bottom:0;_background:none;"></div></div></td></tr></table></blockquote>',
			type03 : '<blockquote style="margin:14px 0px 20px 40px;"><table cellspacing="0" cellpadding="0" width="100%"><tr><td style="background:url(\'http://imgmovie.naver.net/2007/img/editor/bg_quote03.png\') transparent;_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=\'http://imgmovie.naver.net/2007/img/editor/bg_quote03.png\',sizingMethod=\'scale\');_background:none" width="1" height="1"></td><td style="background:url(\'http://imgmovie.naver.net/2007/img/editor/bg_quote03.png\') transparent;_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=\'http://imgmovie.naver.net/2007/img/editor/bg_quote03.png\',sizingMethod=\'scale\');_background:none" height="1"></td><td style="background:url(\'http://imgmovie.naver.net/2007/img/editor/bg_quote03.png\') transparent;_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=\'http://imgmovie.naver.net/2007/img/editor/bg_quote03.png\',sizingMethod=\'scale\');_background:none" width="1" height="1"></td></tr><tr><td style="background:url(\'http://imgmovie.naver.net/2007/img/editor/bg_quote03.png\') transparent;_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=\'http://imgmovie.naver.net/2007/img/editor/bg_quote03.png\',sizingMethod=\'scale\');_background:none" width="1"></td><td style="padding:11px 10px 10px 9px;color:#444444; line-height:1.4;">#string#</td><td style="background:url(\'http://imgmovie.naver.net/2007/img/editor/bg_quote03.png\') transparent;_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=\'http://imgmovie.naver.net/2007/img/editor/bg_quote03.png\',sizingMethod=\'scale\');_background:none" width="1"></td></tr><tr><td style="background:url(\'http://imgmovie.naver.net/2007/img/editor/bg_quote03.png\') transparent;_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=\'http://imgmovie.naver.net/2007/img/editor/bg_quote03.png\',sizingMethod=\'scale\');_background:none" width="1" height="1"></td><td style="background:url(\'http://imgmovie.naver.net/2007/img/editor/bg_quote03.png\') transparent;_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=\'http://imgmovie.naver.net/2007/img/editor/bg_quote03.png\',sizingMethod=\'scale\');_background:none" height="1"></td><td style="background:url(\'http://imgmovie.naver.net/2007/img/editor/bg_quote03.png\') transparent;_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=\'http://imgmovie.naver.net/2007/img/editor/bg_quote03.png\',sizingMethod=\'scale\');_background:none" width="1" height="1"></td></tr></table></blockquote>',
			type04 : '<blockquote style="margin:14px 0px 20px 40px;"><table cellspacing="0" cellpadding="0" width="100%"><tr><td style="background:url(\'http://imgmovie.naver.net/2007/img/editor/bg_quote03.png\') transparent;_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=\'http://imgmovie.naver.net/2007/img/editor/bg_quote03.png\',sizingMethod=\'scale\');_background:none" width="1" height="1"></td><td style="background:url(\'http://imgmovie.naver.net/2007/img/editor/bg_quote03.png\') transparent;_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=\'http://imgmovie.naver.net/2007/img/editor/bg_quote03.png\',sizingMethod=\'scale\');_background:none" height="1"></td><td style="background:url(\'http://imgmovie.naver.net/2007/img/editor/bg_quote03.png\') transparent;_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=\'http://imgmovie.naver.net/2007/img/editor/bg_quote03.png\',sizingMethod=\'scale\');_background:none" width="1" height="1"></td></tr><tr><td style="background:url(\'http://imgmovie.naver.net/2007/img/editor/bg_quote03.png\') transparent;_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=\'http://imgmovie.naver.net/2007/img/editor/bg_quote03.png\',sizingMethod=\'scale\');_background:none" width="1"></td><td style="padding:11px 10px 10px 9px; background:url(\'http://imgmovie.naver.net/2007/img/editor/bg_quote_body_01.png\') transparent;_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=\'http://imgmovie.naver.net/2007/img/editor/bg_quote_body_01.png\',sizingMethod=\'scale\'); color:#444444; line-height:1.2;_background:none">#string#</td><td style="background:url(\'http://imgmovie.naver.net/2007/img/editor/bg_quote03.png\') transparent;_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=\'http://imgmovie.naver.net/2007/img/editor/bg_quote03.png\',sizingMethod=\'scale\');_background:none" width="1"></td></tr><tr><td style="background:url(\'http://imgmovie.naver.net/2007/img/editor/bg_quote03.png\') transparent;_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=\'http://imgmovie.naver.net/2007/img/editor/bg_quote03.png\',sizingMethod=\'scale\');_background:none" width="1" height="1"></td><td style="background:url(\'http://imgmovie.naver.net/2007/img/editor/bg_quote03.png\') transparent;_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=\'http://imgmovie.naver.net/2007/img/editor/bg_quote03.png\',sizingMethod=\'scale\');_background:none" height="1"></td><td style="background:url(\'http://imgmovie.naver.net/2007/img/editor/bg_quote03.png\') transparent;_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=\'http://imgmovie.naver.net/2007/img/editor/bg_quote03.png\',sizingMethod=\'scale\');_background:none" width="1" height="1"></td></tr></table></blockquote>',
			type05 : '<blockquote style="margin:14px 0px 20px 40px;"><table cellspacing="0" cellpadding="0" width="100%"><tr><td style="background:url(\'http://imgmovie.naver.net/2007/img/editor/bg_quote04.png\') transparent;_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=\'http://imgmovie.naver.net/2007/img/editor/bg_quote04.png\',sizingMethod=\'scale\');_background:none" height="2"></td><td style="background:url(\'http://imgmovie.naver.net/2007/img/editor/bg_quote04.png\') transparent;_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=\'http://imgmovie.naver.net/2007/img/editor/bg_quote04.png\',sizingMethod=\'scale\');_background:none" height="2"></td><td style="background:url(\'http://imgmovie.naver.net/2007/img/editor/bg_quote04.png\') transparent;_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=\'http://imgmovie.naver.net/2007/img/editor/bg_quote04.png\',sizingMethod=\'scale\');_background:none" height="2"></td></tr><tr><td style="background:url(\'http://imgmovie.naver.net/2007/img/editor/bg_quote03.png\') transparent;_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=\'http://imgmovie.naver.net/2007/img/editor/bg_quote03.png\',sizingMethod=\'scale\');_background:none" width="2"></td><td style="padding:11px 10px 10px 9px;color:#444444; line-height:1.4;">#string#</td><td style="background:url(\'http://imgmovie.naver.net/2007/img/editor/bg_quote03.png\') transparent;_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=\'http://imgmovie.naver.net/2007/img/editor/bg_quote03.png\',sizingMethod=\'scale\');_background:none" width="2"></td></tr><tr><td style="background:url(\'http://imgmovie.naver.net/2007/img/editor/bg_quote04.png\') transparent;_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=\'http://imgmovie.naver.net/2007/img/editor/bg_quote04.png\',sizingMethod=\'scale\');_background:none" height="2"></td><td style="background:url(\'http://imgmovie.naver.net/2007/img/editor/bg_quote04.png\') transparent;_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=\'http://imgmovie.naver.net/2007/img/editor/bg_quote04.png\',sizingMethod=\'scale\');_background:none" height="2"></td><td style="background:url(\'http://imgmovie.naver.net/2007/img/editor/bg_quote04.png\') transparent;_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=\'http://imgmovie.naver.net/2007/img/editor/bg_quote04.png\',sizingMethod=\'scale\');_background:none" height="2"></td></tr></table></blockquote>',
			type07 : '<blockquote style="margin:14px 0px 20px 40px; padding:11px 10px 10px 9px; border:1px dashed #B2B2B2; color:#B2B2B2; line-height:1.2;"><div style="color:#444444; line-height:1.4;">#string#</div></blockquote>',
			type08 : '<blockquote style="margin:14px 0px 20px 40px; border:1px dashed #B2B2B2;color:#B2B2B2;line-height:1.2;"><div style="_height:1px;padding:11px 10px 10px 9px;color:#444444;line-height:1.4;background:url(\'http://imgmovie.naver.net/2007/img/editor/bg_quote_body_01.png\') transparent;_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src=\'http://imgmovie.naver.net/2007/img/editor/bg_quote_body_01.png\',sizingMethod=\'scale\');_background:none;">#string#</div></blockquote>',
		
			onLoad : function(sHTML) {
				return sHTML.replace(/<blockquote[^>]* class="?vview_quote([0-9]+)"?[^>]*>((?:\s|.)*?)<\/blockquote>/ig, function(m0,m1,m2){
					if (/<!--quote_txt-->((?:\s|.)*?)<!--\/quote_txt-->/ig.test(m2)) {
						return '<blockquote class="quote'+m1+'">'+RegExp.$1+'</blockquote>';
					} else {
						return '';
					}
				});
			},
			onSave : function(sHTML) {
				return sHTML.replace(/<blockquote[^>]* class="?quote([0-9]+)"?[^>]*>((?:\s|.)*?)<\/blockquote>/ig, function(m0,m1,m2){
					var str = '';
		
					if (quoteFilter['type'+m1]) {
						str = quoteFilter['type'+m1].replace('#string#', '<!--quote_txt-->'+m2+'<!--/quote_txt-->');
		
						return str.replace('<blockquote', '<blockquote class="vview_quote'+m1+'"');
					} else {
						return m0;
					}
				});
			}
		};


var curAttachFileInfo = {
	id : [],
	url : []
}
		
var attachArea = {
	_form : null,

	_newIdx : -1,
	_currentSize : 0,
	_maxSize   : 1,

	_disabled : false, // 스크랩한 글일 때 true

	_attachNewFileUrl : '/AttachFileMeter.nhn',
	_deleteFileUrl : '/AttachFileDelete.nhn',

	_insertBuffer : '',
    _insertTimer  : null,
    sTopBound     : '<!-- {{NHN:IMAGE_TOP_BOUND}} -->',
   	
	init : function(keptAttachFiles, enable) {
		var el, fileObj = null;
//		this._form = $('textbox').form;
		this._form = $('write_form');

		this.setMaximumSize(1024);
		this._maxFileCount = 20;
		this.showFileContainer(false);
		this.clear();
		
		for(var i=0; i < keptAttachFiles.length; i++) {
			el = keptAttachFiles[i];
			if (typeof el == 'undefined' || el == null) continue;
			
			fileObj = this.getBaseObj();
			for(var k in el) {
				fileObj[k] = el[k];
			}
			this.addFile(fileObj);
		}
	},
	onstoryphotodblclick : function(e) {
		var metaAlt = e.element.alt.split(',');
		var xmlPath = e.element.id.replace(url_attach, '');

		if (this._disabled) {
			alert('스크랩한 글의 스토리포토는 수정할 수 없습니다.');
		} else {
			attachPhoto(metaAlt[0],xmlPath,'storyphotomodify');
		}
	},
	onresize : function(e) {
	},
	setMaximumSize : function(maxSize) {
		this._maxSize = maxSize*1024;
		$('filesizeTotal').innerHTML = maxSize;
		this.paintGuage();
	},
	paintGuage : function() {
		this._currentSize = Math.max(this._currentSize, 0); // assert(this._currentSize >= 0)
	
		$('filesizeCurrent').innerHTML = Math.round(this._currentSize/1024*10)/10;
		$('filesizeGuage').style.width = Math.round(this._currentSize/this._maxSize*100)+'%';

		var txtExist   = ($('fileTxtArea').getElementsByTagName('LI').length > 0);
		var thumbExist = ($('fileThumbArea').getElementsByTagName('LI').length > 0);
		
		// 첨부목록 상단이 두꺼워보이는 문제 수정 by gony 070803
		if (thumbExist) {
			$("fileThumbArea").style.borderTopWidth = txtExist?'1px':'0px';
		}

		$("fileTxtArea").style.display   = txtExist?'':'none';
		$("fileThumbArea").style.display = thumbExist?'':'none';
		$("file_list").style.display = (txtExist||thumbExist)?'':'none';
	},
	showFileContainer : function(bShow) {
		$('filelist_container').style.display = !!(bShow)?'':'none';
	},
	getUsedSize : function() {
		return this._currentSize;
	},
	hasEffectiveFileSize : function(fileObj) {
		return !(fileObj.copied || ['M','T'].has(fileObj.type));
	},
	getMaxFileSize : function() {
		return this._maxSize;
	},
	getMaxFileCount : function() {
		return this._maxFileCount;
	},
	getFileCount : function() {
		var fileObj = null, el = null;
		var count   = 0;

		for(var i=0; i < this._form.elements.length; i++) {
			el = this._form.elements[i];
			if (el.name != 'attachFile') continue;
			fileObj = eval('('+el.value+')');
			if (['U'].has(fileObj.type) || ['remove'].has(fileObj.status)) continue;
			count++;
		}

		return count;
	},
	isExceedMaxFileSize : function() {
		return (this._currentSize >= this._maxSize);
	},
	isExceedMaxFileCount : function() {
		return (this.getFileCount() >= this._maxFileCount);
	},
	sendAttachedFileSize : function(fileObj) {
		if (this.hasEffectiveFileSize(fileObj)) {
//			new Ajax(this._attachNewFileUrl, {headers:{ajax:'true'}, method:"post",
//				params:{"blogId":blogId, "amount":fileObj.size}});
		}
	},
	newFile : function(uploadObj) { // normal file
		var fileObj = this.getBaseObj();
		fileObj.id = this._newIdx--;
		fileObj.type = uploadObj.type?uploadObj.type:'F';
		fileObj.size = parseInt(uploadObj.file_size);
		fileObj.status = 'add'; // new file attachment
		fileObj.directory = uploadObj.directory+'/';
		fileObj.name = uploadObj.name;

		this.addFile(fileObj);
	},
	insertImageIntoEditor : function(fileObj, align, isFirst) {
		// insert image into editor
		var htmlSrc = '';
		var imgStr  = '<img src="'+fileObj.url()+'"'
			+ (fileObj.width > 0 ? ' width="'+fileObj.width+'"' : '')
			+ (fileObj.height > 0 ? ' height="'+fileObj.height+'"' : '')
			+ '>';

		switch (align) {
			case 'top':
				htmlSrc = editor.getContent();

				if (htmlSrc.indexOf(this.sTopBound) > -1) {
					htmlSrc = htmlSrc.replace(this.sTopBound, imgStr + this.sTopBound);
				} else {
					htmlSrc = imgStr + this.sTopBound + htmlSrc;
				}
				editor.setContent(htmlSrc);
				break;
			case 'blockleft':
				editor.execCommand('inserthtml', null, '<p align="left">'+imgStr+'</p>');
				break;
			case 'bottom':
				htmlSrc = editor.getContent();
				editor.setContent(htmlSrc + imgStr);
				break;
			case 'left':
			case 'right':
				imgStr = imgStr.substr(0, imgStr.length-1);
				editor.execCommand('inserthtml', null, imgStr + ' align="' + align + '"' + ' style="clear:' + align + '">');
				//editor.execCommand('inserthtml', null, '<p align="'+align+'">'+imgStr+'</p>');
				break;
			case 'now':
			default:
				var sel = editor.getSelection();
				if ($Agent().IE) {
					if (sel.type == 'control') {
						if (sel.startNode.tagName.toLowerCase() == 'img' && isFirst) {
							sel.startNode.outerHTML = imgStr;
							break;
						} else if (!isFirst) {
							imgStr = sel.startNode.outerHTML + '<br /><br />' + imgStr;
						}
						
					}
				} else {
					if (!isFirst) imgStr = '<br /><br />' + imgStr;
				}
				editor.execCommand('inserthtml', null, imgStr);
				break;
		}
	},
	newPhotoFile : function(url, directory, name, size, width, height, align, photoLog, isFirst) {
		var fileObj = this.getBaseObj();
		fileObj.id = this._newIdx--; // ?
		fileObj.size = parseInt(size);
		fileObj.status = 'add'; // new file attachment
		fileObj.type = 'I'; // image file
		fileObj.directory = directory;
		fileObj.name = name;
		fileObj.copied = photoLog;
		fileObj.width = width;
		fileObj.height = height;
		fileObj.path = url;

		this.addFile(fileObj);
		this.insertImageIntoEditor(fileObj, align, isFirst);
		this.sendAttachedFileSize(fileObj);
	},
	getUsingImageInfoByPath : function(sDir, sName, nParentId) {
		var f = this._form, fileObj;

		if (!sDir || !sName) return null;

		for(var i=0; i < f.elements.length; i++) {
			if (f.elements[i].name != 'attachFile') continue;
			fileObj = eval('('+f.elements[i].value+')');

			if (fileObj.directory == sDir && fileObj.name == sName) {
				//f.elements[i].type = 'text';
				if (fileObj.status == 'keep' || fileObj.status == 'update') {
					fileObj.parentId = nParentId;
					fileObj.status = 'update';

					f.elements[i].value = JINDO.obj2json(fileObj);
				} else {
					f.elements[i].parentNode.removeChild(f.elements[i]); // delete form
				}

				return {
					id : (fileObj.status=='update')?fileObj.id:0,
					filename : fileObj.name,
					width : fileObj.width,
					height : fileObj.height,
					status : fileObj.status
				};
			}
		}
		return null;
	},
	newStoryPhotoFile : function(oldAttachId, url, directory, name, size, type, width, height, arrImages) {
		var newId   = this._newIdx--;
		var fileObj = this.getBaseObj(), imageInfoObj;
		var agent   = $Agent(), sel = null, img = null;
		var isEmpty = function(v) {
			return (typeof v == 'undefined' || v == '');
		};
		try {
		if (oldAttachId != 0) {
			sel = editor.getSelection();
			if (sel.type == 'control') {
				img = sel.startNode;
			}
			for(var idx in arrImages) {
				if (Array.prototype[idx]) continue;
				if (!arrImages[idx].uploaded) continue;
				imageInfoObj = this.getUsingImageInfoByPath(arrImages[idx].filedir, arrImages[idx].filename, newId);
				if (imageInfoObj == null) throw 'imageInfoObj cannot be null - '+arrImages[idx].filedir+arrImages[idx].filename;
				arrImages[idx] = JINDO.extend(arrImages[idx], imageInfoObj);
			}
			this.delFile(oldAttachId, 'fileThumbArea', false);
		};

		fileObj.id = newId; // ?
		fileObj.size = parseInt(size);
		fileObj.status = 'add'; // new file attachment
		fileObj.type = 'T'; // storyphoto file
		fileObj.directory = directory;
		fileObj.name = name;
		fileObj.width = width;
		fileObj.height = height;
		fileObj.storyPhotoType = type;
		fileObj.path = url;
		fileObj.url = url_attach+fileObj.path;
		this.addFile(fileObj);

		var htmlSrc = '<img id="'+fileObj.url+'" src="'+url_images+'/imgs/nblog/spc.gif" class="storyphoto_'+type+'" width="'+fileObj.width+'" height="'+fileObj.height+'" alt="'+newId+','+fileObj.width+','+fileObj.height+'">';
		if (agent.IE && img) {
			img.id = fileObj.url;
			img.width = fileObj.width;
			img.height = fileObj.height;
			img.className = 'storyphoto_'+type;
			img.alt = newId+','+fileObj.width+','+fileObj.height;
			Event.unregister(img, 'dblclick', this._onstoryphotodblclick);
		} else {
			editor.execCommand('inserthtml', null, htmlSrc+'<br>');
			img = editor.getDocument().getElementById(fileObj.url);
		}
		if (img) {
			Event.register(img, 'dblclick', this._onstoryphotodblclick);
		} else {
			throw 'Cannot get storyphoto image';
		}

		for(var idx in arrImages) {
			if (Array.prototype[idx]) continue;
			if (arrImages[idx].id > 0) continue;

			fileObj = this.getBaseObj();
			fileObj.id = this._newIdx--;
			fileObj.parentId = newId;
			fileObj.size = parseInt(arrImages[idx].filesize);
			fileObj.status = 'add';
			fileObj.type = 'U';
			fileObj.copied = arrImages[idx].photolog || false;
			fileObj.width = parseInt(arrImages[idx].width);
			fileObj.height = parseInt(arrImages[idx].height);
			fileObj.directory = arrImages[idx].filedir;
			fileObj.name = arrImages[idx].filename;
			fileObj.path = arrImages[idx].filepath;
			fileObj.url  = url_attach+fileObj.path;

			if (isEmpty(fileObj.name)) throw 'Error in arrImages : filename cannot be empty.';
			if (isEmpty(fileObj.directory)) throw 'Error in arrImages : filepath cannot be empty.';
			if (isNaN(fileObj.width) || isNaN(fileObj.height)) throw 'Error in arrImages : width or height is not integer.';
			if (typeof arrImages[idx].status != 'undefined') fileObj.status = arrImages[idx].status;
			if (typeof arrImages[idx].id != 'undefined' && arrImages[idx].id > 0) {
				fileObj.id = arrImages[idx].id;
				this._newIdx++;
			}

			this.addFile(fileObj);
			this.sendAttachedFileSize(fileObj);
		}

		} catch(err) {
			alert(err);
		}
	},
	newMovieFile : function(id, bitRate, playTime, width, height, thumbnailTime, thumbnailPath) {
		var fileObj = this.getBaseObj();
		var match = thumbnailPath.match(/(.+?)([^\/\\]+)$/);
		var videoUrl = '';
		var fixedHeight = 408;

		fileObj.id = this._newIdx--;
		fileObj.type = 'M'; // movie file
		fileObj.width = width;
		fileObj.height = height;
		fileObj.directory = match[1];
		fileObj.name      = match[2];
		fileObj.videoId   = id; // appended 0503
		fileObj.videoBitRate  = bitRate;
		fileObj.videoPlayTime = playTime;
		fileObj.videoThumbnailTime = thumbnailTime;
		fileObj.videoThumbnailPath = thumbnailPath.replace(/^http:\/\/[a-z\.]+/i,''); // remove host name

		this.addFile(fileObj);		
		videoUrl = url_movieimage+fileObj.directory+fileObj.name;
		editor.execCommand('inserthtml', null, '<img id="'+id+'" src="'+url_movieserviceapi+'/resources/img/Player.png" name="'+videoUrl+'" width="'+width+'" height="'+fixedHeight+'">');		
		if(videoRegister.REQ_videoCategoryName == "" && !videoRegister.categorySelected){
			videoRegister.displayRegisterArea();
		}
	},
	newImageFile : function(path, directory, name, size, width, height, intoEditor) {
		var fileObj = this.getBaseObj();
		fileObj.id = this._newIdx--;
		fileObj.size = size;
		fileObj.status = 'add';
		fileObj.type = 'I';
		fileObj.directory = directory;
		fileObj.name = name;
		fileObj.copied = false;
		fileObj.width = width;
		fileObj.height = height;
		fileObj.path = path;
		this.addFile(fileObj);
		if (intoEditor) {
			this.insertImageIntoEditor(fileObj, "blockleft");
		}
		return fileObj;
	},
	newToonFile : function(directory, name, size, width, height) {
		this.newImageFile(directory + name, directory, name, size, width, height, true);
	},
	newSketchFile : function(directory, name, size, width, height) {
		this.newImageFile(directory + name, directory, name, size, width, height, true);
	},
	addFile : function(fileObj, formAttaching) {
		var box = $((fileObj.type=='F')?'fileTxtArea':'fileThumbArea');
		var tpl = $(box.id+'_template').innerText || $(box.id+'_template').textContent;
		var div = $C('div');
		var cnt = box.getElementsByTagName('LI').length - 1;
		var htmlEscape = function(str) {
			return str.replace(/&/g,'&amp;');
		};
		var tplVar = {
			fileid    : fileObj.id,
			filename  : htmlEscape(fileObj.name),
			thumbnail : fileObj.thumbUrl(),
			filesize  : ['M','U'].has(fileObj.type)?'&nbsp;':this.getFileSize(fileObj.size),
			classname : cnt%2?'bgcolor':''
		};
		
		curAttachFileInfo.id.push(tplVar.fileid);
		curAttachFileInfo.url.push(tplVar.thumbnail);
		fileObj.size = parseInt(fileObj.size);
		if (isNaN(fileObj.size)) fileObj.size = 0;
		if (typeof fileObj.copied == 'string') {
			fileObj.copied = (fileObj.copied == 'true')?true:false;
		}
		this.showFileContainer(true);

		if (typeof formAttaching == 'undefined') formAttaching = true;

		if (fileObj.type != 'U') {
			tpl = tpl.replace(/#([a-z0-9_]+)#/g, function(m0,m1) {
				if (typeof tplVar[m1] != 'undefined') return ''+tplVar[m1];
				return '';
			});

			div.innerHTML = tpl.replace(/^\s+|\s+$/g, '');
			tpl = div.firstChild;

			// set fileid
			tpl.setAttribute('fileId', fileObj.id);

			box.appendChild(tpl);
		}
		if (this.hasEffectiveFileSize(fileObj)) {
			try {
				if (isNaN(parseInt(fileObj.size))) {
					throw 'Wrong file size : attachFile.addFile';
				}
			} catch(e) {
				alert(e);
			}
			this._currentSize += fileObj.size;
		}
		this.paintGuage();
		if (formAttaching) {
			var inp, fileObjClone = JINDO.clone(fileObj);
			try {
				inp = $C('<input type="hidden" name="attachFile" value="" />');
			} catch(e) {
				inp = $C('input');
				inp.type = 'hidden';
				inp.name = 'attachFile';
			};

			inp.value = fileObjClone.toJSON();
			inp.setAttribute('fileId', fileObjClone.id);
			this._form.appendChild(inp);
		}
	},
	delImage : function(deletedImgSrc){
		removeReg = new RegExp('<img[^>]* src="'+deletedImgSrc+'"[^>]*>','ig');
		editor.setContent(editor.getContent().replace(removeReg,''));
	},
	delFile : function(fileId,boxId,deleteFromEditor) {
		var box = $(boxId);
		var lis = box.getElementsByTagName('LI');
		var frm = this._form, inp, fileObj, childFileObj;
		var escapedId, removeReg;

		var filenameEscape = function(str) {
			return str.replace(/([\.\(\)\[\]\+\-])/g,'\\'+'$1');
		}
		if (typeof deleteFromEditor != 'boolean') deleteFromEditor = true;
		for (var i=0; i < lis.length; i++) {
			var li = lis[i];
			if (li.getAttribute('fileId') == fileId) {
				box.removeChild(li);
				break;
			}
		}
		for(var i=0; i < frm.elements.length; i++) {
			inp = frm.elements[i];
			if (inp.name == 'attachFile') {
				fileObj = eval('('+inp.value+')');
				if (fileObj.id != fileId) continue;
//				deleteMainImage(fileId);
				if (this.hasEffectiveFileSize(fileObj)) {
					this._currentSize -= fileObj.size;
				}
				if (deleteFromEditor) {
							escapedId = filenameEscape(url_attach+fileObj.path);
							removeReg = new RegExp('<img[^>]* src="'+escapedId+'"[^>]*>','ig');
							editor.setContent(editor.getContent().replace(removeReg,''));
/*
					switch(fileObj.type) {

						case 'T': // story photo
							escapedId = filenameEscape(url_attach+fileObj.directory+fileObj.name)
							removeReg = new RegExp('<DIV movietype="?4"?[^>]* sXml="'+escapedId+'"[^>]*>\\s*<\\/DIV>','gi');
							editor.setContent(editor.getContent().replace(removeReg,''));
							break;
						case 'M': // movie
							removeReg = new RegExp('<!--\s*movie\s*:\s*'+fileObj.videoId+'\s*-->','ig');
							editor.setContent(editor.getContent().replace(removeReg,''));
							break;
						case 'I':
							escapedId = filenameEscape(url_attach+fileObj.path);
							removeReg = new RegExp('<img[^>]* src="'+escapedId+'"[^>]*>','ig');
							editor.setContent(editor.getContent().replace(removeReg,''));
							break;
					}
*/
				}

//				new Ajax(this._deleteFileUrl, {headers:{ajax:'true'}, method:"post",
//					params:{"blogId":blogId, "logNo":logNo, "attachId":fileObj.id, "attachFile":fileObj.toJSON()}});

				if (fileObj.status == 'keep') {
					fileObj.status = 'remove'; // deleted
					inp.value = fileObj.toJSON();
				} else if (fileObj.status == 'add') {
					inp.parentNode.removeChild(inp);
				}

				if (fileObj.type == 'T') {
					for(var j=0; j < frm.elements.length; j++) {
						inp = frm.elements[j];
						if (inp.name != 'attachFile') continue;
						childFileObj = eval('('+inp.value+')');
						if (childFileObj.parentId != fileObj.id) continue;
						if (childFileObj.status == 'update') continue;
						if (fileObj.status == 'add') {
							inp.parentNode.removeChild(inp);
							j--;
						} else {
							childFileObj.status = 'remove';
							inp.value = childFileObj.toJSON();
						}
						this._currentSize -= childFileObj.size;
//						new Ajax(this._deleteFileUrl, {headers:{ajax:'true'}, method:"post",
//							params:{"blogId":blogId, "logNo":logNo, "attachId":fileObj.id, "attachFile":fileObj.toJSON()}});
					}
					this.paintGuage();
				}
				break;
			}
		}
		this.showFileContainer(this.getFileCount() > 0);
		this.paintGuage();
	},
	getFileSize: function(size) {
		var unit = ['B','KB','MB','GB'];
		var unit_idx = 0;
		while(size >= 1024) {
			size = size / 1024;
			unit_idx++;
		}

		size = Math.round(size*10)/10;
		return size+' '+unit[unit_idx];
	},
	beginImgInsert : function() {
		editor.setContent(this.sTopBound+editor.getContent());
	},
	finishImgInsert : function() {
		editor.setContent(editor.getContent().replace(this.sTopBound,''));
	},
	getBaseObj : function() {
		return {
			id : 0,
			status : 'add',
			parentId : 0,
			type : 'F',
			directory : '/data2/someWhere',
			name : 'filename.wmv',
			size : 0,
			copied : false,
			width : 0,
			height : 0,
			videoBitRate  : 0,
			videoPlayTime : 0,
			videoThumbnailTime : 0,
			videoThumbnailPath : 0,
			url : function() {
				return url_attach + this.path;
			},
			thumbUrl : function() {
				if (this.type == 'M') {
					return url_movieimage+this.videoThumbnailPath.replace('_logo.jpg', '_s60.jpg');
				} else if (this.type == 'T') {
					return 'http://blogimgs.naver.com/storyphoto/'+this.storyPhotoType.toLowerCase()+'_thumbnail.gif';
				} else {
					return url_thumbnail2 + this.path + "?type=r2";
				}
			}
		};
	},
	disable : function() {
		this.enableFileMenu(false);
		$('filelist_container').style.display = 'none';
		this._disabled = true;
	},
	enableFileMenu : function(bEnable) {
		var menu = $('file_attach_menu');
		if (this._disabled) return false;
		if ($Agent().IE) {
			if (bEnable) {
				$("file_attach_menu_title").style.filter = '';

				$A(menu.getElementsByTagName('li')).each(function(a){
					a.style.filter = '';	
				});				
			} else {
				$("file_attach_menu_title").style.filter = 'Alpha(Opacity=30)';

				$A(menu.getElementsByTagName('li')).each(function(a){
					a.style.filter = 'Alpha(Opacity=30)';
				});				
			}
		} else {
			$("file_attach_menu_title").style.opacity = bEnable?'':0.3;

			menu.style.opacity = bEnable?'':0.3;
		}
	},
	check : function(func) {
		var bEnable = !(this._disabled || $('html').checked);

		if (func && func instanceof Function) {
			if (bEnable) {
				func();
			} else {
				alert(this.getDisabledMessage());
			}
		}

		return bEnable;
	},
	clear : function() {
		$A($('fileTxtArea').getElementsByTagName('li')).each(function(v) {
			v.parentNode.removeChild(v);
		});
		$A($('fileThumbArea').getElementsByTagName('li')).each(function(v) {
			v.parentNode.removeChild(v);
		});
		this._currentSize = 0;
		this.paintGuage();
	},
	getDisabledMessage : function() {
		if (this._disabled) {
			return '스크랩한 포스트에서 첨부파일은 수정할 수 없습니다.';
		} else if ($('html').checked) {
			return 'HTML 편집모드에서 첨부파일을 추가할 수 없습니다.';
		} else {
			return '알 수 없는 오류';
		}
	},
	asKBytes : function(bytes) {
		return Math.round(bytes / (1024))+"KB";
	},
	asMBytes : function(bytes) {
		return Math.round(bytes / (1024 * 1024))+"MB";
	},
	checkBeforeFileSelect : function() {
		if (!GB_TEMPLATE_UPLOAD) {
			if (!this.check()) return this.getDisabledMessage();
		}
		if (this.isExceedMaxFileSize()) {
			return "포스트당 최대 "+this.asMBytes(this.getMaxFileSize())+"의 파일을 첨부할 수 있습니다.";
		}
		if (this.isExceedMaxFileCount()) {
			return "포스트당 최대 "+this.getMaxFileCount()+"개의 파일을 첨부할 수 있습니다.";
		}
	}
}

function isBlankHTML(value){	
	if(value.replace(/<(?!table|img|div|embed|iframe)[^>]*>|&nbsp;|\s*/gi, '')){
		return false;
	}
	return true;
}
if ( keptAttachFiles == undefined ) {
 	var keptAttachFiles = [
		null 
	];
}
attachArea.init(keptAttachFiles);
emoticoninsertionPlugin.IMG_BASE_URL = "http://imgmovie.naver.net/2007/img/editor/emoticon/";

//에디터 취소 버튼을 눌렀을떄?
/*function editorCancel(){
	var prevUrl;
	prevUrl = document.referrer;
	if(prevUrl == ""){ //바로 이전페이지가 로그인 페이지면 ""가 넘어온다.
		window.history.go(-2);
 	}else{
 		location.href=prevUrl;
 		
 	}	
}*/
</script>
						</div>
					</dd>
				</dl>
				
				<table summary="리뷰쓰기 테이블" class="wrt_board wrt_board_v1"> 
                <caption>리뷰를 입력하세요</caption> 
                <tbody> 
					
					
					
					<tr>
					<th scope="row" class="align_v tr_guide"><span class="subject7">작성기준</span></th>
					<td class="tr_guide">
						<ul class="wrt_guide">
						<li>영화 리뷰는 200자 (공백제외) 이상으로 작성해주시기 바랍니다.</li>
						<li>영화서비스 운영원칙에 맞지않는 리뷰는 네티즌 리뷰에 등록되지 않습니다.</li>
						<li>짧은 영화평은 평점·140자평을 이용해주시기 바랍니다.</li>
						</ul>
					</td>
					</tr>
					</tbody>
					</table>
					<div class="wrt_board_submit">
						<input type="submit" value="등록" onclick="gethiddenvalue()">
					</div>
				</fieldset>
				
					</div>
				</div>
		<!-- //리뷰 -->
			</div>
		</div>
		<script type="text/javascript">
			function gethiddenvalue(){
				document.getElementById("pointStarRating1").value=
				document.getElementById("pointStarRatingValue").innerHTML;
				document.getElementById("smartEditorIframe1").value=
					document.getElementById("smartEditorIframe").contentWindow.document.body.innerHTML;
				document.getElementById("form").submit();
			}
		</script>
		<div id="hidden">
		<input type="hidden" name="star" id="pointStarRating1" value=""/>
		<input type="hidden" name="idx" id="pointStarRating2" value="<%=index%>"/>
		<input type="hidden" name="content" id="smartEditorIframe1" value="">
		</div>
	</form>
</div><!-- end -->


</body></html>