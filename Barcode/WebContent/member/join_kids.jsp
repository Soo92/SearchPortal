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
</head>
<body>
	<div id="wrap">
         <div id="wrap2">
            <a href="../index.jsp"><div id="logo"></div></a>
			
			<div id="first">
				 <table width="500px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff">
						 <tr>
							<td height="55px">
								<input type="text" style="width:460px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="아이디">
							</td>
						 </tr>
						 <tr>
							<td height="55px">
								<input type="password" style="width:460px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="비밀번호">
							</td>
						 </tr>
						 <tr>
							<td height="55px">
								<input type="password" style="width:460px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="비밀번호 재확인">
							</td>
						 </tr>
				   </table>
			</div>
			
		<div id="second">
			<table width="500px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff; position:relative;">
						 <tr>
							<td colspan="9" height="55px;">
							<input type="text" style="width:460px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="이름">
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
							
						 </tr>
							<td width="55px;" height="55px;" style="width:54px; height:54px; background:#f6f6f6; text-align:center; color:gray; font-size:14px;">
								<p>생일</p>
							</td>
							<td width="139px;" height="55px;">
								<input type="text" style="width:120px; height:30px; margin-left:10px; border:0px; font-size:16px;" align="center"
								placeholder="년(4자)">
							</td>
							<td width="142px;" height="55px;" style="text-align:center;">
								<select name="month">
									<option value="월" selected>월</option>
									<option>01월</option>
									<option>02월</option>
									<option>03월</option>
									<option>04월</option>
									<option>05월</option>
									<option>06월</option>
									<option>07월</option>
									<option>08월</option>
									<option>09월</option>
									<option>10월</option>
									<option>11월</option>
									<option>12월</option>
								</select>
							</td>
							<td width="143px;" height="55px;">
							<input type="text" style="width:120px; height:30px; margin-left:10px; border:0px; font-size:16px;" align="center"
								placeholder="일">
							</td>
							
						 <tr>
							<td height="55px;"colspan="9">
							<input type="text" style="width:460px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center"
							placeholder="본인확인 이메일(선택)">
							</td>
						 </tr>
						 
				   </table>
			</div>
			
			<div id="third">
			<table width="500px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff">
						 <tr>
							<td height="65px">
								<input type="text" style="width:350px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="휴대폰번호">
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
			
			<div id="third" style="margin-top:10px;">
			<table width="500px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff">
						 <tr>
							<td height="65px">
								<input type="text" style="width:350px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="우편번호">
								<div id="click"><p>검색</p></div>
							</td>
							
						 </tr>
						 <tr>
							<td height="65px">
								<input type="text" style="width:460px; height:40px; margin-left:20px; border:0px;
									font-size:16px;" align="center" placeholder="상세주소 ( 예시 : 연산3동 1811-146번지 101호 )">
							</td>
						 </tr>
				   </table>
			</div>
			
			<div id="fourth">
				<table width="500px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff; position:relative;">
						 <tr>
							<td colspan="9" height="55px;">
							<input type="text" style="width:460px; height:40px; margin-left:20px; border:0px; font-size:16px;" align="center" placeholder="보호자 이름">
							</td>
						 </tr>
							<td width="55px;" height="55px;" style="width:54px; height:54px; background:#f6f6f6; text-align:center; color:gray; font-size:14px;">
								<p>보호자<br/>생일</p>
							</td>
							<td width="139px;" height="55px;">
								<input type="text" style="width:120px; height:30px; margin-left:10px; border:0px; font-size:16px;" align="center"
								placeholder="년(4자)">
							</td>
							<td width="142px;" height="55px;" style="text-align:center;">
								<select name="month">
									<option value="월" selected>월</option>
									<option>01월</option>
									<option>02월</option>
									<option>03월</option>
									<option>04월</option>
									<option>05월</option>
									<option>06월</option>
									<option>07월</option>
									<option>08월</option>
									<option>09월</option>
									<option>10월</option>
									<option>11월</option>
									<option>12월</option>
								</select>
							</td>
							<td width="142px;" height="55px;">
							<input type="text" style="width:120px; height:30px; margin-left:10px; border:0px; font-size:16px;" align="center"
								placeholder="일">
							</td>
						 
				   </table>
			</div>
			
			<div id="join">
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
			
		</div>
	</div>
</body>
</html>
