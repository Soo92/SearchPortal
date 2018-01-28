<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<<jsp:useBean id="par" class="movie.Parsing"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="./movie_search_files/common.css">
<link rel="stylesheet" type="text/css" href="./movie_search_files/old_common.css">
<link rel="stylesheet" type="text/css" href="./movie_search_files/layout.css">
<link rel="stylesheet" type="text/css" href="./movie_search_files/old_layout.css">
<link rel="stylesheet" type="text/css" href="./movie_search_files/old_default.css">
<link rel="stylesheet" type="text/css" href="./movie_search_files/old_search.css">
</head>
<body>
<%=par.getSearch(request.getParameter("query"), request.getParameter("section"), request.getParameter("ie"), request.getParameter("page")==null?"":request.getParameter("page"))%>
</body>
</html>