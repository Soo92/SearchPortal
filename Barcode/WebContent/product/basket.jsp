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
<title>��ٱ���</title>
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
					<div id="subject"><p><span>�Ż���߰�</span> &nbsp;��ǰ Corner</p></div>
					</a>
					<div id="login">
					<a href="../member/login.jsp">
						<table width="70px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px #b73400 solid; background:background:#ff5b1b; margin-bottom:7px;">
							<tr>
								<td height="30px;"><p>�α���</p></td>
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
							<li><a href="product_new.jsp">�Ż�ǰ</a></li><li class="ulul" id="aaa">|</li>
							<li class="ulul"><a href="product_used.jsp">�߰���</a></li><li class="ulul" id="aaa">|</li>
							<li class="ulul"><a href="product_review.jsp">��������</a></li><li class="ulul" id="aaa">|</li>
							<li class="ulul"><a href="product_best100.jsp">����Ʈ100</a></li><li class="ulul" id="aaa">|</li>
							<li class="ulul"><a href="product_notice.jsp">��������</a></li><li class="ulul" id="aaa">|</li>
							<li class="ulul"><a href="product_QnA.jsp">Q&A </a></li>
						</ul>
					</div>
					<div id="navRight">
						<table border="0">
							<tr>
								<td><a href="basket.jsp">��ٱ���</a></td>
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
								placeholder="�˻��غ�����!">
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
			
			<!-- for�� Strat *****��ٱ��� ��ǰ ���� ��� -->
			<div id="basket">
					<div id="basket_">
							<table width="1080px" height="180px" cellpadding="5" cellspacing="0" border="1" align="center"
							style="border-collapse:collapse; border:1px lightgray solid; background:#fff;
							margin-left:10px; margin-top:10px;float:left;  text-indent:0; text-align:center; font-size:14px;">
								<tr>
									<th colspan="2" height="36px">��ǰ/�ɼ�����</th>
									<th height="36px" width="100px">����</th>
									<th height="36px">��ǰ�ݾ�</th>
									<th height="36px">���αݾ�</th>
									<th height="36px">��������ݾ�</th>
									<th height="36px">��ۺ�</th>
									<th height="36px">�ֹ�</th>
								</tr>
								<tr>
									<td rowspan="4" height="36px" width="150px">�̹���</td>
									<td  height="46px" style="text-indent:20; text-align:left;border:none;font-size:16px;">
									<b>[ȸ���]</b> ��ǰ�̸�</td>
									<td rowspan="2" height="36px">
									<select style="width:56px;">
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
									</select>
									</td>
									<td rowspan="4" height="36px">24,000��</td>
									<td rowspan="4" height="36px">24,000��</td>
									<td rowspan="4" height="36px">24,000��</td>
									<td rowspan="4" height="36px">24,000��</td>
									<td rowspan="2" height="36px">
										<button class="order_button">�ֹ��ϱ�</button>
									</td>
								</tr>
								<tr>
									<td height="26px" style="text-indent:20; text-align:left;border:none;">
									�ɼ� : �丮�� ��Ŀ_��(��Ʈ���� ����)</td>
								</tr>
								
								<tr>
									<td height="26px" style="text-indent:20; text-align:left;border:none;">�߰���ǰ : ö���ٸ� + 45,000��</td>
									<td rowspan="2" height="36px">
										<button class="delete_button">����</button>
									</td>
									<td rowspan="2" height="36px">
										<button class="delete_button">�����ϱ�</button>
									</td>
								</tr>
								
								<tr>
									<td height="46px" style="text-indent:20; text-align:left;border:none;">
									<button class="order_button">�ɼǺ���/�߰�</button>
									</td>
								</tr>
							</table>
							
					</div>
				</div>
				

				<div id="blank"></div>
			<!-- for�� End -->
			
			<!-- for�� Strat *****��ٱ��� ��ǰ ���� ��� -->
			<div id="basket">
					<div id="basket_">
							<table width="1080px" height="180px" cellpadding="5" cellspacing="0" border="1" align="center"
							style="border-collapse:collapse; border:1px lightgray solid; background:#fff;
							margin-left:10px; margin-top:10px;float:left;  text-indent:0; text-align:center; font-size:14px;">
								<tr>
									<th colspan="2" height="36px" width="500px">��ǰ/�ɼ�����</th>
									<th height="36px" width="100px">����</th>
									<th height="36px" width="84px">��ǰ�ݾ�</th>
									<th height="36px" width="84px">���αݾ�</th>
									<th height="36px" width="100px">��������ݾ�</th>
									<th height="36px" width="84px">��ۺ�</th>
									<th height="36px" width="128px">�ֹ�</th>
								</tr>
								<tr>
									<td colspan="8" height="145px" width="150px">
										<h3>��ٱ��Ͽ� ��� ��ǰ�� �����ϴ�.</h3>
										<br/>
										<p><a href="../member/login.jsp">
										<span style="color:#ff4800; font-weight:bold;">�α���</span></a>�� �Ͻø�
										��ٱ��� ������ǰ�� Ȯ���Ͻ� �� �ֽ��ϴ�.(�ִ� 12����)</p>
										<p>������ <b>�α׾ƿ�</b> �����Դϴ�.</p>
									</td>
								</tr>
							</table>
							
					</div>
				</div>
				

				<div id="blank"></div>
			<!-- for�� End -->
			
			
		<div id="blank"></div>
	</div>
	<div id="footer_">
		<div id="footerWrap">
			<p class="a_">��������</p>
			<p class="a__">���� ��ü����</p>
		</div>
	</div>
	

	<div id="footer">
		<p class="Extra">Creators</p>
		
		<ul>
			<li>ũ��������</li><li class="aaa">|</li>
			<li>��������Ͻ�</li>
		</ul>
		
		<p class="Extra">Partners</p>
		<ul>
			<li>�̼���</li><li class="aaa">|</li>
			<li>�����</li><li class="aaa">|</li>
			<li>���ؿ�</li><li class="aaa">|</li>
			<li>������</li><li class="aaa">|</li>
			<li>������</li>
		</ul>
		
		<p class="Extra">Developers</p>
		<ul>
			<li>���ڵ� ���߼���</li><li class="aaa">|</li>
			<li>����API</li><li class="aaa">|</li>
			<li>���¼ҽ�</li><li class="aaa">|</li>
			<li>���ڵ� D2</li><li class="aaa">|</li>
			<li>���ڵ� ����</li>
		</ul>
		
		<div id="ul_except">
			<ul>
				<li style="padding:0;">ȸ��Ұ�</li><li class="aaa">|</li>
				<li>����ä��</li><li class="aaa">|</li>
				<li>��������</li><li class="aaa">|</li>
				<li>�̿���</li><li class="aaa">|</li>
				<li>��������ó����ħ</li><li class="aaa">|</li>
				<li>û�ҳ⺸ȣ��å</li><li class="aaa">|</li>
				<li>���ڵ���å</li><li class="aaa">|</li>
				<li>������</li><li class="aaa">|</li>
				<li>��Barcode Crop.</li>
			</ul>
		</div>
	</div>

</body>
</html>