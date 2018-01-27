<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="mgr" class="movie.Parsing"/>
<jsp:useBean id="bean" class="movie.MovieBean"/>
<%
	request.setCharacterEncoding("euc-kr");
    String url= "./movie_home.jsp?index="+mgr.movie(request.getParameter("code"));
%>
<script>
 	location.href="<%=url%>";
</script>
