<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="mgr" class="member.MemberMgr"/>
<%
		request.setCharacterEncoding("euc-kr");
		String id = (String)session.getAttribute("idKey");	
		String name = mgr.getMember(id).getName();
%>
<%
		request.setCharacterEncoding("euc-kr");
%>

<!doctype>
<html>
<meta charset="utf-8">
<head>
	<title>바코드</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>

	<div id="wrap">
		<div id="header">
			<div id="start">
				<a href="#"><p>바코드를 시작페이지로&nbsp;&nbsp;<span>></span></p></a>
			</div>
			<div id="logo"></div>
			<div id="search">
			<input type="text" style="width:420px; height:40px; margin:5px 0px 0px 20px; border:0px; font-size:16px;" align="center"
								placeholder="검색해보세용!">
				
				<div id="search_button"><img src="img/search_icon.png"></div>
				<div id="place"><img src="img/place_icon.png"></div>
			</div>
			<a href="map/MapPr.jsp">
			<div id="map"><img src="img/map_icon.png"></div>
			</a>
		</div>
	</div>
	
	<div id="nav">
		<ul>
			<li><a href="product/product_home.jsp">신상ㆍ중고 쇼핑</a></li>
			<li class="ulul"><a href="reserve/reserve_home.jsp">술집ㆍ맛집 예약</a></li>
			<li class="ulul"><a href="movie/movie_home.jsp">영화 추천</a></li>			
			<li class="ulul"><a href="custom/custom_home.jsp">고객센터</a></li>			
		</ul>
	</div>
	
	<div id="wrap2">
		<div id="wrap">
			<!--좌측영역-->
			<div id="section">
				<div  id="google" class="section_option">
				
				</div>
				<div id="notice" class="section_option">
				
				
				</div>
				
				<table width="737px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff; margin-bottom:7px;">
					<tr>
						<td height="250px;"></td>
						<td height="250px;"></td>
						<td height="250px;"></td>
					</tr>
				</table>
				
				<table width="737" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff">
						<tr>
							<td height="105px"></td>
							<td height="105px"></td>
							<td height="105px"></td>
							<td height="105px"></td>
							<td height="105px"></td>
							<td height="105px"></td>
							<td height="105px"></td>
						</tr>
						<tr>
							<td height="105px"></td>
							<td height="105px"></td>
							<td height="105px"></td>
							<td height="105px"></td>
							<td height="105px"></td>
							<td height="105px"></td>
							<td height="105px"></td>
						</tr>
						<tr>
							<td height="105px"></td>
							<td height="105px"></td>
							<td height="105px"></td>
							<td height="105px"></td>
							<td height="105px"></td>
							<td height="105px"></td>
							<td height="105px"></td>
						</tr>
						<tr>
						
						</tr>
					</table>
					
					<div  id="google" class="section_option" style="margin-top:7px;">
				
					</div>
			</div>
			<!--우측영역-->
			<div id="section2">
				<div id="login" class="section_option">
					<div id="login_box">
<%if(id == null || id.equals("")){%>
						<table width="223px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff">
							<tr>
								<td height="35px">
									<input type="text" style="width:200px; height:20px; margin-left:5px; border:0px; font-size:12px; background:#f7ffdd;" align="center" placeholder="아이디">
								</td>
							</tr>
							<tr>
								<td height="35px">
									<input type="password" style="width:200px; height:20px; margin-left:5px; border:0px; font-size:12px; background:#f7ffdd;" align="center" placeholder="비밀번호">
								</td>
							</tr>
						</table>
<%}else{%>
						<%=name%>님
<%}%>
					</div>
					
					<div id="login_button"> <p>로그인</p> </div>
					
					<div id="login_other2">
						<ul>
						<li class="ulul2">
						<input type="checkbox">&nbsp;로그인상태 유지
						</li>
						<li style="margin-left:5px;"><a href="member/join.jsp">회원가입</a></li>
						<li class="ulul2">
						<a href="member/findid.jsp">아이디</a>
						/
						<a href="member/findpw.jsp">비밀번호 찾기</a>
						</li>
					</div>
				</div>
				<div id="shopping" class="section_option">
				
				</div>
				
					<table width="337px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff">
						<tr>
							<td height="157px"></td>
						</tr>
						<tr>
							<td height="158px"></td>
						</tr>
					</table>
					
					<div id="Bottom" class="section_option" style="margin-top:7px;">
				
				</div>
				
			</div>
			
			<div class="blank"></div>
		</div>
		
	</div>
	<div id="footer_">
		<div id="footerWrap">
			<p class="a_">공지사항</p>
			<p class="a__">서비스 전체보기</p>
		</div>
	</div>
	<div id="footer">
		<p class="Extra">Creators</p>
		
		<ul>
			<li>크리에이터</li><li class="aaa">|</li>
			<li>스몰비즈니스</li>
		</ul>
		
		<p class="Extra">Partners</p>
		<ul>
			<li>이성수</li><li class="aaa">|</li>
			<li>김민정</li><li class="aaa">|</li>
			<li>박준영</li><li class="aaa">|</li>
			<li>육동주</li><li class="aaa">|</li>
			<li>조성수</li>
		</ul>
		
		<p class="Extra">Developers</p>
		<ul>
			<li>바코드 개발센터</li><li class="aaa">|</li>
			<li>오픈API</li><li class="aaa">|</li>
			<li>오픈소스</li><li class="aaa">|</li>
			<li>바코드 D2</li><li class="aaa">|</li>
			<li>바코드 랩스</li>
		</ul>
		
		<div id="ul_except">
			<ul>
				<li style="padding:0;">회사소개</li><li class="aaa">|</li>
				<li>인재채용</li><li class="aaa">|</li>
				<li>제휴제안</li><li class="aaa">|</li>
				<li>이용약관</li><li class="aaa">|</li>
				<li>개인정보처리방침</li><li class="aaa">|</li>
				<li>청소년보호정책</li><li class="aaa">|</li>
				<li>바코드정책</li><li class="aaa">|</li>
				<li>고객센터</li><li class="aaa">|</li>
				<li>ⓒBarcode Crop.</li>
			</ul>
		</div>
	</div>
	
</body>
</html>