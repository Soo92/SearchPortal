<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<jsp:useBean id="mgr" class="member.ShoppingMgr"/>

<%
	request.setCharacterEncoding("euc-kr");
	boolean result = mgr.AdminUpdate(request);
	String str = "��������";
	String location="admin_update.jsp?index="+request.getParameter("index");
	if(result){
		str="������ �Ϸ��Ͽ����ϴ�! :-)";
		location="admin_list.jsp";
	}
%>

<script>
	alert(<%=result%>+"<%=str%>");
  	location.href="<%=location%>";
</script>