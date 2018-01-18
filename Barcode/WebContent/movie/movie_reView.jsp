<%@page import="movie.ReviewBean"%>
<%@page import="java.util.Vector"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:useBean id="mvbean" class="movie.MovieBean"/> 
<jsp:useBean id="mvgr" class="movie.MovieMgr"/> 
<%
		request.setCharacterEncoding("utf-8");
		int on=-1;
		String idk = (String)session.getAttribute("idKey");
		String index1 = request.getParameter("index");
		mvbean = mvgr.getMember(Integer.parseInt(index1));
%>
<!DOCTYPE html>
<!-- saved from url=(0073)http://movie.naver.com/movie/bi/mi/reviewwrite.nhn?code=155665&from=list# -->
<html lang="ko"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><%=mvbean.getTitle() %> : 네이버 영화</title>
<link rel="stylesheet" type="text/css" href="./movie_reView_files/movie.all.css">
</head>
<body>
<div id="wrap" class="basic">
<form name="form" action="movie_reViewProc.jsp">
<script src="lib/js/jquery-1.7.2.min.js"></script>
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
					<td class="frst_tr"> <strong class="title"><%=mvbean.getTitle() %></strong></td>
					</tr>
					<tr>
					<th scope="row"><span class="subject2"><label for="inputTitle" class="subject2">제목</label></span></th>
					<td><input onclick="removeTitle();" type="text" class="tx_field" value="리뷰 제목을 입력하세요." name="title" id="inputTitle"></td>
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
				</tbody> 
                </table>
                <dl class="sm_sepertate"> 
                	<dt class="subject5"><label for="textareaBody"><em class="blind">내용</em></label></dt> 
                	<dd> 
  						<div class="editor_area">
  						<iframe id="TextEdit" src="Editor.html" scrolling="no" style="height: 250px;"></iframe>
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
						<a href="#" onclick="gethiddenvalue()" title="확인" class="btn_confrm"><em class="blind">확인</em></a>
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
					$('#TextEdit').contents().find('.textarea').val();
				document.form.submit();
			}
		</script>
		<div id="hidden">
		<input type="hidden" name="writer" value="<%=idk%>">
		<input type="hidden" name="star" id="pointStarRating1" value=""/>
		<input type="hidden" name="idx" id="pointStarRating2" value="<%=index1%>"/>
		<input type="hidden" name="content" id="smartEditorIframe1" value="">
		</div>
	</form>
</div><!-- end -->
</body></html>