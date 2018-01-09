<%@page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:useBean id="ploca" class="place.Geocoding"/>
<jsp:useBean id="pw" class="place.WeatherByGPSApplication"/>
<%
	double latitude = Double.parseDouble(request.getParameter("latitude"));
	double longitude = Double.parseDouble(request.getParameter("longitude"));
	String location = ploca.city(latitude, longitude);
	session.setAttribute("location", location.split(" ")[1]);
%>
<meta charset="utf-8">
<script>
	alert('<%=location%>')
  	location.href='../index.jsp';
</script>
