<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="Mgr" class="movie.MovieMgr"/>
<jsp:useBean id="Bean" class="movie.ReviewBean"/>
<jsp:setProperty name="Bean" property="*" />
<%
	request.setCharacterEncoding("euc-kr");
	String idx = request.getParameter("idx");
%>
<%
    boolean flag = Mgr.insertReview(Bean);
	if(flag){
%>
		<script>
			alert("댓글이 등록 되었습니다.");
			location.href="movie_detail.jsp?index="+<%=idx%>+"&&num=3";
		</script>
<%
	}else{
%>
		<script>
			alert("댓글 등록이 실패 하였습니다.");
			history.back();
		</script>
<%}%>