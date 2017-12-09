<%@page contentType="text/html;charset=EUC-KR"%>
<jsp:useBean id="Mgr" class="member.MemberMgr" />
<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	int mode = Mgr.loginCheck(id, pass);
	
	if(mode==0){
		response.sendRedirect("LogError.jsp?mode=0");
	}else if(mode==1){
		response.sendRedirect("LogError.jsp?mode=1");
	}else if(mode==2){
		session.setAttribute("idKey",id);
		response.sendRedirect("Index.jsp");
	}
%>

