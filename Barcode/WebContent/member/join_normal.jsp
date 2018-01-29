<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.util.*, member.*"%>
<jsp:useBean id="regMgr" class="member.MemberMgr" />
<%request.setCharacterEncoding("euc-kr");%>
<!doctype>
<html>
<meta charset="utf-8">
<head>
<link rel="stylesheet" href="../css/login_style.css" type="text/css">
<link rel="stylesheet" href="../css/join_normal_style.css" type="text/css">
<script type="text/javascript" src="../js/join.js"></script>
<script type="text/javascript">
	function idCheck(id) {
		frm = document.regFrm;
		if (id == "") {
			alert("���̵� �Է��� �ּ���.");
			document.regFrm.id.style.backgroundColor='yellow';
			return;
		}
		url = "idCheck.jsp?id=" + id;
		window.open(url, "IDCheck", "width=300,height=150");
	}
	function repassCheck(){
		if(document.regFrm.pass.value!=document.regFrm.repass.value){
			document.regFrm.repass.style.backgroundColor='red';
			document.regFrm.pass.style.backgroundColor='white';
			return;
		}else{
			document.regFrm.repass.style.backgroundColor='yellow';
			document.regFrm.pass.style.backgroundColor='yellow';
			return;
		}
	}
	function emailCheck(){
	    var str=document.regFrm.email.value;	   
	    var atPos = str.indexOf('@');
	    var atLastPos = str.lastIndexOf('@');
	    var dotPos = str.indexOf('.'); 
	    var spacePos = str.indexOf(' ');
	    var commaPos = str.indexOf(',');
	    var eMailSize = str.length;
	    if (atPos > 1 && atPos == atLastPos && 
		   dotPos > 3 && spacePos == -1 && commaPos == -1 
		   && atPos + 1 < dotPos && dotPos + 1 < eMailSize){
	    	document.regFrm.email.style.backgroundColor='yellow';
    	}
	    else {
	    	document.regFrm.email.style.backgroundColor='red';
			return;
	    }
	}
	function certification() {
		alert("�켱 1111");
	}
	function checkcert() {
		if(document.regFrm.cert.value=="1111")
			alert("����!");
	}
	
	function zipCheck() {
		url = "zipCheck.jsp?check=y";
		window
				.open(url, "ZipCodeSearch",
						"width=500,height=300,scrollbars=yes");
	}
</script>
</head>
<body>
	<div id="wrap">
         <div id="wrap2" >
         <form name="regFrm" method="post" action="memberProc.jsp">
		<input name="seller" type="hidden" value="normal">
            <a href="../index.jsp"><div id="logo"></div></a>
			<div id="first">
				 <table width="500px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff">
						 <tr>
							<td height="55px">
								<input type="text" name="id" style="width:460px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="���̵�" onblur="idCheck(this.form.id.value)">
							</td>
						 </tr>
						 <tr>
							<td height="55px">
								<input type="password" name="pass" style="width:460px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="��й�ȣ">
							</td>
						 </tr>
						 <tr>
							<td height="55px">
								<input type="password" name="repass" style="width:460px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="��й�ȣ ��Ȯ��" onblur="repassCheck()">
							</td>
						 </tr>
				   </table>
			</div>
			<div id="second">
			<table width="500px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff; position:relative;">
						 <tr>
							<td colspan="9" height="55px;">
							<input type="text" name="name" style="width:460px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="�̸�">
							</td>
						 </tr>
						 <tr>
							<td colspan="9" height="55px;" align="center">
								<table width="470px" cellpadding="5" cellspacing="0" border="0" align="center" style="border-collapse:collapse; border:none; background:#fff;">
									<tr>
										<td height="35px;" align="center">
										<div id="aa">
											<input type="radio" id="male" name="gender" value="��" checked="checked">
											<label for="male" id="male"></label>
										</div>
										</td>
										<td height="35px;" align="center">
										<div id="bb">
											<input type="radio" id="female" name="gender" value="��">
											<label for="female" id="female"></label>
										</div>
										</td>
									</tr>
								</table>
							</td>
						 </tr>
						 <tr>
						 </tr>
							<td width="55px;" height="55px;" style="width:54px; height:54px; background:#f6f6f6; text-align:center; color:gray; font-size:14px;">
								<p>����</p>
							</td>
							<td width="139px;" height="55px;">
								<input name="birth" type="text" style="width:120px; height:30px; margin-left:10px; border:0px; font-size:16px;" align="center"
								placeholder="��(4��)">
							</td>
							<td width="142px;" height="55px;" style="text-align:center;">
								<select name="month">
									<option value="00" selected>��</option>
									<option value="01">01��</option>
									<option value="02">02��</option>
									<option value="03">03��</option>
									<option value="04">04��</option>
									<option value="05">05��</option>
									<option value="06">06��</option>
									<option value="07">07��</option>
									<option value="08">08��</option>
									<option value="09">09��</option>
									<option value="10">10��</option>
									<option value="11">11��</option>
									<option value="12">12��</option>
								</select>
							</td>
							<td width="143px;" height="55px;">
							<input name="day" type="text" style="width:120px; height:30px; margin-left:10px; border:0px; font-size:16px;" align="center"
								placeholder="��">
							</td>
						 <tr>
							<td height="55px;"colspan="9">
							<%Vector<MemberBean> vlist = regMgr.getMemberList();%>
							<input name="email" type="text" style="width:460px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center"
							placeholder="����Ȯ�� �̸���(����)" onblur="emailCheck()">
							<%
							for(int i=0; i<vlist.size(); i++){
							MemberBean regBean = vlist.get(i);
							%>
							<a href="SendAccount.jsp?id=<%=regBean.getId()%>">����</a>
							<%} %>
							</td>
						 </tr>
				   </table>
			</div>
			
			<div id="third">
			<table width="500px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff">
						 <tr>
							<td height="65px">
								<input name="phonenum" type="text" style="width:350px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="�޴�����ȣ">
								<div id="click" onclick="certification()"><p>����</p></div>
							</td>
						 </tr>
						 <tr>
							<td height="65px">
								<input name="cert" type="text" style="width:350px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="������ȣ">
								<div id="click" onclick="checkcert()"><p>Ȯ��</p></div>
							</td>
						 </tr>
				   </table>
			</div>
			<div id="third" style="margin-top:10px;">
			<table width="500px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff">
				 <tr>
					<td height="65px">
						<input name="zipcode" class="postcodify_postcode5" type="text" style="width:350px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="����� �����ȣ">
						<div id="click"><p id="postcodify_search_button">�˻�</p></div>
					</td>
					
				 </tr>
				 <tr>
					<td height="65px">
						<input name="address" class="postcodify_address" type="text" style="width:460px; height:40px; margin-left:20px; border:0px;
							font-size:16px;" align="center" placeholder="���ּ� ( ���� : ����3�� 1811-146���� 101ȣ )">
					</td>
				 </tr>
		   </table>
			</div>
			<div id="join" onclick="inputCheck()">
    	        <p> �����ϱ� </p>
            </div>
			<div id="copyright">
				<ul>
					<li><a href="#">�̿���</a></li>
					<li id="sub" class="ulul2">|</li>
					<li class="ulul2"><a href="#">��������ó����ħ</a></li>
					<li id="sub" class="ulul2">|</li>
					<li class="ulul2"><a href="#">å���� �Ѱ�� ��������</a></li>
					<li id="sub" class="ulul2">|</li>
					<li class="ulul2"><a href="#">ȸ������ ������</a></li>
				</ul>
			</div>
            </form>
         </div>
		</div>
	</div>
</body>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
</html>