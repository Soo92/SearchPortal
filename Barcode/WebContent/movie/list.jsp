<%@page import="movie.Parsing"%>
<%@page import="movie.MovieBean"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:useBean id="mmgr1" class="movie.MovieMgr"/>
<%
	String pre1 = request.getParameter("pre");
%>
<!DOCTYPE html>
<!-- saved from url=(0044)file:///C:/Users/it/Desktop/listcurrent.html -->
<html lang="ko"><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link rel="stylesheet" type="text/css" href="./list_files/movie.all.css">
</head>
<body>
	<div id="wrap" class="basic">
		<div id="container">
			<div id="content">
				<div class="article">
					<div class="obj_section">
						<h3 class="tit_t1">
<%if(pre1!=null) {%>
							<img src="./list_files/tit_movie2.png" width="120" height="24" alt="개봉 예정영화">
<%}else{ %>
							<img src="./list_files/tit_movie1.png" width="120" height="24" alt="현재 상영영화">
<%} %>
						</h3>
						<div class="tab_t1">
							<ul class="tab_s1">
								<li class="on"><a href="http://movie.naver.com/movie/running/current.nhn?view=list&amp;tab=normal&amp;order=reserve" class="item1">상영영화</a> <!-- N=a:now.movie --></li>
								<!-- li ><a href="./current.nhn?view=list&tab=singleTheater&order=open" class="item2">단관개봉</a -->
								<!-- N=a:now.one -->
								<!-- /li -->
							</ul>
						</div>
<%if(pre1==null) {%>
						<h4 class="blind">상영영화</h4>
						<div class="lst_wrap">
							<ul class="lst_detail_t1">
<%Vector<MovieBean> mlist = mmgr1.getMemberList(1);
for(int i=0;i<mlist.size();i++){%>
								<li>
									<div class="thumb">
										<a href="./movie_home.jsp?index=<%=mlist.get(i).getIdx()%>"><img width=100% src="<%=mlist.get(i).getPic() %>" alt="<%=mlist.get(i).getTitle() %>" onerror="this.src='http://static.naver.net/movie/2012/09/dft_img99x141.png'"></a>
										<!-- N=a:nol.img,r:1,i:85579 -->
									</div>
									<dl class="lst_dsc">
										<dt class="tit">
											<span class="ico_rating_<%=mlist.get(i).getAge()==0?"all":mlist.get(i).getAge()%>"><%=mlist.get(i).getAge()==0?"all":mlist.get(i).getAge()%>세 관람가</span> <a href="./movie_home.jsp?index=<%=mlist.get(i).getIdx()%>"><%=mlist.get(i).getTitle() %></a>
										</dt>
										<dd class="star">
											<dl class="info_star">
												<dt class="tit_t1">평점</dt>
												<dd>
													<div class="star_t1">
														<a href=""><span class="st_off"><span class="st_on" style="width: <%=Double.parseDouble(mlist.get(i).getStar())*10%>%"></span></span>
														<span class="num"><%=mlist.get(i).getStar() %></span>
														</a>
													</div>
												</dd>
											</dl>
										</dd>
										<dd>
											<dl class="info_txt1">
												<dt class="tit_t1">개요</dt>
												<dd>
													<span class="link_txt"> <a href=""><%=mlist.get(i).getGenre() %></a>
														<!-- N=a:nol.genre,r:2 -->
													</span> <span class="split">|</span> <%=mlist.get(i).getRuntime() %>분 <span class="split">|</span>
													<%=mlist.get(i).getOpendate() %> 개봉
												</dd>
												<dt class="tit_t2">감독</dt>
												<dd>
													<span class="link_txt"> <a href=""><%=mlist.get(i).getDirector() %></a>
													</span>
												</dd>
												<dt class="tit_t3">출연</dt>
												<dd>
													<span class="link_txt"> <a href=""><%=mlist.get(i).getActor() %></a>
													</span>
												</dd>
											</dl>
										</dd>
									</dl>
								</li>
<%} %>
							</ul>
						</div>
<%}else{ %>
						<h4 class="blind">상영영화</h4>
						<div class="lst_wrap">
							<ul class="lst_detail_t1">
<%Vector<MovieBean> mlist = mmgr1.getMemberList(2);
if(mlist.size()<20) {
	Parsing a = new Parsing();
	a.getpremovie();
	response.sendRedirect("./movie_home.jsp?cate=1&&pre=1");
}
for(int i=0;i<mlist.size();i++){%>								
								<li>
									<div class="thumb">
										<a href="./movie_home.jsp?index=<%=mlist.get(i).getIdx()%>"><img width=100% src="<%=mlist.get(i).getPic() %>" alt="<%=mlist.get(i).getTitle() %>" onerror="this.src='http://static.naver.net/movie/2012/09/dft_img99x141.png'"></a>
									</div>
									<dl class="lst_dsc">
										<dt class="tit">
											<span class="ico_rating_<%=mlist.get(i).getAge()==0?"all":mlist.get(i).getAge()%>"><%=mlist.get(i).getAge()==0?"all":mlist.get(i).getAge()%>세 관람가</span> <a href="./movie_home.jsp?index=<%=mlist.get(i).getIdx()%>"><%=mlist.get(i).getTitle() %></a>
										</dt>
										<dd class="star">
											<dl class="info_star">
												<dt class="tit_t1">평점</dt>
												<dd>
													<div class="star_t1">
														<a href=""><span class="st_off"><span class="st_on" style="width: <%=Double.parseDouble(mlist.get(i).getStar())*10%>%"></span></span>
														<span class="num"><%=mlist.get(i).getStar() %></span></a>
													</div>
												</dd>
											</dl>
										</dd>
										<dd>
											<dl class="info_txt1">
												<dt class="tit_t1">개요</dt>
												<dd>
													<span class="link_txt"> <a href=""><%=mlist.get(i).getGenre() %></a>
														<!-- N=a:nol.genre,r:2 -->
													</span> <span class="split">|</span> <%=mlist.get(i).getRuntime() %>분 <span class="split">|</span>
													<%=mlist.get(i).getOpendate() %> 개봉
												</dd>
												<dt class="tit_t2">감독</dt>
												<dd>
													<span class="link_txt"> <a href=""><%=mlist.get(i).getDirector() %></a>
													</span>
												</dd>
												<dt class="tit_t3">출연</dt>
												<dd>
													<span class="link_txt"> <a href=""><%=mlist.get(i).getActor() %></a>
													</span>
												</dd>
											</dl>
										</dd>
									</dl>
								</li>
<%} %>
							</ul>
						</div>
<%} %>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>