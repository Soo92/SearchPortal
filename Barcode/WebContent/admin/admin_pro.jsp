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
			alert("�Ǹ��� ���̵� �Է��ϼ���.");
			p.Seller.focus();
			return;
		}
		if(p.title.value.length==0){
			alert("��ǰ���� �Է��ϼ���.");
			p.title.focus();
			return;
		}
		if(p.price.value.length==0){
			alert("������ �Է��ϼ���.");
			p.price.focus();
			return;
		}
		if(p.account.value.length==0){
			alert("�󼼼����� �Է��ϼ���.");
			p.account.focus();
			return;
		}
		if(p.shipAccount.value.length==0){
			alert("��ۺ� �Է��ϼ���.");
			p.shipAccount.focus();
			return;
		}
		if(p.shipDate.value.length==0){
			alert("��۳�¥�� �Է��ϼ���.");
			p.shipDate.focus();
			return;
		}
		if(p.maxBuy.value.length==0){
			alert("�ִ뱸�ż����� �Է��ϼ���.");
			p.maxBuy.focus();
			return;
		}
		if(p.origin.value.length==0){
			alert("�������� �Է��ϼ���.");
			p.origin.focus();
			return;
		}
		if(p.stock.value.length==0){
			alert("������ �Է��ϼ���.");
			p.stock.focus();
			return;
		}
		if(p.option.value.length==0){
			alert("�ɼ��� �Է��ϼ���.");
			p.option.focus();
			return;
		}
		if(p.proAdd.value.length==0){
			alert("�߰���ǰ�� �Է��ϼ���.");
			p.proAdd.focus();
			return;
		}
		if(p.s_adr.value.length==0){
			alert("�Ǹ��� �ּҸ� �Է��ϼ���.");
			p.s_adr.focus();
			return;
		} 
		if(p.mainImg.value==0){
			alert(p.mainImg.value);
			alert("�����̹����� ����ϼ���.");
			return;
		}
		if(p.listImg.value.length==0){
			alert("����Ʈ �̹����� ����ϼ���.");
			p.listImg.focus();
			return;
		}
		if(p.detailImg.value.length==0){
			alert("���̹����� ����ϼ���.");
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
					<div id="subject"><p><span>��ǰ</span> &nbsp;��� Corner</p></div>
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
							<li><a href="product_new.jsp">�߰���</a></li><li class="ulul" id="aaa">|</li>
							<li class="ulul"><a href="product_used.jsp">��������</a></li><li class="ulul" id="aaa">|</li>
							<li class="ulul"><a href="product_review.jsp">��ȭ����</a></li><li class="ulul" id="aaa">|</li>
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

	<div id="title_admin">
			<div id="space_box"></div>
			<h2>��ǰ���</h2>
			<p>�߰� &gt; �м� &gt; ��Ƽ/����</p>
	</div>
	<div id="admin_reg">
	<form name="proAdd_" method="post" action="adminProc.jsp" enctype="multipart/form-data">
		 <table width="867" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff; text-indent:10px;">
			<tr>
				<td colspan="6" style="height:80px;">
				<p>�Ǹ��� ���̵�</p>
				<input type="text" name="Seller" value="" placeholder=" �Ǹ��ھ��̵�" style="margin-left:10px; float:left;">
				<p style="float:right; margin-top:-15px; margin-right:30px; color:lightgray; font-size:18px;">
				���ڵ带 �̿����ּż� �׻� ����帳�ϴ� :-)
				</p>
				</td>
				
			</tr>
			
			<tr>
				<td colspan="4" style="height:80px;">
					<p>��ǰ��</p>
					<input type="text" id="title" name="title" value="" placeholder=" ��ǰ��" style="width:525px; margin-left:10px;">
				</td>
				
				<td colspan="2" style="height:80px;">
					<p>��ǰ����</p>
					<input type="text" name="price" value="" placeholder=" ���ڷθ� �Է��ϼ���." style="width:250px; margin-left:10px;">
					<span style="font-weight:bold; font-size:14px; color:gray; margin-left:-5px;">��</span>
				</td>
			</tr>
						
			<tr>
				<td colspan="6" style="height:80px;">
				<p>��ǰ��������</p>
					<input type="text" name="account" value="" placeholder=" 36�� ���� �����ּ���." style="width:525px; height:30px;margin-left:10px;">
				</td>
			</tr>
			
			<tr>
				<td width="60" style="background:#efefef"><p>��ۺ�</p></td>
				<td><input type="text" name="shipAccount" value="" placeholder=" 36�� ���� �����ּ���."style="width:200px;"></td>
				<td width="60" style="text-align:center; text-indent:0;background:#efefef"><p>�����</p></td>
					<td>
						<select name="shipDate" style="width:200px;height:30px; font-family: 'Nanum Gothic', son-serif; ">
							<option value="">�����ϼ���.</option>
							<option value="now">���Ϲ��</option>
							<option value="day">2~3��</option>
							<option value="week">1~2��</option>
							<option value="month">�Ѵ��̻�</option>
						</select>
					</td>
					
				<td rowspan="2" width="100" style="text-align:center; text-indent:0;background:#efefef"><p>�ִ뱸�ż���</p></td>
				<td rowspan="2"><input type="text" name="maxBuy" value="" placeholder=" ���ڸ� �����ּ���." style="width:180;"></td>
			</tr>
			
			<tr>
				<td style="background:#efefef"><p>������</p></td>
					<td>
						<select name="origin" style="width:200px;height:30px; font-family: 'Nanum Gothic', son-serif; ">
							<option value="">�����ϼ���.</option>
							<option value="korea">���ѹα�</option>
							<option value="china">�߱�</option>
							<option value="japan">�Ϻ�</option>
							<option value="USA">�̱�</option>
						</select>
					</td>
				
				<td style="text-align:center; text-indent:0;background:#efefef"><p>���</p></td>
				<td><input type="text" name="stock" value="" placeholder=" ���ڸ� �����ּ���."style="width:200px;"></td>
			</tr>
			<tr>
				<td colspan="6" style="height:80px;">
				<p>�ɼ�</p>
					<input type="text" name="opt" value="" placeholder=" ��ǥ',' ������ ����˴ϴ�. ���⸦ �Ͻø� �Է��� �ȵ� �� �� �ֽ��ϴ�." style="width:98%;margin-left:10px;">
				</td>
			</tr>
		
			<tr>
				<td colspan="6" style="height:80px;">
				<p>�߰�����</p>
					<input type="text" name="proAdd" value="" placeholder=" ��ǥ',' ������ ����˴ϴ�. ���⸦ �Ͻø� �Է��� �ȵ� �� �� �ֽ��ϴ�."style="width:98%;margin-left:10px;">
				</td>
			</tr>
		
			<tr>
				<td colspan="6" style="height:80px;">
				<p style="float:left;">�Ǹ��� �ּ�</p><input type="checkbox" style="display:inline;float:left; margin-left:20px;cursor:pointer">
				<p style="float:left; margin-left:-15px;font-size:12px; font-weight:normal; color:gray">ȸ�������� ����</p>
					<input type="text" name="s_adr" value="" placeholder=" ȸ�������� �����ϴٸ� ����� check box�� Ŭ���ϼ��� :-)"style="width:98%;">
				</td>
			</tr>
		</table>
		</form>
		<form>
		 <table width="867" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff; text-indent:10px; margin-top:10px;">
			<tr>
				<td style="height:80px;">
				<p>�����̹���</p>
			
			</script>
				<input type="file" multiple id="orgFile" class="upload" name="mainImg" value="11" style="margin-left:20px;" >
				<!-- ������ ÷���ϼ���. (�۾������� : 400*400 px) -->
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
						<p>���� ������ �̹����� �������� �ʽ��ϴ�.</p>
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
					<p>����Ʈ�̹���</p>
					<input type="text" name="listImg" value="" placeholder=" ������ ÷���ϼ���. (�۾������� : 328*229 px)" style="width:85%;margin-left:10px;">
					<input type="button" value="����÷��" style="height:30px;">	
					</td>
				</tr>
				
				<tr>
					<td style="height:279px;">
						<div id="list_img">
							<p>���� ������ �̹����� �������� �ʽ��ϴ�.</p>
						</div>
					</td>
				</tr>
			</table>
			
			<table width="867" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff; text-indent:10px; margin-top:10px;">
			<tr>
				<td style="height:80px;">
				<p>���̹���</p>
				<input type="text" name="detailImg" value="" placeholder=" ������ ÷���ϼ���. (�۾������� : 1100*auto px)" style="width:85%;margin-left:10px;">
				<input type="button" value="����÷��" style="height:30px;">	
				</td>
			</tr>
			
			<tr>
				<td style="height:570px">
					<div id="detail_img">
						<p>���� ������ �̹����� �������� �ʽ��ϴ�.</p>
					</div>
				</td>
			</tr>
			</table>
			
			<div id="last_button">
				<input type="button" value="��ǰ���" style="height:30px;" onclick="proAddCheck()">	
				<input type="button" value="�ٽ��ۼ�" style="height:30px;">	
				<input type="button" value="��     ��" style="height:30px;">	
			</div>
		</form>
	</div>
	
	
	
	<div id="footerWrap_">
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
	</div>
	
</body>
</html>