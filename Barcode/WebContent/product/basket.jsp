<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="mgr" class="member.MemberMgr"/>
<jsp:useBean id="mgr_shop" class="member.ShoppingMgr"/>
<jsp:useBean id="bean" class="member.ShoppingBean"/>
<%
		request.setCharacterEncoding("euc-kr");

%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script src="http://code.jquery.com/jquery-1.7.0.min.js"></script>
<link rel="stylesheet" href="../css/product_style.css" type="text/css">
<title>장바구니</title>
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
	
	<div id="all">
		<div id="wrap2" style="margin-bottom:20px;">
			<img src="../img/basket.jpg">
		</div>
	</div>
	
	<div id="wrap">
		<div id="blank"></div>
			
			<!-- for문 Strat *****장바구니 상품 있을 경우 -->
			<div id="basket">
					<div id="basket_">
							<table width="1080px" height="180px" cellpadding="5" cellspacing="0" border="1" align="center"
							style="border-collapse:collapse; border:1px lightgray solid; background:#fff;
							margin-left:10px; margin-top:10px;float:left;  text-indent:0; text-align:center; font-size:14px;">
								<tr>
									<th colspan="2" height="36px">상품/옵션정보</th>
									<th height="36px" width="100px">수량</th>
									<th height="36px">상품금액</th>
									<th height="36px">할인금액</th>
									<th height="36px">할인적용금액</th>
									<th height="36px">배송비</th>
									<th height="36px">주문</th>
								</tr>
								<tr>
									<td rowspan="4" height="36px" width="150px">이미지</td>
									<td  height="46px" style="text-indent:20; text-align:left;border:none;font-size:16px;">
									<b>[회사명]</b> 상품이름</td>
									<td rowspan="2" height="36px">
									<select style="width:56px;">
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
									</select>
									</td>
									<td rowspan="4" height="36px">24,000원</td>
									<td rowspan="4" height="36px">24,000원</td>
									<td rowspan="4" height="36px">24,000원</td>
									<td rowspan="4" height="36px">24,000원</td>
									<td rowspan="2" height="36px">
										<button class="order_button">주문하기</button>
									</td>
								</tr>
								<tr>
									<td height="26px" style="text-indent:20; text-align:left;border:none;">
									옵션 : 토리노 벙커_블랙(메트리스 제외)</td>
								</tr>
								
								<tr>
									<td height="26px" style="text-indent:20; text-align:left;border:none;">추가상품 : 철재사다리 + 45,000원</td>
									<td rowspan="2" height="36px">
										<button class="delete_button">변경</button>
									</td>
									<td rowspan="2" height="36px">
										<button class="delete_button">삭제하기</button>
									</td>
								</tr>
								
								<tr>
									<td height="46px" style="text-indent:20; text-align:left;border:none;">
									<button class="order_button">옵션변경/추가</button>
									</td>
								</tr>
							</table>
							
					</div>
				</div>
				

				<div id="blank"></div>
			<!-- for문 End -->
			
			<!-- for문 Strat *****장바구니 상품 없을 경우 -->
			<div id="basket">
					<div id="basket_">
							<table width="1080px" height="180px" cellpadding="5" cellspacing="0" border="1" align="center"
							style="border-collapse:collapse; border:1px lightgray solid; background:#fff;
							margin-left:10px; margin-top:10px;float:left;  text-indent:0; text-align:center; font-size:14px;">
								<tr>
									<th colspan="2" height="36px" width="500px">상품/옵션정보</th>
									<th height="36px" width="100px">수량</th>
									<th height="36px" width="84px">상품금액</th>
									<th height="36px" width="84px">할인금액</th>
									<th height="36px" width="100px">할인적용금액</th>
									<th height="36px" width="84px">배송비</th>
									<th height="36px" width="128px">주문</th>
								</tr>
								<tr>
									<td colspan="8" height="145px" width="150px">
										<h3>장바구니에 담긴 상품이 없습니다.</h3>
										<br/>
										<p><a href="../member/login.jsp">
										<span style="color:#ff4800; font-weight:bold;">로그인</span></a>을 하시면
										장바구니 보관상품을 확인하실 수 있습니다.(최대 12개월)</p>
										<p>고객님은 <b>로그아웃</b> 상태입니다.</p>
									</td>
								</tr>
							</table>
							
					</div>
				</div>
				

				<div id="blank"></div>
			<!-- for문 End -->
			
			
		<div id="blank"></div>
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