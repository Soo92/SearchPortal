<%@page import="product.ShoppingBean"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="shop_mgr" class="product.ShoppingMgr"/>
<jsp:useBean id="bean" class="product.ShoppingBean"/>
<%
		request.setCharacterEncoding("euc-kr");
		Vector<ShoppingBean> vlist = shop_mgr.getShoppingList();
%>

<!doctype>
<html>
<head>
<meta charset="utf-8">
<title></title>
<link rel="stylesheet" href="../css/admin_style.css" type="text/css">
<script type="text/javascript">
	function proAddCheck() {
		p = document.proAdd_;
		
		/* if(p.Seller.value.length==0){
			alert("판매자 아이디를 입력하세요.");
			p.Seller.focus();
			return;
		}
		if(p.title.value.length==0){
			alert("상품명을 입력하세요.");
			p.title.focus();
			return;
		}
		if(p.price.value.length==0){
			alert("가격을 입력하세요.");
			p.price.focus();
			return;
		}
		if(p.account.value.length==0){
			alert("상세설명을 입력하세요.");
			p.account.focus();
			return;
		}
		if(p.shipAccount.value.length==0){
			alert("배송비를 입력하세요.");
			p.shipAccount.focus();
			return;
		}
		if(p.shipDate.value.length==0){
			alert("배송날짜를 입력하세요.");
			p.shipDate.focus();
			return;
		}
		if(p.maxBuy.value.length==0){
			alert("최대구매수량을 입력하세요.");
			p.maxBuy.focus();
			return;
		}
		if(p.origin.value.length==0){
			alert("원산지를 입력하세요.");
			p.origin.focus();
			return;
		}
		if(p.stock.value.length==0){
			alert("재고수를 입력하세요.");
			p.stock.focus();
			return;
		}
		if(p.option.value.length==0){
			alert("옵션을 입력하세요.");
			p.option.focus();
			return;
		}
		if(p.proAdd.value.length==0){
			alert("추가상품을 입력하세요.");
			p.proAdd.focus();
			return;
		}
		if(p.s_adr.value.length==0){
			alert("판매자 주소를 입력하세요.");
			p.s_adr.focus();
			return;
		} 
		if(p.mainImg.value==0){
			alert(p.mainImg.value);
			alert("메인이미지를 등록하세요.");
			return;
		}
		if(p.listImg.value.length==0){
			alert("리스트 이미지를 등록하세요.");
			p.listImg.focus();
			return;
		}
		if(p.detailImg.value.length==0){
			alert("상세이미지를 등록하세요.");
			p.detailImg.focus();
			return;
		} */
		p.submit();
	}
	
</script>
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
					<div id="subject"><p><span>상품</span> &nbsp;등록 Corner</p></div>
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
							<li><a href="product_new.jsp">중고세상</a></li><li class="ulul" id="aaa">|</li>
							<li class="ulul"><a href="product_used.jsp">술집맛집</a></li><li class="ulul" id="aaa">|</li>
							<li class="ulul"><a href="product_review.jsp">영화나라</a></li><li class="ulul" id="aaa">|</li>
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

	<div id="title_admin">
			<div id="space_box"></div>
			<h2>상품등록</h2>
			<p>중고 &gt; 패션 &gt; 뷰티/네일</p>
	</div>
	<div id="admin_reg">
	<form name="proAdd_" method="post" action="adminProc.jsp" enctype="multipart/form-data">
		 <table width="867" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff; text-indent:10px;">
			<tr>
				<td colspan="6" style="height:80px;">
				<p>판매자 아이디</p>
				<input type="text" name="Seller" value="" placeholder=" 판매자아이디" style="margin-left:10px; float:left;">
				<p style="float:right; margin-top:-15px; margin-right:30px; color:lightgray; font-size:18px;">
				바코드를 이용해주셔서 항상 감사드립니다 :-)
				</p>
				</td>
				
			</tr>
			
			<tr>
				<td colspan="4" style="height:80px;">
					<p>상품명</p>
					<input type="text" id="title" name="title" value="" placeholder=" 상품명" style="width:525px; margin-left:10px;">
				</td>
				
				<td colspan="2" style="height:80px;">
					<p>상품가격</p>
					<input type="text" name="price" value="" placeholder=" 숫자로만 입력하세요." style="width:250px; margin-left:10px;">
					<span style="font-weight:bold; font-size:14px; color:gray; margin-left:-5px;">원</span>
				</td>
			</tr>
						
			<tr>
				<td colspan="6" style="height:80px;">
				<p>상품간략설명</p>
					<input type="text" name="account" value="" placeholder=" 36자 내로 적어주세요." style="width:525px; height:30px;margin-left:10px;">
				</td>
			</tr>
			
			<tr>
				<td width="60" style="background:#efefef"><p>배송비</p></td>
				<td><input type="text" name="shipAccount" value="" placeholder=" 36자 내로 적어주세요."style="width:200px;"></td>
				<td width="60" style="text-align:center; text-indent:0;background:#efefef"><p>배송일</p></td>
					<td>
						<select name="shipDate" style="width:200px;height:30px; font-family: 'Nanum Gothic', son-serif; ">
							<option value="">선택하세요.</option>
							<option value="now">당일배송</option>
							<option value="day">2~3일</option>
							<option value="week">1~2주</option>
							<option value="month">한달이상</option>
						</select>
					</td>
					
				<td rowspan="2" width="100" style="text-align:center; text-indent:0;background:#efefef"><p>최대구매수량</p></td>
				<td rowspan="2"><input type="text" name="maxBuy" value="" placeholder=" 숫자만 적어주세요." style="width:180;"></td>
			</tr>
			
			<tr>
				<td style="background:#efefef"><p>원산지</p></td>
					<td>
						<select name="origin" style="width:200px;height:30px; font-family: 'Nanum Gothic', son-serif; ">
							<option value="">선택하세요.</option>
							<option value="korea">대한민국</option>
							<option value="china">중국</option>
							<option value="japan">일본</option>
							<option value="USA">미국</option>
						</select>
					</td>
				
				<td style="text-align:center; text-indent:0;background:#efefef"><p>재고</p></td>
				<td><input type="text" name="stock" value="" placeholder=" 숫자만 적어주세요."style="width:200px;"></td>
			</tr>
			<tr>
				<td colspan="6" style="height:80px;">
				<p>옵션</p>
					<input type="text" name="opt" value="" placeholder=" 쉼표',' 단위로 저장됩니다. 띄어쓰기를 하시면 입력이 안될 수 도 있습니다." style="width:98%;margin-left:10px;">
				</td>
			</tr>
		
			<tr>
				<td colspan="6" style="height:80px;">
				<p>추가구성</p>
					<input type="text" name="proAdd" value="" placeholder=" 쉼표',' 단위로 저장됩니다. 띄어쓰기를 하시면 입력이 안될 수 도 있습니다."style="width:98%;margin-left:10px;">
				</td>
			</tr>
		
			<tr>
				<td colspan="6" style="height:80px;">
				<p style="float:left;">판매자 주소</p><input type="checkbox" style="display:inline;float:left; margin-left:20px;cursor:pointer">
				<p style="float:left; margin-left:-15px;font-size:12px; font-weight:normal; color:gray">회원정보와 동일</p>
					<input type="text" name="s_adr" value="" placeholder=" 회원정보와 동일하다면 상단의 check box를 클릭하세요 :-)"style="width:98%;">
				</td>
			</tr>
		</table>
		</form>
		<form>
		 <table width="867" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff; text-indent:10px; margin-top:10px;">
			<tr>
				<td style="height:80px;">
				<p>메인이미지</p>
			
			</script>
				<input type="file" multiple id="orgFile" class="upload" name="mainImg" value="11" style="margin-left:20px;" >
				<!-- 파일을 첨부하세요. (작업사이즈 : 400*400 px) -->
				</td>
			</tr>
			
			<tr>
				<td style="height:450px;">
					<div id="main_img">
						<%
		         		int idx = bean.getIndex();
		         		bean = shop_mgr.getShopping(idx);
		         		String Seller=bean.getSeller();
		         		String title=bean.getTitle();
		         		String price=bean.getPrice();
		         		String account=bean.getAccount();
		         		String shipAccount=bean.getShipAccount();
		         		String shipDate=bean.getShipDate();
		         		int maxBuy=bean.getMaxBuy();
		         		String origin=bean.getOrigin();
		         		String stock=bean.getStock();
		         		String option=bean.getOpt();
		         		String proAdd=bean.getProAdd();
		         		String s_adr=bean.getS_adr();
		         		String mainImg=bean.getMainImg();
		         		String listImg=bean.getListImg();
		         		String detailImg=bean.getDetailImg();
						if(bean.getMainImg()==null){ 
						%>
						<p>아직 지정된 이미지가 존재하지 않습니다.</p>
						<%}else{ %>
						<img src="<%=mainImg %>">
						<%} %>
					</div>
				</td>
			</tr>
			</table>
			
			<table width="867" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff; text-indent:10px; margin-top:10px;">
				<tr>
					<td style="height:80px;">
					<p>리스트이미지</p>
					<input type="text" name="listImg" value="" placeholder=" 파일을 첨부하세요. (작업사이즈 : 328*229 px)" style="width:85%;margin-left:10px;">
					<input type="button" value="파일첨부" style="height:30px;">	
					</td>
				</tr>
				
				<tr>
					<td style="height:279px;">
						<div id="list_img">
							<p>아직 지정된 이미지가 존재하지 않습니다.</p>
						</div>
					</td>
				</tr>
			</table>
			
			<table width="867" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff; text-indent:10px; margin-top:10px;">
			<tr>
				<td style="height:80px;">
				<p>상세이미지</p>
				<input type="text" name="detailImg" value="" placeholder=" 파일을 첨부하세요. (작업사이즈 : 1100*auto px)" style="width:85%;margin-left:10px;">
				<input type="button" value="파일첨부" style="height:30px;">	
				</td>
			</tr>
			
			<tr>
				<td style="height:570px">
					<div id="detail_img">
						<p>아직 지정된 이미지가 존재하지 않습니다.</p>
					</div>
				</td>
			</tr>
			</table>
			
			<div id="last_button">
				<input type="button" value="상품등록" style="height:30px;" onclick="proAddCheck()">	
				<input type="button" value="다시작성" style="height:30px;">	
				<input type="button" value="취     소" style="height:30px;">	
			</div>
		</form>
	</div>
	
	
	
	<div id="footerWrap_">
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
	</div>
	
</body>
</html>