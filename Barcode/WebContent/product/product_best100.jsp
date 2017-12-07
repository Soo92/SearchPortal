<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");
%>

<!doctype>
<html>
<meta charset="utf-8">
<head>
	<title>��ǰ�ڳ�</title>
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
					<div id="subject"><p><span>�Ż���߰�</span> &nbsp;��ǰ Corner</p></div>
					</a>
					<div id="login">
					<a href="../login.jsp">
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
						<ul>
							<li><a href="basket.jsp">��ٱ���</a></li><li class="ulul" id="aaa">|</li>
							<li class="ulul"><a href="#">���ϱ�</a></li>
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
								placeholder="�˻��غ�����!">
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
				var speed = 500; //��ũ�Ѽӵ�
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
			<p>�ֱ� �� ��ǰ</p>
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
			<p>��õ ��ǰ</p>
			<a href="#">
			<div id="view_product_link"></div>
			</a>

		</div>
		
		<div id="google">
			<p>���� ��ǰ</p>
			<a href="#">
			<div id="view_product_link"></div>
			</a>

		</div>
		
		<div id="top" onclick="scrolling()">
			<p> �� Top</p>
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
			<div id="category_b"><p>�Ż� Best 100</p></div>
			</a>
			
			<a href="#">
			<div id="category_b" class="space"><p>�߰� Best 100</p></div>
			</a>
			
		</div>
	</div>
</div>

<div id="wrap">
	<div id="wrap2">
		<div id="blank"></div>
		
					<!-- for���� �����ٸ� ���⼭ ���� �ϸ� �ɵ� -->
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
									<p>&nbsp;&nbsp;��ǰ : <b>[����¼�� �Ż�ǰ]</b> Ŭ��!</p>
									<p>&nbsp;&nbsp;���� : <b>30,000</b> ��</p>
									<p>&nbsp;&nbsp;�Ǹ� : <b>�����ٷ��Ǹſ�</b> ��</p>
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
									<p>&nbsp;&nbsp;��ǰ : <b>[����¼�� �Ż�ǰ]</b> Ŭ��!</p>
									<p>&nbsp;&nbsp;���� : <b>30,000</b> ��</p>
									<p>&nbsp;&nbsp;�Ǹ� : <b>�����ٷ��Ǹſ�</b> ��</p>
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
									<p>&nbsp;&nbsp;��ǰ : <b>[����¼�� �Ż�ǰ]</b> Ŭ��!</p>
									<p>&nbsp;&nbsp;���� : <b>30,000</b> ��</p>
									<p>&nbsp;&nbsp;�Ǹ� : <b>�����ٷ��Ǹſ�</b> ��</p>
								</td>
							</tr>
						</table>
			</div>
			
			<div id="blank"></div>
			<!-- ������� -->
			
						<!-- for���� �����ٸ� ���⼭ ���� �ϸ� �ɵ� -->
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
									<p>&nbsp;&nbsp;��ǰ : <b>[����¼�� �Ż�ǰ]</b> Ŭ��!</p>
									<p>&nbsp;&nbsp;���� : <b>30,000</b> ��</p>
									<p>&nbsp;&nbsp;�Ǹ� : <b>�����ٷ��Ǹſ�</b> ��</p>
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
									<p>&nbsp;&nbsp;��ǰ : <b>[����¼�� �Ż�ǰ]</b> Ŭ��!</p>
									<p>&nbsp;&nbsp;���� : <b>30,000</b> ��</p>
									<p>&nbsp;&nbsp;�Ǹ� : <b>�����ٷ��Ǹſ�</b> ��</p>
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
									<p>&nbsp;&nbsp;��ǰ : <b>[����¼�� �Ż�ǰ]</b> Ŭ��!</p>
									<p>&nbsp;&nbsp;���� : <b>30,000</b> ��</p>
									<p>&nbsp;&nbsp;�Ǹ� : <b>�����ٷ��Ǹſ�</b> ��</p>
								</td>
							</tr>
						</table>
			</div>
			
			<div id="blank"></div>
			<!-- ������� -->
			
						<!-- for���� �����ٸ� ���⼭ ���� �ϸ� �ɵ� -->
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
									<p>&nbsp;&nbsp;��ǰ : <b>[����¼�� �Ż�ǰ]</b> Ŭ��!</p>
									<p>&nbsp;&nbsp;���� : <b>30,000</b> ��</p>
									<p>&nbsp;&nbsp;�Ǹ� : <b>�����ٷ��Ǹſ�</b> ��</p>
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
									<p>&nbsp;&nbsp;��ǰ : <b>[����¼�� �Ż�ǰ]</b> Ŭ��!</p>
									<p>&nbsp;&nbsp;���� : <b>30,000</b> ��</p>
									<p>&nbsp;&nbsp;�Ǹ� : <b>�����ٷ��Ǹſ�</b> ��</p>
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
									<p>&nbsp;&nbsp;��ǰ : <b>[����¼�� �Ż�ǰ]</b> Ŭ��!</p>
									<p>&nbsp;&nbsp;���� : <b>30,000</b> ��</p>
									<p>&nbsp;&nbsp;�Ǹ� : <b>�����ٷ��Ǹſ�</b> ��</p>
								</td>
							</tr>
						</table>
			</div>
			
			<div id="blank"></div>
			<!-- ������� -->
		
		<div id="blank"></div>
	</div>
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