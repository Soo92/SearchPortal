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
								<input type="text" name="id" style="width:460px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="아이디" onblur="idCheck(this.form.id.value)">
							</td>
						 </tr>
						 <tr>
							<td height="55px">
								<input type="password" name="pass" style="width:460px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="비밀번호">
							</td>
						 </tr>
						 <tr>
							<td height="55px">
								<input type="password" name="repass" style="width:460px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="비밀번호 재확인" onblur="repassCheck()">
							</td>
						 </tr>
				   </table>
			</div>
			<div id="second">
			<table width="500px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff; position:relative;">
						 <tr>
							<td colspan="9" height="55px;">
							<input type="text" name="name" style="width:460px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="이름">
							</td>
						 </tr>
						 <tr>
							<td colspan="9" height="55px;" align="center">
								<table width="470px" cellpadding="5" cellspacing="0" border="0" align="center" style="border-collapse:collapse; border:none; background:#fff;">
									<tr>
										<td height="35px;" align="center">
										<div id="aa">
											<input type="radio" id="male" name="gender" value="남" checked="checked">
											<label for="male" id="male"></label>
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
						 </tr>
							<td width="55px;" height="55px;" style="width:54px; height:54px; background:#f6f6f6; text-align:center; color:gray; font-size:14px;">
								<p>생일</p>
							</td>
							<td width="139px;" height="55px;">
								<input name="birth" type="text" style="width:120px; height:30px; margin-left:10px; border:0px; font-size:16px;" align="center"
								placeholder="년(4자)">
							</td>
							<td width="142px;" height="55px;" style="text-align:center;">
								<select name="month">
									<option value="00" selected>월</option>
									<option value="01">01월</option>
									<option value="02">02월</option>
									<option value="03">03월</option>
									<option value="04">04월</option>
									<option value="05">05월</option>
									<option value="06">06월</option>
									<option value="07">07월</option>
									<option value="08">08월</option>
									<option value="09">09월</option>
									<option value="10">10월</option>
									<option value="11">11월</option>
									<option value="12">12월</option>
								</select>
							</td>
							<td width="143px;" height="55px;">
							<input name="day" type="text" style="width:120px; height:30px; margin-left:10px; border:0px; font-size:16px;" align="center"
								placeholder="일">
							</td>
						 <tr>
							<td height="55px;"colspan="9">
							<%Vector<MemberBean> vlist = regMgr.getMemberList();%>
							<input name="email" type="text" style="width:460px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center"
							placeholder="본인확인 이메일(선택)" onblur="emailCheck()">
							<%
							for(int i=0; i<vlist.size(); i++){
							MemberBean regBean = vlist.get(i);
							%>
							<a href="SendAccount.jsp?id=<%=regBean.getId()%>">인증</a>
							<%} %>
							</td>
						 </tr>
				   </table>
			</div>
			
			<div id="third">
			<table width="500px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff">
						 <tr>
							<td height="65px">
								<input name="phonenum" type="text" style="width:350px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="휴대폰번호">
								<div id="click" onclick="certification()"><p>인증</p></div>
							</td>
						 </tr>
						 <tr>
							<td height="65px">
								<input name="cert" type="text" style="width:350px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="인증번호">
								<div id="click" onclick="checkcert()"><p>확인</p></div>
							</td>
						 </tr>
				   </table>
			</div>
			<div id="third" style="margin-top:10px;">
			<table width="500px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff">
				 <tr>
					<td height="65px">
						<input name="zipcode" class="postcodify_postcode5" type="text" style="width:350px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="사업장 우편번호">
						<div id="click"><p id="postcodify_search_button">검색</p></div>
					</td>
					
				 </tr>
				 <tr>
					<td height="65px">
						<input name="address" class="postcodify_address" type="text" style="width:460px; height:40px; margin-left:20px; border:0px;
							font-size:16px;" align="center" placeholder="상세주소 ( 예시 : 연산3동 1811-146번지 101호 )">
					</td>
				 </tr>
		   </table>
			</div>
			<div id="join" onclick="inputCheck()">
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
            </form>
         </div>
		</div>
	</div>
</body>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
</html>