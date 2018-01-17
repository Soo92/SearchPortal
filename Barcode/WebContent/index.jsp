<%@page import="place.PlaceBoardBean"%>
<%@page import="product.ShoppingBean"%>
<%@page import="movie.MovieBean"%>
<%@page import="java.util.Vector"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:useBean id="mgr" class="member.MemberMgr"/>
<jsp:useBean id="mmgr" class="movie.MovieMgr"/>
<jsp:useBean id="smgr" class="product.ShoppingMgr"/>
<jsp:useBean id="pmgr" class="place.PlaceMgr"/>
<%
		request.setCharacterEncoding("utf-8");
		String id = (String)session.getAttribute("idKey");	
		String name = mgr.getMember(id).getName();
		Vector<MovieBean> mlist = mmgr.getMemberList();
		Vector<ShoppingBean> slist = smgr.getShoppingList();
		Vector<PlaceBoardBean> plist = pmgr.getPlaceBoardList((int)(Math.random()*pmgr.getPlaceList().size())+"");
%>
<!doctype>
<html>
<meta charset="utf-8">
<head>
	<title>바코드</title>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCukbnJcwWWQlXgllIh92sHbHW_8ah25e4&libraries=places"></script>
	<script src="http://code.jquery.com/jquery-1.7.0.min.js"></script>
	<script type="text/javascript" src="js/swiper.min.js"></script>
	<link rel="stylesheet" href="css/style.css" type="text/css">
	<link rel="stylesheet" href="css/swiper.min.css" type="text/css">
	<script>
	function loginCheck() {
		if (document.loginFrm.id.value == "") {
			alert("아이디를 입력해 주세요.");
			document.loginFrm.id.focus();
			return;
		}
		if (document.loginFrm.pass.value == "") {
			alert("비밀번호를 입력해 주세요.");
			document.loginFrm.pass.focus();
			return;
		}
		document.loginFrm.submit();
	}
	function removetag(html){
		html.replaceAll("\\<[^>]*>","");
	}
</script>
<script>
$(document).ready(function () {
    var mapDiv = document.getElementById('place');
    var latitude=35.198362;
    var longitude=129.053922;
	$('#place').click(function(){
		$('#map_window').toggle();
	});
    $("#location_btn").click(function() {        
        // Geolocation API에 액세스할 수 있는지를 확인
        if (navigator.geolocation) {
            //위치 정보를 얻기
            navigator.geolocation.getCurrentPosition (function(pos) {
                latitude = pos.coords.latitude;     // 위도
                longitude = pos.coords.longitude; // 경도
                location.href="./member/geo_proc.jsp?latitude="+latitude+"&longitude=" + longitude;
                });
        } else {
            alert("이 브라우저에서는 Geolocation이 지원되지 않습니다.")
        }
    });
    function initialize() {
    	  var mapOptions = { 
    	    center: {lat: latitude, lng: longitude},
    	    zoom: 13,
    	    scrollwheel: false
    	  };
    	  var map = new google.maps.Map(document.getElementById('map_window'),
    	    mapOptions);

    	  var input = /** @type {HTMLInputElement} */(
    	      document.getElementById('pac-input'));

    	  // Create the autocomplete helper, and associate it with
    	  // an HTML text input box.
    	  var autocomplete = new google.maps.places.Autocomplete(input);
    	  autocomplete.bindTo('bounds', map);

    	  map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

    	  var infowindow = new google.maps.InfoWindow();
    	  var marker = new google.maps.Marker({
    	    map: map
    	  });
    	  google.maps.event.addListener(marker, 'click', function() {
    	    infowindow.open(map, marker);
    	  });

    	  // Get the full place details when the user selects a place from the
    	  // list of suggestions.
    	  google.maps.event.addListener(autocomplete, 'place_changed', function() {
    	    infowindow.close();
    	    var place = autocomplete.getPlace();
    	    if (!place.geometry) {
    	      return;
    	    }
    	    if (place.geometry.viewport) {
    	      map.fitBounds(place.geometry.viewport);
    	    } else {
    	      map.setCenter(place.geometry.location);
    	      map.setZoom(17);
    	    }
    	    // Set the position of the marker using the place ID and location.
    	    marker.setPlace(/** @type {!google.maps.Place} */ ({
    	      placeId: place.place_id,
    	      location: place.geometry.location
    	    }));
    	    marker.setVisible(true);
    	    infowindow.setContent('<div><strong>' + place.name + '</strong><br>' +
    	        'Place ID: ' + place.place_id + '<br>' +
    	        place.formatted_address + '</div>');
    	    infowindow.open(map, marker);
    	  });
    	    $('#map_window').css("display","none");
    	}
    	// Run the initialize function when the window has finished loading.
    	google.maps.event.addDomListener(window, 'load', initialize);
});
</script>
</head>
<body>
	<input type="text" id="pac-input">
	<div id="map_window" style="position: absolute;width: 80%;height: 78%;top: 129px;margin: 0px 10%;z-index: 99;">
	</div>
	<div id="wrap">
		<div id="header">
			<div id="start">
				<a href="./custom/custom_detail.jsp?index=1&&boardnum=14"><p>바코드를 시작페이지로&nbsp;&nbsp;<span>></span></p></a>
			</div>
			<div id="logo"><img src="img/barcode_logo_.png" width=100% height=100% alt="바코드"></div>
			<div id="search">
			<form name="searchf" action="./search/search.jsp">
			<input type="text" name="search" style="width:420px; height:40px; margin:5px 0px 0px 20px; border:0px; font-size:16px;" align="center"
				onkeypress="if(event.keyCode==13) {submit(); return false;}"	placeholder="검색해보세용!">
				<div id="search_button"><img src="img/search_icon.png" onclick=submit()></div>
				<div id="place"><img src="img/place_icon.png"></div>
			</form>				
			</div>
			<a>
			<div id="map"><img id="location_btn" src="img/map_icon.png"></div>
			</a>
		</div>
	</div>
	
	<div id="nav">
		<ul>
			<li><a href="product/product_home.jsp">중고 쇼핑</a></li>
			<li class="ulul"><a href="reserve/geo_proc.jsp?location=<%=session.getAttribute("location")==null||session.getAttribute("location").equals("null")?"한국":session.getAttribute("location")%>">동네 소식</a></li>
			<li class="ulul"><a href="movie/movie_home.jsp">영화 추천</a></li>			
			<li class="ulul"><a href="custom/custom_home.jsp">고객센터</a></li>			
		</ul>
	</div>

	<div id="wrap2">
	<div id="wrap">
			<!--좌측영역-->
			<div id="section">
				<div  id="google" class="section_option">
				<div class="content">
		<div id="addiv" class="ad"><a id="ac_banner_a" href="javascript:alert('광고')" target="_blank"><img src="https://ssl.pstatic.net/tveta/libs/1174/1174906/c3bdf91d3b8f34693c7e_20171220183601357.jpg" width="740" height="120" title="" alt="서울대 출신 7인이 개발한 특허 받은 학습법 하루 6문장 영어하길!" border="0"><div id="da_access" style="position: absolute; top: 50%; left: 50%; width: 154px; height: 58px; margin: -29px 0px 0px -77px; background: url(&quot;https://ssl.pstatic.net/tveta/libs/res/www/common/info/da_access.png&quot;); display: none;"></div></a></div>
		<a id="link" name="link" href="javascript:void(0)"></a>
	</div>
				</div>
				<div id="notice" class="section_option">
					<div id="box_img"><img src="img/notice_1.jpg" style="line-height:50px;"></div>
					<div id="_box">
						<div id="move">
							<ul>
				<%mlist=mmgr.getMemberList(1);
				for(int i=0;i<(mlist.size()>5?5:mlist.size());i++) {%>
								<li><a href="./movie/movie_home.jsp?index=<%=mlist.get(i).getIdx()%>"><span class="movie_ct" style="font-weight:bold;">[<%=mlist.get(i).getTitle() %>]&nbsp</span><span class="movie_ct"><%=mlist.get(i).getContent().replaceAll("\\<[^>]*>","") %></span></a></li>
				<%} %>
							</ul>
						</div>
					</div>
				</div>
				<div id ="movie_Slider_">
			<div id="slider_wrap">
				<div id="slider_aa">
				    <div class="swiper-container">
				        <div class="swiper-wrapper">
			            <%for(int i=1; i<(mlist.size()/2+1>6?6:mlist.size()/2+1); i++ ){ %>
				            <div class="swiper-slide" id="s_<%=i%>">
				            <div id="movie_wrap">
				            <%for(int j=0;j<2;j++) {%>
				            	<a href="./movie/movie_home.jsp?index=<%=mlist.get((i-1)*2+j).getIdx()%>">
					            	<div id="movie_sm<%if(j==1){%>_r<%}%>">
					            		<div id="movie_title">
					            			<div id="movie_img">
					            				<img src="./movie/mainimg/<%=mlist.get((i-1)*2+j).getPic() %>" width="120" height="182">
					            			</div>
					            			<div id="movie_text">
						            			<p class="movie_tit">[ <%=mlist.get((i-1)*2+j).getTitle() %> ]</p>
						            			<p class="movie_st">별점 : <%for(int k=0;k<Float.parseFloat(mlist.get((i-1)*2+j).getStar())/2;k++){ %>★<%} %></p>
						            			<p class="movie_ct">장르 : <%=mlist.get((i-1)*2+j).getGenre() %></p>
						            			<br/>
						            			<p class="movie_s">
												<%=mlist.get((i-1)*2+j).getContent().replaceAll("\\<[^>]*>","")%>
						            			</p>
					            			</div>
					            		</div>
					            	</div>
								</a>
					           	<%} %>
				            	</div>
				            	
				            </div>
				            <%} %>
						</div>
				        <!-- Add Pagination -->
				        <div class="swiper-pagination"></div><!--하단버튼-->
				        <!-- Add Arrows -->
				        <div class="swiper-button-next"></div><!--다음-->
				        <div class="swiper-button-prev"></div><!--전-->
				    </div>
					</div>
					</div><!--슬라이드전체-->
				
				    <!-- Swiper JS -->
				    <script src="js/swiper.min.js"></script>
				
				    <!-- Initialize Swiper -->
				    <script>
				    var swiper = new Swiper('.swiper-container', {
				        pagination: '.swiper-pagination',
				        nextButton: '.swiper-button-next',
				        prevButton: '.swiper-button-prev',
				        paginationClickable: true,
				        spaceBetween: 30,
				        centeredSlides: true,
				        autoplay: 3000,
				        autoplayDisableOnInteraction: false
				    });
				    </script>
		
				</div>
				
				<div id="shop_tbl"><!-- skd -->
					<%for(int i=1; i<(slist.size()+1>22?22:slist.size()+1); i++){ %>
						<div id="shop_td">
							<a href="./product/detail.jsp?index=<%=slist.get(i-1).getIndex()%>">
								<img src="./product/newShopImg/<%=slist.get(i-1).getMainImg()%>" width="106" height="106">
								<div class="overlay_td">
								    <div class="text_td">
								    	<p style="font-size:12px; font-weight:bold;"><%=slist.get(i-1).getPrice()%></p>
								    	<p style="font-size:10px;">자세히보기</p>
								    </div>
								  </div>
							</a>
						</div>
					<%}%>
					</div>
					<div class="blank" style="height:1px;"></div>
					<a href="./product/product_home.jsp">
					<div  id="google" class="section_option" style="margin-top:7px;height:150px">
						<img src="img/naPong_s.png">
					</div>
					</a>
			</div>
			<!--우측영역-->
			<form name="loginFrm" method="post" action="./member/loginProc.jsp?url=index.jsp">
			<div id="section2">
				<div id="login" class="section_option">
					<div id="login_box">
<%if(id == null || id.equals("")){%>
						<table width="223px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff">
							<tr>
								<td height="35px">
									<input type="text" name="id" style="width:200px; height:20px; margin-left:5px; border:0px; font-size:12px; background:#f7ffdd;" align="center" placeholder="아이디">
								</td>
							</tr>
							<tr>
								<td height="35px">
									<input type="password" name="pass" style="width:200px; height:20px; margin-left:5px; border:0px; font-size:12px; background:#f7ffdd;" align="center" placeholder="비밀번호">
								</td>
							</tr>
						</table>
					
					<div id="login_button" onclick="loginCheck()"><p>로그인</p></div>
					<div id="login_other2">
						<ul>
						<li class="ulul2">
						<input type="checkbox">&nbsp;로그인상태 유지
						</li>
						<li class="ulul2"style="margin-left:5px;"><a href="member/join.jsp">회원가입</a></li>
						<li class="ulul2">
						<a href="member/findid.jsp">아이디</a>
						<a href="member/findpw.jsp">비밀번호 찾기</a>
						</li>
					</div>
<%}else{%>
 				<iframe id="minime" name="minime" title="MY영역" src="./member/userInfo.jsp" style="position: relative;width: 112%;height: 120px;top: -14px;left: -13px;background: #fff;" frameborder="0" framespacing="0" marginheight="0" marginwidth="0" scrolling="no" vspace="0"></iframe>
<%-- <div id="logout">
			<div id="profile"></div>
			<p style="margin-top:7px; line-height:30px; font-size:16px;"><b><%=name %></b>님</p>
			<p style="font-size:12px; float:left; line-height:23px; margin-right:5px">환영함당!</p>
			<a href="./member/mypage.jsp"><p class="myPage">마이페이지</p></a>
			
		</div>
		<a href="./member/logout.jsp"><div id="login_button" style="position:absolute; top:0px; left:230px;"><p>로그아웃</p></div></a>
		
		
						
						<!-- <a href="./member/logout.jsp">로그아웃</a> -->
	</div>
	<div id="myPage_other">
			<div id="myPage_o_but"><a href="product/basket.jsp"><img src="img/myP_01.png"></a></div>
			<div id="myPage_o_but"><a href="#"><img src="img/myP_02.png"></a></div>
			<div id="myPage_o_but"><a href="#"><img src="img/myP_03.png"></a></div>
			<div id="myPage_o_but"><a href="#"><img src="img/myP_04.png"></a></div>
	</div>
 --%>
 <%}%>
					</div>
				</div>
				<div id="shopping" class="section_option">
<%for(int i=0;i<(slist.size()>2?2:slist.size());i++) {%>
					<a href="./product/details?index="<%=slist.get(i).getIndex() %>>
					<div id="shopping_<%=i+1%>">
						<img src="./product/newShopImg/<%=slist.get(i).getMainImg() %>" width="150px" height="150px">
						<div id="other_text">
							<p class="title">
							[<%=slist.get(i).getTitle() %>]
							</p><!-- title -->
							<p class="account">
							<%=slist.get(i).getAccount() %>
							</p><!-- account -->
							<p class="price">
							<%=slist.get(i).getPrice() %>
							</p><!-- price -->
						</div>
					</div>
					</a>
<%} %>					
					<a href="product/product_home.jsp">
						<div id="more">
							<p style="color:#fff;">상품 더보러 가기</p>
						</div>
						</a>					
				</div>
				
					<table width="334px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff">
<%for(int i=0;i<(plist.size()>2?2:plist.size());i++) {%>
						<tr>
							<td height="158px" style="border-bottom:none; padding-top:5px">
							<a href="./reserve/place_board.jsp?index=<%=plist.get(i).getIdx()%>">
								<div id="place_img">
									<img width="100%" src="<%=pmgr.getImgSrc(plist.get(i).getContent())%>" onerror="this.src='./reserve/img/sampleimage.jpg'">
								</div>
								<div id="place_title">
									<p class="movie_ct"><span>[<%=plist.get(i).getWriter() %>]</span><%=plist.get(i).getContent().replaceAll("\\<[^>]*>","") %> </p>
								</div>
								</a>
							</td>
						</tr>
<%} %>
					</table>
					
					<div id="Bottom" class="section_option" style="margin-top:7px;">
				<div id="addiv"><a id="ac_banner_a" href="https://nv.veta.naver.com/fxclick?eu=EU10000119&amp;ac=7609312&amp;src=3278276&amp;br=2605613&amp;evtcd=C1017&amp;x_ti=939&amp;tb=&amp;oid=&amp;sid1=&amp;sid2=&amp;rk=Wjs-zApgIskAAAZ691sAAAPf&amp;eltts=hrBclLt9fRjYMQsOCYc28A%3D%3D&amp;lu=" target="_blank"><img src="https://ssl.pstatic.net/tveta/libs/1181/1181424/82580d3497e5c47e93ba_20171207151824043.jpg" width="332" height="150" title="" alt="국세청 전자세원과" border="0"><div id="da_access" style="position: absolute; top: 50%; left: 50%; width: 154px; height: 58px; margin: -29px 0px 0px -77px; background: url(&quot;https://ssl.pstatic.net/tveta/libs/res/www/common/info/da_access.png&quot;); display: none;"></div></a></div>
				</div>
				
			</div>
			</form>			
			<div class="blank"></div>
		</div>
		</div>

	<div id="footer_">
		<div id="footerWrap">
			<p class="a_">공지사항</p>
			<p class="a__">서비스 전체보기</p>
		</div>
	</div>
	<div id="footer">
		<p class="Extra">Creators</p>
		
		<ul>
			<li>크리에이터</li><li class="aaa">|</li>
			<li>스몰비즈니스</li>
		</ul>
		
		<p class="Extra">Partners</p>
		<ul>
			<li>이성수</li><li class="aaa">|</li>
			<li>김민정</li><li class="aaa">|</li>
			<li>박준영</li><li class="aaa">|</li>
			<li>육동주</li><li class="aaa">|</li>
			<li>조성수</li>
		</ul>
		
		<p class="Extra">Developers</p>
		<ul>
			<li>바코드 개발센터</li><li class="aaa">|</li>
			<li>오픈API</li><li class="aaa">|</li>
			<li>오픈소스</li><li class="aaa">|</li>
			<li>바코드 D2</li><li class="aaa">|</li>
			<li>바코드 랩스</li>
		</ul>
		
		<div id="ul_except">
			<ul>
				<li style="padding:0;">회사소개</li><li class="aaa">|</li>
				<li>인재채용</li><li class="aaa">|</li>
				<li>제휴제안</li><li class="aaa">|</li>
				<li>이용약관</li><li class="aaa">|</li>
				<li>개인정보처리방침</li><li class="aaa">|</li>
				<li>청소년보호정책</li><li class="aaa">|</li>
				<li>바코드정책</li><li class="aaa">|</li>
				<li>고객센터</li><li class="aaa">|</li>
				<li>ⓒBarcode Crop.</li>
			</ul>
		</div>
	</div>
	
</body>
</html>