<jsp:useBean id="mgr" class="product.ShoppingMgr"/>
<jsp:useBean id="bean" class="product.ShoppingBean"/>
<jsp:setProperty  name="bean" property="*"/>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");		
		boolean result = mgr.insertProAdd(request);
		String str = "��ǰ��� ���� : �ٽ� ������ּ���.";
		String location = "admin_pro.jsp";
		if(result){
			str = "��ǰ��� ����! �ո��� �ļ����뤷 :-)";
			location="admin_list.jsp";
		}
%>

<script>
	alert("<%=result%>");
	alert("<%=str%>");
	location.href = "<%=location%>";
</script>