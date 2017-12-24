<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
		request.setCharacterEncoding("utf-8");
		int on=-1;
		String idk = (String)session.getAttribute("idKey");
		String index1 = request.getParameter("index");
%>
<!DOCTYPE html>
<!-- saved from url=(0078)file:///C:/Users/Soo/git/SearchPortal/Barcode/WebContent/movie/movie_list.html -->
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="./movie_list_files/movie.all.css">
</head>
<body>
	<div id="wrap" class="basic">
		<div id="container">
			<div id="content">
				<div class="article">
					<div class="obj_section">
						<h3 class="tit_t1">
							<img src="./movie_list_files/tit_movie1.png" width="120"
								height="24" alt="현재 상영영화"> <img
								src="./movie_list_files/tit_movie2.png" width="120" height="24"
								alt="개봉 예정영화">
						</h3>
						<div class="tab_t1">
							<ul class="tab_s1">
								<li class="on"><a
									href="file:///C:/Users/Soo/git/SearchPortal/Barcode/WebContent/movie/movie_list.html"
									class="item1">상영영화</a> <!-- N=a:son.movie --></li>
							</ul>
							<ul class="sorting_t1">
								<li class="on"><a
									href="http://movie.naver.com/movie/running/premovie.nhn"
									class="item1" title="개봉순 정렬">개봉순</a> <!-- N=a:son.day --></li>
								<li><a
									href="http://movie.naver.com/movie/running/premovie.nhn?order=reserve"
									class="item3" title="예매순 정렬">예매순</a> <!-- N=a:son.reserve --></li>
								<li><a
									href="http://movie.naver.com/movie/running/premovie.nhn?order=interestRate"
									class="item6" title="기대지수순 정렬">기대지수순</a></li>
							</ul>
						</div>
						<h4 class="blind">상영영화</h4>
						<div class="lst_wrap">
							<ul class="lst_detail_t1">
								<li>
									<div class="thumb">
										<a href="/movie/bi/mi/basic.nhn?code=85579"><img
											src="http://movie.phinf.naver.net/20171201_181/1512109983114kcQVl_JPEG/movie_image.jpg?type=m99_141_2"
											alt="신과함께-죄와 벌"
											onerror="this.src='http://static.naver.net/movie/2012/09/dft_img99x141.png'"></a>
										<!-- N=a:nol.img,r:1,i:85579 -->
									</div>
									<dl class="lst_dsc">
										<dt class="tit">
											<span class="ico_rating_12">12세 관람가</span> <a
												href="/movie/bi/mi/basic.nhn?code=85579">신과함께-죄와 벌</a>
											<!-- N=a:nol.title,r:1,i:85579 -->
										</dt>
										<dd class="star">
											<dl class="info_star">
												<dt class="tit_t1">네티즌</dt>
												<dd>
													<div class="star_t1">
														<a href="/movie/bi/mi/point.nhn?code=85579#pointAfterTab"><span
															class="st_off"><span class="st_on"
																style="width: 82.3%"></span></span><span class="num">8.23</span><span
															class="num2">참여 <em>11,811</em>명
														</span></a>
														<!-- N=a:nol.urating -->
													</div>
													<span class="split">|</span>
												</dd>
											</dl>
											<dl class="info_exp">
												<dt class="tit_t1">예매율</dt>
												<dd>
													<div class="star_t1 b_star">
														<span class="num">62.98</span><span class="txt">%</span>
													</div>
												</dd>
											</dl>
										</dd>
										<dd>
											<dl class="info_txt1">
												<dt class="tit_t1">개요</dt>
												<dd>
													<span class="link_txt"> <a
														href="/movie/sdb/browsing/bmovie.nhn?genre=2">판타지</a>
													<!-- N=a:nol.genre,r:1 -->, <a
														href="/movie/sdb/browsing/bmovie.nhn?genre=1">드라마</a>
													<!-- N=a:nol.genre,r:2 -->
													</span> <span class="split">|</span> 139분 <span class="split">|</span>
													2017.12.20 개봉
												</dd>
												<dt class="tit_t2">감독</dt>
												<dd>
													<span class="link_txt"> <a
														href="/movie/bi/pi/basic.nhn?code=11476">김용화</a>
													<!-- N=a:nol.director,r:1 -->
													</span>
												</dd>
												<dt class="tit_t3">출연</dt>
												<dd>
													<span class="link_txt"> <a
														href="/movie/bi/pi/basic.nhn?code=59818">하정우</a>
													<!-- N=a:nol.actor,r:1 -->, <a
														href="/movie/bi/pi/basic.nhn?code=3735">차태현</a>
													<!-- N=a:nol.actor,r:2 -->, <a
														href="/movie/bi/pi/basic.nhn?code=78806">주지훈</a>
													<!-- N=a:nol.actor,r:3 -->, <a
														href="/movie/bi/pi/basic.nhn?code=93005">김향기</a>
													<!-- N=a:nol.actor,r:4 -->, <a
														href="/movie/bi/pi/basic.nhn?code=77449">김동욱</a>
													<!-- N=a:nol.actor,r:5 -->
													</span>
												</dd>
											</dl>
										</dd>
										<dd class="info_t1">
											<div class="btn_area">
												<a href="/movie/bi/mi/reserve.nhn?code=85579"
													class="btn_rsv">예매하기</a>
												<!-- N=a:nol.ticket,r:1,i:85579 -->
												<span class="btn_t1"> <a
													href="/movie/bi/mi/photoView.nhn?code=85579" class="item1">포토보기</a>
												<!-- N=a:nol.photo,r:1,i:85579 --> <a
													href="/movie/bi/mi/mediaView.nhn?code=85579&amp;mid=37246#tab"
													class="item2">예고편</a>
												<!-- N=a:nol.trailer,r:1,i:85579 --> <a
													href="/movie/bi/mi/mediaView.nhn?code=85579&amp;mid=37211#tab"
													class="item4">메이킹</a>
												<!-- N=a:nol.making,r:1,i:85579 --> <a
													href="/movie/bi/mi/mediaView.nhn?code=85579&amp;mid=37143#tab"
													class="item5">인터뷰</a>
												<!-- N=a:nol.interview,r:1,i:85579 -->
												</span>
											</div>
										</dd>
									</dl>
								</li>
							</ul>
						</div>
						<div class="lst_wrap">
							<div class="day_t1">
								<strong> <span class="blind">yyyy.MM.dd
										(dayOfWeek)</span> <span class="n2"><span class="blind">2</span></span><span
									class="n0"><span class="blind">0</span></span><span class="n1"><span
										class="blind">1</span></span><span class="n7"><span
										class="blind">7</span></span><span class="dot"><span
										class="blind">.</span></span><span class="n1"><span
										class="blind">1</span></span><span class="n2"><span
										class="blind">2</span></span><span class="dot"><span
										class="blind">.</span></span><span class="n2"><span
										class="blind">2</span></span><span class="n7"><span
										class="blind">7</span></span> <span class="w4"></span>
								</strong>
							</div>
							<ul class="lst_detail_t1">
								<li>
									<div class="thumb">
										<a
											href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=158191"><img
											src="./movie_list_files/movie_image(1).jpg" alt="1987"
											onerror="this.src=&#39;http://static.naver.net/movie/2012/09/dft_img99x141.png&#39;"></a>
										<!-- N=a:sol.img,r:2,i:158191 -->
									</div>
									<dl class="lst_dsc">
										<dt class="tit">
											<span class="ico_rating_15">15세 관람가</span> <a
												href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=158191">1987</a>
											<!-- N=a:sol.title,r:2,i:158191 -->
										</dt>
										<dd class="star">
											<dl class="info_exp">
												<dt class="tit_t1">예매율</dt>
												<dd>
													<div class="star_t1 b_star">
														<span class="num">0.08</span><span class="txt">%</span>
													</div>
													<span class="split">|</span>
												</dd>
												<dt class="tit_t2">기대지수</dt>
												<dd>
													<div class="star_t1">
														<span class="ico_want">보고싶어요</span><em class="exp_cnt">11515</em><span
															class="ico_dnwant">글쎄요</span><em class="exp_cnt">1852</em>
													</div>
												</dd>
											</dl>
										</dd>
										<dd>
											<dl class="info_txt1">
												<dt class="tit_t1">개요</dt>
												<dd>
													<span class="link_txt"> <a
														href="http://movie.naver.com/movie/sdb/browsing/bmovie.nhn?genre=1">드라마</a>
														<!-- N=a:sol.genre,r:1 -->
													</span> <span class="split">|</span> 129분 <span class="split">|</span>
													2017.12.27 개봉
												</dd>
												<dt class="tit_t2">감독</dt>
												<dd>
													<span class="link_txt"> <a
														href="http://movie.naver.com/movie/bi/pi/basic.nhn?code=8284">장준환</a>
														<!-- N=a:sol.director,r:1 -->
													</span>
												</dd>
												<dt class="tit_t3">출연</dt>
												<dd>
													<span class="link_txt"> <a
														href="http://movie.naver.com/movie/bi/pi/basic.nhn?code=46666">김윤석</a>
														<!-- N=a:sol.actor,r:1 -->, <a
														href="http://movie.naver.com/movie/bi/pi/basic.nhn?code=59818">하정우</a>
														<!-- N=a:sol.actor,r:2 -->, <a
														href="http://movie.naver.com/movie/bi/pi/basic.nhn?code=4431">유해진</a>
														<!-- N=a:sol.actor,r:3 -->, <a
														href="http://movie.naver.com/movie/bi/pi/basic.nhn?code=362970">김태리</a>
														<!-- N=a:sol.actor,r:4 -->, <a
														href="http://movie.naver.com/movie/bi/pi/basic.nhn?code=39882">박희순</a>
														<!-- N=a:sol.actor,r:5 -->, <a
														href="http://movie.naver.com/movie/bi/pi/basic.nhn?code=114361">이희준</a>
														<!-- N=a:sol.actor,r:6 -->
													</span>
												</dd>
											</dl>
										</dd>
									</dl>
								</li>
								<li>
									<div class="thumb">
										<a
											href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=10173"><img
											src="./movie_list_files/movie_image(2).jpg" alt="사랑과 영혼"
											onerror="this.src=&#39;http://static.naver.net/movie/2012/09/dft_img99x141.png&#39;"></a>
										<!-- N=a:sol.img,r:5,i:10173 -->
									</div>
									<dl class="lst_dsc">
										<dt class="tit">
											<span class="ico_rating_15">15세 관람가</span> <a
												href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=10173">사랑과
												영혼</a>
											<!-- N=a:sol.title,r:5,i:10173 -->
										</dt>
										<dd class="star">
											<dl class="info_star">
												<dt class="tit_t1">네티즌</dt>
												<dd>
													<div class="star_t1">
														<a
															href="http://movie.naver.com/movie/bi/mi/point.nhn?code=10173#pointAfterTab"><span
															class="st_off"><span class="st_on"
																style="width: 91.7%"></span></span><span class="num">9.17</span><span
															class="num2">참여 <em>767</em>명
														</span></a>
														<!-- N=a:sol.urating -->
													</div>
												</dd>
											</dl>
										</dd>
										<dd>
											<dl class="info_txt1">
												<dt class="tit_t1">개요</dt>
												<dd>
													<span class="link_txt"> <a
														href="http://movie.naver.com/movie/sdb/browsing/bmovie.nhn?genre=5">멜로/로맨스</a>
														<!-- N=a:sol.genre,r:1 -->, <a
														href="http://movie.naver.com/movie/sdb/browsing/bmovie.nhn?genre=1">드라마</a>
														<!-- N=a:sol.genre,r:2 -->
													</span> <span class="split">|</span> 127분 <span class="split">|</span>
													2017.12.27 개봉
												</dd>
												<dt class="tit_t2">감독</dt>
												<dd>
													<span class="link_txt"> <a
														href="http://movie.naver.com/movie/bi/pi/basic.nhn?code=6067">제리
															주커</a> <!-- N=a:sol.director,r:1 -->
													</span>
												</dd>
												<dt class="tit_t3">출연</dt>
												<dd>
													<span class="link_txt"> <a
														href="http://movie.naver.com/movie/bi/pi/basic.nhn?code=1205">패트릭
															스웨이지</a> <!-- N=a:sol.actor,r:1 -->, <a
														href="http://movie.naver.com/movie/bi/pi/basic.nhn?code=345">데미
															무어</a> <!-- N=a:sol.actor,r:2 -->
													</span>
												</dd>
											</dl>
										</dd>
									</dl>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>