<jsp:useBean id="mgr" class="product.CartMgr"/>
<jsp:useBean id="bean" class="product.CartBean"/>
<jsp:setProperty  name="bean" property="*"/>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");		
		String index = request.getParameter("index");
		int idx = Integer.parseInt(index);
		boolean result = mgr.deleteCart(idx);
		String str = "���� ����";
		String location = "basket.jsp";
		if(result){
			str = "���� ����!";
		}
%>

<script>
 	location.href = "<%=location%>";
</script>