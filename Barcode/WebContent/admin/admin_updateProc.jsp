<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<jsp:useBean id="mgr" class="member.ShoppingMgr"/>

<%
	request.setCharacterEncoding("euc-kr");
	boolean result = mgr.AdminUpdate(request);
	String str = "수정실패";
	String location="admin_update.jsp?index="+request.getParameter("index");
	if(result){
		str="수정을 완료하였습니다! :-)";
		location="admin_list.jsp";
	}
%>

<script>
	alert(<%=result%>+"<%=str%>");
  	location.href="<%=location%>";
</script>