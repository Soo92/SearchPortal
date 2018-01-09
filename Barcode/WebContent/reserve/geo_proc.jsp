<%@page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:useBean id="ploca" class="place.Geocoding"/>
<jsp:useBean id="pw" class="place.WeatherByGPSApplication"/>
<%
	double latitude,longitude;
 	String location = session.getAttribute("location")+"";
 	
 	if(request.getParameter("location")==null){
		latitude = Double.parseDouble(request.getParameter("latitude"));
		longitude = Double.parseDouble(request.getParameter("longitude"));
		location = ploca.city(latitude, longitude).split(" ")[1];
		session.setAttribute("location", location);
	}else if(location.equals("null")){
		location = request.getParameter("location");
		String latlan = ploca.latlng(location);
		latitude = Double.parseDouble(latlan.split(",")[0]);
		longitude = Double.parseDouble(latlan.split(",")[1]);
	}else{
		location = request.getParameter("location");
		String latlan = ploca.latlng(location);
		latitude = Double.parseDouble(latlan.split(",")[0]);
		longitude = Double.parseDouble(latlan.split(",")[1]);
	}
		String weather=pw.main(longitude, latitude);
%>
<meta charset="utf-8">
<script>
	location.href='./reserve_home.jsp?location=<%=location%>&&weather=<%=weather%>';
</script>
