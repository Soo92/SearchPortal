<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");
		String url=request.getHeader("Referer");
		//������ ��ȿȭ ��Ŵ(��������)
		session.invalidate();
%>
<script>
	location.href = "<%=url%>";
</script>