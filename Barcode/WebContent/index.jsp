<%@page import="place.PlaceBean"%>
<%@page import="product.ShoppingBean"%>
<%@page import="movie.MovieBean"%>
<%@page import="java.util.Vector"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="mgr" class="member.MemberMgr"/>
<jsp:useBean id="mmgr" class="movie.MovieMgr"/>
<jsp:useBean id="smgr" class="product.ShoppingMgr"/>
<jsp:useBean id="pmgr" class="place.PlaceMgr"/>
<%
		request.setCharacterEncoding("euc-kr");
		
		String id = (String)session.getAttribute("idKey");	
		String name = mgr.getMember(id).getName();

		Vector<MovieBean> mlist = mmgr.getMemberList();
		Vector<ShoppingBean> slist = smgr.getShoppingList();
		Vector<PlaceBean> plist = pmgr.getPlaceList();
%>

<!doctype>
<html>
<meta charset="utf-8">
<head>
	<title>���ڵ�</title>
	
	<script src="http://code.jquery.com/jquery-1.7.0.min.js"></script>
	<script type="text/javascript" src="js/swiper.min.js"></script>
	<link rel="stylesheet" href="css/style.css" type="text/css">
	<link rel="stylesheet" href="css/swiper.min.css" type="text/css">
	<script>
	function loginCheck() {
		if (document.loginFrm.id.value == "") {
			alert("���̵� �Է��� �ּ���.");
			document.loginFrm.id.focus();
			return;
		}
		if (document.loginFrm.pass.value == "") {
			alert("��й�ȣ�� �Է��� �ּ���.");
			document.loginFrm.pass.focus();
			return;
		}
		document.loginFrm.submit();
	}
	function removetag(html){
		html.replaceAll("\\<[^>]*>","")
	}
</script>
	
</head>
<body>
	<div id="wrap">
		<div id="header">
			<div id="start">
				<a href="#"><p>���ڵ带 ������������&nbsp;&nbsp;<span>></span></p></a>
			</div>
			<div id="logo"><img src="img/barcode_logo_.png" width=100% height=100% alt="���ڵ�"></div>
			<div id="search">
			<form name="searchf" action="./search/search.jsp">
			<input type="text" name="search" style="width:420px; height:40px; margin:5px 0px 0px 20px; border:0px; font-size:16px;" align="center"
				onkeypress="if(event.keyCode==13) {submit(); return false;}"	placeholder="�˻��غ�����!">
				<div id="search_button"><img src="img/search_icon.png" onclick=submit()></div>
				<div id="place"><img src="img/place_icon.png"></div>
			</form>				
			</div>
			<a href="map/MapPr.jsp">
			<div id="map"><img src="img/map_icon.png"></div>
			</a>
		</div>
	</div>
	
	<div id="nav">
		<ul>
			<li><a href="product/product_home.jsp">�߰� ����</a></li>
			<li class="ulul"><a href="reserve/reserve_home.jsp">������</a></li>
			<li class="ulul"><a href="movie/movie_home.jsp">��ȭ ��õ</a></li>			
			<li class="ulul"><a href="custom/custom_home.jsp">������</a></li>			
		</ul>
	</div>

	<div id="wrap2">
	<div id="wrap">
			<!--��������-->
			<div id="section">
				<div  id="google" class="section_option">
				<div class="content">
		<div id="addiv" class="ad"><a id="ac_banner_a" href="https://nv.veta.naver.com/fxclick?eu=EU10000120&amp;ac=7614084&amp;src=3287787&amp;br=2612442&amp;evtcd=C1017&amp;x_ti=841&amp;tb=&amp;oid=&amp;sid1=&amp;sid2=&amp;rk=Wjs-zApgIskAAAZ691QAAAOX&amp;eltts=hrBclLt9fRjYMQsOCYc28A%3D%3D&amp;lu=" target="_blank"><img src="https://ssl.pstatic.net/tveta/libs/1174/1174906/c3bdf91d3b8f34693c7e_20171220183601357.jpg" width="740" height="120" title="" alt="����� ��� 7���� ������ Ư�� ���� �н��� �Ϸ� 6���� �����ϱ�!" border="0"><div id="da_access" style="position: absolute; top: 50%; left: 50%; width: 154px; height: 58px; margin: -29px 0px 0px -77px; background: url(&quot;https://ssl.pstatic.net/tveta/libs/res/www/common/info/da_access.png&quot;); display: none;"></div></a></div>
		<a id="link" name="link" href="javascript:void(0)"></a>
	</div>
				</div>
				<div id="notice" class="section_option">
					<div id="box_img"><img src="img/notice_1.jpg" style="line-height:50px;"></div>
					<div id="_box">
						<div id="move">
							<ul>
								<li><a href="#"><span style="font-weight:bold;">[�ٲ��� ��ȭ�� �Դٿ�!]</span> �������� �� ������� ��ȭ!</a></li>
								<li><a href="#"><span style="font-weight:bold;">[�˻����]</span> �˻簡 �����ҿ� ������? �⸷�� ���丮 ¯!</a></li>
								<li><a href="#"><span style="font-weight:bold;">[����ĵ ����ũ]</span> ��ȭ�ο� ���忡 �������ҸӴϰ� ��Ÿ����? Ȳ����...</a></li>
								<li><a href="#"><span style="font-weight:bold;">[���Ķ�ġ]</span> �� ����ְڴٴ��� �� �Ჿ�����? �̷����� ���� �̤�</a></li>
								<li><a href="#"><span style="font-weight:bold;">[�������� �Ƿ�]</span> �������� �� ���� �ҷ��� �Ƿڸ��ϴµ� �� ������..</a></li>
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
					            	<div id="movie_sm<%if(j==1){%>_r<%}%>">
					            		<div id="movie_title">
					            			<div id="movie_img">
					            				<img src="./movie/mainimg/<%=mlist.get((i-1)*2+j).getPic() %>" width="120" height="182">
					            			</div>
					            			<div id="movie_text">
						            			<p class="movie_tit">[ <%=mlist.get((i-1)*2+j).getTitle() %> ]</p>
						            			<p class="movie_st">���� : <%for(int k=0;k<Float.parseFloat(mlist.get((i-1)*2+j).getStar())/2;k++){ %>��<%} %></p>
						            			<p class="movie_ct">�帣 : <%=mlist.get((i-1)*2+j).getGenre() %></p>
						            			<br/>
						            			<p class="movie_s">
												<%=mlist.get((i-1)*2+j).getContent().replaceAll("\\<[^>]*>","")%>
						            			</p>
					            			</div>
					            		</div>
					            	</div>
					           	<%} %>
				            	</div>
				            	
				            </div>
				            <%} %>
				            
				            <!-- ------------------------aa------------------------ -->
				            
				           
						
						</div>
				        <!-- Add Pagination -->
				        <div class="swiper-pagination"></div><!--�ϴܹ�ư-->
				        <!-- Add Arrows -->
				        <div class="swiper-button-next"></div><!--����-->
				        <div class="swiper-button-prev"></div><!--��-->
				    </div>
					</div>
					</div><!--�����̵���ü-->
				
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
							<a href="<%=request.getRequestURI()%>../product/detail.jsp?index=<%=slist.get(i-1).getIndex()%>">
								<img src="./product/newShopImg/<%=slist.get(i-1).getMainImg()%>" width="106" height="106">
								<div class="overlay_td">
								    <div class="text_td">
								    	<p style="font-size:12px; font-weight:bold;"><%=slist.get(i-1).getPrice()%></p>
								    	<p style="font-size:10px;">�ڼ�������</p>
								    </div>
								  </div>
							</a>
						</div>
					<%}%>
					</div>
					<div class="blank" style="height:1px;"></div>
					
					<div  id="google" class="section_option" style="margin-top:7px;height:150px">
						<img src="img/naPong_s.png">
					</div>
			</div>
			<!--��������-->
			<form name="loginFrm" method="post" action="./member/loginProc.jsp?url=index.jsp">
			<div id="section2">
				<div id="login" class="section_option">
					<div id="login_box">
<%if(id == null || id.equals("")){%>
						<table width="223px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff">
							<tr>
								<td height="35px">
									<input type="text" name="id" style="width:200px; height:20px; margin-left:5px; border:0px; font-size:12px; background:#f7ffdd;" align="center" placeholder="���̵�">
								</td>
							</tr>
							<tr>
								<td height="35px">
									<input type="password" name="pass" style="width:200px; height:20px; margin-left:5px; border:0px; font-size:12px; background:#f7ffdd;" align="center" placeholder="��й�ȣ">
								</td>
							</tr>
						</table>
					</div>
					
					<div id="login_button" onclick="loginCheck()"><p>�α���</p></div>
					<div id="login_other2">
						<ul>
						<li class="ulul2">
						<input type="checkbox">&nbsp;�α��λ��� ����
						</li>
						<li class="ulul2"style="margin-left:5px;"><a href="member/join.jsp">ȸ������</a></li>
						<li class="ulul2">
						<a href="member/findid.jsp">���̵�</a>
						<a href="member/findpw.jsp">��й�ȣ ã��</a>
						</li>
					</div>
<%}else{%>

<div id="logout">
			<div id="profile"></div>
			<p style="margin-top:7px; line-height:30px; font-size:16px;"><b><%=name %></b>��</p>
			<p style="font-size:12px; float:left; line-height:23px; margin-right:5px">ȯ���Դ�!</p>
			<a href="./member/mypage.jsp"><p class="myPage">����������</p></a>
			
		</div>
		<a href="./member/logout.jsp"><div id="login_button" style="position:absolute; top:0px; left:230px;"><p>�α׾ƿ�</p></div></a>
		
		
						
						<!-- <a href="./member/logout.jsp">�α׾ƿ�</a> -->
	</div>
	<div id="myPage_other">
			<div id="myPage_o_but"><a href="product/basket.jsp"><img src="img/myP_01.png"></a></div>
			<div id="myPage_o_but"><a href="#"><img src="img/myP_02.png"></a></div>
			<div id="myPage_o_but"><a href="#"><img src="img/myP_03.png"></a></div>
			<div id="myPage_o_but"><a href="#"><img src="img/myP_04.png"></a></div>
	</div>
<%}%>
				</div>
				<div id="shopping" class="section_option">
<%for(int i=0;i<(slist.size()>2?2:slist.size());i++) {%>
					<a href="#">
					<div id="shopping_<%=i+1%>">
						<img src="<%=slist.get(i).getMainImg() %>" width="150px" height="150px">
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
							<p style="color:#fff;">��ǰ ������ ����</p>
						</div>
						</a>					
				</div>
				
					<table width="334px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff">
<%for(int i=0;i<(plist.size()>2?2:plist.size());i++) {%>
						<tr>
							<td height="158px" style="border-bottom:none; padding-top:5px">
							<a href="#">
								<div id="place_img"><img src="./reserve/img/<%=pmgr.getPlaceBoard(plist.get(i).getIdx()).getMainpic()%>"></div>
								<div id="place_title">
									<p><span>[<%=plist.get(i).getLocation() %>]</span><%=plist.get(i).getContent() %> </p>
								</div>
								</a>
							</td>
						</tr>
<%} %>
					</table>
					
					<div id="Bottom" class="section_option" style="margin-top:7px;">
				<div id="addiv"><a id="ac_banner_a" href="https://nv.veta.naver.com/fxclick?eu=EU10000119&amp;ac=7609312&amp;src=3278276&amp;br=2605613&amp;evtcd=C1017&amp;x_ti=939&amp;tb=&amp;oid=&amp;sid1=&amp;sid2=&amp;rk=Wjs-zApgIskAAAZ691sAAAPf&amp;eltts=hrBclLt9fRjYMQsOCYc28A%3D%3D&amp;lu=" target="_blank"><img src="https://ssl.pstatic.net/tveta/libs/1181/1181424/82580d3497e5c47e93ba_20171207151824043.jpg" width="332" height="150" title="" alt="����û ���ڼ�����" border="0"><div id="da_access" style="position: absolute; top: 50%; left: 50%; width: 154px; height: 58px; margin: -29px 0px 0px -77px; background: url(&quot;https://ssl.pstatic.net/tveta/libs/res/www/common/info/da_access.png&quot;); display: none;"></div></a></div>
				</div>
				
			</div>
			</form>			
			<div class="blank"></div>
		</div>
		</div>

	<div id="footer_">
		<div id="footerWrap">
			<p class="a_">��������</p>
			<p class="a__">���� ��ü����</p>
		</div>
	</div>
	<div id="footer">
		<p class="Extra">Creators</p>
		
		<ul>
			<li>ũ��������</li><li class="aaa">|</li>
			<li>��������Ͻ�</li>
		</ul>
		
		<p class="Extra">Partners</p>
		<ul>
			<li>�̼���</li><li class="aaa">|</li>
			<li>�����</li><li class="aaa">|</li>
			<li>���ؿ�</li><li class="aaa">|</li>
			<li>������</li><li class="aaa">|</li>
			<li>������</li>
		</ul>
		
		<p class="Extra">Developers</p>
		<ul>
			<li>���ڵ� ���߼���</li><li class="aaa">|</li>
			<li>����API</li><li class="aaa">|</li>
			<li>���¼ҽ�</li><li class="aaa">|</li>
			<li>���ڵ� D2</li><li class="aaa">|</li>
			<li>���ڵ� ����</li>
		</ul>
		
		<div id="ul_except">
			<ul>
				<li style="padding:0;">ȸ��Ұ�</li><li class="aaa">|</li>
				<li>����ä��</li><li class="aaa">|</li>
				<li>��������</li><li class="aaa">|</li>
				<li>�̿���</li><li class="aaa">|</li>
				<li>��������ó����ħ</li><li class="aaa">|</li>
				<li>û�ҳ⺸ȣ��å</li><li class="aaa">|</li>
				<li>���ڵ���å</li><li class="aaa">|</li>
				<li>������</li><li class="aaa">|</li>
				<li>��Barcode Crop.</li>
			</ul>
		</div>
	</div>
	
</body>
</html>