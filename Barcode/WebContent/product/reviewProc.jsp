<jsp:useBean id="mgr" class="product.ReviewMgr"/>
<jsp:useBean id="bean" class="product.ReviewBean"/>
<jsp:setProperty  name="bean" property="*"/>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");		
		boolean result = mgr.reviewProAdd(request);
		String str = "������ ���� : �ٽ� ������ּ���.";
		String index = request.getParameter("index");
		String location = "detail.jsp?index="+index;
		if(result){
			str = "������ ����! �ۼ� �հ���帳�ϴ�! :-)";
		}
%>

<script>
	alert("<%=str%>");
	location.href = "<%=location%>";
</script>