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
         alert("댓글이 등록 되었습니다.");
         location.href="point.jsp";
      </script>
<%
   }else{
%>
      <script>
         alert("댓글 등록이 실패 하였습니다.");
         history.back();
      </script>
<%}%>