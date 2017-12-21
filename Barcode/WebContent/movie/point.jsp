<%@page import="member.PointBean"%>
<%@page import="java.util.Vector"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:useBean id="mgr" class="member.MovieMgr" />
<jsp:useBean id="bean" class="member.PointBean" />
<jsp:setProperty name="bean" property="*" />
<%
	request.setCharacterEncoding("utf-8");
	int idx = Integer.parseInt(request.getParameter("index"));
	Vector<PointBean> vlist= mgr.getPointList(idx);
	int totalRecord = vlist.size();
	int numPerPage = 10;//페이지당 레코드수
	int pagePerBlock = 10;//블럭당 페이지수
	int totalBlock = 0;
	int totalPage = 0;
	int nowPage = 1;//현재페이지
	int nowBlock = 1;//현재블럭
	
	int start = 0;//DB에서 select 시작번호
	int end = numPerPage;//시작번호로부터 읽어올 select수
	
	int listSize = 0;//현재 읽어온 게시물 번호
	
	if(request.getParameter("nowPage")!=null){
		nowPage = Integer.parseInt(request.getParameter("nowPage"));
	}
	start = (nowPage*numPerPage)-numPerPage;
	
	totalPage = (int)Math.ceil((double)totalRecord/numPerPage);
	totalBlock = (int)Math.ceil((double)totalPage/pagePerBlock);
	nowBlock = (int)Math.ceil((double)nowPage/pagePerBlock);
%>
<!DOCTYPE html>
<!-- saved from url=(0073)file:///C:/Users/Soo/git/SearchPortal/Barcode/WebContent/movie/point.html -->
<html lang="ko">
<div style="display: none;">
	<input title="jindoCheck" type="input" name="jindo1513606894051">
</div>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<div style="display: none;">
		<input title="jindoCheck" type="input" name="jindo1513606593145">
	</div>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>바코드 영화</title>
	<link rel="shortcut icon"
		href="http://static.naver.net/m/movie/icons/naver_movie_favicon.ico"
		type="image/x-icon">
	<link rel="stylesheet" type="text/css" href="./point_files/common.css">
	<link rel="stylesheet" type="text/css"
		href="./point_files/movie_tablet.css">
	<link rel="stylesheet" type="text/css"
		href="./point_files/movie_end.css">
	<!-- content -->
	<input type="hidden" name="movieCode" id="movieCode" value="152385">
	<input type="hidden" name="onlyActualPointYn" id="onlyActualPointYn"
		value="N">
	<input type="hidden" name="order" id="order" value="sympathyScore">
	<input type="hidden" name="page" id="page" value="1">
	<input type="hidden" name="point" id="point" value="0">
	<div class="ifr_area basic_ifr">
		<div class="input_netizen ">
			<form id="pointWriteArea" action="pointProc.jsp">
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
										<button type="button" title="0"
											class="_pointStarRatingList btn_star on">0점 선택됨</button>
										<button type="button" title="1"
											class="_pointStarRatingList btn_star">1점</button>
										<button type="button" title="2"
											class="_pointStarRatingList btn_star st_r">2점</button>
										<button type="button" title="3"
											class="_pointStarRatingList btn_star">3점</button>
										<button type="button" title="4"
											class="_pointStarRatingList btn_star st_r">4점</button>
										<button type="button" title="5"
											class="_pointStarRatingList btn_star">5점</button>
										<button type="button" title="6"
											class="_pointStarRatingList btn_star st_r">6점</button>
										<button type="button" title="7"
											class="_pointStarRatingList btn_star">7점</button>
										<button type="button" title="8"
											class="_pointStarRatingList btn_star st_r">8점</button>
										<button type="button" title="9"
											class="_pointStarRatingList btn_star">9점</button>
										<button type="button" title="10"
											class="_pointStarRatingList btn_star st_r">10점</button>
									</div>
									<span class="blind">평점</span><span class="star_count"><em
										id="pointStarRatingValue">0<span class="blind">점 </span></em><em>/<span
											class="blind"> 총 </span>10<span class="blind">점</span></em></span>
									<!-- [D] 레이어 펼침시 : 클래스 on 추가, 타이틀, 대체 텍스트 변경 : 별점 선택 레이어 닫기 -->
									<button type="button" id="pointStarRatingLayerOpenButton"
										class="btn_ly_open _pointStarRatingLayer" title="별점 선택 레이어 펼침">별점
										선택 레이어 펼침</button>
								</div>
							</div>
						</li>
						<li class="input_textarea">
							<!-- [D] 인풋박스 포커스시, 입력내용이 바뀌었을 때 : 클래스 active 추가 --> <textarea
								id="ment" name="content" row="1" cols="1" rows="1"
								class="input_tx" maxlength="140"></textarea>
							<p class="tx_length">
								<em id="ment_cnt">0</em>/140
							</p>
						</li>
						<li><input type="image" id="pointAddButton"
							src="./point_files/score_btn_submit.png" alt="등록"
							onclick="parent.clickcr(this,&#39;ara.register&#39;,&#39;&#39;,&#39;&#39;,event); return false;"
							style="display: block;"></li>
					</ul>

					<div id="pointStarRatingLayer" class="t_layer_score"
						style="display: none">
						<strong class="blind">별점을 선택하세요</strong>
						<ul class="t_list_score">
							<li><a
								href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#"
								class="_pointStarRatingLayer _pointStarRatingLayerList 10"
								onclick="return false;"><span class="star"><span
										class="on"></span></span> <em>10</em></a></li>
							<li><a
								href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#"
								class="_pointStarRatingLayer _pointStarRatingLayerList 9"
								onclick="return false;"><span class="star"><span
										class="on"></span></span> <em>9</em></a></li>
							<li><a
								href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#"
								class="_pointStarRatingLayer _pointStarRatingLayerList 8"
								onclick="return false;"><span class="star"><span
										class="on"></span></span> <em>8</em></a></li>
							<li><a
								href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#"
								class="_pointStarRatingLayer _pointStarRatingLayerList 7"
								onclick="return false;"><span class="star"><span
										class="on"></span></span> <em>7</em></a></li>
							<li class="b_none"><a
								href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#"
								class="_pointStarRatingLayer _pointStarRatingLayerList 6"
								onclick="return false;"><span class="star"><span
										class="on"></span></span> <em>6</em></a></li>
							<li class="col_right"><a
								href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#"
								class="_pointStarRatingLayer _pointStarRatingLayerList 5"
								onclick="return false;"><span class="star"><span
										class="on"></span></span> <em>5</em></a></li>
							<li class="col_right"><a
								href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#"
								class="_pointStarRatingLayer _pointStarRatingLayerList 4"
								onclick="return false;"><span class="star"><span
										class="on"></span></span> <em>4</em></a></li>
							<li class="col_right"><a
								href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#"
								class="_pointStarRatingLayer _pointStarRatingLayerList 3"
								onclick="return false;"><span class="star"><span
										class="on"></span></span> <em>3</em></a></li>
							<li class="col_right"><a
								href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#"
								class="_pointStarRatingLayer _pointStarRatingLayerList 2"
								onclick="return false;"><span class="star"><span
										class="on"></span></span> <em>2</em></a></li>
							<li class="b_none col_right"><a
								href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#"
								class="_pointStarRatingLayer _pointStarRatingLayerList 1"
								onclick="return false;"><span class="star"><span
										class="on"></span></span> <em>1</em></a></li>
						</ul>
					</div>
				</fieldset>
			</form>


			<!-- [D] 관람객 평점 작성 완료 -->
			<div id="actualPointWriteExecuteLayer" class="ly_viewer"
				style="display: none">
				<h4>관람객 평점 작성 완료 안내</h4>
				<p>
					관람객 평점이 등록되었습니다.<br> <em>바코드페이 포인트 500원</em>이 적립되었습니다.<br>
					<em>7일 이후</em> 확인 가능합니다.
				</p>
				<p>(평점 삭제시, 적립된 포인트는 회수됩니다.)</p>
				<div class="btn">
					<a
						href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#"
						id="actualPointWriteExecuteLayerOkButton" class="ok">확인</a> <a
						href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#"
						id="actualPointWriteExecuteLayerCloseButton" class="close"
						title="닫기">관람객 평점 작성 완료 안내 레이어 닫기</a>
				</div>
			</div>
			<!-- //관람객 평점 작성 완료 -->

			<!-- [D] 관람객 평점 작성 완료2 -->
			<div id="pointWriteExecuteLayer" class="ly_viewer"
				style="display: none">
				<h4>관람객 평점 작성 완료 안내</h4>
				<p class="msg1">관람객 평점이 등록되었습니다.</p>
				<div class="btn">
					<a
						href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#"
						id="pointWriteExecuteLayerOkButton" class="ok">확인</a> <a
						href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#"
						id="pointWriteExecuteLayerCloseButton" class="close" title="닫기">관람객
						평점 작성 완료 안내 레이어 닫기</a>
				</div>
			</div>
			<!-- //관람객 평점 작성 완료2 -->

			<!-- [D] 바코드페이 가입 안내 레이어 -->
			<div id="naverMileageSubscriptionLayer" class="ly_viewer"
				style="display: none">
				<h4>바코드페이 가입 안내 레이어</h4>
				<p class="msg2">
					<em>바코드페이</em> 이용약관에 동의해주시면 포인트 500원<br>이 적립됩니다.
				</p>
				<p>
					<a href="http://pay.naver.com/about" class="link_mileage"
						target="_blank">바코드페이 소개</a>
				</p>
				<div class="btn">
					<a
						href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#"
						id="naverMileageSubscriptionButton" class="join">약관동의</a> <a
						href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#"
						id="naverMileageSubscriptionLayerCloseButton" class="close"
						title="닫기">바코드페이 가입 안내 레이어 닫기</a>
				</div>
			</div>
			<!-- //바코드페이 가입 안내 레이어 -->

			<div class="score_total">
				<strong class="total"><span class="tit"><em
						class="blind">140자 평</em></span><span class="sp">|</span>총<em>10,187</em>건</strong>

				<div class="best_score_info _bestPointHelp"></div>
			</div>

			<div id="orderCheckbox" class="top_behavior">
				<ul class="sorting_list">
					<li class="on"><a
						href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#"
						onclick="parent.clickcr(this, &#39;ara.bysym&#39;, &#39;&#39;, &#39;&#39;, event); dislplayOrder(&#39;sympathyScore&#39;);">호감순</a></li>
					<li><a
						href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#"
						onclick="parent.clickcr(this, &#39;ara.byrct&#39;, &#39;&#39;, &#39;&#39;, event); dislplayOrder(&#39;newest&#39;);">최신순</a></li>

					<li><a
						href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#"
						onclick="parent.clickcr(this, &#39;ara.high&#39;, &#39;&#39;, &#39;&#39;, event); dislplayOrder(&#39;highest&#39;);">평점
							높은 순</a></li>
					<li><a
						href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#"
						onclick="parent.clickcr(this, &#39;ara.low&#39;, &#39;&#39;, &#39;&#39;, event); dislplayOrder(&#39;lowest&#39;);">평점
							낮은 순</a></li>
				</ul>
			</div>
			<div class="score_result">
				<ul>
					<%
					for(int i=(nowPage-1)*10; i<(nowPage>totalRecord/10?totalRecord:nowPage*10); i++){
					bean = vlist.get(i);
					idx = bean.getPointnum();
					bean = mgr.getPoint(idx);
					int star = bean.getStar();
					String redate = bean.getRedate();
					int good = bean.getGood();
					int bad = bean.getBad();
					String content=bean.getContent();
					String writer = bean.getWriter();
					%>
					
					<li>
						<div class="star_score">
							<span class="st_off"><span class="st_on"
								style="width:10%"></span></span><em><%=star %></em>
						</div>
						<div class="score_reple">
							<p>
								<span class="ico_best">BEST</span><%=content %>
							</p>
							<dl>
								<dt>
									<em> <a
										href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#"
										onclick="javascript:showPointListByNid(13418993, &#39;after&#39;);parent.clickcr(this, &#39;ara.uid&#39;, &#39;&#39;, &#39;&#39;, event); return false;"
										target="_top"> <span><%=writer %></span>
									</a>
									</em> <em><%=redate %></em>
								</dt>
								<dd>
									<a
										href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#"
										onclick="parent.clickcr(this, &#39;ara.report&#39;, &#39;&#39;, &#39;&#39;, event); common.report(&#39;false&#39;,&#39;et45****&#39;, &#39;J1OP/gvXkRRgesQvv9qVnevMLmUhyx1ZipQmv8dsGPM=&#39;, &#39;진자  사기꾼이네요ㅋㅋ 제가사기당한거같아요 &#39;, &#39;13418993&#39;, &#39;point_after&#39;, true);return false;"
										class="go_report2"><em>신고</em></a>
								</dd>
							</dl>
						</div>
						<div class="btn_area">
							<a class="_sympathyButton"
								href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#"
								onclick="parent.clickcr(this, &#39;ara.sym&#39;, &#39;&#39;, &#39;&#39;, event);"><span
								class="blind">공감</span></a><strong><span
								class="sympathy_13418993 count"><%=good %></span></strong> <a
								class="_notSympathyButton"
								href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#"
								onclick="parent.clickcr(this, &#39;ara.opp&#39;, &#39;&#39;, &#39;&#39;, event);"><span
								class="blind">비공감</span></a><strong><span
								class="notSympathy_13418993 count v2"><%=bad %></span></strong>
						</div>
					</li>
					<%}%>
				</ul>
			</div>
			
			<div class="paging">
				<script type="text/javascript">
				function pageing(page) {
					document.readFrm.nowPage.value=page;
					document.readFrm.submit();
				}
				
				function block(block) {
					document.readFrm.nowPage.value=
						<%=pagePerBlock%>*(block-1)+1;
					document.readFrm.submit();
				}
			</script>
					<br/>
					<table>
						<tr align="center">
							<td>
							Total : <%=totalRecord%>Articles(
							<font color="red"><%=nowPage%>/<%=totalPage%>
							</font>)	
							</td>
						</tr>
					</table>
					<table>
			<tr>
				<td>게시물 번호 : &nbsp;</td>
				<%
						listSize = totalRecord - start;
						for(int i=0;i<numPerPage;i++){
							if(i==listSize) break;
				%>
				<td align="center">
				<%=totalRecord-((nowPage-1)*numPerPage)-i%>
				</td>
				<%}//for%>
			</tr>
		</table>
		<!-- 페이징 및 블럭 Start -->
		<table>
			<tr>
				<td>
				<% 
						int pageStart = (nowBlock-1)*pagePerBlock+1;
						int pageEnd = ((pageStart+pagePerBlock)<totalPage)?
								                (pageStart+pagePerBlock):totalPage+1;            
				%>
				<%if(totalPage!=0){%>
				<!-- 이전 블럭 Start -->
				<%if(nowBlock>1){ %>
				<a href="javascript:block('<%=nowBlock-1%>')">
				prev...</a>&nbsp;
				<%}%>
				<!-- 이전 블럭 End -->
				<!-- 페이징 Start -->
				<%
				for(;pageStart<pageEnd;pageStart++){
				%>
					<a href="javascript:pageing('<%=pageStart%>')">
					<%if(nowPage==pageStart){%><font color="blue"><%}%>
					[<%=pageStart%>]
					<%if(nowPage==pageStart){%></font><%}%>
					</a>
				<%}//for%>&nbsp;
				<!-- 페이징 End -->
				<!-- 다음 블럭 Start -->
				<%if(totalBlock>nowBlock){ %>
				<a href="javascript:block('<%=nowBlock+1%>')">
				...next</a>
				<%}%>
				<!-- 다음 블럭 End -->
				<%}%>
				</td>
			</tr>
		</table>
		
		<hr width="45%"/>
			<form name="readFrm">
				<input type="hidden" name="totalRecord" value="<%=totalRecord%>">
				<input type="hidden" name="nowPage" value="<%=nowPage%>">
			</form>
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