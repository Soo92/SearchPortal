<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="mgr" class="member.MemberMgr"/>
<%
		request.setCharacterEncoding("euc-kr");
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String url = "login.jsp";
		
		int mode = mgr.loginCheck(id, pass);		
		if(mode==0){
			response.sendRedirect("logError.jsp?mode=0");
		}else if(mode==1){
			response.sendRedirect("logError.jsp?mode=1");
		}else if(mode==2){
			session.setAttribute("idKey",id);
			url = request.getParameter("url");
			if(url.equals("null") || url.substring(url.indexOf(".")-10, url.indexOf(".")).equals("memberProc") || 
					url.substring(url.indexOf(".")-10, url.indexOf(".")).equals("/loginProc")|| 
					url.substring(url.indexOf(".")-10, url.indexOf(".")).equals("ember/join")){
				url="../index.jsp";
			}
			response.sendRedirect(url);
		}else{%>
			alert("sql에러인듯");
<%		}%>
