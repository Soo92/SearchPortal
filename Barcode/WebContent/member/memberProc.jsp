<%@ page contentType="text/html; charset=EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="mgr" class="member.MemberMgr"/>
<jsp:useBean id="bean" class="member.MemberBean"/>
<jsp:setProperty  name="bean" property="*"/>
<%
System.out.println("b");
	  boolean result = mgr.insertMember(bean);
		System.out.println("a");
	  if(result){
%>
<script type="text/javascript">
		alert("ȸ�������� �Ͽ����ϴ�.");
		location.href="login.jsp";
</script>
<% }else{%>
<script type="text/javascript">
		alert("ȸ�����Կ� ���� �Ͽ����ϴ�.");
		history.back();
</script>
<%} %>