<%@page import="movie.MovieBean"%>
<%@page import="java.util.Vector"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:useBean id="mvmgr" class="movie.MovieMgr"/>
<%
		request.setCharacterEncoding("utf-8");
		int on=-1;
		String index1 = request.getParameter("index");
		Vector<MovieBean> mvlist = new Vector();
%>
<!DOCTYPE html>
<!-- saved from url=(0090)file:///C:/Users/DISKSMART/Downloads/%EB%84%A4%EC%9D%B4%EB%B2%84%20%EC%98%81%ED%99%94.html -->
<html lang="ko">
<div style="display: none;">
	<input title="jindoCheck" type="input" name="jindo1514101875362">
</div>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<div style="display: none;">
		<input title="jindoCheck" type="input" name="jindo1514099488347">
	</div>
	<div style="display: none;">
		<input title="jindoCheck" type="input" name="jindo1514099467513">
	</div>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="imagetoolbar" content="no">
	<meta property="og:title" content="바코드 영화">
	<meta property="og:description" content="영화에 대한 모든 것">
	<meta property="og:image" content="http://static.naver.net/m/movie/icons/OG_270_270.png">
	<meta property="og:type" content="article">
	<meta property="og:url" content="http://movie.naver.com">
	<title>바코드 영화</title>
	<link rel="shortcut icon" href="http://static.naver.net/m/movie/icons/naver_movie_favicon.ico" type="image/x-icon"> 
		<link rel="stylesheet" type="text/css" href="./movie_list_files/movie.all.css">
	<script type="text/javascript" src="./movie_list_files/movie.home.js"></script>
	<link rel="stylesheet" href="../css/gnb_style.css" type="text/css">
	<script src="./movie_list_files/clickcrD.js" id="gnb_clickcrD" charset="utf-8"></script>
	<div id="wrap" class="basic">
	<script type="text/javascript">
	function delayed_submit(object) {
		if (navigator.userAgent.indexOf('MSIE') == -1) {
			var b = c = new Date();
	      	while ((b.getTime() - c.getTime()) < 100) {
				b = new Date();
	      	}
		} 
	}
</script>
		<div id="container">
			<!-- content -->
			<div id="content">
				<div class="article hh">
					<!-- 무비차트 -->
					<div class="mv_main" onmouseover="oTimer.abort();"
						onmouseout="movieChart.restartTimer();">
						<div class="flick_nav">
							<a href="" id="flick_prev" class="btn_prev"
								onclick="clickcr(this, &#39;run.pre&#39;, &#39;&#39;, &#39;&#39;, event);"
								onfocus="oTimer.abort();" onblur="movieChart.restartTimer();"
								title="이전"><em>이전</em></a>
							<!-- N=a:run.pre -->
						</div>
						<!-- flick area -->
						<div id="mflick" class="flick_view_area flick-view">
							<div class="flick-container"
								style="left: -100%; position: relative; width: 100%; height: 430px; transition-duration: 0ms; transform: translate(0px, 0px);">
								<ul id="flick0" class="flick-ct home_list page0 flick-panel" style="position: absolute; width: 100%; height: 100%; transform: translate(0px, 0px); transition-property: -webkit-transform; left: 100%; z-index: 10;">
<% mvlist = mvmgr.getMemberList("cur");
for(int i=0; i < (mvlist.size()>10?10:mvlist.size()); i++) {%>
									<li class="item<%=i+1 %>" onmouseover="jindo.$Element('currentTooltip<%=i+1 %>').show();" onmouseout="jindo.$Element('currentTooltip1').hide();">
										<div class="obj_off tab4">
											<a href="./movie_detail.jsp?index=<%=mvlist.get(i).getIdx() %>" onfocus="jindo.$Element('currentTooltip1').show();oTimer.abort();" onblur="jindo.$Element('currentTooltip1').hide();movieChart.restartTimer();">
												<span class="ico_rating_all">전체 관람가</span>
												<span class="mask"></span> <img src="./mainimg/<%=mvlist.get(i).getPic() %>" alt="<%=mvlist.get(i).getTitle() %>" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
												<span class="baseplate r"> <span class="rank_star l">
												<span class="star_off"><em>별점 - 총 10점 중</em></span>
												<span class="star_on" style="width: <%=Float.parseFloat(mvlist.get(i).getStar())*10%>%">
												<em><%=mvlist.get(i).getStar() %>점</em></span></span><strong class="l">
												<%String a = (mvlist.get(i).getStar()+"");
												for(int j=0;j<a.length();j++) {%>
												<% if(j==1){%><span class="char sc_dot"><em>.</em></span>
												<% }else{%><span class="char sc_num<%=a.charAt(j)%>"><em><%=a.charAt(j)%></em></span><%}} %>
											</span>
											</a>
											<!-- N=a:run.da,r:1,i:165722 -->
										</div>
										<div id="currentTooltip1" class="obj_con"
											style="display: none">
											<div class="obj_on ">
												<div class="tooltip">
													<span class="top"></span>
													<p class="mv_title">극장판 포켓몬스터 너로 정했다!</p>
													<span class="bottom"></span><span class="bottom_r"></span>
												</div>
											</div>
										</div>
									</li>
<%} %>
								</ul>
								<ul id="flick1" class="flick-ct home_list page1 flick-panel blind" style="position: absolute; width: 100%; height: 100%; transform: translate(0px, 0px); transition-property: -webkit-transform; left: 200%; z-index: 1;">
<% mvlist = mvmgr.getMemberList("new");
for(int i=0; i < (mvlist.size()>10?10:mvlist.size()); i++) {%>								
									<li onmouseover="jindo.$Element('commingTooltip8').show();"	onmouseout="jindo.$Element('commingTooltip8').hide();">
										<div class="obj_off tab4">
											<a href="./movie_detail.jsp?index=<%=mvlist.get(i).getIdx() %>" onfocus="jindo.$Element('commingTooltip8').show();oTimer.abort();" onblur="jindo.$Element('commingTooltip8').hide();movieChart.restartTimer();">
											<span class="ico_rating_12">12세 관람가</span> <span	class="mask"></span> 
											<img src="<%=mvlist.get(i).getPic() %>"	alt="<%=mvlist.get(i).getTitle() %>" width="125" height="179"	onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
											<span class="baseplate r"> <strong class="l">
										<%String a = (mvlist.get(i).getOpendate()+"");
										for(int j=(mvlist.get(i).getOpendate()==null?0:5);j<a.length();j++) {%>
												<% if(j==7){%><span class="char sc_dot"><em>.</em></span>
												<%}else{%><span class="char rate_num<%=a.charAt(j)%>"><em><%=a.charAt(j)%></em></span><%} %>
										<%} %>
												<span class="spr stic_open l"><em>개봉</em></span>
											</span>
											</a>
											<!-- N=a:run.da,r:8,i:158256 -->
										</div>
										<div id="commingTooltip8" class="obj_con"
											style="display: none;">
											<div class="obj_on "><div class="tooltip"><span class="top"></span>
													<p class="mv_title">고스트 스토리</p>
													<span class="bottom"></span><span class="bottom_r"></span>
												</div>
											</div>
										</div>
									</li>
<%} %>
								</ul>
								<ul id="flick2"	class="flick-ct home_list page2 flick-panel blind" style="position: absolute; width: 100%; height: 100%; transform: translate(0px, 0px); transition-property: -webkit-transform; left: 0%; z-index: 1;">
<% mvlist = mvmgr.getMemberList("star");
for(int i=0; i < (mvlist.size()>10?10:mvlist.size()); i++) {%>	
									<li class="item<%=i+1 %>" onmouseover="jindo.$Element('pointTooltip<%=i+1 %>').show();" onmouseout="jindo.$Element('pointTooltip<%=i+1 %>').hide();">
										<div class="obj_off tab4">
											<a href="/movie/bi/mi/basic.nhn?code=134846" onfocus="jindo.$Element('pointTooltip<%=i+1 %>').show();oTimer.abort();" onblur="jindo.$Element('pointTooltip<%=i+1 %>').hide();movieChart.restartTimer();">
											<span class="rank"><em>3위</em></span> <span class="ico_rating_all">전체 관람가</span> <span class="mask"></span> 
											<img src="http://movie2.phinf.naver.net/20160502_142/14621674274327uVm7_JPEG/movie_image.jpg?type=f125" alt="드롭박스" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
												<span class="baseplate r"> <span class="rank_star l">
												<span class="star_off"><em>별점 - 총 10점 중</em></span>
												<span class="star_on" style="width: 93.3%"><em>9.33점</em></span>
												</span> <strong class="l"><span class="char sc_num9"><em>9</em></span>
												<span class="char sc_dot"><em>.</em></span>
												<span class="char sc_num3"><em>3</em></span>
												<span class="char sc_num3"><em>3</em></span></strong>
											</span> </a>
											<!-- N=a:run.da,r:3,i:134846 -->
										</div>
										<div id="pointTooltip3" class="obj_con" style="display: none;">
											<div class="obj_on ">
												<div class="tooltip">
													<span class="top"></span>
													<p class="mv_title">드롭박스</p>
													<span class="bottom"></span><span class="bottom_r"></span>
												</div>
											</div>
										</div>
									</li>
<%} %>
								</ul>
							</div>
						</div>
						<!-- //flick area -->
						<div class="flick_nav">
							<a href="" id="flick_next" class="btn_next"
								onclick="clickcr(this, &#39;run.next&#39;, &#39;&#39;, &#39;&#39;, event);"
								onfocus="oTimer.abort();" onblur="movieChart.restartTimer();"
								title="다음"><em>다음</em></a>
							<!-- N=a:run.next -->
						</div>
						<div class="running_tab">
							<ul>
								<li id="CURRENT_tab" class="item1"><a href=""
									onclick="movieChart.fullSettingMovieChart(0);"
									onfocus="oTimer.abort();" onblur="movieChart.restartTimer();"
									class="flickingTab"><em>현재상영작</em></a>
								<!-- N=a:run.now --></li>
								<li id="COMMING_tab" class="item2 on"><a href=""
									onclick="movieChart.fullSettingMovieChart(1);"
									onfocus="oTimer.abort();" onblur="movieChart.restartTimer();"
									class="flickingTab"><em>개봉예정작</em></a>
								<!-- N=a:run.coming --></li>
								<li id="POINT_tab" class="item3"><a href=""
									onclick="movieChart.fullSettingMovieChart(2);"
									onfocus="oTimer.abort();" onblur="movieChart.restartTimer();"
									class="flickingTab"><em>평점순</em></a>
								<!-- N=a:run.bystar --></li>
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
											<li id="review1" data-index="0" class="_select_title on">
												<a
												href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=85579"
												class="thmb"
												onclick="clickcr(this, &#39;tvw.img&#39;, &#39;85579&#39;, &#39;1&#39;, event);"><img
													src="./movie_list_files/movie_image(29).jpg" width="64"
													height="91" alt="신과함께-죄와 벌"
													onerror="this.src=&#39;http://static.naver.net/movie/2012/06/dft_img64x91.png&#39;"></a>
												<div class="detail">
													<a
														href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=85579"
														onclick="clickcr(this, &#39;tvw.title&#39;, &#39;85579&#39;, &#39;1&#39;, event);"
														data-index="0" class="_select_title_anchor"><strong>신과함께-죄와
															벌</strong>
														<div class="star_score">
															<span class="st_off"><span class="st_on"
																style="width: 82.4%">평점 - 총 10점 중</span></span> <span
																class="score"> <span class="char sc_num8"><em>8</em></span><span
																class="char sc_dot"><em>.</em></span><span
																class="char sc_num2"><em>2</em></span><span
																class="char sc_num4"><em>4</em></span>
															</span>
														</div> </a>
													<ul class="info">
														<li><a
															href="http://movie.naver.com/movie/bi/mi/reviewread.nhn?nid=4588316&amp;code=85579"
															onclick="clickcr(this, &#39;tvw.list&#39;, &#39;4588316&#39;, &#39;1&#39;, event);"><span
																class="tit">영화 신과 함께 줄거리, 재미도 있고 특수효과 엄청나네!</span></a></li>
														<li><a
															href="http://movie.naver.com/movie/bi/mi/reviewread.nhn?nid=4588009&amp;code=85579"
															onclick="clickcr(this, &#39;tvw.list&#39;, &#39;4588009&#39;, &#39;2&#39;, event);"><span
																class="tit">[신과 함께-죄와 벌]한국 영화 판타지 장르의 신기원을 이룬
																	영화!! </span></a></li>
														<li class="last"><a
															href="http://movie.naver.com/movie/bi/mi/reviewread.nhn?nid=4588127&amp;code=85579"
															onclick="clickcr(this, &#39;tvw.list&#39;, &#39;4588127&#39;, &#39;3&#39;, event);"><span
																class="tit">[2D] 신과 함께 - 죄와 벌 / CG와 함께 - 재미 봄</span></a></li>
													</ul>
												</div>
											</li>
											<li id="review2" data-index="1" class="_select_title"><a
												href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=155665"
												class="thmb"
												onclick="clickcr(this, &#39;tvw.img&#39;, &#39;155665&#39;, &#39;2&#39;, event);"><img
													src="./movie_list_files/movie_image(30).jpg" width="64"
													height="91" alt="강철비"
													onerror="this.src=&#39;http://static.naver.net/movie/2012/06/dft_img64x91.png&#39;"></a>
												<div class="detail">
													<a
														href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=155665"
														onclick="clickcr(this, &#39;tvw.title&#39;, &#39;155665&#39;, &#39;2&#39;, event);"
														data-index="1" class="_select_title_anchor"><strong>강철비</strong>
														<div class="star_score">
															<span class="st_off"><span class="st_on"
																style="width: 84.4%">평점 - 총 10점 중</span></span> <span
																class="score"> <span class="char sc_num8"><em>8</em></span><span
																class="char sc_dot"><em>.</em></span><span
																class="char sc_num4"><em>4</em></span><span
																class="char sc_num4"><em>4</em></span>
															</span>
														</div> </a>
													<ul class="info">
														<li><a
															href="http://movie.naver.com/movie/bi/mi/reviewread.nhn?nid=4587729&amp;code=155665"
															onclick="clickcr(this, &#39;tvw.list&#39;, &#39;4587729&#39;, &#39;1&#39;, event);"><span
																class="tit">&lt;강철비&gt; - 북한을 다룬 꽤 괜찮은 밀리터리 스릴러</span></a></li>
														<li><a
															href="http://movie.naver.com/movie/bi/mi/reviewread.nhn?nid=4588054&amp;code=155665"
															onclick="clickcr(this, &#39;tvw.list&#39;, &#39;4588054&#39;, &#39;2&#39;, event);"><span
																class="tit">강철비 (2017)</span></a></li>
														<li class="last"><a
															href="http://movie.naver.com/movie/bi/mi/reviewread.nhn?nid=4588249&amp;code=155665"
															onclick="clickcr(this, &#39;tvw.list&#39;, &#39;4588249&#39;, &#39;3&#39;, event);"><span
																class="tit">강철비 (steel rain) </span></a></li>
													</ul>
												</div></li>
											<li id="review3" data-index="2" class="_select_title"><a
												href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=125488"
												class="thmb"
												onclick="clickcr(this, &#39;tvw.img&#39;, &#39;125488&#39;, &#39;3&#39;, event);"><img
													src="./movie_list_files/movie_image(31).jpg" width="64"
													height="91" alt="스타워즈: 라스트 제다이"
													onerror="this.src=&#39;http://static.naver.net/movie/2012/06/dft_img64x91.png&#39;"></a>
												<div class="detail">
													<a
														href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=125488"
														onclick="clickcr(this, &#39;tvw.title&#39;, &#39;125488&#39;, &#39;3&#39;, event);"
														data-index="2" class="_select_title_anchor"><strong>스타워즈:
															라스트 제다이</strong>
														<div class="star_score">
															<span class="st_off"><span class="st_on"
																style="width: 70.6%">평점 - 총 10점 중</span></span> <span
																class="score"> <span class="char sc_num7"><em>7</em></span><span
																class="char sc_dot"><em>.</em></span><span
																class="char sc_num0"><em>0</em></span><span
																class="char sc_num6"><em>6</em></span>
															</span>
														</div> </a>
													<ul class="info">
														<li><a
															href="http://movie.naver.com/movie/bi/mi/reviewread.nhn?nid=4587630&amp;code=125488"
															onclick="clickcr(this, &#39;tvw.list&#39;, &#39;4587630&#39;, &#39;1&#39;, event);"><span
																class="tit">스타워즈: 라스트 제다이 (Star Wars: The Last
																	Jedi, 2017) </span></a></li>
														<li><a
															href="http://movie.naver.com/movie/bi/mi/reviewread.nhn?nid=4586261&amp;code=125488"
															onclick="clickcr(this, &#39;tvw.list&#39;, &#39;4586261&#39;, &#39;2&#39;, event);"><span
																class="tit">스타워즈:라스트 제다이 IMAX 3D 후기 - 거대한 팬픽션을
																	보았다.</span></a></li>
														<li class="last"><a
															href="http://movie.naver.com/movie/bi/mi/reviewread.nhn?nid=4587557&amp;code=125488"
															onclick="clickcr(this, &#39;tvw.list&#39;, &#39;4587557&#39;, &#39;3&#39;, event);"><span
																class="tit">영화 &lt;스타워즈:라스트제다이&gt; 새로운 시작...</span></a></li>
													</ul>
												</div></li>
											<li id="review4" data-index="3" class="_select_title"><a
												href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=166583"
												class="thmb"
												onclick="clickcr(this, &#39;tvw.img&#39;, &#39;166583&#39;, &#39;4&#39;, event);"><img
													src="./movie_list_files/movie_image(32).jpg" width="64"
													height="91" alt="세 번째 살인"
													onerror="this.src=&#39;http://static.naver.net/movie/2012/06/dft_img64x91.png&#39;"></a>
												<div class="detail">
													<a
														href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=166583"
														onclick="clickcr(this, &#39;tvw.title&#39;, &#39;166583&#39;, &#39;4&#39;, event);"
														class="_select_title_anchor"><strong>세 번째 살인</strong>
														<div class="star_score">
															<span class="st_off"><span class="st_on"
																style="width: 81.9%">평점 - 총 10점 중</span></span> <span
																class="score"> <span class="char sc_num8"><em>8</em></span><span
																class="char sc_dot"><em>.</em></span><span
																class="char sc_num1"><em>1</em></span><span
																class="char sc_num9"><em>9</em></span>
															</span>
														</div> </a>
													<ul class="info">
														<li><a href=""
															onclick="clickcr(this, &#39;tvw.list&#39;, &#39;4587041&#39;, &#39;1&#39;, event);"><span
																class="tit">세 번째 살인 三度目の殺人, The Third Murder</span></a></li>
														<li><a href=""
															onclick="clickcr(this, &#39;tvw.list&#39;, &#39;4586059&#39;, &#39;2&#39;, event);"><span
																class="tit">&lt;세 번째 살인&gt; 죄는 누가 심판하는가? 텅빈 그릇 같은
																	진실</span></a></li>
														<li class="last"><a href=""
															onclick="clickcr(this, &#39;tvw.list&#39;, &#39;4587716&#39;, &#39;3&#39;, event);"><span
																class="tit">[세 번째 살인] 그릇 그리고 죄와 벌 </span></a></li>
													</ul>
												</div></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- [D] 맨위로 버튼 div id="content" 기준 top:342px 이상 -->
			</div>
			<script type="text/javascript">
jindo.$Fn(function () {
    var welTopAnchor = jindo.$Element('floatingTopAnchor');
    var welContent = jindo.$Element('content');
    var nMaxY;
    var nMinY = 61;
    var oFloatingLayer = new jindo.FloatingLayer(welTopAnchor).attach({
        beforeMove: function (oEvent) {
            // 상단 limit
            nMaxY = welContent.height() - nTopMargin;
            if (oEvent.nY > nMaxY) {
                oEvent.nY = nMaxY;
            }
             // 하단 limit
            if (oEvent.nY < nMinY) {
                oEvent.nY = nMinY;
            }
        }
    });
}).attach(window, 'load');
</script>
			<!-- //맨위로 -->
		</div>
		<!-- //content -->
		<script type="text/template" id="CURRENT_template">
{for index:movie in CURRENT}
	<li class="item{=index +1}" data-id="{=movie.movieCode}" data-detail="{=movie.movieCode}" data-reserve="{=movie.movieCode}" onmouseover="jindo.$Element('currentTooltip{=index+1}').show();" onmouseout="jindo.$Element('currentTooltip{=index+1}').hide();">
		<div class="obj_off tab4">
			<a href="/movie/bi/mi/basic.nhn?code={=movie.movieCode}" onfocus="jindo.$Element('currentTooltip{=index+1}').show();oTimer.abort();" onblur="jindo.$Element('currentTooltip{=index+1}').hide();movieChart.restartTimer();">
				{if movie.adult}
					<span class="ico_rating_19">청소년 유해물</span>
				{elseif movie.lastKoreanGrade != null}
					{js movieChart.getGradeIcon(=movie.lastKoreanGrade.code)}
				{/if}
				<span class="mask"></span>
				<img src="{js movieChart.getPhotoInfraImageDomain()}{=movie.posterImageUrl}?type=f125" alt="{js movieChart.replaceDoubleQuotationForHTML(=movie.movieTitle)}" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<span class="rank_star l"><span class="star_off"><em>별점 - 총 10점 중</em></span><span class="star_on" style="width:{=movie.point*10}%"><em>{=movie.point} 점</em></span></span>
					<strong class="l">{js movieChart.numberFont(=movie.point, 'sc')}</strong>
				</span>
			</a><!-- N=a:run.da,r:{=index + 1},i:{=movie.movieCode} -->
		</div>
		<div id="currentTooltip{=index+1}" class="obj_con" style="display:none">
			<div class="obj_on{js movieChart.tooltipLengthOver(=movie.movieTitle)} {if (index+1)%5 == 0}rt{/if}">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">{=movie.movieTitle}</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			</div>
		</div>
	</li>
{/for}
</script>
		<script type="text/template" id="COMMING_template">
{for index:movie in COMMING}
	<li class="item{=index +1}" data-id="{=movie.movieCode}" data-detail="{=movie.movieCode}" data-reserve="{=movie.movieCode}" onmouseover="jindo.$Element('commingTooltip{=index+1}').show();" onmouseout="jindo.$Element('commingTooltip{=index+1}').hide();">
		<div class="obj_off tab4">
			<a href="/movie/bi/mi/basic.nhn?code={=movie.movieCode}" onfocus="jindo.$Element('commingTooltip{=index+1}').show();oTimer.abort();" onblur="jindo.$Element('commingTooltip{=index+1}').hide();movieChart.restartTimer();">
				{if movie.adult}
					<span class="ico_rating_19">청소년 유해물</span>
				{elseif movie.lastKoreanGrade != null}
					{js movieChart.getGradeIcon(=movie.lastKoreanGrade.code)}
				{/if}
				<span class="mask"></span>
				<img src="{js movieChart.getPhotoInfraImageDomain()}{=movie.posterImageUrl}?type=f125" alt="{js movieChart.replaceDoubleQuotationForHTML(=movie.movieTitle)}" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<strong class="l">{js movieChart.numberFont(=movie.openDate, 'rate')}</strong>{if movie.openDate != ''}<span class="spr stic_open l"><em>개봉</em>{/if}</span>
				</span>
			</a><!-- N=a:run.da,r:{=index + 1},i:{=movie.movieCode} -->
		</div>
		<div id="commingTooltip{=index+1}" class="obj_con" style="display:none">
			<div class="obj_on{js movieChart.tooltipLengthOver(=movie.movieTitle)} {if (index+1)%5 == 0}rt{/if}">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">{=movie.movieTitle}</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			</div>
		</div>
	</li>
{/for}
</script>
		<script type="text/template" id="POINT_template">
{for index:movie in POINT}
	<li class="item{=index +1}" data-id="{=movie.movieCode}" data-detail="{=movie.movieCode}" data-reserve="{=movie.movieCode}" onmouseover="jindo.$Element('pointTooltip{=index+1}').show();" onmouseout="jindo.$Element('pointTooltip{=index+1}').hide();">
		<div class="obj_off tab4">
			<a href="/movie/bi/mi/basic.nhn?code={=movie.movieCode}" onfocus="jindo.$Element('pointTooltip{=index+1}').show();oTimer.abort();" onblur="jindo.$Element('pointTooltip{=index+1}').hide();movieChart.restartTimer();"><span class="rank"><em>{=index +1}위</em></span>
				{if movie.adult}
					<span class="ico_rating_19">청소년 유해물</span>
				{elseif movie.lastKoreanGrade != null}
					{js movieChart.getGradeIcon(=movie.lastKoreanGrade.code)}
				{/if}
				<span class="mask"></span>
				<img src="{js movieChart.getPhotoInfraImageDomain()}{=movie.posterImageUrl}?type=f125" alt="{js movieChart.replaceDoubleQuotationForHTML(=movie.movieTitle)}" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<span class="rank_star l"><span class="star_off"><em>별점 - 총 10점 중</em></span><span class="star_on" style="width:{=movie.point*10}%"><em>{=movie.point} 점</em></span></span>
					<strong class="l">{js movieChart.numberFont(=movie.point, 'sc')}</strong>
				</span>
			</a><!-- N=a:run.da,r:{=index + 1},i:{=movie.movieCode} -->
		</div>
		<div id="pointTooltip{=index+1}" class="obj_con" style="display:none">
			<div class="obj_on{js movieChart.tooltipLengthOver(=movie.movieTitle)} {if (index+1)%5 == 0}rt{/if}">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">{=movie.movieTitle}</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			</div>
		</div>
	</li>
{/for}
</script>
		<script type="text/template" id="DOWNLOAD_template">
{if DOWNLOAD ==  ""}
	<li class="error_area">
         <div class="error_msg"></div>
    </li>
{else}
	{for index:movie in DOWNLOAD}
		<li class="item{=index +1}" data-id="{=movie.movieCode}" data-detail="{=movie.movieCode}" data-reserve="{=movie.movieCode}" onmouseover="jindo.$Element('downloadTooltip{=index+1}').show();" onmouseout="jindo.$Element('downloadTooltip{=index+1}').hide();">
			<div class="obj_off tab4">
				<a href="http://nstore.naver.com/tvstore/detail.nhn?mcode={=movie.movieCode}" target="_blank"  onfocus="jindo.$Element('downloadTooltip{=index+1}').show();oTimer.abort();" onblur="jindo.$Element('downloadTooltip{=index+1}').hide();movieChart.restartTimer();"><span class="rank"><em>{=index +1}위</em></span>
					{if movie.adult}
						<span class="ico_rating_19">청소년 유해물</span>
					{elseif movie.lastKoreanGrade != null}
						{js movieChart.getGradeIcon(=movie.lastKoreanGrade.code)}
					{/if}
					<span class="mask"></span> {if movie.salePossibleYn == true}<span class="purchase">구매</span>{/if} {if movie.lendingPossibleYn == true}<span class="rental">대여</span>{/if}
					<img src="{js movieChart.getPhotoInfraImageDomain()}{=movie.posterImageUrl}?type=f125" alt="{js movieChart.replaceDoubleQuotationForHTML(=movie.movieTitle)}" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
					<span class="baseplate r">
						<span class="spr stic_down l"><em>판매율</em></span>
						<strong class="l">{js movieChart.numberFont(=movie.formattedSaleRate, 'rate')}<span class="char rate_pct"><em>%</em></span></strong>
					</span>
				</a><!-- N=a:run.da,r:{=index + 1},i:{=movie.movieCode} -->
			</div>
			<div id="downloadTooltip{=index+1}" class="obj_con" style="display:none">
				<div class="obj_on{js movieChart.tooltipLengthOver(=movie.movieTitle)} {if (index+1)%5 == 0}rt{/if}">
					<div class="tooltip">
						<span class="top"></span>
						<p class="mv_title">{=movie.movieTitle}</p>
						<span class="bottom"></span><span class="bottom_r"></span>
					</div>
				</div>
			</div>
		</li>
	{/for}
{/if}
</script>
		<script type="text/javascript">
var flickContents = new Array(3);
var htInfo = jindo.m.getDeviceInfo(); 
var bUseCss3d = jindo.m._isUseCss3d() || (htInfo.galaxyS2 && (htInfo.version >= "4.0.3"));
var oFlicking = new jindo.m.CircularFlicking(jindo.$('mflick'),{
	nDuration : 100,
	bHorizontal : true,
    sClassPrefix : 'flick-',
    nFlickThreshold : 40,
    nTotalContents : 3,
    bUseCss3d : bUseCss3d
}).attach({
	// 타이머 정지 및 메뉴 하이라이팅
	'beforeFlicking' : function(oCustomEvt) {
		oTimer.abort();
		var index = oCustomEvt.nContentIndex;
		var nextIndex = movieChart.getNextIndex(index);
		var previousIndex = movieChart.getPreviousIndex(index);
		if (oCustomEvt.bLeft) {
			movieChart.setMenuHighlighting(nextIndex);
		} else {
			movieChart.setMenuHighlighting(previousIndex);
		}
		
		
		this.getPanelElement().removeClass('blind');
		this.getRightPanelElement().removeClass('blind');
		this.getLeftPanelElement().removeClass('blind');
	},
	
	// 플리킹처리 및 타이머 재시작
	'afterFlicking' : function(oCustomEvt){
		
		if (oCustomEvt.bLeft) {
			var type = movieChart.movieChartTab[oCustomEvt.nContentRightIndex];
			
			// 플리킹 저장변수에 이미 데이터가 있다면 저장변수 이용, 없으면 Ajax Call.
			if (flickContents[oCustomEvt.nContentRightIndex]) {
				movieChart.movieChartJsonCallBack(null, flickContents[oCustomEvt.nContentRightIndex], type, oCustomEvt.nContentRightIndex, oCustomEvt.nPanelRightIndex);
			} else {
				movieChart.ajaxCall(movieChart.movieChartJsonUrl, type, oCustomEvt.nContentRightIndex, oCustomEvt.nPanelRightIndex);
			}
			
		} else {
			var type = movieChart.movieChartTab[oCustomEvt.nContentLeftIndex];
			
			// 플리킹 저장변수에 이미 데이터가 있다면 저장변수 이용, 없으면 Ajax Call.
			if (flickContents[oCustomEvt.nContentLeftIndex]) {
				movieChart.movieChartJsonCallBack(null, flickContents[oCustomEvt.nContentLeftIndex], type, oCustomEvt.nContentLeftIndex, oCustomEvt.nPanelLeftIndex);
			} else {
				movieChart.ajaxCall(movieChart.movieChartJsonUrl, type, oCustomEvt.nContentLeftIndex, oCustomEvt.nPanelLeftIndex);
			}
		}
		
		this.getRightPanelElement().addClass('blind');
		this.getLeftPanelElement().addClass('blind');
		
		movieChart.restartTimer();
	}
});
//[MOVIEOP-5993] [모바일웹] Android 공통댓글 이전/다음 버튼 클릭시 포커싱 유지(PC 환경에서는 Flicking 되지 않도록 수정.)
var osInfo = jindo.$Agent().os();
if(osInfo.win || osInfo.mac || osInfo.linux) {
	oFlicking.attach({
		'touchStart' : function(oCustomEvt){
			oCustomEvt.stop();
			}
	});
}
var oTimer = new jindo.Timer();
var movieChart = {
		
		movieChartDefaultJsonUrl : "/movieChartDefaultJson.nhn",
		movieChartJsonUrl : "/movieChartJson.nhn",
		
		movieChartTab : new Array("CURRENT", "COMMING", "POINT"),
		movieChartAllViewUrl : new Array(
				"/movie/running/current.nhn?order=reserve",
				"/movie/running/current.nhn",
				"/movie/running/premovie.nhn?order=reserve",
				"/movie/running/current.nhn?order=point",
				"http://nstore.naver.com/movie/top100List.nhn?rankingTypeCode=PC_D"
		),
		// 개봉예정작 목록의 마지막 영화의 상영관이 없다면, 예매율순 개봉예정작에서 데이터가 부족해서 상영관이 없는 데이터도 채워넣은 경우이기 때문에 더보기 링크 제공하지 않음
		hasCommingMovieAllViewUrl : true,
		
		// domready시 수행
		init : function() {
			movieChart.ajaxCall(movieChart.movieChartJsonUrl, movieChart.movieChartTab[0], 0, 0);
			movieChart.setMenuHighlighting(0);
			movieChart.startTimer();
		},
		
		// load시 수행
		load : function() {
			movieChart.ajaxCall(movieChart.movieChartJsonUrl, movieChart.movieChartTab[1], 1, 1);
			movieChart.ajaxCall(movieChart.movieChartJsonUrl, movieChart.movieChartTab[movieChart.movieChartTab.length-1], movieChart.movieChartTab.length-1, 2);
		},
		
		// 타이머 재시작
		restartTimer : function() {
			
			if (oTimer.isRunning = true) {
				oTimer.abort();
			}
			
			oTimer = new jindo.Timer();
			movieChart.startTimer();
		},
		
		// 타이머 시작
		startTimer : function() {
			oTimer.start( function() {
				oFlicking.moveNext();
				return true;  
			}, 7000);
		},
		
		// JSON API 호출
		ajaxCall : function(url, type, index, targetAreaIndex) {
			var ajax = new jindo.$Ajax(url, { 
				method : "GET",
				onload : function(response){
					if (url == movieChart.movieChartDefaultJsonUrl) {
						// 풀세팅 
						movieChart.movieChartDefaultJsonCallBack(response, null, index);
					} else {
						// 개별세팅
						movieChart.movieChartJsonCallBack(response, null, type, index, targetAreaIndex);
					}
				}
			});
			ajax.header("ajax", "true");
		    ajax.request({"type":type});
		},
		
		// 무비차트 풀세팅 CallBack 함수
		movieChartDefaultJsonCallBack : function(response, movieChartList, index) {
			
			if (movieChartList == null) {
				var jsonData = response.json();
				movieChartList = jsonData.movieChartList;
			}
			
			var nextIndex = movieChart.getNextIndex(index);
			var previousIndex = movieChart.getPreviousIndex(index);
			oFlicking.setContentIndex(index);
			oFlicking.getPanelElement().html(jindo.$Template(movieChart.movieChartTab[index] + "_template").process(movieChartList[0]));
			oFlicking.getRightPanelElement().html(jindo.$Template(movieChart.movieChartTab[nextIndex] + "_template").process(movieChartList[1]));
			oFlicking.getLeftPanelElement().html(jindo.$Template(movieChart.movieChartTab[previousIndex] + "_template").process(movieChartList[2]));
			flickContents[index] = movieChartList[0];
			flickContents[nextIndex] = movieChartList[1];
			flickContents[previousIndex] = movieChartList[2];
			
			if (index == 2) {
				this.setHasCommingMovieAllViewUrl(movieChartList[0]);
				movieChart.setMenuHighlighting(index);
			}
			
			
			oFlicking.getPanelElement().removeClass('blind');
			oFlicking.getRightPanelElement().addClass('blind');
			oFlicking.getLeftPanelElement().addClass('blind');
		},
		
		// 플리킹 및 좌우 네비게이션 버튼 클릭에 따른 CallBack 함수
		movieChartJsonCallBack : function(response, movieChartList, type, index, targetAreaIndex) {
			
			if (movieChartList == null) {
				var jsonData = response.json();
				movieChartList = jsonData.movieChartList;
			}
			
			jindo.$Element("flick" + targetAreaIndex).html(jindo.$Template(type + "_template").process(movieChartList));
			flickContents[index] = movieChartList;
			
			if (index == 2) {
				this.setHasCommingMovieAllViewUrl(movieChartList);
			}
			
			
			oFlicking.getPanelElement().removeClass('blind');
			oFlicking.getRightPanelElement().addClass('blind');
			oFlicking.getLeftPanelElement().addClass('blind');
		},
		
		// 무비차트 풀세팅 호출
		fullSettingMovieChart : function(index) {
			movieChart.setMenuHighlighting(index);
			
			var nextIndex = movieChart.getNextIndex(index);
			var previousIndex = movieChart.getPreviousIndex(index);
			// 저장변수에 데이터가 이미 있다면 저장변수 이용, 아니면 Ajax Call.
			if (flickContents[index] && flickContents[nextIndex] && flickContents[previousIndex]) {
				var movieChartList = new Array(flickContents[index], flickContents[nextIndex], flickContents[previousIndex]);
				movieChart.movieChartDefaultJsonCallBack(null, movieChartList, index);
			} else {
				movieChart.ajaxCall(movieChart.movieChartDefaultJsonUrl, movieChart.movieChartTab[index], index);
			}
		},
		
		// 메뉴 하이라이팅 처리
		setMenuHighlighting : function(index) {
			// 탭메뉴 하이라이팅
			for (i=0; i<movieChart.movieChartTab.length; i++) {
				jindo.$Element(movieChart.movieChartTab[i] + "_tab").removeClass("on");
			}
			jindo.$Element(movieChart.movieChartTab[index] + "_tab").addClass("on");			
		},		
		
		// 두개의 포토인프라도메인을 분산해서 제공 
		getPhotoInfraImageDomain : function() {
			var photoInfraImageDomains = new Array("http://movie.phinf.naver.net", "http://movie2.phinf.naver.net");
			return photoInfraImageDomains[Math.floor((Math.random()*(2)))];   
		},
		
		// 따옴표 escape 처리
		replaceDoubleQuotationForHTML : function(title) {
			if (title == null) {
				return null;
			}
			var result = "";
			for (i=0; i<title.length; i++) {
				var tmpChar = title.charAt(i);
				if (tmpChar == "\"") {
					result += "&quot;";
				} else if (tmpChar == "\n" || tmpChar == "\r") {
					result += "";
				} else {
					result += tmpChar;
				}
			}
			return result;
		},
		
		// 이미지폰트 정의
		numberFont : function(value, charName) {
			var result = "";
			if (value == 'undefined') {
				value = "0";
			}
			
			for (i=0; i<value.length; i++) {
				var tmpChar = value.charAt(i);
				result += '<span class="char ' + charName + '_';
				if (tmpChar == ".") {
					result += "dot";
				} else if (tmpChar == ",") {
					result += "comma";
				} else {
					result += "num" + tmpChar;
				}
				result += '"><em>' + tmpChar + '</em></span>';
			}
			return result;
		},
		
		// 포스터 툴팁 길이제한 확인
		tooltipLengthOver : function(value) {
			if (value != null && value.length > 18) {
				return " br";
			}
			return "";
		},
		
		// 플리킹영역 다음 index를 얻는다.
		getNextIndex : function(index) {
			var nextIndex = index + 1;
			if (nextIndex > movieChart.movieChartTab.length - 1) {
				nextIndex = 0;
			}
			return nextIndex;
		},
		
		// 플리킹영역 이전 index를 얻는다.
		getPreviousIndex : function(index) {
			var previousIndex = index - 1;
			if (previousIndex < 0) {
				previousIndex = movieChart.movieChartTab.length - 1;
			}
			return previousIndex;
		}, 
		
		// 개봉예정작의 전체보기 버튼 노출 여부
		setHasCommingMovieAllViewUrl : function(movieList) {
			if (movieList.COMMING[movieList.COMMING.length - 1].theater == 0) {
				this.hasCommingMovieAllViewUrl = false;	
			} else {
				this.hasCommingMovieAllViewUrl = true;	
			}
		},
		// 등급 아이콘 html을 얻는다.
		getGradeIcon : function(gradeCode) {
			var result = '<span class="ico_rating_';
			if (gradeCode == "1001001") {
				result += 'all">전체 관람가'
			} else if (gradeCode == "1001002") {
				result += '12">12세 관람가'
			} else if (gradeCode == "1001003") {
				result += '15">15세 관람가'
			} else if (gradeCode == "1001004") {
				result += '18">청소년 관람불가'
			} else if (gradeCode == "1001005") {
				result += 'restricted">제한 상영가'
			} else {
				return "";
			}
			result += '</span>'	;
			return result;
		}
};
var HomeMovieReviewAccordion = jindo.$Class({
	$init : function(sClassName) {
		_self = this;
		this._wel = jindo.$Element("movieReview");
		this._welList = this._wel.query ("ul.lst_con." + sClassName);
		
		this._wel.delegate(
				"mouseover",
				"._select_title",
				jindo.$Fn(this._onMouseOverItem, this).bind()
		);
		
		jindo.$A(jindo.$ElementList('._select_title_anchor').$value()).forEach(function(element, index, array) {
			jindo.$Fn(_self._onMouseOverItem, _self).attach(element, "focus");
		});
	},
	
	_onMouseOverItem : function (we) {
		we.stopDefault();
		var nIndex = Number(jindo.$Element(we.element).data('index'));
		
		this.openReview(nIndex);
	},
	
	openReview : function (nIndex) {
		var aEls = this._welList.queryAll("li ! li");
		
		// 해당하는 항목만 <li class="on">
		for (var i = 0; i < aEls.length; i++) {
			aEls[i].cssClass("on", nIndex == i);
		}
	},
	
	showRandomMovie : function () {
		var randNo = Math.floor(4 * Math.random());
		this.openReview(randNo);
	}
});
var oFirstHomeMovieReviewAccordion = new HomeMovieReviewAccordion("first");
jindo.$Fn(function() {oFirstHomeMovieReviewAccordion.showRandomMovie();}).attach(document, "domready");
jindo.$Fn(function() {movieChart.init();}).attach(document, "domready");
jindo.$Fn(function() {movieChart.load();}).attach(window, "load");
jindo.$Fn(function(evt){evt.stop(); oFlicking.movePrev();}, this).attach(jindo.$("flick_prev"),"click");
jindo.$Fn(function(evt){evt.stop(); oFlicking.moveNext();} ,this).attach(jindo.$("flick_next"),"click");
var nsc = "movie.home";
</script>
	</div>
	<!-- //container -->
	<!-- footer -->
	<script type="text/javascript">
if (false) {
	var alertType = "NONE";
	var koreanTitle = "";
	var movieCode = "0";
	var userReserveCount = "0";
	var todayDatetime = "20171224161239";
	var endDatetimeAfterTwoDays = "00000000000000";
	
	
	if (movieCode > 0) {
		openWriteActualPointAlert (alertType, koreanTitle, movieCode, userReserveCount, todayDatetime, endDatetimeAfterTwoDays);
	}
}
function openWriteActualPointAlert (alertType, koreanTitle, movieCode, count, today, endDate) {
	if (alertType == "ONE") {
		setCookieLastUserReserveDate(today, endDate);
		if (confirm("관람하신 " + koreanTitle + "에\n평점 등록 시 바코드페이 포인트 500원 적립!\n지금 평점쓰기 메뉴로 이동하시겠습니까?")) {
			top.location.href = "http://movie.naver.com/movie/bi/mi/point.nhn?code=" + movieCode;
		}
	} else if (alertType == "MORE") {
		setCookieLastUserReserveDate(today, endDate);
		if (confirm("관람하신 작품에 평점을 등록해주세요\n작품당 바코드페이 포인트 500원씩 적립!\n평점 미등록작 리스트를 확인하시겠습니까?")) {
			top.location.href = "http://ticket.movie.naver.com/Order/OverdueList.aspx";
		}
	}
}
function setCookieLastUserReserveDate(today, endDate) {
	var cookieForNotOpenActualPointPopup = jindo.$Cookie();
	
	
	cookieForNotOpenActualPointPopup.remove("lastUserReserveDatetime");
	cookieForNotOpenActualPointPopup.remove("lastUserReserveCheckDatetime");
	
	cookieForNotOpenActualPointPopup.set("lastUserReserveDatetime", endDate, 9999, "movie.naver.com");
	cookieForNotOpenActualPointPopup.set("lastUserReserveCheckDatetime", today, 9999, "movie.naver.com");
}
</script>
	<!-- //footer -->
	<script type="text/javascript">
jindo.$Fn(function (we) {
	// 상단 검색영역
	var oSearch = new nhn.movie.Search({
		area : "jSearchArea",
		autosearch : "http://auto.movie.naver.com/ac?q_enc=UTF-8&st=1&r_lt=1&n_ext=1&t_koreng=1&r_format=json&r_enc=UTF-8&r_unicode=0&r_escape=1&q=",
		movelink : "/movie/bi/mi/basic.nhn?code=",
		peoplelink : "/movie/bi/pi/basic.nhn?code="
	});
    // 좌측 LNB
    var oLNB = new nhn.movie.LNB();
	if( typeof oViewMode != "undefined") {
		oViewMode.attach('change', jindo.$Fn(oLNB.update, oLNB).bind());
	}
    //영화검색 결과에서 포커스 아웃될 경우, 검색 결과를 지우도록 변경.
    jindo.$Element("lnb_gonaver").attach("focus",function(e){
    	
    	jindo.$Element('search_placeholder').attr({
    		"style" : "display: inline;"
    	})
    	jindo.$Element('ipt_tx_srch').$value().value="";
    	if(jindo.$Element("jAutoComplate") != null){
    		jindo.$Element("jAutoComplate").hide();
    	}
    });
    // LCS
	try{ lcs_do(); } catch(e){}
}).attach(document, 'domready');
</script>
	<script type="text/javascript">
	//nClick 초기화 영역
	//클릭로그 집계 코드 추가
	var ccsrv="cc.naver.com";
	var nclk_evt = 1;
	
	nclk_do();
	//nClick 초기화 영역 끝
</script>
</body>
</html>