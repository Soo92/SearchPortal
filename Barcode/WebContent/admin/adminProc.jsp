<jsp:useBean id="mgr" class="product.ShoppingMgr"/>
<jsp:useBean id="bean" class="product.ShoppingBean"/>
<jsp:setProperty  name="bean" property="*"/>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");		
		boolean result = mgr.insertProAdd(request);
		String str = "상품등록 실패 : 다시 등록해주세요.";
		String location = "admin_pro.jsp";
		if(result){
			str = "상품등록 성공! 왕많이 파세용용용ㅇ :-)";
			location="admin_list.jsp";
		}
%>

<script>
	alert("<%=result%>");
	alert("<%=str%>");
	location.href = "<%=location%>";
</script>