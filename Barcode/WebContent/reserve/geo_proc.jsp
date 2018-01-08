<%@page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:useBean id="ploca" class="place.Geocoding"/>
<jsp:useBean id="pw" class="place.WeatherByGPSApplication"/>
<%
		double latitude = Double.parseDouble(request.getParameter("latitude"));
		double longitude = Double.parseDouble(request.getParameter("longitude"));
		String latlan = ploca.latlng("busan");
		String location[] = ploca.city(latitude, longitude).split("\\s");
		String weather=pw.main(longitude, latitude);
%>
<meta charset="utf-8">
<script>
alert("<%=latlan%>")
location.href='./reserve_home.jsp?location=<%=location[1]%>&&weather=<%=weather%>';
</script>
