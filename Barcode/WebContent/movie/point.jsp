<%@page import="movie.PointBean"%>
<%@page import="java.util.Vector"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:useBean id="mgr" class="movie.MovieMgr" />
<jsp:useBean id="bean" class="movie.PointBean" />
<jsp:setProperty name="bean" property="*" />
<%
	request.setCharacterEncoding("utf-8");
	String id = (String)session.getAttribute("idKey");	
	String index = request.getParameter("index");
	int idx = Integer.parseInt(index);
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
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>바코드 영화</title>
	<link rel="stylesheet" type="text/css" href="./point_files/common.css">
	<link rel="stylesheet" type="text/css" href="./point_files/movie_tablet.css">
	<link rel="stylesheet" type="text/css" href="./point_files/movie_end.css">
	<!-- content -->
	<div class="ifr_area basic_ifr">
		<div class="input_netizen ">
					<ul class="t_layer_view">
						<li class="drag_star">
							<div class="lft">
						<form name="point" action="pointProc.jsp">
							<fieldset>
							<legend><span class="blind">네티즌 평점 입력란</span></legend>
							<!-- 모바일 기기로 접근 시 : 클래스 t_layer_view 추가 -->
							<ul class="t_layer_view">
								<li class="drag_star">
									<div class="lft">
										<div class="star_score">
											<strong class="blind">평점선택</strong>
											<!-- [D] st_off 영역에 마우스 오버시 : 클래스 st_over 추가
												 [D] 버튼 선택시 : 선택된 버튼 클래스 'on' 추가, 대체텍스트 '선택됨' 추가, 짝수 점수 버튼에 클래스 st_r 추가, 디폴트는 화면에 보이지 않는 0점 버튼 -->
											<div class="st_off" onmouseover="starturnon()" onmouseout="starturnoff()" id="pointStarRating">
											<%for(int i=0; i<11; i++){ 
											if(i%2==0){%><button id="star<%=i %>" onmouseover="staron(<%=i %>)" type="button" title="<%=i %>" class="_pointStarRatingList btn_star st_r"><%=i %>점</button>
											<%}else{%><button id="star<%=i %>" onmouseover="staron(<%=i %>)" type="button" title="<%=i %>" class="_pointStarRatingList btn_star"><%=i %>점</button><%} %>
											<%} %>
											</div>
											<span class="blind">평점</span><span class="star_count"><em id="pointStarRatingValue">10</em><em>/<span class="blind"> 총 </span>10<span class="blind">점</span></em></span>
										</div>
									</div>
								</li>
								<li class="input_textarea">
									<!-- [D] 인풋박스 포커스시, 입력내용이 바뀌었을 때 : 클래스 active 추가 -->
									<textarea id="ment" name="content" row="1" cols="1" rows="1" class="input_tx" maxlength="140"></textarea>
									<input type="hidden" name="idx" value="<%=index%>">
									<input type="hidden" id="starval" name="star" value="">
									<p class="tx_length"><em id="ment_cnt">0</em>/140</p>
									<input type="hidden" name="writer" value="<%=id%>">
								</li>
								<li>
									<input type="image" id="pointAddButton" src="http://static.naver.net/movie/2012/06/score_btn_submit.png" alt="등록" onclick="submit1()" style="display:block;">								
								</li>
							</ul>
							</fieldset>
						</form>
								<!-- [D] 관람객 평점 작성 완료 -->
			<div id="actualPointWriteExecuteLayer" class="ly_viewer"
				style="display: none">
				<h4>관람객 평점 작성 완료 안내</h4>
				<p>
					관람객 평점이 등록되었습니다.
				</p>
				<p>(평점 삭제시, 적립된 포인트는 회수됩니다.)</p>
				<div class="btn">
					<a href="" class="ok">확인</a> 
					<a href="" class="close" title="닫기">관람객 평점 작성 완료 안내 레이어 닫기</a>
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
						class="blind">140자 평</em></span><span class="sp">|</span>총<em><%=vlist.size() %></em>건</strong>

				<div class="best_score_info _bestPointHelp"></div>
			</div>

			<div id="orderCheckbox" class="top_behavior">
				<ul class="sorting_list">
					<li class="on"><a
						href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#"
						onclick="parent.clickcr(this, 'ara.bysym', '', '', event); dislplayOrder('sympathyScore');">호감순</a></li>
					<li><a
						href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#"
						onclick="parent.clickcr(this, 'ara.byrct', '', '', event); dislplayOrder('newest');">최신순</a></li>

					<li><a
						href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#"
						onclick="parent.clickcr(this, 'ara.high', '', '', event); dislplayOrder('highest');">평점
							높은 순</a></li>
					<li><a
						href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#"
						onclick="parent.clickcr(this, 'ara.low', '', '', event); dislplayOrder('lowest');">평점
							낮은 순</a></li>
				</ul>
			</div>
			<div class="score_result">
				<ul>
					<%
			         for(int i=(nowPage-1)*10; 
			        		 i<(nowPage>totalRecord/10?totalRecord:nowPage*10); 
			        		 i++){
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
								style="width:<%=star*10%>"></span></span><em><%=star %></em>
						</div>
						<div class="score_reple">
							<p>
								<span class="ico_best">BEST</span><%=content %>
							</p>
							<dl>
								<dt>
									<em> <a
										href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#"
										onclick="javascript:showPointListByNid(13418993, 'after');parent.clickcr(this, 'ara.uid', '', '', event); return false;"
										target="_top"> <span><%=writer %></span>
									</a>
									</em> <em><%=redate %></em>
								</dt>
								<dd>
									<a
										href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#"
										onclick="parent.clickcr(this, 'ara.report', '', '', event); common.report('false','et45****', 'J1OP/gvXkRRgesQvv9qVnevMLmUhyx1ZipQmv8dsGPM=', '진자  사기꾼이네요ㅋㅋ 제가사기당한거같아요 ', '13418993', 'point_after', true);return false;"
										class="go_report2"><em>신고</em></a>
								</dd>
							</dl>
						</div>
						<div class="btn_area">
							<a class="_sympathyButton"
								href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#"
								onclick="parent.clickcr(this, 'ara.sym', '', '', event);"><span
								class="blind">공감</span></a><strong><span
								class="sympathy_13418993 count"><%=good %></span></strong> <a
								class="_notSympathyButton"
								href="http://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=152385&amp;type=after&amp;isActualPointWriteExecute=false&amp;isMileageSubscriptionAlready=false&amp;isMileageSubscriptionReject=false#"
								onclick="parent.clickcr(this, 'ara.opp', '', '', event);"><span
								class="blind">비공감</span></a><strong><span
								class="notSympathy_13418993 count v2"><%=bad %></span></strong>
						</div>
					</li>
					<%}%>
				</ul>
			</div>
			<script type="text/javascript">
				function staron(a){
					document.getElementById("pointStarRatingValue").innerHTML=a;
					for(i=0;i<11;i++){
						if(document.getElementById("star"+i).className.match(' on')){
							document.getElementById("star"+i).className = document.getElementById("star"+i).className.replace(' on','');
						}
					}
					document.getElementById("star"+a).className=document.getElementById("star"+a).className+" on";
				}
				function starturnon(){
					if(document.getElementById("pointStarRating").className.match('st_off')){
						document.getElementById("pointStarRating").className = document.getElementById("pointStarRating").className.replace('st_off','st_off st_over');
					}
				}
				function starturnoff(){
					if(document.getElementById("pointStarRating").className.match('st_off st_over')){
						document.getElementById("pointStarRating").className = document.getElementById("pointStarRating").className.replace('st_off st_over','st_off');
					}
				}
	
				function pageing(page) {
					document.readFrm.nowPage.value=page;
					document.readFrm.submit();
				}
				function block(block) {
					document.readFrm.nowPage.value=
						<%=pagePerBlock%>*(block-1)+1;
					document.readFrm.submit();
				}
				function block2(block) {
					document.readFrm.nowPage.value=
						<%=pagePerBlock%>*(block-1)+10;
					document.readFrm.submit();
				}
				function submit1(){
					document.getElementById("starval").value= 
						document.getElementById("pointStarRatingValue").innerHTML;
					document.point.submit();
				}
			</script>
			<div class="paging">
				<div>
				<% 
						int pageStart = (nowBlock-1)*pagePerBlock+1;
						int pageEnd = ((pageStart+pagePerBlock)<totalPage)?
								                (pageStart+pagePerBlock):totalPage+1;            
				%>
				<%if(totalPage!=0){%>
				<!-- 이전 블럭 Start -->
				<%if(nowBlock>1){ %>				
					<a id="pagerTagAnchor9" href="javascript:block2('<%=nowBlock-1%>')" title="이전" class="pg_prev"><em>이전</em></a>
				<%} for(;pageStart<pageEnd;pageStart++){ %>
					<a id="pagerTagAnchor<%=pageStart%>" href="javascript:pageing('<%=pageStart%>')"><span <%if(nowPage==pageStart){%>class="on"<%} %>><%=pageStart%></span></a>
				<%} if(totalBlock>nowBlock){ %>
					<a id="pagerTagAnchor11" href="javascript:block('<%=nowBlock+1%>')" title="다음" class="pg_next" onclick=""><em>다음</em></a>
				<%}} %>
			<form name="readFrm">
				<input type="hidden" name="totalRecord" value="<%=totalRecord%>">
				<input type="hidden" name="nowPage" value="<%=nowPage%>">
			</form>				</div>
			</div>
		</div>
	</div>
</body></html>