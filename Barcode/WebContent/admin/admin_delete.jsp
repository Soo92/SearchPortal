<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="mgr_shop" class="product.ShoppingMgr"/>
<%
	request.setCharacterEncoding("euc-kr");
	if(mgr_shop.adminDelete(request)) response.sendRedirect("admin_list.jsp");
%>