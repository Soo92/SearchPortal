<%@ page contentType="text/html;charset=EUC-KR"%>
<%
	String mode = request.getParameter("mode");
	String msg = "";
	String url = "login.jsp";
	if (mode.equals("0")) {
		msg = "아이디 및 비밀번호를 다시 확인하시기 바랍니다.";
	} else if (mode.equals("1")) {
		msg = "아이디는 맞지만 비밀번호는 다시 확인하시기 바랍니다.";
	}
%>
<script>
	alert("<%=msg%>");
	location.href = "<%=url%>";
</script>