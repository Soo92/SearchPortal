<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");
%>

<!doctype>
<html>
<meta charset="utf-8">
<head>
	<title></title>
	<link rel="stylesheet" href="../css/login_style.css" type="text/css">
	<link rel="stylesheet" href="../css/join_normal_style.css" type="text/css">
	
	<style>
	#bb{margin-left:-1px;}
		 #aa input[type="radio"]:not(old){
			width:0px;
			opacity :0;
		}
		
		 #aa input[type="radio"]:not(old) + label{
			display:inline-block;
			background:url('../img/alone_off.png') no-repeat;
			width:236px;
			height:36px;
			margin-top:-10px;
		}
		
		 #aa input[type="radio"]:not(old):checked+label{
			display:inline-block;
			background:url('../img/alone_on.png') no-repeat;
			width:236px;
			height:36px;
			
		}
		
		#bb{margin-left:10px;}
		
		 #bb input[type="radio"]:not(old){
			width:0px;
			opacity :0;
		}
		
		 #bb input[type="radio"]:not(old) + label{
			display:inline-block;
			background:url('../img/corporate_off.png') no-repeat;
			width:236px;
			height:36px;
			margin-top:-10px;
		}
		
		 #bb input[type="radio"]:not(old):checked+label{
			display:inline-block;
			background:url('../img/corporate_on.png') no-repeat;
			width:236px;
			height:36px;
			
		}
	</style>
</head>
<body>
	<div id="wrap">
         <div id="wrap2">
            <a href="../index.jsp"><div id="logo"></div></a>
			
			<div id="first">
				 <table width="500px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff">
						 <tr>
							<td height="55px">
								<input type="text" style="width:460px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="���̵�">
							</td>
						 </tr>
						 <tr>
							<td height="55px">
								<input type="password" style="width:460px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="��й�ȣ">
							</td>
						 </tr>
						 <tr>
							<td height="55px">
								<input type="password" style="width:460px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="��й�ȣ ��Ȯ��">
							</td>
						 </tr>
				   </table>
			</div>
			
			<div id="second_">
			<table width="500px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff; position:relative;">
						 <tr>
							<td colspan="9" height="55px;">
							<input type="text" style="width:460px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="��ǥ�ڸ�">
							</td>
						 </tr>
						 <tr>
							<td colspan="9" height="55px;">
							<input type="text" style="width:460px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="����ڸ�">
							</td>
						 </tr>
						 <tr>
							<td colspan="9" height="55px;">
							<input type="text" style="width:460px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="����ڵ�Ϲ�ȣ">
							</td>
						 </tr>
						 
						  <tr>
							<td colspan="9" height="55px;" align="center">
								<table width="470px" cellpadding="5" cellspacing="0" border="0" align="center" style="border-collapse:collapse; border:none; background:#fff;">
									<tr>
										<td height="35px;" align="center">
										<div id="aa">
											<input type="radio" id="male" class="male"name="gender">
											<label for="male" id="male" class="male"></label>
										</div>
										</td>
										
										<td height="35px;" align="center">
										<div id="bb">
											<input type="radio" id="female" name="gender">
											<label for="female" id="female"></label>
										</div>
										</td>
									</tr>
								</table>
							</td>
						 </tr>
						 
							
						 <tr>
							<td height="55px;"colspan="9">
							<input type="text" style="width:460px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center"
							placeholder="����Ȯ�� �̸���(����)">
							</td>
						 </tr>
						 
				   </table>
			</div>
			
				
			<div id="third" style="margin-top:-15px;">
			<table width="500px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff">
						 <tr>
							<td height="65px">
								<input type="text" style="width:350px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="����� �����ȣ">
								<div id="click"><p>�˻�</p></div>
							</td>
							
						 </tr>
						 <tr>
							<td height="65px">
								<input type="text" style="width:460px; height:40px; margin-left:20px; border:0px;
									font-size:16px;" align="center" placeholder="���ּ� ( ���� : ����3�� 1811-146���� 101ȣ )">
							</td>
						 </tr>
				   </table>
			</div>
			
			<div style="margin-top:35px;">
			<table width="500px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff; margin-top:-25px;">
						 <tr>
							<td height="65px">
								<input type="text" style="width:350px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="��ǥ�ڹ�ȣ">
								<div id="click"><p>����</p></div>
							</td>
							
						 </tr>
						 <tr>
							<td height="65px">
								<input type="text" style="width:350px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="������ȣ">
								<div id="click"><p>Ȯ��</p></div>
							</td>
						 </tr>
				   </table>
			</div>
			
			<div id="join">
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
            
         </div>
			
		</div>
	</div>
</body>
</html>