<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");
%>

<!doctype>
<html>
<meta charset="utf-8">
<head>
	<title>상품코너</title>
	<link rel="stylesheet" href="../css/product_style.css" type="text/css">
		
</head>
<body>
	<div id="all">
		<div id="header_">
			<div id="header">
				<div id="wrap2">
					<a href="../index.jsp">
					<div id="logo"></div>
					</a>
					
					<a href="product_home.jsp">
					<div id="subject"><p><span>신상ㆍ중고</span> &nbsp;상품 Corner</p></div>
					</a>
					<div id="login">
					<a href="../member/login.jsp">
						<table width="70px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px #b73400 solid; background:background:#ff5b1b; margin-bottom:7px;">
							<tr>
								<td height="30px;"><p>로그인</p></td>
							</tr>
						</table>
						</a>
					</div>
				</div>
			</div>
			
			
			<div id="nav">
				<div id="wrap2">
					<div id="navLeft">
						<ul>
							<li><a href="product_new.jsp">신상품</a></li><li class="ulul" id="aaa">|</li>
							<li class="ulul"><a href="product_used.jsp">중고세상</a></li><li class="ulul" id="aaa">|</li>
							<li class="ulul"><a href="product_review.jsp">솔직리뷰</a></li><li class="ulul" id="aaa">|</li>
							<li class="ulul"><a href="product_best100.jsp">베스트100</a></li><li class="ulul" id="aaa">|</li>
							<li class="ulul"><a href="product_notice.jsp">공지사항</a></li><li class="ulul" id="aaa">|</li>
							<li class="ulul"><a href="product_QnA.jsp">Q&A </a></li>
						</ul>
					</div>
					<div id="navRight">
						<table border="0">
							<tr>
								<td><a href="basket.jsp">장바구니</a></td>
							</tr>
						</table>
					</div>
				</div>
				
			</div>
		</div>
</div>

	<div id="wrap_">
		<div id="wrap2" >
			<div id="search" style="height:300px;">
				
			</div>
		</div>
	</div>



<div id="wrap" style="background:#fff;">
	<div id="wrap2">
		<div id="category" style=" width:780px;">
			<a href="#">
			<div id="category_b"><p>전체보기</p></div>
			</a>
			
			<a href="#">
			<div id="category_b" class="space"><p>사진리뷰 모아보기</p></div>
			</a>
			
			<a href="#">
			<div id="category_b"  class="space"><p>조회순으로 보기</p></div>
			</a>
			
		</div>
	</div>
</div>

<div id="wrap">
	<div id="wrap1">
		<div id="blank"></div>
		
		<!-- for문 반복 시작 -->
		<div id="blank"></div>
				<div id="review_box">
							<table width="160px" cellpadding="5" cellspacing="0" border="1" align="center"
							style="border-collapse:collapse; border:1px lightgray solid; background:#fff;
							margin-left:10px; margin-top:10px;float:left;">
								<tr>
									<td height="160px">
										<!-- image -->
									</td>
								</tr>
							</table>
							
							<table width="500px" cellpadding="5" cellspacing="0" border="1" align="center"
							style="border-collapse:collapse; border:1px lightgray solid; background:#fff;
							margin-left:10px; margin-top:10px; float:left; text-indent:10px;">
								<tr>
									<td height="30px" colspan="2">
										<p style="font-size:14px;"><b>[제목]</b> : 대표 문구리뷰</p>
									</td>
									
									<td height="30px" colspan="2">
										<p style="font-size:14px;">작성자 : <b>리뷰천사 육동주</b></p>
									</td>
								</tr>
								
								<tr>
									<td height="30px">
										<p>별점 ★★★★★</p>
									</td>
									
									<td height="30px">
										<p>판매자 <b>김민정</b>님의 상품</p>
									</td>
									
									<td height="30px">
										<p style="color:gray;">
										조회수 128
										</p> 
									</td>
									
									<td height="30px">
										<p style="color:gray;">
										작성시간 2017.12.04  01:54
										</p> 
									</td>
								</tr>
								
								<tr>
									<td height="100px" colspan="4" align="left" valign="center">
										<p style="font-size:14px;">
										진짜 대박이에요!ㅎㅎㅎ 잘쓰겠습니당!
										</p>
									</td>
								</tr>
								
							</table>
				</div>
				
				<div id="review_box" class="space">
							<table width="160px" cellpadding="5" cellspacing="0" border="1" align="center"
							style="border-collapse:collapse; border:1px lightgray solid; background:#fff;
							margin-left:10px; margin-top:10px;float:left;">
								<tr>
									<td height="160px">
										
									</td>
								</tr>
							</table>
							
							<table width="500px" cellpadding="5" cellspacing="0" border="1" align="center"
							style="border-collapse:collapse; border:1px lightgray solid; background:#fff;
							margin-left:10px; margin-top:10px; float:left; text-indent:10px;">
								<tr>
									<td height="30px" colspan="2">
										<p style="font-size:14px;"><b>[제목]</b> : 대표 문구리뷰</p>
									</td>
									
									<td height="30px" colspan="2">
										<p style="font-size:14px;">작성자 : <b>리뷰릴라 조성수</b></p>
									</td>
								</tr>
								
								<tr>
									<td height="30px">
										<p>별점 ★★☆☆☆</p>
									</td>
									
									<td height="30px">
										<p>판매자 <b>육동주</b>님의 상품</p>
									</td>
										
									<td height="30px">
										<p style="color:gray;">
										조회수 128
										</p> 
									</td>
									
									<td height="30px">
										<p style="color:gray;">
										작성시간 2017.12.04  01:54
										</p> 
									</td>
								</tr>
								
								<tr>
									<td height="100px" colspan="4" align="left" valign="center">
										<p style="font-size:14px;">
										물건이 이게뭔지..배송도 느리고 꽝이네요 아니이게왜안올라감
										</p>
									</td>
								</tr>
								
							</table>
				</div>
				
		<div id="blank"></div>
		<!-- 여기까지 -->
		
				<!-- for문 반복 시작 -->
		<div id="blank"></div>
				<div id="review_box">
							<table width="160px" cellpadding="5" cellspacing="0" border="1" align="center"
							style="border-collapse:collapse; border:1px lightgray solid; background:#fff;
							margin-left:10px; margin-top:10px;float:left;">
								<tr>
									<td height="160px">
										<!-- image -->
									</td>
								</tr>
							</table>
							
							<table width="500px" cellpadding="5" cellspacing="0" border="1" align="center"
							style="border-collapse:collapse; border:1px lightgray solid; background:#fff;
							margin-left:10px; margin-top:10px; float:left; text-indent:10px;">
								<tr>
									<td height="30px" colspan="2">
										<p style="font-size:14px;"><b>[제목]</b> : 대표 문구리뷰</p>
									</td>
									
									<td height="30px" colspan="2">
										<p style="font-size:14px;">작성자 : <b>리뷰천사 육동주</b></p>
									</td>
								</tr>
								
								<tr>
									<td height="30px">
										<p>별점 ★★★★★</p>
									</td>
									
									<td height="30px">
										<p>판매자 <b>김민정</b>님의 상품</p>
									</td>
									
									<td height="30px">
										<p style="color:gray;">
										조회수 128
										</p> 
									</td>
									
									<td height="30px">
										<p style="color:gray;">
										작성시간 2017.12.04  01:54
										</p> 
									</td>
								</tr>
								
								<tr>
									<td height="100px" colspan="4" align="left" valign="center">
										<p style="font-size:14px;">
										진짜 대박이에요!ㅎㅎㅎ 잘쓰겠습니당!
										</p>
									</td>
								</tr>
								
							</table>
				</div>
				
				<div id="review_box" class="space">
							<table width="160px" cellpadding="5" cellspacing="0" border="1" align="center"
							style="border-collapse:collapse; border:1px lightgray solid; background:#fff;
							margin-left:10px; margin-top:10px;float:left;">
								<tr>
									<td height="160px">
										
									</td>
								</tr>
							</table>
							
							<table width="500px" cellpadding="5" cellspacing="0" border="1" align="center"
							style="border-collapse:collapse; border:1px lightgray solid; background:#fff;
							margin-left:10px; margin-top:10px; float:left; text-indent:10px;">
								<tr>
									<td height="30px" colspan="2">
										<p style="font-size:14px;"><b>[제목]</b> : 대표 문구리뷰</p>
									</td>
									
									<td height="30px" colspan="2">
										<p style="font-size:14px;">작성자 : <b>리뷰릴라 조성수</b></p>
									</td>
								</tr>
								
								<tr>
									<td height="30px">
										<p>별점 ★★☆☆☆</p>
									</td>
									
									<td height="30px">
										<p>판매자 <b>육동주</b>님의 상품</p>
									</td>
										
									<td height="30px">
										<p style="color:gray;">
										조회수 128
										</p> 
									</td>
									
									<td height="30px">
										<p style="color:gray;">
										작성시간 2017.12.04  01:54
										</p> 
									</td>
								</tr>
								
								<tr>
									<td height="100px" colspan="4" align="left" valign="center">
										<p style="font-size:14px;">
										물건이 이게뭔지..배송도 느리고 꽝이네요 아니이게왜안올라감
										</p>
									</td>
								</tr>
								
							</table>
				</div>
		<div id="blank"></div>
		<!-- 여기까지 -->
		
				<!-- for문 반복 시작 -->
		<div id="blank"></div>
				<div id="review_box">
							<table width="160px" cellpadding="5" cellspacing="0" border="1" align="center"
							style="border-collapse:collapse; border:1px lightgray solid; background:#fff;
							margin-left:10px; margin-top:10px;float:left;">
								<tr>
									<td height="160px">
										<!-- image -->
									</td>
								</tr>
							</table>
							
							<table width="500px" cellpadding="5" cellspacing="0" border="1" align="center"
							style="border-collapse:collapse; border:1px lightgray solid; background:#fff;
							margin-left:10px; margin-top:10px; float:left; text-indent:10px;">
								<tr>
									<td height="30px" colspan="2">
										<p style="font-size:14px;"><b>[제목]</b> : 대표 문구리뷰</p>
									</td>
									
									<td height="30px" colspan="2">
										<p style="font-size:14px;">작성자 : <b>리뷰천사 육동주</b></p>
									</td>
								</tr>
								
								<tr>
									<td height="30px">
										<p>별점 ★★★★★</p>
									</td>
									
									<td height="30px">
										<p>판매자 <b>김민정</b>님의 상품</p>
									</td>
									
									<td height="30px">
										<p style="color:gray;">
										조회수 128
										</p> 
									</td>
									
									<td height="30px">
										<p style="color:gray;">
										작성시간 2017.12.04  01:54
										</p> 
									</td>
								</tr>
								
								<tr>
									<td height="100px" colspan="4" align="left" valign="center">
										<p style="font-size:14px;">
										진짜 대박이에요!ㅎㅎㅎ 잘쓰겠습니당!
										</p>
									</td>
								</tr>
								
							</table>
				</div>
				
				<div id="review_box" class="space">
							<table width="160px" cellpadding="5" cellspacing="0" border="1" align="center"
							style="border-collapse:collapse; border:1px lightgray solid; background:#fff;
							margin-left:10px; margin-top:10px;float:left;">
								<tr>
									<td height="160px">
										
									</td>
								</tr>
							</table>
							
							<table width="500px" cellpadding="5" cellspacing="0" border="1" align="center"
							style="border-collapse:collapse; border:1px lightgray solid; background:#fff;
							margin-left:10px; margin-top:10px; float:left; text-indent:10px;">
								<tr>
									<td height="30px" colspan="2">
										<p style="font-size:14px;"><b>[제목]</b> : 대표 문구리뷰</p>
									</td>
									
									<td height="30px" colspan="2">
										<p style="font-size:14px;">작성자 : <b>리뷰릴라 조성수</b></p>
									</td>
								</tr>
								
								<tr>
									<td height="30px">
										<p>별점 ★★☆☆☆</p>
									</td>
									
									<td height="30px">
										<p>판매자 <b>육동주</b>님의 상품</p>
									</td>
										
									<td height="30px">
										<p style="color:gray;">
										조회수 128
										</p> 
									</td>
									
									<td height="30px">
										<p style="color:gray;">
										작성시간 2017.12.04  01:54
										</p> 
									</td>
								</tr>
								
								<tr>
									<td height="100px" colspan="4" align="left" valign="center">
										<p style="font-size:14px;">
										물건이 이게뭔지..배송도 느리고 꽝이네요 아니이게왜안올라감
										</p>
									</td>
								</tr>
								
							</table>
				</div>
		<div id="blank"></div>
		<!-- 여기까지 -->
		
		<div id="blank"></div>
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