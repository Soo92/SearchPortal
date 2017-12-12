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
	<title>���ڵ�</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
	<script>
	function loginCheck() {
		if (document.loginFrm.id.value == "") {
			alert("���̵� �Է��� �ּ���.");
			document.loginFrm.id.focus();
			return;
		}
		if (document.loginFrm.pass.value == "") {
			alert("��й�ȣ�� �Է��� �ּ���.");
			document.loginFrm.pass.focus();
			return;
		}
		document.loginFrm.submit();
	}

	function bookmarksite(title,url) { 
	   // Internet Explorer
	   if(document.all)
	   {
	       window.external.AddFavorite(url, title); 
	   }
	   // Google Chrome
	   else if(window.chrome){
	      alert("Ctrl+DŰ�� �����ø� ���ã�⿡ �߰��Ͻ� �� �ֽ��ϴ�.");
	   }
	   // Firefox
	   else if (window.sidebar) // firefox 
	   {
	       window.sidebar.addPanel(title, url, ""); 
	   }
	   // Opera
	   else if(window.opera && window.print)
	   { // opera 
	      var elem = document.createElement('a'); 
	      elem.setAttribute('href',url); 
	      elem.setAttribute('title',title); 
	      elem.setAttribute('rel','sidebar'); 
	      elem.click(); 
	   }
	} 
</script>
	
</head>
<body>
	<div id="wrap" float="left">
		<div id="header">
			<div id="start">
				<a href="./custom/start_page.jsp"><span><p>������������ ����</p></span></a>
			</div>
			<div id="bookmark">
				<a href="javascript:bookmarksite('Ÿ��Ʋ', 'http://localhost/Barcode/index.jsp')"><span><p>���ã�� �߰��ϱ�</p></span></a>
			</div>
			<div id="logo"><img src="./img/movie/logo_ci.png" width=100% height=100% alt="���ڵ�"></div>
			<div id="search">
			<input type="text" style="width:420px; height:40px; margin:5px 0px 0px 20px; border:0px; font-size:16px;" align="center"
								placeholder="�˻��غ�����!">
				
				<div id="search_button"><img src="img/search_icon.png" onclick="location.href='./search/search.html'"></div>
				<div id="place"><img src="img/place_icon.png"></div>
			</div>
			<a href="map/MapPr.jsp">
			<div id="map"><img src="img/map_icon.png"></div>
			</a>
		</div>
	</div>
	
	<div id="nav">
		<ul>
			<li><a href="product/product_home.jsp">�Ż���߰� ����</a></li>
			<li class="ulul"><a href="reserve/reserve_home.jsp">���������� ����</a></li>
			<li class="ulul"><a href="movie/movie_home.jsp">��ȭ ��õ</a></li>			
			<li class="ulul"><a href="custom/custom_home.jsp">������</a></li>			
		</ul>
	</div>
	
	<div id="wrap2">
		<div id="wrap">
			<!--��������-->
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
			<!--��������-->
			<form name="loginFrm" method="post" action="./member/loginProc.jsp?url=index.jsp">
			<div id="section2">
				<div id="login" class="section_option">
					<div id="login_box">
<%if(id == null || id.equals("")){%>
						<table width="223px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff">
							<tr>
								<td height="35px">
									<input type="text" name="id" style="width:200px; height:20px; margin-left:5px; border:0px; font-size:12px; background:#f7ffdd;" align="center" placeholder="���̵�">
								</td>
							</tr>
							<tr>
								<td height="35px">
									<input type="password" name="pass" style="width:200px; height:20px; margin-left:5px; border:0px; font-size:12px; background:#f7ffdd;" align="center" placeholder="��й�ȣ">
								</td>
							</tr>
						</table>
<%}else{%>
						<%=name%>��
						<a href="./member/logout.jsp">�α׾ƿ�</a>
<%}%>
					</div>
					
					<div id="login_button" onclick="loginCheck()"><p>�α���</p></div>
					
					<div id="login_other2">
						<ul>
						<li class="ulul2">
						<input type="checkbox">&nbsp;�α��λ��� ����
						</li>
						<li style="margin-left:5px;"><a href="member/join.jsp">ȸ������</a></li>
						<li class="ulul2">
						<a href="member/findid.jsp">���̵�</a>
						<a href="member/findpw.jsp">��й�ȣ ã��</a>
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
			</form>			
			<div class="blank"></div>
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