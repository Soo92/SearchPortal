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
	<script type="text/javascript" src="../js/join.js"></script>
	<script type="text/javascript">
		function idCheck(id) {
			frm = document.regFrm;
			if (id == "") {
				alert("아이디를 입력해 주세요.");
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
			alert("우선 1111");
		}
		function checkcert() {
			if(document.regFrm.cert.value=="1111")
				alert("성공!");
		}
		
		function zipCheck() {
			url = "zipCheck.jsp?check=y";
			window
					.open(url, "ZipCodeSearch",
							"width=500,height=300,scrollbars=yes");
		}
	</script>
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
    <form name="regFrm" method="post" action="memberProc.jsp">
		<input name="seller" type="hidden" value="seller">
         <div id="wrap2">
            <a href="../index.jsp"><div id="logo"></div></a>
			
			<div id="first">
				 <table width="500px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff">
						 <tr>
							<td height="55px">
								<input name="id" type="text" style="width:460px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="아이디">
							</td>
						 </tr>
						 <tr>
							<td height="55px">
								<input name="pass" type="password" style="width:460px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="비밀번호">
							</td>
						 </tr>
						 <tr>
							<td height="55px">
								<input name="repass" type="password" style="width:460px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="비밀번호 재확인">
							</td>
						 </tr>
				   </table>
			</div>
			
			<div id="second_">
			<table width="500px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff; position:relative;">
						 <tr>
							<td colspan="9" height="55px;">
							<input name="name" type="text" style="width:460px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="대표자명">
							</td>
						 </tr>
						 <tr>
							<td colspan="9" height="55px;">
							<input type="text" style="width:460px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="사업자명">
							</td>
						 </tr>
						 <tr>
							<td colspan="9" height="55px;">
							<input name="birth" type="text" style="width:460px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="사업자등록번호">
							</td>
						 </tr>
						 
						  <tr>
							<td colspan="9" height="55px;" align="center">
								<table width="470px" cellpadding="5" cellspacing="0" border="0" align="center" style="border-collapse:collapse; border:none; background:#fff;">
									<tr>
										<td height="35px;" align="center">
										<div id="aa">
											<input type="radio" id="male" class="male" name="gender" value="남">
											<label for="male" id="male" class="male"></label>
										</div>
										</td>
										
										<td height="35px;" align="center">
										<div id="bb">
											<input type="radio" id="female" name="gender" value="여">
											<label for="female" id="female"></label>
										</div>
										</td>
									</tr>
								</table>
							</td>
						 </tr>
						 
							
						 <tr>
							<td height="55px;"colspan="9">
							<input name="email" type="text" style="width:460px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center"
							placeholder="본인확인 이메일(선택)">
							</td>
						 </tr>
						 
				   </table>
			</div>
			
				
			<div id="third" style="margin-top:-15px;">
			<table width="500px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff">
						 <tr>
							<td height="65px">
								<input name="zipcode" type="text" style="width:350px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="사업장 우편번호">
								<div id="click"><p>검색</p></div>
							</td>
							
						 </tr>
						 <tr>
							<td height="65px">
								<input name="address" type="text" style="width:460px; height:40px; margin-left:20px; border:0px;
									font-size:16px;" align="center" placeholder="상세주소 ( 예시 : 연산3동 1811-146번지 101호 )">
							</td>
						 </tr>
				   </table>
			</div>
			
			<div style="margin-top:35px;">
			<table width="500px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff; margin-top:-25px;">
						 <tr>
							<td height="65px">
								<input name="phonenum" type="text" style="width:350px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="대표자번호">
								<div id="click"><p>인증</p></div>
							</td>
							
						 </tr>
						 <tr>
							<td height="65px">
								<input type="text" style="width:350px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="인증번호">
								<div id="click"><p>확인</p></div>
							</td>
						 </tr>
				   </table>
			</div>
			
			<div id="join" onclick="inputCheck1()">
                    <p> 가입하기 </p>
               </div>
			 <div id="copyright">
				 <ul>
						<li><a href="#">이용약관</a></li>
						<li id="sub" class="ulul2">|</li>
						<li class="ulul2"><a href="#">개인정보처리방침</a></li>
						<li id="sub" class="ulul2">|</li>
						<li class="ulul2"><a href="#">책임의 한계와 법적고지</a></li>
						<li id="sub" class="ulul2">|</li>
						<li class="ulul2"><a href="#">회원정보 고객센터</a></li>
					</ul>
			 </div>
            
         </div>
	</form>			
		</div>
	</div>
</body>
</html>