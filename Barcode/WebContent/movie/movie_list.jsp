<%@page import="movie.ReviewBean"%>
<%@page import="movie.MovieBean"%>
<%@page import="java.util.Vector"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:useBean id="mvmgr" class="movie.MovieMgr" />
<%
	request.setCharacterEncoding("utf-8");
	int on = -1;
	String index1 = request.getParameter("index");
	Vector<MovieBean> mvlist = new Vector();
%>
<!DOCTYPE html>
<!-- saved from url=(0090)file:///C:/Users/DISKSMART/Downloads/%EB%84%A4%EC%9D%B4%EB%B2%84%20%EC%98%81%ED%99%94.html -->
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<title>바코드 영화</title>
	<link rel="stylesheet" type="text/css" href="./movie_list_files/movie.all.css">
	<div id="wrap" class="basic">
		<div id="container">
			<!-- content -->
			<div id="content">
				<div class="article hh">
					<!-- 무비차트 -->
					<div class="mv_main">
						<div class="flick_nav">
							<a href="javascript:prev()" id="flick_prev" class="btn_prev" title="이전"><em>이전</em></a>
							<!-- N=a:run.pre -->
						</div>
						<!-- flick area -->
						<div id="mflick" class="flick_view_area flick-view">
							<div class="flick-container" style="left: 0%; position: relative; width: 100%; height: 430px;">
								<ul id="flick0" class="flick-ct home_list page0 flick-panel"
									style="position: absolute; width: 100%; height: 100%; left: 100%; z-index: 10;">
									<%
										mvlist = mvmgr.getMemberList(1);
										for (int i = 0; i < (mvlist.size() > 10 ? 10 : mvlist.size()); i++) {
									%>
									<li class="item<%=i + 1%>"
										onmouseover="jindo.$Element('currentTooltip<%=i + 1%>').show();"
										onmouseout="jindo.$Element('currentTooltip<%=i + 1%>').hide();">
										<div class="obj_off tab4">
											<a href="./movie_home.jsp?index=<%=mvlist.get(i).getIdx()%>"
												onfocus="jindo.$Element('currentTooltip<%=i + 1%>').show();"
												onblur="jindo.$Element('currentTooltip<%=i + 1%>').hide();">
												<span class="ico_rating_all">전체 관람가</span> <span
												class="mask"></span> <img
												src="<%=mvlist.get(i).getPic()%>"
												alt="<%=mvlist.get(i).getTitle()%>" width="125"
												height="179"
												onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
												<span class="baseplate r"> <span class="rank_star l">
														<span class="star_off"><em>별점 - 총 10점 중</em></span> <span
														class="star_on"
														style="width: <%=Float.parseFloat(mvlist.get(i).getStar()) * 10%>%">
															<em><%=mvlist.get(i).getStar()%>점</em>
													</span>
												</span><%
 	String a = (mvlist.get(i).getStar() + "");
 		for (int j = 0; j < a.length(); j++) {
 %> <%
 	if (j == 1) {
 %><span
														class="char sc_dot"><em>.</em></span> <%
 	} else {
 %><span
														class="char sc_num<%=a.charAt(j)%>"><em><%=a.charAt(j)%></em></span>
														<%
															}
																}
														%></span>
											</a>
											<!-- N=a:run.da,r:1,i:165722 -->
										</div>
										<div id="currentTooltip<%=i + 1%>" class="obj_con"
											style="display: none">
											<div class="obj_on ">
												<div class="tooltip">
													<span class="top"></span>
													<p class="mv_title"><%=mvlist.get(i).getTitle()%></p>
													<span class="bottom"></span><span class="bottom_r"></span>
												</div>
											</div>
										</div>
									</li>
									<%
										}
									%>
								</ul>
								<ul id="flick1" class="flick-ct home_list page1 flick-panel" style="position: absolute; width: 100%; height: 100%; left: 200%; z-index: 1;">
									<%
										mvlist = mvmgr.getMemberList(2);
										for (int i = 0; i < (mvlist.size() > 10 ? 10 : mvlist.size()); i++) {
									%>
									<li
										onmouseover="jindo.$Element('commingTooltip<%=i + 1%>').show();"
										onmouseout="jindo.$Element('commingTooltip<%=i + 1%>').hide();">
										<div class="obj_off tab4">
											<a href="./movie_home.jsp?index=<%=mvlist.get(i).getIdx()%>"
												onfocus="jindo.$Element('commingTooltip<%=i + 1%>').show();"
												onblur="jindo.$Element('commingTooltip<%=i + 1%>').hide();">
												<span class="ico_rating_12">12세 관람가</span> <span
												class="mask"></span> <img
												src="<%=mvlist.get(i).getPic()%>"
												alt="<%=mvlist.get(i).getTitle()%>" width="125"
												height="179"
												onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
												<span class="baseplate r">
												<%	
													String a = (mvlist.get(i).getOpendate() + "");
													if(a.length()>0){
													for (int j=2; j<a.length(); j++) {
														if (a.charAt(j)=='.') {
														%><span class="char sc_dot"><em>.</em></span> <%
 														} else {
 														%><span class="char rate_num<%=a.charAt(j)%>"><em><%=a.charAt(j)%></em></span>
														<%}}} %> 
														<span class="spr stic_open l"><em>개봉</em></span></span>
											</a>
											<!-- N=a:run.da,r:8,i:158256 -->
										</div>
										<div id="commingTooltip<%=i + 1%>" class="obj_con"
											style="display: none;">
											<div class="obj_on ">
												<div class="tooltip">
													<span class="top"></span>
													<p class="mv_title"><%=mvlist.get(i).getTitle()%></p>
													<span class="bottom"></span><span class="bottom_r"></span>
												</div>
											</div>
										</div>
									</li>
									<%
										}
									%>
								</ul>
								<ul id="flick2"
									class="flick-ct home_list page2 flick-panel"
									style="position: absolute; width: 100%; height: 100%; left: 0%; z-index: 1;">
									<%
										mvlist = mvmgr.getMemberList(3);
										for (int i = 0; i < (mvlist.size() > 10 ? 10 : mvlist.size()); i++) {
									%>
									<li class="item<%=i + 1%>"
										onmouseover="jindo.$Element('pointTooltip<%=i + 1%>').show();"
										onmouseout="jindo.$Element('pointTooltip<%=i + 1%>').hide();">
										<div class="obj_off tab4">
											<a
												href="<%=request.getRequestURI()%>?index=<%=mvlist.get(i).getIdx()%>"
												onfocus="jindo.$Element('pointTooltip<%=i + 1%>').show();"
												onblur="jindo.$Element('pointTooltip<%=i + 1%>').hide();">
												<span class="rank"><em><%=i + 1%>위</em></span> <span
												class="ico_rating_all">전체 관람가</span> <span class="mask"></span>
												<img src="<%=mvlist.get(i).getPic()%>"
												alt="<%=mvlist.get(i).getTitle()%>" width="125"
												height="179"
												onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
												<span class="baseplate r"> <span class="rank_star l">
														<span class="star_off"><em>별점 - 총 10점 중</em></span> <span
														class="star_on"
														style="width:<%=Float.parseFloat(mvlist.get(i).getStar()) * 10%>%"><em><%=mvlist.get(i).getStar()%>점</em></span>
												</span><%
 	String a = (mvlist.get(i).getStar() + "");
 		for (int j = 0; j < a.length(); j++) {
 %> <%
 	if (j == 1) {
 %><span
														class="char sc_dot"><em>.</em></span> <%
 	} else {
 %><span
														class="char sc_num<%=a.charAt(j)%>"><em><%=a.charAt(j)%></em></span>
														<%}}%>
														</span>
											</a>
											<!-- N=a:run.da,r:3,i:134846 -->
										</div>
										<div id="pointTooltip<%=i + 1%>" class="obj_con"
											style="display: none;">
											<div class="obj_on ">
												<div class="tooltip">
													<span class="top"></span>
													<p class="mv_title"><%=mvlist.get(i).getTitle()%></p>
													<span class="bottom"></span><span class="bottom_r"></span>
												</div>
											</div>
										</div>
									</li>
									<%}%>
								</ul>
							</div>
						</div>
						<!-- //flick area -->
						<div class="flick_nav">
							<a href="javascript:next()" id="flick_next" class="btn_next" title="다음"><em>다음</em></a>
							<!-- N=a:run.next -->
						</div>
						<div class="running_tab">
							<ul>
								<li id="POINT_tab" class="item3 on"><a><em>평점순</em></a> <!-- N=a:run.bystar --></li>
								<li id="CURRENT_tab" class="item1"><a><em>현재상영작</em></a> <!-- N=a:run.now --></li>
								<li id="COMMING_tab" class="item2"><a><em>개봉예정작</em></a> <!-- N=a:run.coming --></li>
							</ul>
						</div>
					</div>
					<!-- //무비차트  -->
					<div class="section_group" id="homeReview">
						<div class="obj_section">
							<div class="main_review">
								<div class="title_area">
									<h4 class="hh_review">
										<strong class="blind">평점/리뷰</strong>
									</h4>
								</div>
								<div class="hh_review_area">
									<div id="movieReview" class="hh_review_ct">
										<ul class="lst_con first" data-index="0"
											style="display: block">
											<!-- [D] 선택된 경우 li에 class="on" 추가 -->
											<% mvlist = mvmgr.getMemberList(1);
												int ra = (int) (Math.random() * mvlist.size());
												for (int i = 0; i < (mvlist.size() > 4 ? 4 : mvlist.size()); i++) {
											%>
											<li id="review<%=i + 1%>" data-index="<%=i%>" class="_select_title<%if (i == 0) {%> on<%}%>">
												<a href="<%=request.getRequestURI()%>?index=<%=mvlist.get(i).getIdx()%>" class="thmb">
												<img src="<%=mvlist.get(i).getPic()%>" width="64" height="91" alt="<%=mvlist.get(i).getTitle()%>"
													onerror="this.src='http://static.naver.net/movie/2012/06/dft_img64x91.png'"></a>
												<div class="detail">
													<a href="<%=request.getRequestURI()%>?index=<%=mvlist.get(i).getIdx()%>" data-index="<%=i%>" class="_select_title_anchor">
													<strong><%=mvlist.get(i).getTitle()%></strong>
														<div class="star_score">
															<span class="st_off"><span class="st_on" style="width:<%=Float.parseFloat(mvlist.get(i).getStar()) * 10%>%">
															평점 - 총 10점 중</span></span> <span class="score"> 
						<%String a = (mvlist.get(i).getStar() + "");
						 		for (int j = 0; j < a.length(); j++) {
						 		if (j == 1) {
													 %><span class="char sc_dot"><em>.</em></span> <%
						 		} else {
						 								%><span class="char sc_num<%=a.charAt(j)%>"><em><%=a.charAt(j)%></em></span>
																<%}}%>
															</span>
														</div> </a>
													<ul class="info">
														<%Vector<ReviewBean> mvrlist = mvmgr.getReviewList(mvlist.get(i).getIdx());
														for (int j = 0; j < 3; j++) {
															if (j < mvrlist.size()) {%>
														<li <%if (j == 2) {%> class="last" <%}%>><a
															href="<%=request.getRequestURI()%>?index=<%=mvlist.get(i).getIdx()%>&&num=3&&reviewnum=<%=mvrlist.get(j).getReviewnum()%>"
															onclick="clickcr(this, 'tvw.list', '4588316', '<%=j + 1%> %>', event);">
																<span class="tit"><%=mvrlist.get(j).getTitle()%></span>
														</a></li>
														<%} else {%>
														<li <%if (j == 2) {%> class="last" <%}%>><a href="" onclick="clickcr(this, 'tvw.list', '4588316', '<%=j + 1%> %>', event);"><span class="tit"></span></a></li>
														<%}}%>
													</ul>
												</div></li>
											<%}%>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- [D] 맨위로 버튼 div id="content" 기준 top:342px 이상 -->
			</div>
		</div>
		<!-- //content -->
<script src="http://code.jquery.com/jquery-1.7.0.min.js"></script>
<script>
	var page=0;
	var wid = $('.flick-container').width();
	var icon = $('.running_tab > ul > li');
	var rev = $('.lst_con > li');
	rev.mouseenter(function () {
		for(var i=0;i<rev.length;i++){
			if(rev.eq(i).hasClass("on"))
				rev.eq(i).removeClass("on");
		}
		$(this).addClass("on");
	})
	icon.click(function () {
		icon.eq(page).toggleClass("on");
		page=$(this).index();
		$('.flick-container').css("left", -page*wid);
		icon.eq(page).toggleClass("on");
	})
	function next(){
		icon.eq(page).toggleClass("on");
		page++;
		page=(page==3?0:page);
		$('.flick-container').css("left", -page*wid);
		icon.eq(page).toggleClass("on");
	}
	function prev(){
		var wid = $('.flick-container').width();
		icon.eq(page).toggleClass("on");
		page--;
		page=(page==-1?2:page);
		$('.flick-container').css("left", -page*wid);
		icon.eq(page).toggleClass("on");
	}
	
</script>
</body>
</html>