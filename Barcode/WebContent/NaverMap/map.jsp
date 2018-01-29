<%@page import="NaverMap.storeBean"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:useBean id="mgr" class="NaverMap.storeMgr" />
<%
	Vector<storeBean> slist =  mgr.getlotto_storeList();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <title><%=slist.size() %></title>
	<script src="https://code.jquery.com/jquery-1.7.0.min.js"></script>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=Hp1Zq1ougL5HhZPmKDbk&submodules=geocoder"></script>
</head>
<body>
<div style="position:absolute;z-index: 5;">
	<input id="mylo" type="button" value="현재위치" class="control-btn">
	<input id="address" type="text" placeholder="검색할 주소">
	<input id="submit" type="button" value="주소 검색">
</div>
<div id="map" style="width:100%;height:600px;">
</div>
<script>
var map = new naver.maps.Map('map', {
    center: new naver.maps.LatLng(35.149910, 129.110310),
    zoom: 10,
    mapTypeId: naver.maps.MapTypeId.NORMAL
});

var infowindow = new naver.maps.InfoWindow();

//search by tm128 coordinate
function searchCoordinateToAddress(latlng) {
    var tm128 = naver.maps.TransCoord.fromLatLngToTM128(latlng);

    infoWindow.close();
    naver.maps.Service.reverseGeocode({
        location: tm128,
        coordType: naver.maps.Service.CoordType.TM128
    }, function(status, response) {
        if (status === naver.maps.Service.Status.ERROR) {
            return alert('Something Wrong!');
        }

        var items = response.result.items,
            htmlAddresses = [];

        for (var i=0, ii=items.length, item, addrType; i<ii; i++) {
            item = items[i];
            addrType = item.isRoadAddress ? '[도로명 주소]' : '[지번 주소]';

            htmlAddresses.push((i+1) +'. '+ addrType +' '+ item.address);
            htmlAddresses.push('&nbsp&nbsp&nbsp -> '+ item.point.x +','+ item.point.y);
        }

        infoWindow.setContent([
                '<div style="padding:10px;min-width:200px;line-height:150%;">',
                '<h4 style="margin-top:5px;">검색 좌표 : '+ response.result.userquery +'</h4><br />',
                htmlAddresses.join('<br />'),
                '</div>'
            ].join('\n'));

        infoWindow.open(map, latlng);
    });
}

// result by latlng coordinate
function searchAddressToCoordinate(address) {
    naver.maps.Service.geocode({
        address: address
    }, function(status, response) {
        if (status === naver.maps.Service.Status.ERROR) {
            return alert('Something Wrong!');
        }

        var item = response.result.items[0],
            addrType = item.isRoadAddress ? '[도로명 주소]' : '[지번 주소]',
            point = new naver.maps.Point(item.point.x, item.point.y);

        infoWindow.setContent([
                '<div style="padding:10px;min-width:200px;line-height:150%;">',
                '<h4 style="margin-top:5px;">검색 주소 : '+ response.result.userquery +'</h4><br />',
                addrType +' '+ item.address +'<br />',
                '&nbsp&nbsp&nbsp -> '+ point.x +','+ point.y,
                '</div>'
            ].join('\n'));


        map.setCenter(point);
        infoWindow.open(map, point);
    });
}

function onSuccessGeolocation(position) {
    var location = new naver.maps.LatLng(position.coords.latitude,
                                         position.coords.longitude);

    map.setCenter(location); // 얻은 좌표를 지도의 중심으로 설정합니다.
    map.setZoom(10); // 지도의 줌 레벨을 변경합니다.

    infowindow.setContent('<div style="padding:20px;">' +
        'latitude: '+ location.lat() +'<br />' +
        'longitude: '+ location.lng() +'</div>');

    infowindow.open(map, location);

    updateMarkers(map, markers);
}

function onErrorGeolocation() {
    var center = map.getCenter();

    infowindow.setContent('<div style="padding:20px;">' +
        '<h5 style="margin-bottom:5px;color:#f00;">Geolocation failed!</h5>'+ "latitude: "+ center.lat() +"<br />longitude: "+ center.lng() +'</div>');

    infowindow.open(map, center);
}

var HOME_PATH = window.HOME_PATH || '.';
var MARKER_SPRITE_POSITION = {
<%for(int i=0;i<slist.size();i++){
	String[] latlng = slist.get(i).getLatlng().split(",");
%>
		"<%=slist.get(i).getName()%>" : ["<%=latlng[0]%>", "<%=latlng[1]%>", "<%=slist.get(i).getAddress()%>", "<%=slist.get(i).getPhonenum()%>", "<%=slist.get(i).getPic()%>", "<%=slist.get(i).getUrl()%>"]
		<%=i!=(slist.size()-1)?",":""%>
<%}%>
    };

var bounds = map.getBounds(),
    southWest = bounds.getSW(),
    northEast = bounds.getNE(),
    lngSpan = northEast.lng() - southWest.lng(),
    latSpan = northEast.lat() - southWest.lat();

var markers = [],
    infoWindows = [];

for (var key in MARKER_SPRITE_POSITION) {

    var position = new naver.maps.LatLng(
   		MARKER_SPRITE_POSITION[key][0],
   		MARKER_SPRITE_POSITION[key][1]);

    var marker = new naver.maps.Marker({
        map: map,
        position: position,
        title: key,
        icon: {
            url: HOME_PATH +'/img/example/sp_pins_spot_v3.png',
            size: new naver.maps.Size(24, 37),
            anchor: new naver.maps.Point(12, 37),
            origin: new naver.maps.Point(MARKER_SPRITE_POSITION[key][0], MARKER_SPRITE_POSITION[key][1])
        },
        zIndex: 100
    });

    var contentString = [
        '<div class="iw_inner">',
        '   <h3>'+key+'</h3>',
        '   <p>'+MARKER_SPRITE_POSITION[key][2]+'<br />',
        '       <img src="'+ HOME_PATH +'/img/'+MARKER_SPRITE_POSITION[key][4]+'" width="55" height="55" alt="'+key+'" class="thumb" /><br />',
        '       '+MARKER_SPRITE_POSITION[key][3]+'<br />',
        '       <a href="'+MARKER_SPRITE_POSITION[key][5]+'" target="_blank">'+MARKER_SPRITE_POSITION[key][5]+'</a>',
        '   </p>',
        '</div>'
    ].join('');
    
    var infoWindow = new naver.maps.InfoWindow({
        content: contentString
    });

    markers.push(marker);
    infoWindows.push(infoWindow);
};

function updateMarkers(map, markers) {

    var mapBounds = map.getBounds();
    var marker, position;

    for (var i = 0; i < markers.length; i++) {

        marker = markers[i]
        position = marker.getPosition();

        if (mapBounds.hasLatLng(position)) {
            showMarker(map, marker);
        } else {
            hideMarker(map, marker);
        }
    }
}

function showMarker(map, marker) {

    if (marker.setMap()) return;
    marker.setMap(map);
}

function hideMarker(map, marker) {

    if (!marker.setMap()) return;
    marker.setMap(null);
}

// 해당 마커의 인덱스를 seq라는 클로저 변수로 저장하는 이벤트 핸들러를 반환합니다.
function getClickHandler(seq) {
    return function(e) {
        var marker = markers[seq],
            infoWindow = infoWindows[seq];

        if (infoWindow.getMap()) {
            infoWindow.close();
        } else {
            infoWindow.open(map, marker);
        }
    }
}

for (var i=0, ii=markers.length; i<ii; i++) {
    naver.maps.Event.addListener(markers[i], 'click', getClickHandler(i));
}

$('#address').on('keydown', function(e) {
    var keyCode = e.which;

    if (keyCode === 13) { // Enter Key
        searchAddressToCoordinate($('#address').val());
    }
});

$('#submit').on('click', function(e) {
    e.preventDefault();
    searchAddressToCoordinate($('#address').val());
});

$("#mylo").on("click", function(e) {

    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(onSuccessGeolocation, onErrorGeolocation);
    } else {
        var center = map.getCenter();
        infowindow.setContent('<div style="padding:20px;"><h5 style="margin-bottom:5px;color:#f00;">Geolocation not supported</h5>'+ "latitude: "+ center.lat() +"<br />longitude: "+ center.lng() +'</div>');
        infowindow.open(map, center);
    }	
});
$(window).resize(function() {
	  w = $(window).width()-100;
	  h = $(window).height()-100;
	  map.setSize(new naver.maps.Size(w, h));
});

$(window).on("load", function() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(onSuccessGeolocation, onErrorGeolocation);
    } else {
        var center = map.getCenter();

        infowindow.setContent('<div style="padding:20px;"><h5 style="margin-bottom:5px;color:#f00;">Geolocation not supported</h5>'+ "latitude: "+ center.lat() +"<br />longitude: "+ center.lng() +'</div>');
        infowindow.open(map, center);
    }
	 w = $(window).width()-100;
	 h = $(window).height()-100;
	map.setSize(new naver.maps.Size(w, h));
});

map.addListener('dragend', function() {
    updateMarkers(map, markers);
});
</script>
</body>
</html>