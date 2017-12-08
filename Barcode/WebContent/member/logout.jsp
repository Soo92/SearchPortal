<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");
		String url=request.getHeader("Referer");
		//技记阑 公瓤拳 矫糯(技记力芭)
		session.invalidate();
%>
<script>
	location.href = "<%=url%>";
</script>