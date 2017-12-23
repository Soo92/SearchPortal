<jsp:useBean id="mgr" class="product.ReviewMgr"/>
<jsp:useBean id="bean" class="product.ReviewBean"/>
<jsp:setProperty  name="bean" property="*"/>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");		
		boolean result = mgr.reviewProAdd(request);
		String str = "리뷰등록 실패 : 다시 등록해주세요.";
		String index = request.getParameter("index");
		String location = "detail.jsp?index="+index;
		if(result){
			str = "리뷰등록 성공! 작성 왕감사드립니당! :-)";
		}
%>

<script>
	alert("<%=str%>");
	location.href = "<%=location%>";
</script>