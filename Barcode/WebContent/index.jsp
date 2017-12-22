<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="mgr" class="member.MemberMgr"/>
<%
		request.setCharacterEncoding("euc-kr");
		String id = (String)session.getAttribute("idKey");	
		String name = mgr.getMember(id).getName();
%>
<%
		request.setCharacterEncoding("euc-kr");
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
			<input type="text" style="width:420px; height:40px; margin:5px 0px 0px 20px; border:0px; font-size:16px;" align="center"
								placeholder="�˻��غ�����!">
				
				<div id="search_button"><img src="img/search_icon.png" onclick="location.href='./search/search.html'"></div>
				<div id="place"><img src="img/place_icon.png"></div>
			</div>
			<a href="map/MapPr.jsp">
			<div id="map"><img src="img/map_icon.png"></div>
			</a>
		</div>
	</div>
	
	<div id="nav">
		<ul>
			<li><a href="product/product_home.jsp">�Ż���߰� ����</a></li>
			<li class="ulul"><a href="reserve/reserve_home.jsp">���������� ����</a></li>
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
				            <%for(int i=1; i<6; i++ ){ %>
				            <div class="swiper-slide" id="s_<%=i%>">
				            <div id="movie_wrap">
				            
					            	<div id="movie_sm">
					            		<div id="movie_title">
					            			<div id="movie_img">
					            				<img src="img/movie_image.jpg" width="120" height="182">
					            			</div>
					            			<div id="movie_text">
						            			<p class="movie_tit">[ �˻���� ]</p>
						            			<p class="movie_st">���� : �ڡڡڡڡ�</p>
						            			<p class="movie_ct">�帣 : �׼� / �ڹ̵�</p>
						            			<br/>
						            			<p class="movie_s">
						            			���� �տ� �����! ������ �˻�, ���� ������ ���� ������ ������!
  												��ģ ���� ������� ������ ������ �˻� �������(Ȳ����).
 												���� ���̴� �����ڰ� ����ü�� �߰� �Ǹ鼭 ���� ���Ƿ�...
						            			</p>
					            			</div>
					            		</div>
					            	</div>
					            	
					            	<div id="movie_sm_r">
					            		<div id="movie_title">
					            			<div id="movie_img">
					            				<img src="img/movie_image.jpg" width="120" height="182">
					            			</div>
					            			<div id="movie_text">
						            			<p class="movie_tit">[ �˻���� ]</p>
						            			<p class="movie_st">���� : �ڡڡڡڡ�</p>
						            			<p class="movie_ct">�帣 : �׼� / �ڹ̵�</p>
						            			<br/>
						            			<p class="movie_s">
						            			���� �տ� �����! ������ �˻�, ���� ������ ���� ������ ������!
  												��ģ ���� ������� ������ ������ �˻� �������(Ȳ����).
 												���� ���̴� �����ڰ� ����ü�� �߰� �Ǹ鼭 ���� ���Ƿ�...
						            			</p>
					            			</div>
					            		</div>
					            	</div>
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
					<%for(int i=1; i<22; i++){ %>
						<div id="shop_td">
							<a href="#">
								<img src="img/cody/<%=i %>.jpg" width="106" height="106">
								<div class="overlay_td">
								    <div class="text_td">
								    	<p style="font-size:12px; font-weight:bold;">��ǰ����</p>
								    	<p style="font-size:10px;">�ڼ�������</p>
								    </div>
								  </div>
							</a>
						</div>
					<%}%>
					</div>
					<div class="blank" style="height:1px;"></div>
					
					<div  id="google" class="section_option" style="margin-top:7px;height:150px">
				
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
<%}else{%>
						<%=name%>��
						<a href="./member/logout.jsp">�α׾ƿ�</a>
<%}%>
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
				</div>
				
				<div id="shopping" class="section_option">
					<a href="#">
					<div id="shopping_1">
						<img src="img/09.jpg" width="150px" height="150px">
						<div id="other_text">
							<p class="title">
							[20�볲ģ��]
							</p><!-- title -->
							<p class="account">
							�̷��Ը� ������ ��Ż��! �� �ڵ� ��¿���Ӵ� 
							</p><!-- account -->
							<p class="price">
							74,000��
							</p><!-- price -->
						</div>
					</div>
					</a>
					
					<a href="#">
					<div id="shopping_2">
						<img src="img/03.jpg" width="150px" height="150px">
							<div id="other_text">
								<p class="title">
								[ī����Ʈ����]
								</p><!-- title -->
								<p class="account">
								ģ����� �Բ� ���ٸ� �Ϳ��� ���� �Ծ����! 
								</p><!-- account -->
								<p class="price">
								54,500��
								</p><!-- price -->
						</div>
					</div>
					</a>
					
					<a href="product/product_home.jsp">
						<div id="more">
							<p style="color:#fff;">��ǰ ������ ����</p>
						</div>
						</a>					
				</div>
				
					<table width="334px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px lightgray solid; background:#fff">
						<tr>
							<td height="158px" style="border-bottom:none; padding-top:5px">
							<a href="#">
								<div id="place_img"><img src="img/view_S/01.jpg"></div>
								<div id="place_title">
									<p><span>[����ī��]</span> �ȱ���ȭ�� �����Ϸ� ��������! ������ 100��...</p>
								</div>
								</a>
							</td>
						</tr>
						<tr>
							<td height="158px" style="border-top:none;">
							<a href="#">
								<div id="place_img"><img src="img/view_S/02.jpg"></div>
								<div id="place_title">
									<p><span>[����ī]</span> �ȱ���ȭ�� �����Ϸ� ��������! ������ 100��...</p>
								</div>
								</a>
							</td>
						</tr>
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