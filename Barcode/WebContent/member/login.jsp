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
							<input type="text" name="id" style="width:460px; height:40px; margin-left:20px; border:0px; font-size:16px; background:#f7ffdd;" align="center" placeholder="���̵�" value="imleeseongsu">
					</td>
                     </tr>
               </table>
               <br/>
			  
			   <!--PW-->
               <table width="500px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px  lightgray solid; background:#fff">
                     <tr>
                        <td height="60px">
							<input type="password" name="pass" style="width:460px; height:40px; margin-left:20px; border:0px; font-size:16px; background:#f7ffdd;" placeholder="��й�ȣ" value="asdf">
						   <input type="hidden" name="url" value=<%=url%>>
					</td>
                     </tr>
			   </table>
			   <br/>
			   
			   <!--�α��ι�ư-->
			 <table width="500px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px #ff4800 solid; background:#ff6d33; text-align:center; color:#fff; cursor:pointer;">
                     <tr>
                        <th height="60px" onclick="loginCheck()">�α���</th>
                     </tr>
               </table>
		   </form>

			 <!--�α��� �Ʒ��κ�-->
			 <div id="login_keep">
				<input type="checkbox" name="login_keep">
				<p>&nbsp;&nbsp;�α��λ��� ����</p>
			</div>
			
			<div id="login_other">
				<ul>
					<li><a href="#">��ȸ�� �α���</a></li>
					<li id="sub" class="ulul">|</li>
					<li class="ulul"><a href="#">IP���� OFF</a></li>
				</ul>
			 </div>
			  
			 <div id="blank"></div>
			 
			 
			 <!--���̵�/��� ã��, ȸ������-->
			 <div id="other">
				<ul>
					<li><a href="findid.jsp">���̵� ã��</a></li>
					<li id="sub" class="ulul">|</li>
					<li class="ulul"><a href="findpw.jsp">��й�ȣ ã��</a></li>
					<li id="sub" class="ulul">|</li>
					<li class="ulul"><a href="join.jsp">ȸ������</a></li>
				</ul>
			 </div>
			 
			 <div id="google"></div>
			 
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