<%@page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:useBean id="ploca" class="place.Geocoding"/>
<jsp:useBean id="pw" class="place.WeatherByGPSApplication"/>
<%
	double latitude,longitude;
/* 	String location = request.getParameter("location");
 */	String location = "부산";
	if(location==null||location.equals("")){
		latitude = Double.parseDouble(request.getParameter("latitude"));
		longitude = Double.parseDouble(request.getParameter("longitude"));
		location = ploca.city(latitude, longitude).split("\\s")[1];
	}else{
		String latlan = ploca.latlng(location);
		latitude = Double.parseDouble(latlan.split(",")[0]);
		longitude = Double.parseDouble(latlan.split(",")[1]);
	}
		String weather=pw.main(longitude, latitude);
%>
<meta charset="utf-8">
<script>
alert('<%=location%>');
location.href='./reserve_home.jsp?location=<%=location%>&&weather=<%=weather%>';
</script>
