<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");
		String url = request.getHeader("Referer");
%>

<!doctype>
<html>
   <meta charset="utf-8">
   <head>
      <title>login</title>
      <link rel="stylesheet" href="../css/login_style.css" type="text/css">
		<script type="text/javascript">
			function loginCheck() {
				if (document.loginFrm.id.value == "") {
					alert("아이디를 입력해 주세요.");
					document.loginFrm.id.focus();
					return;
				}
				if (document.loginFrm.pass.value == "") {
					alert("비밀번호를 입력해 주세요.");
					document.loginFrm.pass.focus();
					return;
				}
				document.loginFrm.submit();
			}
		</script>
   </head>
   <body>
      <div id="wrap">
         <div id="wrap2">
            <a href="../index.jsp"><div id="logo"></div></a>
            
            <div id="login_form">
            
			<form name="loginFrm" method="post" action="loginProc.jsp">
			<!--ID-->
               <table width="500px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff">
                     <tr>
                        <td height="60px">
							<input type="text" name="id" style="width:460px; height:40px; margin-left:20px; border:0px; font-size:16px; background:#f7ffdd;" align="center" placeholder="아이디" value="imleeseongsu">
					</td>
                     </tr>
               </table>
               <br/>
			  
			   <!--PW-->
               <table width="500px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px  lightgray solid; background:#fff">
                     <tr>
                        <td height="60px">
							<input type="password" name="pass" style="width:460px; height:40px; margin-left:20px; border:0px; font-size:16px; background:#f7ffdd;" placeholder="비밀번호" value="asdf">
						   <input type="hidden" name="url" value=<%=url%>>
					</td>
                     </tr>
			   </table>
			   <br/>
			   
			   <!--로그인버튼-->
			 <table width="500px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px #ff4800 solid; background:#ff6d33; text-align:center; color:#fff; cursor:pointer;">
                     <tr>
                        <th height="60px" onclick="loginCheck()">로그인</th>
                     </tr>
               </table>
		   </form>

			 <!--로그인 아랫부분-->
			 <div id="login_keep">
				<input type="checkbox" name="login_keep">
				<p>&nbsp;&nbsp;로그인상태 유지</p>
			</div>
			
			<div id="login_other">
				<ul>
					<li><a href="#">일회용 로그인</a></li>
					<li id="sub" class="ulul">|</li>
					<li class="ulul"><a href="#">IP보안 OFF</a></li>
				</ul>
			 </div>
			  
			 <div id="blank"></div>
			 
			 
			 <!--아이디/비번 찾기, 회원가입-->
			 <div id="other">
				<ul>
					<li><a href="findid.jsp">아이디 찾기</a></li>
					<li id="sub" class="ulul">|</li>
					<li class="ulul"><a href="findpw.jsp">비밀번호 찾기</a></li>
					<li id="sub" class="ulul">|</li>
					<li class="ulul"><a href="join.jsp">회원가입</a></li>
				</ul>
			 </div>
			 
			 <div id="google"></div>
			 
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