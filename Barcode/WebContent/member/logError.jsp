<%@ page contentType="text/html;charset=EUC-KR"%>
<%
	String mode = request.getParameter("mode");
	String msg = "";
	String url = "login.jsp";
	if (mode.equals("0")) {
		msg = "���̵� �� ��й�ȣ�� �ٽ� Ȯ���Ͻñ� �ٶ��ϴ�.";
	} else if (mode.equals("1")) {
		msg = "���̵�� ������ ��й�ȣ�� �ٽ� Ȯ���Ͻñ� �ٶ��ϴ�.";
	}
%>
<script>
	alert("<%=msg%>");
	location.href = "<%=url%>";
</script>