<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="Mgr" class="movie.MovieMgr"/>
<jsp:useBean id="Bean" class="movie.PointBean"/>
<jsp:setProperty name="Bean" property="*" />
<%
	request.setCharacterEncoding("euc-kr");
%>
<%
    boolean flag = Mgr.insertPoint(Bean);
	if(flag){
%>
		<script>
			window.parent.location.href="./movie_home.jsp?index=<%=Bean.getIdx()%>&&num=2";
		</script>
<%
	}else{
%>
		<script>
			alert("댓글 등록이 실패 하였습니다.");
			history.back();
		</script>
<%}%>