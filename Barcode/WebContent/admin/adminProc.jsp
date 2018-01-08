<jsp:useBean id="mgr" class="product.ShoppingMgr"/>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
		request.setCharacterEncoding("utf-8");		
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