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
	<script src="http://code.jquery.com/jquery-1.7.0.min.js"></script>
	
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
					<a href="../login.jsp">
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
						<ul>
							<li><a href="basket.jsp">장바구니</a></li><li class="ulul" id="aaa">|</li>
							<li class="ulul"><a href="#">찜하기</a></li>
						</ul>
					</div>
				</div>
				
			</div>
		</div>
		
</div>

	<div id="wrap_">
		<div id="wrap2" >
			<div id="search">
				<div id="search_box">
				<input type="text" style="width:420px; height:30px; margin:5px 0px 0px 10px; border:0px; font-size:16px;" align="center"
								placeholder="검색해보세용!">
					<div id="search_button">
						<img src="../img/search_icon.png" width="45px" height="45px">
					</div>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="../js/follower.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
				var speed = 500; //스크롤속도
				$(".gotop").css("cursor","pointer").click(function(){
					$('body','html').animate({scrollTop:0},speed);
				});
			});
	</script>
	<script type="text/javascript">
		$(document).ready(function(){
			$('#float').scrollFollower({
				pageAlign:'center',
				pageWidth:1000,
				type:'right',
				topMargin:520,
				minTop:100,
				margin:80,
				speed:500,
				easing:'swing',
				zindex:10
			});
		});
	</script>
	
	<div id="float">
		<div id="view_product">
			<p>최근 본 상품</p>
			<a href="#">
			<div id="view_product_link"></div>
			</a>
			<a href="#">
			<div id="view_product_link" class="top_space"></div>
			</a>
			
			<div id="button" class="top_space">
				<table width="40" cellpadding="5" cellspacing="0" border="1" align="center"
							style="border-collapse:collapse; border:1px lightgray solid; background:#fff;
							valign:center; margin-top:10px;">
					<tr>
						<td height="20px">
							<a href="#">
								<p><</p>
							</a>
						</td>
						<td height="20px">
							<a href="#">
								<p>></p>
							</a>
						</td>
					</tr>
				</table>
			</div>			
		</div>
		
		<div id="recom_pro">
			<p>추천 상품</p>
			<a href="#">
			<div id="view_product_link"></div>
			</a>

		</div>
		
		<div id="google">
			<p>광고 상품</p>
			<a href="#">
			<div id="view_product_link"></div>
			</a>

		</div>
		
		<div id="top" onclick="scrolling()">
			<p> ▲ Top</p>
		</div>
		
		<script type="text/javascript">
			function scrolling(){
				$('html, body').stop().animate({scrollTop:'0'}, 700);
			}
		</script>
		
	</div>

<div id="wrap" style="background:#fff;">
	<div id="wrap2">
		<div id="category" style="width:515px;">
			<a href="#">
			<div id="category_b"><p>신상 Best 100</p></div>
			</a>
			
			<a href="#">
			<div id="category_b" class="space"><p>중고 Best 100</p></div>
			</a>
			
		</div>
	</div>
</div>

<div id="wrap">
	<div id="wrap2">
		<div id="blank"></div>
		
					<!-- for문을 돌린다면 여기서 부터 하면 될듯 -->
		<div id="blank"></div>
		
			<div id="real_product">
				<div id="click_me">
						<a href="#">
							<div class="click_me"><p>click!</p></div>
						</a>
				</div>
						<table width="330" cellpadding="5" cellspacing="0" border="1" align="center"
							style="border-collapse:collapse; border:1px lightgray solid; background:#fff;
							margin-left:10px; margin-top:10px;">
							<tr>
								<td height="230px;"> </td>
							</tr>
							<tr>
								<td height="100px;" >
									<p>&nbsp;&nbsp;상품 : <b>[완전쩌는 신상품]</b> 클릭!</p>
									<p>&nbsp;&nbsp;가격 : <b>30,000</b> 원</p>
									<p>&nbsp;&nbsp;판매 : <b>내가바로판매왕</b> 님</p>
								</td>
							</tr>
						</table>
			</div>
			
			<div id="real_product" class="_space">
						<div id="click_me">
						<a href="#">
							<div class="click_me"><p>click!</p></div>
						</a>
				</div>
						<table width="330" cellpadding="5" cellspacing="0" border="1" align="center"
							style="border-collapse:collapse; border:1px lightgray solid; background:#fff;
							margin-left:10px; margin-top:10px;">
							<tr>
								<td height="230px;"> </td>
							</tr>
							<tr>
								<td height="100px;" >
									<p>&nbsp;&nbsp;상품 : <b>[완전쩌는 신상품]</b> 클릭!</p>
									<p>&nbsp;&nbsp;가격 : <b>30,000</b> 원</p>
									<p>&nbsp;&nbsp;판매 : <b>내가바로판매왕</b> 님</p>
								</td>
							</tr>
						</table>
			</div>
			
			<div id="real_product" class="_space">
					<div id="click_me">
						<a href="#">
							<div class="click_me"><p>click!</p></div>
						</a>
				</div>
						<table width="330" cellpadding="5" cellspacing="0" border="1" align="center"
							style="border-collapse:collapse; border:1px lightgray solid; background:#fff;
							margin-left:10px; margin-top:10px;">
							<tr>
								<td height="230px;"> </td>
							</tr>
							<tr>
								<td height="100px;" >
									<p>&nbsp;&nbsp;상품 : <b>[완전쩌는 신상품]</b> 클릭!</p>
									<p>&nbsp;&nbsp;가격 : <b>30,000</b> 원</p>
									<p>&nbsp;&nbsp;판매 : <b>내가바로판매왕</b> 님</p>
								</td>
							</tr>
						</table>
			</div>
			
			<div id="blank"></div>
			<!-- 여기까지 -->
			
						<!-- for문을 돌린다면 여기서 부터 하면 될듯 -->
		<div id="blank"></div>
		
			<div id="real_product">
				<div id="click_me">
						<a href="#">
							<div class="click_me"><p>click!</p></div>
						</a>
				</div>
						<table width="330" cellpadding="5" cellspacing="0" border="1" align="center"
							style="border-collapse:collapse; border:1px lightgray solid; background:#fff;
							margin-left:10px; margin-top:10px;">
							<tr>
								<td height="230px;"> </td>
							</tr>
							<tr>
								<td height="100px;" >
									<p>&nbsp;&nbsp;상품 : <b>[완전쩌는 신상품]</b> 클릭!</p>
									<p>&nbsp;&nbsp;가격 : <b>30,000</b> 원</p>
									<p>&nbsp;&nbsp;판매 : <b>내가바로판매왕</b> 님</p>
								</td>
							</tr>
						</table>
			</div>
			
			<div id="real_product" class="_space">
						<div id="click_me">
						<a href="#">
							<div class="click_me"><p>click!</p></div>
						</a>
				</div>
						<table width="330" cellpadding="5" cellspacing="0" border="1" align="center"
							style="border-collapse:collapse; border:1px lightgray solid; background:#fff;
							margin-left:10px; margin-top:10px;">
							<tr>
								<td height="230px;"> </td>
							</tr>
							<tr>
								<td height="100px;" >
									<p>&nbsp;&nbsp;상품 : <b>[완전쩌는 신상품]</b> 클릭!</p>
									<p>&nbsp;&nbsp;가격 : <b>30,000</b> 원</p>
									<p>&nbsp;&nbsp;판매 : <b>내가바로판매왕</b> 님</p>
								</td>
							</tr>
						</table>
			</div>
			
			<div id="real_product" class="_space">
					<div id="click_me">
						<a href="#">
							<div class="click_me"><p>click!</p></div>
						</a>
				</div>
						<table width="330" cellpadding="5" cellspacing="0" border="1" align="center"
							style="border-collapse:collapse; border:1px lightgray solid; background:#fff;
							margin-left:10px; margin-top:10px;">
							<tr>
								<td height="230px;"> </td>
							</tr>
							<tr>
								<td height="100px;" >
									<p>&nbsp;&nbsp;상품 : <b>[완전쩌는 신상품]</b> 클릭!</p>
									<p>&nbsp;&nbsp;가격 : <b>30,000</b> 원</p>
									<p>&nbsp;&nbsp;판매 : <b>내가바로판매왕</b> 님</p>
								</td>
							</tr>
						</table>
			</div>
			
			<div id="blank"></div>
			<!-- 여기까지 -->
			
						<!-- for문을 돌린다면 여기서 부터 하면 될듯 -->
		<div id="blank"></div>
		
			<div id="real_product">
				<div id="click_me">
						<a href="#">
							<div class="click_me"><p>click!</p></div>
						</a>
				</div>
						<table width="330" cellpadding="5" cellspacing="0" border="1" align="center"
							style="border-collapse:collapse; border:1px lightgray solid; background:#fff;
							margin-left:10px; margin-top:10px;">
							<tr>
								<td height="230px;"> </td>
							</tr>
							<tr>
								<td height="100px;" >
									<p>&nbsp;&nbsp;상품 : <b>[완전쩌는 신상품]</b> 클릭!</p>
									<p>&nbsp;&nbsp;가격 : <b>30,000</b> 원</p>
									<p>&nbsp;&nbsp;판매 : <b>내가바로판매왕</b> 님</p>
								</td>
							</tr>
						</table>
			</div>
			
			<div id="real_product" class="_space">
						<div id="click_me">
						<a href="#">
							<div class="click_me"><p>click!</p></div>
						</a>
				</div>
						<table width="330" cellpadding="5" cellspacing="0" border="1" align="center"
							style="border-collapse:collapse; border:1px lightgray solid; background:#fff;
							margin-left:10px; margin-top:10px;">
							<tr>
								<td height="230px;"> </td>
							</tr>
							<tr>
								<td height="100px;" >
									<p>&nbsp;&nbsp;상품 : <b>[완전쩌는 신상품]</b> 클릭!</p>
									<p>&nbsp;&nbsp;가격 : <b>30,000</b> 원</p>
									<p>&nbsp;&nbsp;판매 : <b>내가바로판매왕</b> 님</p>
								</td>
							</tr>
						</table>
			</div>
			
			<div id="real_product" class="_space">
					<div id="click_me">
						<a href="#">
							<div class="click_me"><p>click!</p></div>
						</a>
				</div>
						<table width="330" cellpadding="5" cellspacing="0" border="1" align="center"
							style="border-collapse:collapse; border:1px lightgray solid; background:#fff;
							margin-left:10px; margin-top:10px;">
							<tr>
								<td height="230px;"> </td>
							</tr>
							<tr>
								<td height="100px;" >
									<p>&nbsp;&nbsp;상품 : <b>[완전쩌는 신상품]</b> 클릭!</p>
									<p>&nbsp;&nbsp;가격 : <b>30,000</b> 원</p>
									<p>&nbsp;&nbsp;판매 : <b>내가바로판매왕</b> 님</p>
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