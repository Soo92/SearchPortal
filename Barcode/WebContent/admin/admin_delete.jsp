<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="mgr_shop" class="member.ShoppingMgr"/>
<%
		request.setCharacterEncoding("euc-kr");
		int index = Integer.parseInt(request.getParameter("index"));
		mgr_shop.adminDelete(index);
		response.sendRedirect("admin_list.jsp");
%>

<link href="../css/admin_style.css" rel="stylesheet" type="text/css">