<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
		request.setCharacterEncoding("euc-kr");
%>

<!doctype>
<html>
<meta charset="utf-8">
<head>
	<title>상품코너</title>
	<link rel="stylesheet" href="../css/detail_style.css" type="text/css">
	<script src="http://code.jquery.com/jquery-1.7.0.min.js"></script>
	
</head>
<body id="w_rap"  onscroll="myFunction()">
<div id="all"><!-- header -->
		<div id="header_">
			<div id="header">
				<div id="wrap2">
					<a href="../index.jsp">
					<div id="logo"></div>
					</a>
					
					<a href="product_home.jsp">
					<div id="subject"><p><span>신상ㆍ중고</span> &nbsp;상품 Corner</p></div>
					</a>
					<div id="login">
					<a href="../member/login.jsp">
						<table width="70px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px #b73400 solid; background:background:#ff5b1b; margin-bottom:7px;">
							<tr>
								<td height="30px;"><p>로그인</p></td>
							</tr>
						</table>
						</a>
					</div>
				</div>
			</div>
			
			
			<div id="nav">
				<div id="wrap2">
					<div id="navLeft">
						<ul>
							<li><a href="product_new.jsp">신상품</a></li><li class="ulul" id="aaa">|</li>
							<li class="ulul"><a href="product_used.jsp">중고세상</a></li><li class="ulul" id="aaa">|</li>
							<li class="ulul"><a href="product_review.jsp">솔직리뷰</a></li><li class="ulul" id="aaa">|</li>
							<li class="ulul"><a href="product_best100.jsp">베스트100</a></li><li class="ulul" id="aaa">|</li>
							<li class="ulul"><a href="product_notice.jsp">공지사항</a></li><li class="ulul" id="aaa">|</li>
							<li class="ulul"><a href="product_QnA.jsp">Q&A </a></li>
						</ul>
					</div>
					<div id="navRight">
						<table border="0">
							<tr>
								<td><a href="basket.jsp">장바구니</a></td>
							</tr>
						</table>
					</div>
				</div>
				
			</div>
		</div>
</div>


	<div id="wrap_">
		<div id="wrap2" >
			<div id="search">
				<div id="search_box">
				<input type="text" style="width:420px; height:30px; margin:5px 0px 0px 10px; border:0px; font-size:16px;" align="center"
								placeholder="검색해보세용!">
					<div id="search_button">
						<img src="../img/search_icon.png" width="45px" height="45px">
					</div>
				</div>
			</div>
		</div>
	</div>

<!-- detail_header -->

<div id ="wrap3">
	<div id="detail_header">
		<div id="detail_header_">
		<table width="1080px" height="180px" cellpadding="5" cellspacing="0" border="0" align="center"
							style="border-collapse:collapse; border:none; background:#fff;
							margin-left:10px; margin-top:10px; float:left; text-align:left; font-size:14px;">
			<tr>
				<td colspan="5" height="50px" style="font-weight:bold; font-size:18px; border-bottom:1px lightgray solid;">
					[상품제목] 상품_상세이름
				</td>
				<td  height="36px"
						style="font-size:16px; font-weight:bold; text-align:right; margin-right:30px; border-bottom:1px lightgray solid;">
						<p style="margin-right:10px;">[리뷰천사] / 재고:15,641개</p>
				</td>
				
			</tr>
			
			<tr>
				<td colspan="5" height="30px;"></td>
				<td   height="36px" width="270px;"></td>
			</tr>
			
			<tr>
				<td rowspan="8" width="400px" height="400px">
					<img src="../img/02.jpg" width="400px" height="400px">
				</td>
				
				<td   height="36px" width="30px;" rowspan="9" style="border-right:1px lightgray solid;"></td>
				<td   height="36px" width="30px;"></td>
				<td   colspan="2" height="60px">
					<p style="font-size:18px; font-weight:bold;">가격 : 
					<span style="font-size:30px; color:#ff4800;">38,000원</span></p>
				</td>
				<td   height="36px" width="270px;"></td>
			</tr>
			
			<tr>
				<td   height="36px" width="30px;"></td>
				<td colspan="3" height="120px" rowspan="3" style="border-bottom:1px lightgray dotted">
					<p style="line-height:25px;">배송비 : <span>2,500원</span></p>
					<p style="line-height:25px;">배송일 : <span>2~3일 소요</span></p>
					<p style="line-height:25px;">원산지 : <span>대한민국</span></p>
				</td>
				
			</tr>
	
			<tr>
				<td   height="36px" width="30px;"></td>
				
			</tr>
			
			<tr>
				<td   height="36px" width="30px;"></td>
				
			</tr>
				
			<tr>
				<td   height="36px" width="30px;"></td>
				<td colspan="3" rowspan="3" height="120px">
					<p style="margin-top:10px;">옵션</p>
						<select style="margin:10px 0px 10px 0px; width:300px; height:30px;">
						<option>옵션을 선택하시오.</option>
						<option>색상1</option>
						<option>색상2</option>
					</select>
					
					<p>추가구성</p>
					<select style="margin:10px 0px 10px 0px; width:300px; height:30px;">
						<option>옵션을 선택하시오.</option>
						<option>색상1</option>
						<option>색상2</option>
					</select>
				</td>
				
			</tr>
			
			<tr>
				<td   height="36px" width="30px;"></td>
				
			</tr>
			
			<tr>
				<td   height="36px" width="30px;"></td>
				
			</tr>
			
			<tr>
				<td   height="36px" width="30px;"></td>
				<td colspan="2" height="50px"style="border-top:1px lightgray dotted;">
					<p>최대구매수량 : 10개&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;★★★★☆ 4.1</p>
				</td>
				
				<!--별점 / 상품리뷰 (건)/ 좋아요 / 공유 -->
				<td  height="36px" width="270px;">
					<table width="300px" height="20px" cellpadding="5" cellspacing="0" border="0" align="center"
								style="border-collapse:collapse; border:none; background:#fff;
								 float:left; text-align:left; font-size:12px; text-align:center;">
								<tr>
									
									<td width="90" style="border-right:1px lightgray solid">
										<P>리뷰 <span>2,156 건</span></p>
									</td>
									<td width="90">
										<p>
										<a href="#">
										♡ <span>18,661</span>
										</a>
										</p>
									</td>
								</tr>
					</table>
				</td>
			</tr>
			
		</table>
		
		
		<div id="button_sns">
			<div id="insta"><a href="#"><img src="../img/insta.png"></a></div>
			<div id="fb"><a href="#"><img src="../img/fb.png"></a></div>
		</div>
		<div id="detail_button">
			<div id="buy_">
				<p>구매하기</p>
			</div>
			<div id="detail_basket">
				<p>장바구니</p>
			</div>
		</div>
		
		</div>
	</div>
</div>

<!-- detail_slider -->
<div id="wrap">
	<div id="detail_slider">
		<div id="detail_slider_">
		
		</div>
	</div>
	
	<!-- nav_2 -->

<div id="nav_2">

</div>


<script type="text/javascript">
		function myFunction(){
		var elmnt = document.getElementById("w_rap");
		var y = elmnt.scrollTop;
		
		
			if(y<945){
				document.getElementById("nav_2").className = "unfixed";
			}else{
				document.getElementById("nav_2").className = "fixed";
			}
		
		}
	</script>

<div id="detail_img">
	<div id="detail_p_info"></div>
	<div id="detail_review"></div>
	<div id="detail_QnA"></div>
	<div id="detail_s_info"></div>
</div>
	
	
</div>

	<script type="text/javascript">
	(function($) {
		  var $doc = $(document);
		  var $win = $(window);
		  $.fn.scrollFollower = function (options){
		    var options = $.extend({}, $.fn.scrollFollower.defaults, options);
				if (options.pageWidth)
					var pageWidth    = parseInt(options.pageWidth);
				else
				{
					return false;
				}
		    var $layer = $(this);
		    var varType      = options.varType;
		    var pageAlign    = options.pageAlign;
		    var offset       = pageWidth/2;
		    var layerPositon = options.type;
		    var margin       = parseInt(options.margin);
		    var speed        = parseInt(options.speed);
		    var easing       = options.easing;
		    var topMargin    = parseInt(options.topMargin);
		    var minTop       = parseInt(options.minTop);
		    var marginResult = offset + margin;
		    $layer.css('z-index', options.zindex);
		    $layer.css("position","absolute");
		    if (layerPositon === 'left')
		     varType = 'right';
		    function resetXPosition()
		    {
		      if (pageAlign === 'center')
		      {
		        var $screenSize = $('body').width();
		        var halfScreenSize = $screenSize/2;
		        xPosition = halfScreenSize + marginResult;
		      }
		      else if (pageAlign === 'left')
		      {
		        varType   = 'left';
		        xPosition = pageWidth + margin;
		      }
		      $layer.css(varType, xPosition);
		    }
		    resetXPosition();
		    $layer.css('top',topMargin);
		    $win.resize(resetXPosition);
		    $win.scroll(function(){
		      $top = $doc.scrollTop();
		      if ($top > 300)
		        yPosition = $top + minTop;
		      else
		        yPosition = topMargin;
		      $layer.animate({"top":yPosition }, {duration:speed, easing:easing, queue:false});
		    });	
		  };
		  $.fn.scrollFollower.defaults = {
		    varType:'left',
		    pageAlign:'left',
		    type:'left',
		    topMargin:0,
		    minTop:0,
		    margin:0,
		    speed:400,
		    easing:'linear',
		    zindex:10
		    };
		})( jQuery );
	</script>
	
	<script type="text/javascript">
		$(document).ready(function(){
				var speed = 500; //스크롤속도
				$(".gotop").css("cursor","pointer").click(function(){
					$('body','html').animate({scrollTop:0},speed);
				});
			});
	</script>
	<script type="text/javascript">
		$(document).ready(function(){
			$('#float').scrollFollower({
				pageAlign:'center',
				pageWidth:1000,
				type:'right',
				topMargin:380,
				minTop:180,
				margin:80,
				speed:500,
				easing:'swing',
				zindex:10
			});
		});
	</script>
	
	<div id="float">
		<div id="view_product">
			<p>최근 본 상품</p>
			<a href="#">
			<div id="view_product_link"></div>
			</a>
			<a href="#">
			<div id="view_product_link" class="top_space"></div>
			</a>
			
			<div id="button" class="top_space">
				<table width="40" cellpadding="5" cellspacing="0" border="1" align="center"
							style="border-collapse:collapse; border:1px lightgray solid; background:#fff;
							valign:center; margin-top:10px;">
					<tr>
						<td height="20px">
							<a href="#">
								<p><</p>
							</a>
						</td>
						<td height="20px">
							<a href="#">
								<p>></p>
							</a>
						</td>
					</tr>
				</table>
			</div>			
		</div>
		
		<div id="recom_pro">
			<p>추천 상품</p>
			<a href="#">
			<div id="view_product_link"></div>
			</a>

		</div>
		
		<div id="google">
			<p>광고 상품</p>
			<a href="#">
			<div id="view_product_link"></div>
			</a>

		</div>
		
		<div id="top" onclick="scrolling()">
			<p> ▲ Top</p>
		</div>
		
		<script type="text/javascript">
			function scrolling(){
				$('html, body').stop().animate({scrollTop:'0'}, 700);
			}
		</script>
		
	</div>


<!-- footer -->
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