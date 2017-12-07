<%@page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="regMgr" class="member.MemberMgr"/>
<%
		request.setCharacterEncoding("EUC-KR");
		String id = request.getParameter("id");
		regMgr.sendAccount(id);
		response.sendRedirect("MemberMgr.jsp");
%>