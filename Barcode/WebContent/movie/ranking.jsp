<%@page import="movie.MovieBean"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:useBean id="mmmgr1" class="movie.MovieMgr"/>
<!DOCTYPE html>
<!-- saved from url=(0048)http://movie.naver.com/movie/sdb/rank/rmovie.nhn -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta property="og:article:author" content="바코드 영화">
<meta property="og:article:author:url" content="http://movie.naver.com/">
<link rel="shortcut icon"
	href="http://static.naver.net/m/movie/icons/naver_movie_favicon.ico"
	type="image/x-icon">
<title>랭킹 : 바코드 영화</title>
<link rel="stylesheet" type="text/css"
	href="./ranking_files/movie_tablet.css">
<link rel="stylesheet" type="text/css" href="./ranking_files/common.css">
<link rel="stylesheet" type="text/css" href="./ranking_files/layout.css">
<link rel="stylesheet" type="text/css"
	href="./ranking_files/old_default.css">
<link rel="stylesheet" type="text/css"
	href="./ranking_files/old_layout.css">
<link rel="stylesheet" type="text/css"
	href="./ranking_files/old_common.css">
<link rel="stylesheet" type="text/css"
	href="./ranking_files/old_super_db.css">
</head>
<body>
	<div id="wrap" class="fix">
		<div id="container">
			<div id="content">
				<div class="article">
					<div class="old_layout old_super_db">
						<h3 class="h_db_rank"></h3>
						<!-- Content Body -->
						<div id="cbody" class="type_1">
							<div id="old_content">
								<h4 class="tlt">
									<img src="./ranking_files/tlt_ranking_movie.gif" alt="영화랭킹"
										width="65" height="15">
									<div class="form_search">
										<!-- onChange 걸어야함 -->
										<select size="1" name="" style="width: 120px;"
											class="select_type_1"
											onchange="document.location.href='rmovie.nhn?sel=cnt&amp;date=20171225&amp;tg='+this.value">
											<option value="0" selected="">전체</option>
											<option value="1">드라마</option>
											<option value="2">판타지</option>
											<option value="4">공포</option>
											<option value="5">멜로/애정/로맨스</option>
											<option value="6">모험</option>
											<option value="7">스릴러</option>
											<option value="8">느와르</option>
											<option value="10">다큐멘터리</option>
											<option value="11">코미디</option>
											<option value="12">가족</option>
											<option value="13">미스터리</option>
											<option value="14">전쟁</option>
											<option value="15">애니메이션</option>
											<option value="16">범죄</option>
											<option value="17">뮤지컬</option>
											<option value="18">SF</option>
											<option value="19">액션</option>
										</select>
									</div>
								</h4>
								<!-- 탭메뉴 -->
								<div class="tab_type_6">
									<ul>
										<li><a>
										<img src="./ranking_files/tab_movie_3_off.gif" alt="평점순(모든영화)" width="126" height="28"></a></li>
									</ul>
								</div>
								<!-- //탭메뉴 -->
								<!-- 랭킹 리스트 -->
								<table cellspacing="0" summary="랭킹 테이블" class="list_ranking">
									<colgroup>
										<col width="6%">
										<col width="*">
										<col width="2%">
										<col width="4%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">순위</th>
											<th scope="col">영화명</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td colspan="8" class="blank01"></td>
										</tr>
<%Vector<MovieBean> mlist= mmmgr1.getMemberList(3); 
for(int i=0;i<(mlist.size()>50?50:mlist.size());i++){%>										
										<tr>
											<td class="ac"><img src="http://imgmovie.naver.net/2007/img/common/bullet_r_<%=i<10?(i==9?"r10":"r0"+(i+1)):"g"+(i+1) %>.gif" alt="<%=(i+1) %>" width="14" height="13"></td>
											<td class="title">
												<div class="tit3">
													<a href="./movie_home.jsp?index=<%=mlist.get(i).getIdx() %>" title="<%=mlist.get(i).getTitle()%>"><%=mlist.get(i).getTitle()%></a>
												</div>
											</td>
											<!-- 평점순일 때 평점 추가하기  -->
											<!----------------------------------------->
											<td class="range ac"><%=mlist.get(i).getStar() %></td>
										</tr>
		<%if((i+1)%10==0) {%>
										<tr><td colspan="8" class="line01"></td></tr>
		<%} %>										
	<%} %>
									</tbody>
								</table>
								<!-- 페이지 네비게이션 시작 -->
								<!-- 페이지 네비게이션 끝 -->
								<!-- //랭킹 리스트 -->
								<div class="go_top">
									<a href=""><img src="./ranking_files/btn_top.gif" alt="TOP" width="30" height="11"></a>
								</div>
								<!-- //탑버튼 -->
								<!-- //Content Body -->
								<script type="text/javascript" src="./ranking_files/jindo2.js.다운로드"></script>
							</div>
							<img src="./ranking_files/blank.gif" alt="" class="clear">
						</div>
						<!-- //Content Body -->
					</div>
				</div>
			</div>
			<!-- //content -->
		</div>
		<!-- //container -->
		<script type="text/javascript" src="./ranking_files/lcslog.js.다운로드"></script>
		<script type="text/javascript" src="./ranking_files/jindo.Component.min.js.다운로드"></script>
		<script type="text/javascript" src="./ranking_files/jindo.WatchInput.js.다운로드" charset="euc-kr"></script>
		<script type="text/javascript" src="./ranking_files/Core.js.다운로드" charset="euc-kr"></script>
		<script type="text/javascript" src="./ranking_files/LNB.js.다운로드" charset="euc-kr"></script>
		<script type="text/javascript" src="./ranking_files/Search.js.다운로드" charset="euc-kr"></script>
		<script type="text/javascript">
// nhn.movie.Search가 jindo 기반이어서 javascript로 전환함
if (document.addEventListener) {
	document.addEventListener("DOMContentLoaded", function () {
		document.removeEventListener("DOMContentLoaded", arguments.callee, false);
		loadFooter();
	}, false);
}
// Internet Explorer
else if (document.attachEvent) {
	// onreadystatechange 는 모든 브라우저가 반환
	document.attachEvent("onreadystatechange", function () {
		if (document.readyState == "complete" || document.readyState == 'loaded') {
			document.detachEvent("onreadystatechange", arguments.callee);
			loadFooter();
		}
	});
}
function loadFooter() {
	var goNaver = document.getElementById("lnb_gonaver");
	goNaver.addEventListener("focus", focusonNaverIcon, false);
	// LNB - 사용처를 못 찾음
//   	var oLNB = new nhn.movie.LNB();
	
	// 상단 검색영역
	var oSearch = new nhn.movie.Search({
		area : "jSearchArea",
		autosearch : "http://auto.movie.naver.com/ac?q_enc=euc-kr&st=1&r_lt=1&n_ext=1&t_koreng=1&r_format=json&r_enc=euc-kr&r_unicode=0&r_escape=1&q=",
		movelink : "/movie/bi/mi/basic.nhn?code=",
		peoplelink : "/movie/bi/pi/basic.nhn?code="
	});
	
	getGNB();	
}
function focusonNaverIcon(event) {
	event.preventDefault();	// jindo.$Event.CANCEL_DEFAULT 와 동일한 기능으로 추측됨
	document.getElementById('ipt_tx_srch').value= "";
	document.getElementById('search_placeholder').style = "display:inline;";
	if (document.getElementById('jAutoComplate') != undefined && document.getElementById('jAutoComplate') !== null) {
		document.getElementById('jAutoComplate').style = "display:none;"
	}
}
window.addEventListener('pageshow', function(event) { lcs_do(); });
document.addEventListener('click', function (event) {
	var welSource = event.srcElement;	// jindo.$Element(oEvent.element);
	if (!document.getElementById("gnb").contains(welSource)) {
		gnbAllLayerClose();
	}
});
</script>
		<!-- //Footer -->
	</div>
</body>
</html>