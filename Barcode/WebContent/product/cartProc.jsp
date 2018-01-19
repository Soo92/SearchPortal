<jsp:useBean id="mgr" class="product.CartMgr"/>
<jsp:useBean id="bean" class="product.CartBean"/>
<jsp:setProperty  name="bean" property="*"/>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");		
		String location="./basket.jsp";
		if(session.getAttribute("idKey")==null){
			location="../member/login.jsp";
		}else{
			boolean result = mgr.insertCart(bean);
		}
%>

<script>
	location.href = "<%=location%>";
</script>