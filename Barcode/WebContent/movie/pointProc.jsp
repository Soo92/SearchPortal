<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="Mgr" class="member.MovieMgr"/>
<jsp:useBean id="Bean" class="member.PointBean"/>
<jsp:setProperty name="Bean" property="*" />
<%
   request.setCharacterEncoding("euc-kr");
%>
<%
    boolean flag = Mgr.insertPoint(Bean);
   if(flag){
%>
      <script>
         alert("����� ��� �Ǿ����ϴ�.");
         location.href="point.jsp";
      </script>
<%
   }else{
%>
      <script>
         alert("��� ����� ���� �Ͽ����ϴ�.");
         history.back();
      </script>
<%}%>