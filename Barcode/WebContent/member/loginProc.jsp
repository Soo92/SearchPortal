<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="mgr" class="member.MemberMgr"/>
<%
		request.setCharacterEncoding("euc-kr");
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String url = "login.jsp";
		boolean result = mgr.loginMember(id, pass);
		String msg = "�α��� ����";
		if(result){
			session.setAttribute("idKey", id);
			msg = "�α��� ����";
			url = request.getParameter("url");
			if(url.equals("null") || url.substring(url.indexOf(".")-10, url.indexOf(".")).equals("memberProc") || 
					url.substring(url.indexOf(".")-10, url.indexOf(".")).equals("/loginProc")|| 
					url.substring(url.indexOf(".")-10, url.indexOf(".")).equals("ember/join")){
						url="../index.jsp";
			}
		}
%>
<script>
	alert("<%=msg%>");
	location.href = "<%=url%>";
</script>