<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<!-- saved from url=(0073)file:///C:/Users/Soo/git/SearchPortal/Barcode/WebContent/movie/point.html -->
<html lang="ko"><div style="display: none;"><input title="jindoCheck" type="input" name="jindo1513606894051"></div><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"></head><body><div style="display: none;">
	<input title="jindoCheck" type="input" name="jindo1513606593145">
</div>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>바코드 영화</title>
<link rel="shortcut icon" href="http://static.naver.net/m/movie/icons/naver_movie_favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="./point_files/common.css">
<link rel="stylesheet" type="text/css" href="./point_files/movie_tablet.css">
<link rel="stylesheet" type="text/css" href="./point_files/movie_end.css">
	<!-- content -->
	<input type="hidden" name="movieCode" id="movieCode" value="152385">
	<input type="hidden" name="onlyActualPointYn" id="onlyActualPointYn" value="N">
	<input type="hidden" name="order" id="order" value="sympathyScore">
	<input type="hidden" name="page" id="page" value="1">
	<input type="hidden" name="point" id="point" value="0">
	<div class="ifr_area basic_ifr">
		<div class="input_netizen ">
			<form id="pointWriteArea">
				<fieldset>
					<legend>
						<span class="blind">네티즌 평점 입력란</span>
					</legend>
					<!-- 모바일 기기로 접근 시 : 클래스 t_layer_view 추가 -->
					<ul class="t_layer_view">
						<li class="drag_star">
							<div class="lft">
								<div class="star_score">
									<strong class="blind">평점선택</strong>
									<!-- [D] st_off 영역에 마우스 오버시 : 클래스 st_over 추가
												 [D] 버튼 선택시 : 선택된 버튼 클래스 'on' 추가, 대체텍스트 '선택됨' 추가, 짝수 점수 버튼에 클래스 st_r 추가, 디폴트는 화면에 보이지 않는 0점 버튼 -->
									<div class="st_off" id="pointStarRating">
										<button type="button" title="0" class="_pointStarRatingList btn_star on">0점 선택됨</button>
										<button type="button" title="1" class="_pointStarRatingList btn_star">1점</button>
										<button type="button" title="2" class="_pointStarRatingList btn_star st_r">2점</button>
										<button type="button" title="3" class="_pointStarRatingList btn_star">3점</button>
										<button type="button" title="4" class="_pointStarRatingList btn_star st_r">4점</button>
										<button type="button" title="5" class="_pointStarRatingList btn_star">5점</button>
										<button type="button" title="6" class="_pointStarRatingList btn_star st_r">6점</button>
										<button type="button" title="7" class="_pointStarRatingList btn_star">7점</button>
										<button type="button" title="8" class="_pointStarRatingList btn_star st_r">8점</button>
										<button type="button" title="9" class="_pointStarRatingList btn_star">9점</button>
										<button type="button" title="10" class="_pointStarRatingList btn_star st_r">10점</button>
									</div>
									<span class="blind">평점</span><span class="star_count"><em id="pointStarRatingValue">0<span class="blind">점 </span></em><em>/<span class="blind"> 총 </span>10<span class="blind">점</span></em></span>
									<!-- [D] 레이어 펼침시 : 클래스 on 추가, 타이틀, 대체 텍스트 변경 : 별점 선택 레이어 닫기 -->
									<button type="button" id="pointStarRatingLayerOpenButton" class="btn_ly_open _pointStarRatingLayer" title="별점 선택 레이어 펼침">별점
										선택 레이어 펼침</button>
								</div>
							</div>
						</li>
						<li class="input_textarea">
							<!-- [D] 인풋박스 포커스시, 입력내용이 바뀌었을 때 : 클래스 active 추가 --> <textarea id="ment" name="ment" row="1" cols="1" rows="1" class="input_tx" maxlength="140"></textarea>
							<p class="tx_length">
								<em id="ment_cnt">0</em>/140
							</p>
						</li>
						<li><input type="image" id="pointAddButton" src="./point_files/score_btn_submit.png" alt="등록" onclick="parent.clickcr(this,&#39;ara.register&#39;,&#39;&#39;,&#39;&#39;,event); return false;" style="display: block;"></li>
					</ul>

					<div id="pointStarRatingLayer" class="t_layer_score" style="display: none">
						<strong class="blind">별점을 선택하세요</strong>
						<ul class="t_list_score">
							<li><a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" class="_pointStarRatingLayer _pointStarRatingLayerList 10" onclick="return false;"><span class="star"><span class="on"></span></span> <em>10</em></a></li>
							<li><a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" class="_pointStarRatingLayer _pointStarRatingLayerList 9" onclick="return false;"><span class="star"><span class="on"></span></span> <em>9</em></a></li>
							<li><a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" class="_pointStarRatingLayer _pointStarRatingLayerList 8" onclick="return false;"><span class="star"><span class="on"></span></span> <em>8</em></a></li>
							<li><a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" class="_pointStarRatingLayer _pointStarRatingLayerList 7" onclick="return false;"><span class="star"><span class="on"></span></span> <em>7</em></a></li>
							<li class="b_none"><a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" class="_pointStarRatingLayer _pointStarRatingLayerList 6" onclick="return false;"><span class="star"><span class="on"></span></span> <em>6</em></a></li>
							<li class="col_right"><a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" class="_pointStarRatingLayer _pointStarRatingLayerList 5" onclick="return false;"><span class="star"><span class="on"></span></span> <em>5</em></a></li>
							<li class="col_right"><a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" class="_pointStarRatingLayer _pointStarRatingLayerList 4" onclick="return false;"><span class="star"><span class="on"></span></span> <em>4</em></a></li>
							<li class="col_right"><a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" class="_pointStarRatingLayer _pointStarRatingLayerList 3" onclick="return false;"><span class="star"><span class="on"></span></span> <em>3</em></a></li>
							<li class="col_right"><a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" class="_pointStarRatingLayer _pointStarRatingLayerList 2" onclick="return false;"><span class="star"><span class="on"></span></span> <em>2</em></a></li>
							<li class="b_none col_right"><a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" class="_pointStarRatingLayer _pointStarRatingLayerList 1" onclick="return false;"><span class="star"><span class="on"></span></span> <em>1</em></a></li>
						</ul>
					</div>
				</fieldset>
			</form>


			<!-- [D] 관람객 평점 작성 완료 -->
			<div id="actualPointWriteExecuteLayer" class="ly_viewer" style="display: none">
				<h4>관람객 평점 작성 완료 안내</h4>
				<p>
					관람객 평점이 등록되었습니다.<br>
					<em>바코드페이 포인트 500원</em>이 적립되었습니다.<br>
					<em>7일 이후</em> 확인 가능합니다.
				</p>
				<p>(평점 삭제시, 적립된 포인트는 회수됩니다.)</p>
				<div class="btn">
					<a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" id="actualPointWriteExecuteLayerOkButton" class="ok">확인</a> <a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" id="actualPointWriteExecuteLayerCloseButton" class="close" title="닫기">관람객 평점 작성 완료 안내 레이어 닫기</a>
				</div>
			</div>
			<!-- //관람객 평점 작성 완료 -->

			<!-- [D] 관람객 평점 작성 완료2 -->
			<div id="pointWriteExecuteLayer" class="ly_viewer" style="display: none">
				<h4>관람객 평점 작성 완료 안내</h4>
				<p class="msg1">관람객 평점이 등록되었습니다.</p>
				<div class="btn">
					<a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" id="pointWriteExecuteLayerOkButton" class="ok">확인</a> <a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" id="pointWriteExecuteLayerCloseButton" class="close" title="닫기">관람객
						평점 작성 완료 안내 레이어 닫기</a>
				</div>
			</div>
			<!-- //관람객 평점 작성 완료2 -->

			<!-- [D] 바코드페이 가입 안내 레이어 -->
			<div id="naverMileageSubscriptionLayer" class="ly_viewer" style="display: none">
				<h4>바코드페이 가입 안내 레이어</h4>
				<p class="msg2">
					<em>바코드페이</em> 이용약관에 동의해주시면 포인트 500원<br>이 적립됩니다.
				</p>
				<p>
					<a href="http://pay.naver.com/about" class="link_mileage" target="_blank">바코드페이 소개</a>
				</p>
				<div class="btn">
					<a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" id="naverMileageSubscriptionButton" class="join">약관동의</a> <a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" id="naverMileageSubscriptionLayerCloseButton" class="close" title="닫기">바코드페이 가입 안내 레이어 닫기</a>
				</div>
			</div>
			<!-- //바코드페이 가입 안내 레이어 -->

			<div class="score_total">
				<strong class="total"><span class="tit"><em class="blind">140자 평</em></span><span class="sp">|</span>총<em>10,187</em>건</strong>

				<div class="best_score_info _bestPointHelp">
					
					
				</div>
			</div>

			<div id="orderCheckbox" class="top_behavior">
				<ul class="sorting_list">
					<li class="on"><a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="parent.clickcr(this, &#39;ara.bysym&#39;, &#39;&#39;, &#39;&#39;, event); dislplayOrder(&#39;sympathyScore&#39;);">호감순</a></li>
					<li><a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="parent.clickcr(this, &#39;ara.byrct&#39;, &#39;&#39;, &#39;&#39;, event); dislplayOrder(&#39;newest&#39;);">최신순</a></li>

					<li><a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="parent.clickcr(this, &#39;ara.high&#39;, &#39;&#39;, &#39;&#39;, event); dislplayOrder(&#39;highest&#39;);">평점
							높은 순</a></li>
					<li><a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="parent.clickcr(this, &#39;ara.low&#39;, &#39;&#39;, &#39;&#39;, event); dislplayOrder(&#39;lowest&#39;);">평점
							낮은 순</a></li>
				</ul>
			</div>
			<div class="score_result">
				<ul>
					<li>
						<div class="star_score">
							<span class="st_off"><span class="st_on" style="width: 80.0%"></span></span><em>8</em>
						</div>
						<div class="score_reple">
							<p>
								<span class="ico_best">BEST</span>진자 사기꾼이네요ㅋㅋ 제가사기당한거같아요
							</p>
							<dl>
								<dt>
									<em> <a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="javascript:showPointListByNid(13418993, &#39;after&#39;);parent.clickcr(this, &#39;ara.uid&#39;, &#39;&#39;, &#39;&#39;, event); return false;" target="_top"> <span>et45****</span>
									</a>
									</em> <em>2017.11.23 00:01</em>
								</dt>
								<dd>
									<a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="parent.clickcr(this, &#39;ara.report&#39;, &#39;&#39;, &#39;&#39;, event); common.report(&#39;false&#39;,&#39;et45****&#39;, &#39;J1OP/gvXkRRgesQvv9qVnevMLmUhyx1ZipQmv8dsGPM=&#39;, &#39;진자  사기꾼이네요ㅋㅋ 제가사기당한거같아요 &#39;, &#39;13418993&#39;, &#39;point_after&#39;, true);return false;" class="go_report2"><em>신고</em></a>
								</dd>
							</dl>
						</div>
						<div class="btn_area">
							<a class="_sympathyButton" href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="parent.clickcr(this, &#39;ara.sym&#39;, &#39;&#39;, &#39;&#39;, event);"><span class="blind">공감</span></a><strong><span class="sympathy_13418993 count">2237</span></strong> <a class="_notSympathyButton" href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="parent.clickcr(this, &#39;ara.opp&#39;, &#39;&#39;, &#39;&#39;, event);"><span class="blind">비공감</span></a><strong><span class="notSympathy_13418993 count v2">391</span></strong>
						</div>
					</li>
					<li>
						<div class="star_score">
							<span class="st_off"><span class="st_on" style="width: 80.0%"></span></span><em>8</em>
						</div>
						<div class="score_reple">
							<p>
								<span class="ico_best">BEST</span>현빈보러
								갔다가 유지태 매력에 빠짐
							</p>
							<dl>
								<dt>
									<em> <a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="javascript:showPointListByNid(13420997, &#39;after&#39;);parent.clickcr(this, &#39;ara.uid&#39;, &#39;&#39;, &#39;&#39;, event); return false;" target="_top"> <span>haha****</span>
									</a>
									</em> <em>2017.11.23 17:46</em>
								</dt>
								<dd>
									<a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="parent.clickcr(this, &#39;ara.report&#39;, &#39;&#39;, &#39;&#39;, event); common.report(&#39;false&#39;,&#39;haha****&#39;, &#39;tol8zsS8lUWLArFafHyIPi7oRD5yj6A1Fj3PY0OGM0Q=&#39;, &#39;현빈보러 갔다가 유지태 매력에 빠짐 &#39;, &#39;13420997&#39;, &#39;point_after&#39;, true);return false;" class="go_report2"><em>신고</em></a>
								</dd>
							</dl>
						</div>
						<div class="btn_area">
							<a class="_sympathyButton" href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="parent.clickcr(this, &#39;ara.sym&#39;, &#39;&#39;, &#39;&#39;, event);"><span class="blind">공감</span></a><strong><span class="sympathy_13420997 count">872</span></strong> <a class="_notSympathyButton" href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="parent.clickcr(this, &#39;ara.opp&#39;, &#39;&#39;, &#39;&#39;, event);"><span class="blind">비공감</span></a><strong><span class="notSympathy_13420997 count v2">254</span></strong>
						</div>
					</li>
					<li>
						<div class="star_score">
							<span class="st_off"><span class="st_on" style="width: 60.0%"></span></span><em>6</em>
						</div>
						<div class="score_reple">
							<p>
								<span class="ico_best">BEST</span>기대하지말고 보면 볼만함
							</p>
							<dl>
								<dt>
									<em> <a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="javascript:showPointListByNid(13421281, &#39;after&#39;);parent.clickcr(this, &#39;ara.uid&#39;, &#39;&#39;, &#39;&#39;, event); return false;" target="_top"> <span>lpy4****</span>
									</a>
									</em> <em>2017.11.23 19:31</em>
								</dt>
								<dd>



									<a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="parent.clickcr(this, &#39;ara.report&#39;, &#39;&#39;, &#39;&#39;, event); common.report(&#39;false&#39;,&#39;lpy4****&#39;, &#39;7F4l+Em2QfMuiPtZEo5RRyK/I0xq938TQ1XFDs+GIDA=&#39;, &#39;기대하지말고 보면 볼만함 &#39;, &#39;13421281&#39;, &#39;point_after&#39;, true);return false;" class="go_report2"><em>신고</em></a>


								</dd>
							</dl>
						</div>
						<div class="btn_area">
							<a class="_sympathyButton" href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="parent.clickcr(this, &#39;ara.sym&#39;, &#39;&#39;, &#39;&#39;, event);"><span class="blind">공감</span></a><strong><span class="sympathy_13421281 count">252</span></strong> <a class="_notSympathyButton" href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="parent.clickcr(this, &#39;ara.opp&#39;, &#39;&#39;, &#39;&#39;, event);"><span class="blind">비공감</span></a><strong><span class="notSympathy_13421281 count v2">51</span></strong>
						</div>
					</li>





					<li>
						<div class="star_score">

							<span class="st_off"><span class="st_on" style="width: 40.0%"></span></span><em>4</em>

						</div>
						<div class="score_reple">
							<p>
								<span class="ico_best">BEST</span>지들도 닉네임 클릭안되면서 다알바래ㅋㅋㅋ 이무슨ㅋㅋㅋ
								b급 오락영화구만
							</p>
							<dl>
								<dt>
									<em> <a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="javascript:showPointListByNid(13417580, &#39;after&#39;);parent.clickcr(this, &#39;ara.uid&#39;, &#39;&#39;, &#39;&#39;, event); return false;" target="_top"> <span>알레이버크(rafe****)</span>
									</a>
									</em> <em>2017.11.22 16:55</em>
								</dt>
								<dd>



									<a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="parent.clickcr(this, &#39;ara.report&#39;, &#39;&#39;, &#39;&#39;, event); common.report(&#39;false&#39;,&#39;rafe****&#39;, &#39;qesmkbIpn5oH1u8GWZVf707vcctfw6n9xyWr2a4HXm0=&#39;, &#39;지들도 닉네임 클릭안되면서 다알바래ㅋㅋㅋ 이무슨ㅋㅋㅋ b급 오락영화구만 &#39;, &#39;13417580&#39;, &#39;point_after&#39;, true);return false;" class="go_report2"><em>신고</em></a>


								</dd>
							</dl>
						</div>
						<div class="btn_area">
							<a class="_sympathyButton" href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="parent.clickcr(this, &#39;ara.sym&#39;, &#39;&#39;, &#39;&#39;, event);"><span class="blind">공감</span></a><strong><span class="sympathy_13417580 count">276</span></strong> <a class="_notSympathyButton" href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="parent.clickcr(this, &#39;ara.opp&#39;, &#39;&#39;, &#39;&#39;, event);"><span class="blind">비공감</span></a><strong><span class="notSympathy_13417580 count v2">84</span></strong>
						</div>
					</li>





					<li class="last">
						<div class="star_score">

							<span class="st_off"><span class="st_on" style="width: 60.0%"></span></span><em>6</em>

						</div>
						<div class="score_reple">
							<p>
								<span class="ico_best">BEST</span>스토리는
								좋은듯..한데.뭔가..아쉬운듯 모자른듯..
							</p>
							<dl>
								<dt>
									<em> <a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="javascript:showPointListByNid(13421940, &#39;after&#39;);parent.clickcr(this, &#39;ara.uid&#39;, &#39;&#39;, &#39;&#39;, event); return false;" target="_top"> <span>발해의혼(hyun****)</span>
									</a>
									</em> <em>2017.11.23 22:57</em>
								</dt>
								<dd>



									<a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="parent.clickcr(this, &#39;ara.report&#39;, &#39;&#39;, &#39;&#39;, event); common.report(&#39;false&#39;,&#39;hyun****&#39;, &#39;PbFo+tW0/+pWMpUE3i8rB0HbFTkdhmx66azEbKzvyqI=&#39;, &#39;스토리는 좋은듯..한데.뭔가..아쉬운듯 모자른듯.. &#39;, &#39;13421940&#39;, &#39;point_after&#39;, true);return false;" class="go_report2"><em>신고</em></a>


								</dd>
							</dl>
						</div>
						<div class="btn_area">
							<a class="_sympathyButton" href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="parent.clickcr(this, &#39;ara.sym&#39;, &#39;&#39;, &#39;&#39;, event);"><span class="blind">공감</span></a><strong><span class="sympathy_13421940 count">136</span></strong> <a class="_notSympathyButton" href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="parent.clickcr(this, &#39;ara.opp&#39;, &#39;&#39;, &#39;&#39;, event);"><span class="blind">비공감</span></a><strong><span class="notSympathy_13421940 count v2">41</span></strong>
						</div>
					</li>











					<li>
						<div class="star_score">

							<span class="st_off"><span class="st_on" style="width: 10.0%"></span></span><em>1</em>

						</div>
						<div class="score_reple">
							<p>이 댓글은 곧 비공으로 묻히겠지... 시사화 본 사람은 알거다 그냥 그저그런 양산형 범죄오락 + 댓글
								중에 안보고 벌써부터 평점테러 라고 하는 사람 분명 있다 문화생활 안해 보셨나? 시사회도 모르나?? 클리셰범벅영화
								공짜로 봐도 아깝다</p>
							<dl>
								<dt>
									<em> <a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="javascript:showPointListByNid(13415955, &#39;after&#39;);parent.clickcr(this, &#39;ara.uid&#39;, &#39;&#39;, &#39;&#39;, event); return false;" target="_top"> <span>powe****</span>
									</a>
									</em> <em>2017.11.22 00:09</em>
								</dt>
								<dd>



									<a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="parent.clickcr(this, &#39;ara.report&#39;, &#39;&#39;, &#39;&#39;, event); common.report(&#39;false&#39;,&#39;powe****&#39;, &#39;oj8NkPYs0gNIgSrBrnMlfgP7LFZZVTNyYPSJ1zaLVIk=&#39;, &#39;이 댓글은 곧 비공으로 묻히겠지... 시사화 본 사람은 알거다 그냥 그저그런 양산형 범죄오락  +  댓글 중에 안보고  벌써부터 평점테러 라고 하는 사람 분명 있다  문화생활 안해 보셨나?  시사회도 모르나??   클리셰범벅영화 공짜로 봐도 아깝다 &#39;, &#39;13415955&#39;, &#39;point_after&#39;, true);return false;" class="go_report2"><em>신고</em></a>


								</dd>
							</dl>
						</div>
						<div class="btn_area">
							<a class="_sympathyButton" href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="parent.clickcr(this, &#39;ara.sym&#39;, &#39;&#39;, &#39;&#39;, event);"><span class="blind">공감</span></a><strong><span class="sympathy_13415955 count">5686</span></strong> <a class="_notSympathyButton" href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="parent.clickcr(this, &#39;ara.opp&#39;, &#39;&#39;, &#39;&#39;, event);"><span class="blind">비공감</span></a><strong><span class="notSympathy_13415955 count v2">2085</span></strong>
						</div>
					</li>



					<li>
						<div class="star_score">

							<span class="st_off"><span class="st_on" style="width: 10.0%"></span></span><em>1</em>

						</div>
						<div class="score_reple">
							<p>히야... 진짜 거론할 가치가..</p>
							<dl>
								<dt>
									<em> <a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="javascript:showPointListByNid(13416242, &#39;after&#39;);parent.clickcr(this, &#39;ara.uid&#39;, &#39;&#39;, &#39;&#39;, event); return false;" target="_top"> <span>굿맨(fill****)</span>
									</a>
									</em> <em>2017.11.22 02:47</em>
								</dt>
								<dd>



									<a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="parent.clickcr(this, &#39;ara.report&#39;, &#39;&#39;, &#39;&#39;, event); common.report(&#39;false&#39;,&#39;fill****&#39;, &#39;0R/Q3FePzXaaozEUV8VToGYRcKWXVWc1ckI1mbSqqUA=&#39;, &#39;히야... 진짜 거론할 가치가.. &#39;, &#39;13416242&#39;, &#39;point_after&#39;, true);return false;" class="go_report2"><em>신고</em></a>


								</dd>
							</dl>
						</div>
						<div class="btn_area">
							<a class="_sympathyButton" href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="parent.clickcr(this, &#39;ara.sym&#39;, &#39;&#39;, &#39;&#39;, event);"><span class="blind">공감</span></a><strong><span class="sympathy_13416242 count">5483</span></strong> <a class="_notSympathyButton" href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="parent.clickcr(this, &#39;ara.opp&#39;, &#39;&#39;, &#39;&#39;, event);"><span class="blind">비공감</span></a><strong><span class="notSympathy_13416242 count v2">1919</span></strong>
						</div>
					</li>



					<li>
						<div class="star_score">

							<span class="st_off"><span class="st_on" style="width: 10.0%"></span></span><em>1</em>

						</div>
						<div class="score_reple">
							<p>영화가 끝났는데 좀 황당하고 이해안가는 장면들도 많고 처음부터 끝까지 어거지로 끼워 맞춘 영화에 정말
								실망입니다 그리고 매력있는 캐릭터가 단 한명도 없어요 공조애서의 카리스마가 느껴지는 현빈은 어디가고 그냥
								잘생기기만한 현빈이 등장</p>
							<dl>
								<dt>
									<em> <a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="javascript:showPointListByNid(13416251, &#39;after&#39;);parent.clickcr(this, &#39;ara.uid&#39;, &#39;&#39;, &#39;&#39;, event); return false;" target="_top"> <span>소소한(ley7****)</span>
									</a>
									</em> <em>2017.11.22 02:56</em>
								</dt>
								<dd>



									<a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="parent.clickcr(this, &#39;ara.report&#39;, &#39;&#39;, &#39;&#39;, event); common.report(&#39;false&#39;,&#39;ley7****&#39;, &#39;OtUzU0pFYlKw0lcGRgOj/6PbBGX5Nv3jYS8QJVFCZ1s=&#39;, &#39;영화가 끝났는데 좀 황당하고 이해안가는 장면들도 많고 처음부터 끝까지 어거지로 끼워 맞춘 영화에 정말 실망입니다 그리고 매력있는 캐릭터가 단 한명도 없어요 공조애서의 카리스마가 느껴지는 현빈은 어디가고 그냥 잘생기기만한 현빈이 등장 &#39;, &#39;13416251&#39;, &#39;point_after&#39;, true);return false;" class="go_report2"><em>신고</em></a>


								</dd>
							</dl>
						</div>
						<div class="btn_area">
							<a class="_sympathyButton" href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="parent.clickcr(this, &#39;ara.sym&#39;, &#39;&#39;, &#39;&#39;, event);"><span class="blind">공감</span></a><strong><span class="sympathy_13416251 count">2325</span></strong> <a class="_notSympathyButton" href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="parent.clickcr(this, &#39;ara.opp&#39;, &#39;&#39;, &#39;&#39;, event);"><span class="blind">비공감</span></a><strong><span class="notSympathy_13416251 count v2">1040</span></strong>
						</div>
					</li>



					<li>
						<div class="star_score">

							<span class="st_off"><span class="st_on" style="width: 80.0%"></span></span><em>8</em>

						</div>
						<div class="score_reple">
							<p>아니 ㅋㅋ 평점테러 맞네 님들 1점 준 애들 닉네임 터치하면 그 사람이 다른 영화도 어떻게 평점 줬는지
								볼수 있음 보니까 평점 테러들 너무 많아 영화는 단순 오락물이지만 볼만함</p>
							<dl>
								<dt>
									<em> <a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="javascript:showPointListByNid(13416404, &#39;after&#39;);parent.clickcr(this, &#39;ara.uid&#39;, &#39;&#39;, &#39;&#39;, event); return false;" target="_top"> <span>현(kbs1****)</span>
									</a>
									</em> <em>2017.11.22 07:24</em>
								</dt>
								<dd>



									<a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="parent.clickcr(this, &#39;ara.report&#39;, &#39;&#39;, &#39;&#39;, event); common.report(&#39;false&#39;,&#39;kbs1****&#39;, &#39;CbyVEMGHY6vf0NmP29eW/uO0dFYMTlKx7L/uKDYW9uA=&#39;, &#39;아니 ㅋㅋ 평점테러 맞네 님들  1점 준 애들 닉네임 터치하면 그 사람이 다른 영화도 어떻게 평점 줬는지 볼수 있음 보니까 평점 테러들 너무 많아  영화는 단순 오락물이지만 볼만함 &#39;, &#39;13416404&#39;, &#39;point_after&#39;, true);return false;" class="go_report2"><em>신고</em></a>


								</dd>
							</dl>
						</div>
						<div class="btn_area">
							<a class="_sympathyButton" href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="parent.clickcr(this, &#39;ara.sym&#39;, &#39;&#39;, &#39;&#39;, event);"><span class="blind">공감</span></a><strong><span class="sympathy_13416404 count">1811</span></strong> <a class="_notSympathyButton" href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="parent.clickcr(this, &#39;ara.opp&#39;, &#39;&#39;, &#39;&#39;, event);"><span class="blind">비공감</span></a><strong><span class="notSympathy_13416404 count v2">789</span></strong>
						</div>
					</li>



					<li class="last">
						<div class="star_score">

							<span class="st_off"><span class="st_on" style="width: 90.0%"></span></span><em>9</em>

						</div>
						<div class="score_reple">
							<p>
								현빈 간지 작살ㅠㅠ 꼭 보세요 두 번 보세요!!
							</p>
							<dl>
								<dt>
									<em> <a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="javascript:showPointListByNid(13416625, &#39;after&#39;);parent.clickcr(this, &#39;ara.uid&#39;, &#39;&#39;, &#39;&#39;, event); return false;" target="_top"> <span>야호(bass****)</span>
									</a>
									</em> <em>2017.11.22 10:34</em>
								</dt>
								<dd>



									<a href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="parent.clickcr(this, &#39;ara.report&#39;, &#39;&#39;, &#39;&#39;, event); common.report(&#39;false&#39;,&#39;bass****&#39;, &#39;2GLhcjGNkT4fDCWi2EgU7tyidCve5zxLXw8WBo2iSEw=&#39;, &#39;현빈 간지 작살ㅠㅠ 꼭 보세요 두 번 보세요!! &#39;, &#39;13416625&#39;, &#39;point_after&#39;, true);return false;" class="go_report2"><em>신고</em></a>

								</dd>
							</dl>
						</div>
						<div class="btn_area">
							<a class="_sympathyButton" href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="parent.clickcr(this, &#39;ara.sym&#39;, &#39;&#39;, &#39;&#39;, event);"><span class="blind">공감</span></a><strong><span class="sympathy_13416625 count">1524</span></strong> <a class="_notSympathyButton" href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#" onclick="parent.clickcr(this, &#39;ara.opp&#39;, &#39;&#39;, &#39;&#39;, event);"><span class="blind">비공감</span></a><strong><span class="notSympathy_13416625 count v2">720</span></strong>
						</div>
					</li>






				</ul>
			</div>
			<div class="paging">
				<div>


					<a id="pagerTagAnchor1" href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false&amp;page=1" onclick="parent.clickcr(this, &#39;ara.page&#39;, &#39;&#39;, &#39;&#39;, event);"><span class="on">1</span></a> <a id="pagerTagAnchor2" href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false&amp;page=2" onclick="parent.clickcr(this, &#39;ara.page&#39;, &#39;&#39;, &#39;&#39;, event);"><span>2</span></a>
					<a id="pagerTagAnchor3" href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false&amp;page=3" onclick="parent.clickcr(this, &#39;ara.page&#39;, &#39;&#39;, &#39;&#39;, event);"><span>3</span></a>
					<a id="pagerTagAnchor4" href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false&amp;page=4" onclick="parent.clickcr(this, &#39;ara.page&#39;, &#39;&#39;, &#39;&#39;, event);"><span>4</span></a>
					<a id="pagerTagAnchor5" href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false&amp;page=5" onclick="parent.clickcr(this, &#39;ara.page&#39;, &#39;&#39;, &#39;&#39;, event);"><span>5</span></a>
					<a id="pagerTagAnchor6" href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false&amp;page=6" onclick="parent.clickcr(this, &#39;ara.page&#39;, &#39;&#39;, &#39;&#39;, event);"><span>6</span></a>
					<a id="pagerTagAnchor7" href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false&amp;page=7" onclick="parent.clickcr(this, &#39;ara.page&#39;, &#39;&#39;, &#39;&#39;, event);"><span>7</span></a>
					<a id="pagerTagAnchor8" href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false&amp;page=8" onclick="parent.clickcr(this, &#39;ara.page&#39;, &#39;&#39;, &#39;&#39;, event);"><span>8</span></a>
					<a id="pagerTagAnchor9" href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false&amp;page=9" onclick="parent.clickcr(this, &#39;ara.page&#39;, &#39;&#39;, &#39;&#39;, event);"><span>9</span></a>
					<a id="pagerTagAnchor10" href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false&amp;page=10" onclick="parent.clickcr(this, &#39;ara.page&#39;, &#39;&#39;, &#39;&#39;, event);"><span>10</span></a>

					<a id="pagerTagAnchor2" href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false&amp;page=2" title="다음" class="pg_next" onclick="parent.clickcr(this, &#39;ara.page&#39;, &#39;&#39;, &#39;&#39;, event);"><em>다음</em></a>


				</div>
			</div>




		</div>
	</div>
	<!-- //content -->
	<form id="reportForm" name="reportForm1"></form>
	<script type="text/javascript">
var checkTextChange = false;
var checkInput = false;
var bActualPoint = false;
var bMileageSubscriptionAlready = false;
var bMileageSubscriptionReject = false;


if (false == false && "after" == "after" && false) {
	if (true && false) {
		jindo.$Element("pointWriteExecuteLayer").show();
	} else if (false && true) {
		jindo.$Element("actualPointWriteExecuteLayer").show();
	}
}

var oElActualPointWriteExecuteLayer = jindo.$Element("actualPointWriteExecuteLayer");

if (oElActualPointWriteExecuteLayer != null && oElActualPointWriteExecuteLayer != "undefined") {
	
	jindo.$Element("naverMileageSubscriptionButton").attach("click", function(e){
		e.stop(jindo.$Event.CANCEL_DEFAULT);
		jindo.$Element("naverMileageSubscriptionLayer").hide();
		
		var mileageJoinUrl = "https://pay.naver.com/agreePopup?url=" + encodeURIComponent(top.location);
		window.open(mileageJoinUrl);
	});
	
	
	
	jindo.$Element("naverMileageSubscriptionLayerCloseButton").attach("click", function(e){
		e.stop(jindo.$Event.CANCEL_DEFAULT);
		bMileageSubscriptionReject = true;
		jindo.$Element("naverMileageSubscriptionLayer").hide();
		refreshPage();
	});
	

	
	jindo.$Element("actualPointWriteExecuteLayerOkButton").attach("click", function(e){
		e.stop(jindo.$Event.CANCEL_DEFAULT);
		jindo.$Element("actualPointWriteExecuteLayer").hide();
		refreshPage();
	});
	
	
	
	jindo.$Element("actualPointWriteExecuteLayerCloseButton").attach("click", function(e){
		e.stop(jindo.$Event.CANCEL_DEFAULT);
		jindo.$Element("actualPointWriteExecuteLayer").hide();
		refreshPage();
	});
	
}

var oElPointWriteExecuteLayer = jindo.$Element("pointWriteExecuteLayer");

if (oElPointWriteExecuteLayer != null && oElPointWriteExecuteLayer != "undefined") {
	
	jindo.$Element("pointWriteExecuteLayerOkButton").attach("click", function(e){
		e.stop(jindo.$Event.CANCEL_DEFAULT);
		jindo.$Element("pointWriteExecuteLayer").hide();
		refreshPage();
	});
	
	
	
	jindo.$Element("pointWriteExecuteLayerCloseButton").attach("click", function(e){
		e.stop(jindo.$Event.CANCEL_DEFAULT);
		jindo.$Element("pointWriteExecuteLayer").hide();
		refreshPage();
	});
	
}

jindo.$Fn(function () {
	var sDefaultMent = "최대 한글 140자까지 가능하며, 스포일러는 삭제될 수 있습니다.";
    var isCheckPointExist = false;
    var oElMent = jindo.$Element("ment");
    
    if (oElMent != null && oElMent != 'undefined') {
    	if (true) {
			oElMent.attach('focus', function(e) {
		    	if ("after" == "after" && true && false && isCheckPointExist == false) {
					point.checkPointAfterExistAndMileageSubscriptionType();
				}
		    	isCheckPointExist = true;
		    });
		} else {
			oElMent.attach("focus", function (e) {
				oElMent.$value().blur();
				if(common.checkLogin(true) == false) {
					//iOS blur 관련 문제 해결을 위한 코드.
					oElMent.$value().value = "최대 한글 140자까지 가능하며, 스포일러는 삭제될 수 있습니다. ";
				}
			});
		}
	} 
			
	// 현재상영작 & 개봉전 평점
	if (false == false && "after" == "before") {
		jindo.$("ment").value = "국내 개봉작입니다. 개봉 후에는 개봉전 평점을 등록할 수 없습니다.";
		jindo.$("ment").disabled = true;
		jindo.$("pointAddButton").disabled = true;
	}

	var isExistPointStarRating = (jindo.$('pointWriteArea') != null);
	
	if (isExistPointStarRating == true) {
		
		jindo.$Fn(function () {
			jindo.$Element("pointStarRating").addClass("st_over");
	    }, this).attach(jindo.$("pointStarRating"), 'mouseover');
		
		jindo.$Fn(function () {
			jindo.$Element("pointStarRating").removeClass("st_over");
	    	jindo.$Element("pointStarRatingValue").html(jindo.$("point").value);	//마우스 아웃시 원래 설정된 평점으로 되돌림
	    }, this).attach(jindo.$("pointStarRating"), 'mouseout');
		
		jindo.$A(jindo.$ElementList('._pointStarRatingList').$value()).forEach(function(element, index, array) {
			//클릭 시 평점 반영
			jindo.$Fn(function () {
				//기존 선택 취소
				jindo.$A(jindo.$ElementList('._pointStarRatingList').$value()).forEach(function(el, index, array) {
					el.removeClass("on");
					el.html(el.attr("title") + "점");
				});
				//신규 평점 반영
				element.addClass("on");
				element.html(element.attr("title") + "점 선택됨");
		    	jindo.$("point").value = element.attr("title");
		    	jindo.$Element("pointStarRatingValue").html(element.attr("title"));
		    }, this).attach(element, 'click');

			//마우스 오버시 화면에 보이는 숫자만 변경
			jindo.$Fn(function () {
		    	jindo.$Element("pointStarRatingValue").html(element.attr("title"));
		    }, this).attach(element, 'mouseover');
		});
		
		
		pointStarRatingLayerToggle = function() {
			setTimeout( function() {
				if (document.activeElement != null) {
					var focusedEl = jindo.$Element(document.activeElement);
					if (focusedEl != null) {
						if ( !focusedEl.hasClass("_pointStarRatingLayer") ) {
							 jindo.$Element("pointStarRatingLayer").hide();
							 
							// 최초 로딩시 프레임 사이즈로 재조정
							parent.resizePointAfterListIframe(frameHeight);
						}
					}
				}
			}, 100);
		};
		
		var pointStarRatingLayerOpenButton = jindo.$Element("pointStarRatingLayerOpenButton");
		var pointStarRatingLayer = jindo.$Element("pointStarRatingLayer");
		
		jindo.$Fn(function () {
			if (pointStarRatingLayerOpenButton.hasClass("on")) {
				// 평점 선택 레이어 닫기
				pointStarRatingLayerOpenButton.removeClass("on");
				pointStarRatingLayer.hide();
				
				// 최초 로딩시 프레임 사이즈로 재조정
				parent.resizePointAfterListIframe(frameHeight);
			} else {
				// 평점 선택 레이어 열기
				pointStarRatingLayerOpenButton.addClass("on");
				pointStarRatingLayer.show();
				
				// 평점 선택 레이어가 열린만큼 프레임 사이즈 재조정
				var newFrameHeight = eval(jindo.$Document().scrollSize().height);
				parent.resizePointAfterListIframe(newFrameHeight);
			}
	    }, this).attach(pointStarRatingLayerOpenButton, 'click');
		
		jindo.$A(jindo.$ElementList('._pointStarRatingLayerList').$value()).forEach(function(element, index, array) {
			// 클릭 시 평점 반영
			jindo.$Fn(function () {
				jindo.$A(jindo.$ElementList('._pointStarRatingList').$value()).forEach(function(el, index, array) {
					// 기존 선택 취소
					el.removeClass("on");
					el.html(el.attr("title") + "점");
					
					if ( element.hasClass(el.attr("title")) ) {
						// 신규 평점 반영
						el.addClass("on");
						el.html(el.attr("title") + "점 선택됨");
				    	jindo.$("point").value = el.attr("title");
				    	jindo.$Element("pointStarRatingValue").html(el.attr("title"));
				    	
				    	// 평점 선택 레이어 닫기
				    	jindo.$Element("pointStarRatingLayerOpenButton").removeClass("on");
				    	jindo.$Element("pointStarRatingLayer").hide();

				    	// 최초 로딩시 프레임 사이즈로 재조정
						parent.resizePointAfterListIframe(frameHeight);
					}
				});
		    }, this).attach(element, 'click');
			
			// 평점 선택 레이어에 포커스가 없다면 레이어 닫기
			jindo.$Fn(pointStarRatingLayerToggle, this).attach(element, "blur");
		});
		
	    var oDefaultTextValue = new jindo.DefaultTextValue(jindo.$("ment"), { sValue : sDefaultMent });
	    
	    var oWatchInput = new jindo.WatchInput(jindo.$('ment'));
	    oWatchInput.attach('change', function(oCustomEvent) {
	    	if (checkTextChange == false) {
	        	checkTextChange = true;
	    	}
	    	
	    	var len = oCustomEvent.sText.length;
	    	
	    	//iOS blur 관련 문제 해결을 위한 코드.
	    	if (false) {
	    		len = 0;
	    	}
	    	
	    	jindo.$("ment_cnt").innerHTML = len;
	    	
	    	if (len > 140) {
	    		alert("평은  140자 이하로 등록해 주세요.");
	    		var reText = oCustomEvent.sText.substring(0,140);
	    		jindo.$('ment').value = reText;
	    		jindo.$("ment_cnt").innerHTML = reText.length;
	    		return;
	    	}
	    }).attach('blur', function(oCustomEvent) {
	    	
	    	if (jindo.$("ment").value == sDefaultMent) {
	    		jindo.$("ment_cnt").innerHTML = "0";
	    	}
	    });
	    
	    jindo.$Element("pointAddButton").attach("click", function (e) {point.add()});
	}
	
	
	if (jindo.$("actualYnCheckBox") != null) {
		jindo.$Fn(function () {
	    	if (jindo.$("actualYnCheckBox").checked == false) {
	    		location.href = "/movie/bi/mi/pointWriteFormList.nhn?code=152385&type=after";
	    	} else {
	    		location.href = "/movie/bi/mi/pointWriteFormList.nhn?code=152385&type=after&onlyActualPointYn=Y";
	    	}
	    }, this).attach(jindo.$("actualYnCheckBox"), 'click');
	}

	if (jindo.$("actualYnLable") != null) {
	    jindo.$Fn(function () {
	    	if (jindo.$("actualYnCheckBox").checked == false) {
	    		location.href = "/movie/bi/mi/pointWriteFormList.nhn?code=152385&type=after&onlyActualPointYn=Y";
	    	} else {
	    		location.href = "/movie/bi/mi/pointWriteFormList.nhn?code=152385&type=after";
	    	}
	    }, this).attach(jindo.$("actualYnLable"), 'click');
	}
	
	
	if (jindo.$Element("actualPointHelp") != null && jindo.$Element("actualPointHelp") != "undefined") {
		actualPointHelpLayerToggle = function() {
			setTimeout( function() {
				if (document.activeElement != null) {
					var focusedEl = jindo.$Element(document.activeElement);
					if (focusedEl != null) {
						if ( !focusedEl.hasClass("_actualPointHelp") ) {
							 jindo.$Element("actualPointHelp").hide();
						}
					}
				}
			}, 100);
		};

		new jindo.LayerManager("actualPointHelp", {
			sCheckEvent : "click",
			nHideDelay : 0
		}).link(jindo.$("actualPointHelp"), jindo.$("actualPointHelpButton"));

		jindo.$Element("actualPointHelpButton").attach("click", function(e){
			e.stop(jindo.$Event.CANCEL_DEFAULT);
			jindo.$Element("actualPointHelp").toggle();
		});

		jindo.$Element("actualPointHelpCloseButton").attach("click", function(e){
			e.stop(jindo.$Event.CANCEL_DEFAULT);
			jindo.$Element("actualPointHelp").toggle();
		});

		
		var waelActualPointHelp = jindo.$ElementList('._actualPointHelp');

		jindo.$A(waelActualPointHelp.$value()).forEach(function(value, index, array) {
			jindo.$Fn(actualPointHelpLayerToggle, this).attach(value, "blur");
		});
	}
	
	
	if ( (false == true && "after" == "after") == false) {
		bestPointHelpLayerToggle = function() {
			setTimeout( function() {
				if (document.activeElement != null) {
					var focusedEl = jindo.$Element(document.activeElement);
					if (focusedEl != null) {
						if ( !focusedEl.hasClass("_bestPointHelp") ) {
							 jindo.$Element("bestPointHelp").hide();
						}
					}
				}
			}, 100);
		};

		new jindo.LayerManager("bestPointHelp", {
			sCheckEvent : "click",
			nHideDelay : 0
		}).link(jindo.$("bestPointHelp"), jindo.$("bestPointHelpButton"));

		jindo.$Element("bestPointHelpButton").attach("click", function(e){
			e.stop(jindo.$Event.CANCEL_DEFAULT);
			jindo.$Element("bestPointHelp").toggle();
		});

		jindo.$Element("bestPointHelpCloseButton").attach("click", function(e){
			e.stop(jindo.$Event.CANCEL_DEFAULT);
			jindo.$Element("bestPointHelp").toggle();
		});

		
		var waelBestPointHelp = jindo.$ElementList('._bestPointHelp');

		jindo.$A(waelBestPointHelp.$value()).forEach(function(value, index, array) {
			jindo.$Fn(bestPointHelpLayerToggle, this).attach(value, "blur");
		});
	}
	
	parent.setParamForPointAfterList('N', 'sympathyScore', '1');
	parent.resizePointAfterListIframe(0);
	
	// 최소 높이 270px 지정
	var frameHeight = eval(jindo.$Document().scrollSize().height);
	
	parent.resizePointAfterListIframe(frameHeight);
	parent.isPointAfterListLoad = true;
	
	
	
	
}, this).attach(this, 'load');

var point = {
		pwmManager : new PwmManager(),
		
		checkLoginWithMessage : function(login, loginMessage, notLoginMessage) {
			if(login == false){
				if(confirm(message)){
					top.location.href="https://nid.naver.com/nidlogin.login?mode=form&url="+encodeURIComponent(top.location.href);
				}
				return false;
			}
			return true;
		},
		
		checkEnable : function() {
			if(common.checkLogin(true) == false) {
				return false;
			}
			
			return true;
		},
		
		
		checkAlreadyPointAfterExist : function (nid) {
			var existPointType = "pointBefore";
			
			if (false == false) {
				var oAjax = new jindo.$Ajax("/api/internal/point/pointAfterExistJson.nhn", {
			    	onload : function (oRes) {
			    		var resultCode = oRes.json().resultCode;
			    		
			    		if (resultCode == "error") {							// 서버 오류
			    			alert("오류가 발생했습니다. 잠시 후 다시 시도해주세요.");
			    			return false;
			    		} else {
			    			existPointType = oRes.json().existPointType;
			    			point.del(existPointType, nid);
			    		}
			    	},
					timeout : 5,
			    	onerror : function (oRes) {
			    		alert("오류가 발생했습니다. 잠시 후 다시 시도해주세요.");
			    		return false;
			    	},
			    	ontimeout : function (oRes) {
			    		alert("처리가 지연되고 있습니다. 다시 시도해주세요.");
			    		return false;
			    	}
			    });
			    
			    oAjax.request({
			    	"movieCode" : "152385",
			    	"isActualPoint" : "false"
			    });
			} else {
				point.del(existPointType, nid);
			}
		},

		
		checkPointAfterExistAndMileageSubscriptionType : function () {
			var existPointType = "pointBefore";
			
		    var oAjax = new jindo.$Ajax("/api/internal/point/pointAfterExistAndMileageSubscriptionTypeJson.nhn", {
		    	onload : function (oRes) {
		    		var resultCode = oRes.json().resultCode;
		    		
		    		if (resultCode == "error") {							// 서버 오류
		    			alert("오류가 발생했습니다. 잠시 후 다시 시도해주세요.");
		    		} else {
		    			
		    			existPointType = oRes.json().existPointType;
		    			
		    			if (false && existPointType == "afterPoint") {			// 실관람 평점 작성 가능
		    				bActualPoint = true;
		    			
		    				if(confirm("관람객 평점 작성 시, 이전에 작성한 개봉 후 평점은 삭제됩니다.") == false) {
		    					return false;
		    				}
		    			}
		    			
		    			
						if (false) {
							var mileageSubscriptionType = oRes.json().mileageSubscriptionType;
							
							if (mileageSubscriptionType == "NOT_AGREED_WITH_NEW_TERMS") {
								jindo.$Element("naverMileageSubscriptionLayer").show();
								return false;
							} else if (mileageSubscriptionType == "AGREED_WITH_NEW_TERMS") {
								bMileageSubscriptionAlready = true;
							} else if (mileageSubscriptionType == "POSSIBLE") {
								jindo.$Element("naverMileageSubscriptionLayer").show();
								return false;
							} else if (mileageSubscriptionType == "STOP") {
								alert("현재 포인트 서비스 중지 상태로 약관동의 및 적립이 불가능합니다.");
								return false;
							} else if (mileageSubscriptionType == "IMPOSSIBLE_PERIOD") {
								alert("회원님은 네입페이 서비스 약관동의 불가 기간으로 약관동의 및 적립이 불가능합니다.");
								return false;
							} else if (mileageSubscriptionType == "DUPLICATES_REAL_NAME") {
								alert("회원님의 실명 아이디 3개가 모두 바코드페이 서비스 이용 중이어서 약관동의 및 적립이 불가능합니다.");
								return false;
							} else if (mileageSubscriptionType == "ALREADY") {
								bMileageSubscriptionAlready = true;
							} else {
								alert("비정상적인 접근입니다.");
								return false;
							}
						}
		    		}
		    	},
				timeout : 5,
		    	onerror : function (oRes) {
		    		alert("오류가 발생했습니다. 잠시 후 다시 시도해주세요.");
		    	},
		    	ontimeout : function (oRes) {
		    		alert("처리가 지연되고 있습니다. 다시 시도해주세요.");
		    	}
		    });
		    
		    oAjax.request({
		    	"movieCode" : "152385",
		    	"isActualPoint" : "false"
		    });
		},
		
		add : function () {
			
			if(this.checkEnable() == false) {
				return false;
			} else {
				var ment = jindo.$S(jindo.$S(jindo.$("ment").value).trim()).$value();
				var point = eval(jindo.$("point").value);
				
				var meaningless_pattern = /[ㄱ-ㅎㅏ-ㅣ]{5,}/g;
				if (meaningless_pattern.test(ment)) {
					alert("무의미한 자음/모음의 연속입력은 불가능합니다.");
					return false;
				}
				
				var continual_pattern = /(.)\1\1\1\1/g;
				if(continual_pattern.test(ment.replace(/ /g,''))) {
					alert("동일 글자의 5회 이상 연속입력은 불가능합니다.");
					return false;
				}
				
				if (checkTextChange == false) {
					alert('평을 입력해 주세요.');
					jindo.$("ment").focus();
					return false;
				}
				
				if (ment.replace(/ /g,'').length < 10){
					alert('공백을 제외하고 10자 이상 작성하셔야 등록됩니다.');
					jindo.$("ment").focus();
					return false;
				}
				
				if (ment == "" || ment == "최대 한글 140자까지 가능하며, 스포일러는 삭제될 수 있습니다."){
					alert('평을 입력해 주세요.');
					jindo.$("ment").focus();
					return false;
				}
				
				if (ment.length > 140){
					alert('평은 140자 이하로 등록해 주세요.');
					jindo.$("ment").focus();
					return false;
				}
				
				if (point == 0){
					alert('평점을 입력해 주세요.');
					return false;
				}
				
				if (point > 10){
					alert('평점은 10점까지만 입력이 가능합니다.');
					return false;
				}
				
				this.pwmManager.startFilter('comment', function(){}, new Array('평점'), new Array(ment));
				
				if (checkInput) {
					return false;
				}
				
				checkInput = true;
				
				//ajax전송
				var ajaxAddUrl = "/api/internal/point/pointBeforeWrite.nhn";
				if ("after" == "after") {
					ajaxAddUrl = "/api/internal/point/pointAfterWrite.nhn";
				}

				var ajax = new jindo.$Ajax(ajaxAddUrl, { 
					method : "POST",
					async : false,
					onload : this.addCallback
				});
				ajax.header("ajax", "true");
				ajax.request({
					"code":152385,
					"point":point,
					"ment":ment
				});
			}
			return;
		},
		
		addCallback : function(req) {
			var returnValue = req.text();
			
			if (returnValue != "success") {
				alert(returnValue);
				checkInput = false;
				return;
			}
			
			top.location.href = '/movie/bi/mi/point.nhn?code=152385&isActualPointWriteExecute=false&isMileageSubscriptionAlready=' + bMileageSubscriptionAlready + '&isMileageSubscriptionReject=' + bMileageSubscriptionReject + '#pointAfterTab';
		},
		
		del : function (existPointType, nid) {
			if (existPointType == "actualPoint") {
				if (confirm("관람객 평점 삭제시, 평점 작성으로 적립된 포인트는 회수됩니다. 평점을 삭제할까요?") == false) {
					return false;
				}
			} else {
				if (confirm("본인 삭제 시 복구할 수 없습니다.\n평점을 삭제하시겠습니까?") == false) {
					return false;
				}
			}
			
			var ajaxDeleteUrl = "/api/internal/point/pointBeforeDelete.nhn";
			if ("after" == "after") {
				ajaxDeleteUrl = "/api/internal/point/pointAfterDelete.nhn";
			}
			
			var ajax = new jindo.$Ajax(ajaxDeleteUrl, { 
				method : "POST",
				async : false,
				onload : this.delCallback
			});
			ajax.header("ajax", "true");
			ajax.request({
				"nid":nid
			});
		},
		
		delCallback : function(req) {
			var returnValue = req.text();
			
			if(returnValue != "success"){
				alert(returnValue);
				return false;
			}
			
			top.location.href = '/movie/bi/mi/point.nhn?code=152385#pointAfterTab';
			top.location.reload(true);
		}
};

function dislplayOrder(order) {
	var url = "/movie/bi/mi/pointWriteFormList.nhn?code=152385&type=after";
	
	var onlyActualPointYnValue = jindo.$("onlyActualPointYn").value;
	
	if (onlyActualPointYnValue != "") {
		url = url + "&onlyActualPointYn=" + onlyActualPointYnValue;
	}
	
	url = url + "&order=" + order;
	
	location.href = "http://" + document.domain + url;
}

function showPointListByNid(nid, target){
	if (target == 'after') {
		top.location.href = "http://" + top.location.hostname + "/movie/point/af/list.nhn?st=nickname&target=after&sword="+nid;
	} else {
		top.location.href = "http://" + top.location.hostname + "/movie/point/af/list.nhn?st=nickname_before&target=before&sword="+nid;
	}
}

function refreshPage() {
	top.location.href = '/movie/bi/mi/point.nhn?code=152385#pointAfterTab';
}

</body></html>