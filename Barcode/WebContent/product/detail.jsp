<%-- <%@page import="jdk.nashorn.internal.parser.TokenStream"%> --%>
<%@page import="java.util.StringTokenizer"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="mgr_shop" class="member.ShoppingMgr"/>
<jsp:useBean id="bean" class="member.ShoppingBean"/>
<%
	    int index = Integer.parseInt(request.getParameter("index"));	
		bean = mgr_shop.getShopping(index);
		String title = bean.getTitle();
		String account = bean.getAccount();
		String stock = bean.getStock();
		String price = bean.getPrice();
		String shipAccount = bean.getShipAccount();
		String shipDate = bean.getShipDate();
		String origin = bean.getOrigin();
		String option = bean.getOpt();
		String proAdd = bean.getProAdd();
		int maxBuy = bean.getMaxBuy();
		String mainImg = bean.getMainImg();
		String listImg = bean.getListImg();
		String detailImg = bean.getDetailImg();
		double proStar = bean.getProStar();
		int reviewNum = bean.getReviewNum();
		int likeNum = bean.getLikeNum();
		String Seller = bean.getSeller();
		
		request.setCharacterEncoding("euc-kr");
%>

<!doctype>
<html>
<meta charset="utf-8">
<head>
	<title>상품코너</title>
		<link rel="stylesheet" href="../css/common.css" type="text/css">
	<link rel="stylesheet" href="../css/default.css" type="text/css">
	<link rel="stylesheet" href="../css/detail_style.css" type="text/css">

	<script src="http://code.jquery.com/jquery-1.7.0.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
  
  $("a").on('click', function(event) {

  
    if (this.hash !== "") {
  
      event.preventDefault();
      var hash = this.hash;
      $('html, body').animate({
        scrollTop: $(hash).offset().top-140
      }, 800, function(){  
        window.location.hash = hash;
      });
    }
  });
});
</script>
</head>
<body id="w_rap"  onscroll="myFunction()"  onload="nextImg()">
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
					[<%=title %>] <%=account %>
				</td>
				<td  height="36px"
						style="font-size:16px; font-weight:bold; text-align:right; margin-right:30px; border-bottom:1px lightgray solid;">
						<p style="margin-right:10px;">[<%=Seller %>] / 재고:<%=stock %>개</p>
				</td>
				
			</tr>
			
			<tr>
				<td colspan="5" height="30px;"></td>
				<td   height="36px" width="270px;"></td>
			</tr>
			
			<tr>
				<td rowspan="8" width="400px" height="400px">
					<img src="<%=mainImg %>" width="400px" height="400px">
				</td>
				
				<td   height="36px" width="30px;" rowspan="9" style="border-right:1px lightgray solid;"></td>
				<td   height="36px" width="30px;"></td>
				<td   colspan="2" height="60px">
					<p style="font-size:18px; font-weight:bold;">가격 : 
					<span style="font-size:30px; color:#ff4800;"><%=price %>원</span></p>
				</td>
				<td   height="36px" width="270px;"></td>
			</tr>
			
			<tr>
				<td   height="36px" width="30px;"></td>
				<td colspan="3" height="120px" rowspan="3" style="border-bottom:1px lightgray dotted">
					<p style="line-height:25px;">배송비 : <span><%=shipAccount %>원</span></p>
					<p style="line-height:25px;">배송일 : <span><%=shipDate %>일 소요</span></p>
					<p style="line-height:25px;">원산지 : <span><%=origin %></span></p>
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
						<% StringTokenizer opt=new StringTokenizer(option,",");
								for(int i=0;opt.hasMoreElements();i++){
						%>
						<option><%=opt.nextToken()%></option>
						<%}%>
					</select>
					
					<p>추가구성</p>
					<select style="margin:10px 0px 10px 0px; width:300px; height:30px;">
						<option>추가구성을 선택하시오.</option>
						<% StringTokenizer prA = new StringTokenizer(proAdd,",");
								for(int x=0;prA.hasMoreElements();x++){
						%>
						<option><%=prA.nextToken() %></option>
						<%} %>
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
					<p>최대구매수량 : <%=maxBuy %>개&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;★★★★☆ <%=proStar %></p>
				</td>
				
				<!--별점 / 상품리뷰 (건)/ 좋아요 / 공유 -->
				<td  height="36px" width="270px;">
					<table width="300px" height="20px" cellpadding="5" cellspacing="0" border="0" align="center"
								style="border-collapse:collapse; border:none; background:#fff;
								 float:left; text-align:left; font-size:12px; text-align:center;">
								<tr>
									
									<td width="90" style="border-right:1px lightgray solid">
										<P>리뷰 <span><%=reviewNum %> 건</span></p>
									</td>
									<td width="90">
										<p>
										<a href="#">
										♡ <span><%=likeNum %></span>
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

<script type="text/javascript">
       var pos = 0;
       var a=0;
       var term = 31;
     
	 function aa(){
         
         var imgNext = document.getElementById("detail_slider_");
         var id = setInterval(frame1, 5);
         
         function frame1(){
            clearInterval(sliderAuto);
            
               if(pos < term*0 && pos > term*-1){
                   pos++;
                   imgNext.style.left =pos*5+'px';
                      
                   if(pos==0){
                    clearInterval(id);
                    } //0이되면 멈춰라
               }// 0 보단 작고 -200보단 클때 왼쪽으로 이동해라.
               
               else if (pos <= term*-1 && pos > term*-2) {
                   pos++;
                   imgNext.style.left =pos*5+'px';
            
                   if(pos== term*-1){
                       clearInterval(id);
                      
                         }   //   function frame1. else if. if
                     }

               else if (pos <= term*-2 && pos > term*-3) {
                   pos++;
                   imgNext.style.left =pos*5+'px';
                
                   if(pos== term*-2){
                       clearInterval(id);
                      
                         }   //   function frame1. else if. if
                     }

               else if (pos <= term*-3) {
                   pos++;
                   imgNext.style.left =pos*5+'px';
            
                   if(pos== term*-3){
                       clearInterval(id);
                      
                         }   //   function frame1. else if. if
                     }
              
               }   //   function frame1()
               
            setInterval(sliderAuto);
            
            }        

	   function bb(){
             var imgNext = document.getElementById("detail_slider_");
             var id = setInterval(frame1, 5);
                function frame1(){
            //clearInterval(sliderAuto);
                   if(pos > 0){
                       pos--;
                       imgNext.style.left =pos*5+'px';
                       if(pos==0){
                           clearInterval(id);
                       }
                   }
                   else if (pos > term*-1) {
                       pos--;
                       imgNext.style.left =pos*5+'px';
                       if(pos== term*-1){
                           clearInterval(id);
                       }
                   }
                   else if (pos > term*-2) {
                       pos--;
                       imgNext.style.left =pos*5+'px';
                       /* console.log(a);
                       console.log(pos);
                       console.log("b"); */
                       if(pos==term*-2){
                           clearInterval(id);
                       }
                   }
                   else if (pos > term*-3) {
                       pos--;
                       imgNext.style.left =pos*5+'px';
          
                       if(pos==term*-3){
                           clearInterval(id);
                       }
                   }
                   else if (pos > term*-4) {
                       pos--;
                       imgNext.style.left =pos*5+'px';
                       if(pos==term*-4){
                           clearInterval(id);
                       }
                   }
             }
          setInterval(sliderAuto);
      }
      function nextImg(){
             sliderAuto = setInterval(bb, 2036);
      }
</script>

<div id="wrap" style="padding-top:20px;">
	<div id="detail_slider">		

			<div id="button_slider">
				<div id="next_button" onclick="bb()"></div>
				<div id="pre_button" onclick="aa()"></div>
			</div>
	<div id="detail_slider_">			
			<div id="product_box"></div>
			<div id="product_box"></div>
			<div id="product_box"></div>
			<div id="product_box"></div>
			<div id="product_box"></div>
			<div id="product_box"></div>
			<div id="product_box"></div>
			<div id="product_box"></div>
			<div id="product_box"></div>
			<div id="product_box"></div>
			<div id="product_box"></div>
			<div id="product_box"></div>
			<div id="product_box"></div>
		</div>
	</div>
	
	<!-- nav_2 -->

<div id="nav_2">
	<ul>
		<li><a href="#detail_p_info">상품정보</a></li><li id="navSpace" class="nav_2_ul">|</li>
		<li class="nav_2_ul"><a href="#detail_review">상품리뷰</a></li><li id="navSpace" class="nav_2_ul">|</li>
		<li class="nav_2_ul"><a href="#detail_QnA">상품 QnA</a></li><li id="navSpace" class="nav_2_ul">|</li>
		<li class="nav_2_ul"><a href="#detail_s_info">판매자 정보</a></li>
	</ul>
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
	
<!-- contents -->
<div id="detail_img">
	<div id="detail_p_info">
		<img src="<%=detailImg %>">
	</div>
	
	<div id="detail_review">
		<div id="detail_QnA_header">
			<div id="spaceBox"></div>
			<h1>Review</h1>
			<h3>현재 상품에 대한 문의</h3>
			
			<p>저희 제품의 만족도는 어떠셨나요? ÷) 
			<span style="font-weight:900">평점을 남겨주세요!</span></p>
		</div>
		
				<div id="detail_QnA_contents">
			<table id="bl_table" border="0" cellpadding="0" cellspacing="0" width="95%" style="margin:0 auto;margin-top:30px;">
				<tbody>
					<tr>
						<th id="bl_title_no" class="bl_title_bl_no">NO.</th>
						<th class="bl_title_bl_icon">&nbsp;</th>
						
						<th class="bl_title_bl_product">Product</th>
						
						<th class="bl_title_bl_subject">CONTENT</th>
						<th class="bl_title_bl_star">STAR</th>
						<th class="bl_title_bl_name">NAME</th>
						
						<th class="bl_title_bl_date">DATE</th>
						
						<th id="bl_title_hits" class="bl_title_bl_hits">HITS</th>
				</tr>
				<!-- INLINE NOTICE -->

				<tr class="bl_noticeline">
					<td class="bl_no">:::</td>
					<td class="bl_icon"><img src="../img/b2_notice.gif"></td>
					<td class="  lt" colspan="6">제품/배송 등의 문의사항을 남겨주세요! 전화보다 신속하게 답변드리도록 하겠습니다!</td>
				</tr>

				<!-- LIST REPEAT -->

				<tr class="bl_noticeline">
					<td class="bl_no">:::</td>
					<td class="bl_icon"><img src="../img/b2_notice.gif"></td>
					
					<td class="bl_subject_lt" colspan="2"><img src="../img/b2_head.gif" style="margin-right:5px;" align="absmiddle"><span class="BoardBrandName"></span><a href="board.html?code=storia0720_board4&amp;page=1&amp;board_cate=&amp;type=v&amp;num1=995513&amp;num2=00000&amp;lock=N&amp;flag=notice">교환/반품 시 꼭 확인해 주세요!</a>&nbsp;&nbsp;</td>
					<td class="bl_star">★★★★☆</td>
					<td class="bl_name"><div style="padding-left:2px; padding-right:2px;"><img src="../img/b2_adminimg.gif" border="0"></div></td>
					
					<td class="bl_date"><span class="bl_oldcontent">2016/06/02</span></td>
					
					<td class="bl_hits">1844</td>
				</tr>
<%for(int i=0;i<10;i++) {%>
				<tr onclick="reView('tr<%=i%>')" class="bl_evenline">
					<td class="bl_no">27003</td>
					<td class="bl_icon"><img src="../img/b2_lock.gif" border="0"></td>
					
					<td class=" "></td>
					
					<td class="bl_subject_lt" colspan="1"><img src="../img/b2_head.gif" style="margin-right:5px;" align="absmiddle"><span class="BoardBrandName"></span><a style="cursor:pointer;" onclick="reView()">주문취소</a>&nbsp;&nbsp;<img src="../img/b2_new.gif" border="0" align="absmiddle"></td>
					
					<td class="bl_star">★★★★☆	</td>
					<td class="bl_name"><div style="padding-left:2px; padding-right:2px;">ne24285</div></td>
					
					<td class="bl_date"><span class="bl_newcontent">2017/12/10</span></td>
					
					<td class="bl_hits">0</td>
				</tr>
				<tr id="tr<%=i %>" style="display:none">
					<th><p>본문</p></th>
					<td colspan="2" id="review_img" width="700px">
						<!--<img src="" width="500px" height="500px">-->
					</td>
						<td colspan="5"><!--text-->
							<p style="margin:10px; text-indent:0;line-height:1.5;">진짜 진기한씨는 엄기준씨가 해주셔야 해요ㅋㅋ저번 드라마 sbs에서 방영 되었던'유령'에서 근엄하고 무게있는 카리스마무언가 심오함과 냉철? 차가운 느낌에서 정말 인상깊었는데요만약 이번 영화에 출연 된다면 엄기준씨의 차가운 이미지 보다는 캐릭터 진기한에 맞게 해주셔도 제격일 것 같아요.
		옥황상제는 이순재나 신구가 해주면 코미디로 바뀔 것 같은 우스꽝 스런 농담도 해봅니다. 하하하하하하하하
		하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하 하하하하</p>
						</td>
				</tr>
<%} %>
					</table>
					</div>			

		<script type="text/javascript">
		function reView(a) {
			alert(a);
		if( document.getElementById(a).style.display == "none")
		    document.getElementById(a).style.display = "";
			else
		    document.getElementById(a).style.display = "none";
		}
		</script> 

				<!-- LIST REPEAT END -->
				</tbody>
			</table>
			
		<div id="detail_QnA_bottom">	
			<div id="detail_QnA_nextNpre">
				<table border="0" cellpadding="0" cellspacing="0" width="150px" style="margin:0 auto;margin-top:30px;">
					<tr>
						<td width="15px" style="text-align:center;"><a href="#">1</a></td>
						<td width="15px" style="text-align:center;"><a href="#">2</a></td>
						<td width="15px" style="text-align:center;"><a href="#">3</a></td>
						<td width="15px" style="text-align:center;"><a href="#">4</a></td>
						<td width="15px" style="text-align:center;"><a href="#">5</a></td>
						<td width="15px" style="text-align:center;"><a href="#">6</a></td>
						<td width="15px" style="text-align:center;"><a href="#">7</a></td>
						<td width="15px" style="text-align:center;"><a href="#">8</a></td>
						<td width="15px" style="text-align:center;"><a href="#">9</a></td>
						<td width="15px" style="text-align:center;"><a href="#">10</a></td>
						<td><a href="#"><img src="../img/next.jpg" width="15px" height="15px"></a></td>
					</tr>
				</table>
			</div>
			
			<div id="detail_QnA_radio">
				<input type="radio" id="detail_QnA_radioButton" name="QnA_search"><label class="radioSpace">제목</label>
				<input type="radio" id="detail_QnA_radioButton" name="QnA_search"><label class="radioSpace">이름</label>
				<input type="radio" id="detail_QnA_radioButton" name="QnA_search"><label class="radioSpace">내용</label>
				<input type="text" id="QnAsearchBox">
			</div>
			
			<div id="detail_QnA_Writer">
				<input type="button" class="button" value="작성하기">
			</div>
		</div>
	</div>
		
	</div><!--review-->
	
	
	
	<div id="detail_QnA">
		<div id="detail_QnA_header">
			<div id="spaceBox"></div>
			<h1>QnA</h1>
			<h3>현재 상품에 대한 문의</h3>
			
			<p>상품에 대해 궁금하신점이 있으시다면
			<span style="font-weight:900">친절하게 답변</span>해 드리겠습니다 ^-^</p>
		</div>
		
		<div id="detail_QnA_contents">
			<table id="bl_table" border="0" cellpadding="0" cellspacing="0" width="95%" style="margin:0 auto;margin-top:30px;">
				<tbody>
					<tr>
						<th id="bl_title_no" class="bl_title_bl_no">NO.</th>
						<th class="bl_title_bl_icon">&nbsp;</th>
						
						<th class="bl_title_bl_product">Product</th>
						
						<th class="bl_title_bl_subject">CONTENT</th>
						<th class="bl_title_bl_name">NAME</th>
						
						<th class="bl_title_bl_date">DATE</th>
						
						<th id="bl_title_hits" class="bl_title_bl_hits">HITS</th>
				</tr>
				<!-- INLINE NOTICE -->

				<tr class="bl_noticeline">
					<td class="bl_no">:::</td>
					<td class="bl_icon"><img src="../img/b2_notice.gif"></td>
					<td class="  lt" colspan="5">제품/배송 등의 문의사항을 남겨주세요! 전화보다 신속하게 답변드리도록 하겠습니다!</td>
				</tr>

				<!-- LIST REPEAT -->

				<tr class="bl_noticeline">
					<td class="bl_no">:::</td>
					<td class="bl_icon"><img src="../img/b2_notice.gif"></td>
					
					
					
					<td class="bl_subject_lt" colspan="2"><img src="../img/b2_head.gif" style="margin-right:5px;" align="absmiddle"><span class="BoardBrandName"></span><a href="board.html?code=storia0720_board4&amp;page=1&amp;board_cate=&amp;type=v&amp;num1=995513&amp;num2=00000&amp;lock=N&amp;flag=notice">교환/반품 시 꼭 확인해 주세요!</a>&nbsp;&nbsp;</td>
					<td class="bl_name"><div style="padding-left:2px; padding-right:2px;"><img src="../img/b2_adminimg.gif" border="0"></div></td>
					
					<td class="bl_date"><span class="bl_oldcontent">2016/06/02</span></td>
					
					<td class="bl_hits">1844</td>
				</tr>

				<tr class="bl_evenline">
					<td class="bl_no">27003</td>
					<td class="bl_icon"><img src="../img/b2_lock.gif" border="0"></td>
					
					<td class=" "></td>
					
					<td class="bl_subject_lt" colspan="1"><img src="../img/b2_head.gif" style="margin-right:5px;" align="absmiddle"><span class="BoardBrandName"></span><a href="board.html?code=storia0720_board4&amp;page=1&amp;board_cate=&amp;type=v&amp;num1=985887&amp;num2=00000&amp;lock=Y">주문취소</a>&nbsp;&nbsp;<img src="../img/b2_new.gif" border="0" align="absmiddle"></td>
					<td class="bl_name"><div style="padding-left:2px; padding-right:2px;">ne24285</div></td>
					
					<td class="bl_date"><span class="bl_newcontent">2017/12/10</span></td>
					
					<td class="bl_hits">0</td>
				</tr>

				<tr class="bl_oddline">
					<td class="bl_no">27002</td>
					<td class="bl_icon"><img src="../img/b2_lock.gif" border="0"></td>
					
					<td class="bl_product"><a href="/shop/shopdetail.html?branduid=1187620"><img src="../img/0020040000063.jpg" border="0" height="70" align="center"></a></td>
					
					<td class="bl_subject_lt" colspan="1"><img src="../img/b2_head.gif" style="margin-right:5px;" align="absmiddle"><a class="BoardBrandName" href="/shop/shopdetail.html?branduid=1187620">[9부 반가발 내츄럴 지젤 롱 웨이브]</a><a href="board.html?code=storia0720_board4&amp;page=1&amp;board_cate=&amp;type=v&amp;num1=985888&amp;num2=00000&amp;lock=Y">재입고</a>&nbsp;&nbsp;<img src="../img/b2_new.gif" border="0" align="absmiddle"></td>
					<td class="bl_name"><div style="padding-left:2px; padding-right:2px;">cj401124</div></td>
					
					<td class="bl_date"><span class="bl_newcontent">2017/12/10</span></td>
					
					<td class="bl_hits">0</td>
				</tr>

				<tr class="bl_evenline">
					<td class="bl_no">27001</td>
					<td class="bl_icon"><img src="../img/b2_lock.gif" border="0"></td>
					
					<td class="bl_product"><a href="/shop/shopdetail.html?branduid=1121832"><img src="../img/0020050000013.jpg" border="0" height="70" align="center"></a></td>
					
					<td class="bl_subject_lt" colspan="1"><img src="../img/b2_head.gif" style="margin-right:5px;" align="absmiddle"><a class="BoardBrandName" href="/shop/shopdetail.html?branduid=1121832">[트리플 볼륨 원터치 붙임머리 루즈 컬]</a><a href="board.html?code=storia0720_board4&amp;page=1&amp;board_cate=&amp;type=v&amp;num1=985890&amp;num2=00000&amp;lock=Y">다크브라운 언제 입고되나요</a>&nbsp;&nbsp;<img src="../img/b2_new.gif" border="0" align="absmiddle"></td>
					<td class="bl_name"><div style="padding-left:2px; padding-right:2px;">hill003</div></td>
					
					<td class="bl_date"><span class="bl_newcontent">2017/12/10</span></td>
					
					<td class="bl_hits">1</td>
				</tr>

				<tr class="bl_oddline">
					<td class="bl_no">27000</td>
					<td class="bl_icon"><img src="../img/b2_lock.gif" border="0"></td>
					
					<td class=" "></td>
					
					<td class="bl_subject_lt" colspan="1"><img src="../img/b2_head.gif" style="margin-right:5px;" align="absmiddle"><span class="BoardBrandName"></span><a href="board.html?code=storia0720_board4&amp;page=1&amp;board_cate=&amp;type=v&amp;num1=985891&amp;num2=00000&amp;lock=Y">주문취소</a>&nbsp;&nbsp;<img src="../img/b2_new.gif" border="0" align="absmiddle"></td>
					<td class="bl_name"><div style="padding-left:2px; padding-right:2px;">joyj0919</div></td>
					
					<td class="bl_date"><span class="bl_newcontent">2017/12/10</span></td>
					
					<td class="bl_hits">1</td>
				</tr>
				
				

				<tr class="bl_evenline">
					<td class="bl_no">26999</td>
					<td class="bl_icon"><img src="../img/b2_lock.gif" border="0"></td>
					
					
					<td class="bl_product"><a href="/shop/shopdetail.html?branduid=1118806"><img src="../img/0020010000033.jpg" border="0" height="70" align="center"></a></td>
					
					<td class="bl_subject_lt" colspan="1"><img src="../img/b2_head.gif" style="margin-right:5px;" align="absmiddle"><a class="BoardBrandName" href="/shop/shopdetail.html?branduid=1118806">[엠마스 드림 롱 웨이브]</a><a href="board.html?code=storia0720_board4&amp;page=1&amp;board_cate=&amp;type=v&amp;num1=985892&amp;num2=00000&amp;lock=Y">열처리 가능여부 가발망 여부</a>&nbsp;&nbsp;<img src="../img/b2_new.gif" border="0" align="absmiddle"></td>
					<td class="bl_name"><div style="padding-left:2px; padding-right:2px;">nae0919</div></td>
					
					<td class="bl_date"><span class="bl_newcontent">2017/12/10</span></td>
					
					<td class="bl_hits">0</td>
				</tr>

				<tr class="bl_oddline">
					<td class="bl_no">26998</td>
					<td class="bl_icon"><img src="../img/b2_lock.gif" border="0"></td>
					
					<td class=" "></td>
					
					<td class="bl_subject_lt" colspan="1"><img src="../img/b2_head.gif" style="margin-right:5px;" align="absmiddle"><span class="BoardBrandName"></span><a href="board.html?code=storia0720_board4&amp;page=1&amp;board_cate=&amp;type=v&amp;num1=985893&amp;num2=00000&amp;lock=Y">색상변경</a>&nbsp;&nbsp;<img src="../img/b2_new.gif" border="0" align="absmiddle"></td>
					<td class="bl_name"><div style="padding-left:2px; padding-right:2px;">tnals824</div></td>
					
					<td class="bl_date"><span class="bl_newcontent">2017/12/10</span></td>
					
					<td class="bl_hits">0</td>
				</tr>

				<tr class="bl_evenline">
					<td class="bl_no">26997</td>
					<td class="bl_icon"><img src="../img/b2_lock.gif" border="0"></td>
					
					<td class=" "></td>
					
					<td class="bl_subject_lt" colspan="1"><img src="../img/b2_head.gif" style="margin-right:5px;" align="absmiddle"><span class="BoardBrandName"></span><a href="board.html?code=storia0720_board4&amp;page=1&amp;board_cate=&amp;type=v&amp;num1=985894&amp;num2=00000&amp;lock=Y">9부반가발 착용가능한 길이인가요??</a>&nbsp;&nbsp;<img src="../img/b2_new.gif" border="0" align="absmiddle"></td>
					<td class="bl_name"><div style="padding-left:2px; padding-right:2px;">yuuuuj</div></td>
					
					<td class="bl_date"><span class="bl_newcontent">2017/12/10</span></td>
					
					<td class="bl_hits">1</td>
				</tr>

				<tr class="bl_oddline">
					<td class="bl_no">26996</td>
					<td class="bl_icon"><img src="../img/b2_lock.gif" border="0"></td>
					
					<td class=" "></td>
					
					<td class="bl_subject_lt" colspan="1"><img src="../img/b2_head.gif" style="margin-right:5px;" align="absmiddle"><span class="BoardBrandName"></span><a href="board.html?code=storia0720_board4&amp;page=1&amp;board_cate=&amp;type=v&amp;num1=985895&amp;num2=00000&amp;lock=Y">입고도 안되고 입금은 했는데 사이즈 교환 해주실수 있으신가요 ,,?</a>&nbsp;&nbsp;<img src="../img/b2_new.gif" border="0" align="absmiddle"></td>
					<td class="bl_name"><div style="padding-left:2px; padding-right:2px;">rhaehfdl4892</div></td>
					
					<td class="bl_date"><span class="bl_newcontent">2017/12/10</span></td>
					
					<td class="bl_hits">0</td>
				</tr>

				<tr class="bl_evenline">
					<td class="bl_no">26995</td>
					<td class="bl_icon"><img src="../img/b2_lock.gif" border="0"></td>
					
					<td class=" "></td>
					
					<td class="bl_subject_lt" colspan="1"><img src="../img/b2_head.gif" style="margin-right:5px;" align="absmiddle"><span class="BoardBrandName"></span><a href="board.html?code=storia0720_board4&amp;page=1&amp;board_cate=&amp;type=v&amp;num1=985896&amp;num2=00000&amp;lock=Y">배송전 주문취소부탁드려요</a>&nbsp;&nbsp;<img src="../img/b2_new.gif" border="0" align="absmiddle"></td>
					<td class="bl_name"><div style="padding-left:2px; padding-right:2px;">Shorty9949</div></td>
					
					<td class="bl_date"><span class="bl_newcontent">2017/12/10</span></td>
					
					<td class="bl_hits">0</td>
				</tr>

				<tr class="bl_oddline">
					<td class="bl_no">26994</td>
					<td class="bl_icon"><img src="../img/b2_lock.gif" border="0"></td>
					
					<td class=" "></td>
					
					<td class="bl_subject_lt" colspan="1"><img src="../img/b2_head.gif" style="margin-right:5px;" align="absmiddle"><span class="BoardBrandName"></span><a href="board.html?code=storia0720_board4&amp;page=1&amp;board_cate=&amp;type=v&amp;num1=985897&amp;num2=00000&amp;lock=Y">재입고 문의</a>&nbsp;&nbsp;<img src="../img/b2_new.gif" border="0" align="absmiddle"></td>
					<td class="bl_name"><div style="padding-left:2px; padding-right:2px;">tnals123</div></td>
					
					<td class="bl_date"><span class="bl_newcontent">2017/12/10</span></td>
					
					<td class="bl_hits">1</td>
				</tr>

				<!-- LIST REPEAT END -->
				</tbody>
			</table>
			
		<div id="detail_QnA_bottom">	
			<div id="detail_QnA_nextNpre">
				<table border="0" cellpadding="0" cellspacing="0" width="150px" style="margin:0 auto;margin-top:30px;">
					<tr>
						<td width="15px" style="text-align:center;"><a href="#">1</a></td>
						<td width="15px" style="text-align:center;"><a href="#">2</a></td>
						<td width="15px" style="text-align:center;"><a href="#">3</a></td>
						<td width="15px" style="text-align:center;"><a href="#">4</a></td>
						<td width="15px" style="text-align:center;"><a href="#">5</a></td>
						<td width="15px" style="text-align:center;"><a href="#">6</a></td>
						<td width="15px" style="text-align:center;"><a href="#">7</a></td>
						<td width="15px" style="text-align:center;"><a href="#">8</a></td>
						<td width="15px" style="text-align:center;"><a href="#">9</a></td>
						<td width="15px" style="text-align:center;"><a href="#">10</a></td>
						<td><a href="#"><img src="../img/next.jpg" width="15px" height="15px"></a></td>
					</tr>
				</table>
			</div>
			
			<div id="detail_QnA_radio">
				<input type="radio" id="detail_QnA_radioButton" name="QnA_search"><label class="radioSpace">제목</label>
				<input type="radio" id="detail_QnA_radioButton" name="QnA_search"><label class="radioSpace">이름</label>
				<input type="radio" id="detail_QnA_radioButton" name="QnA_search"><label class="radioSpace">내용</label>
				<input type="text" id="QnAsearchBox">
			</div>
			
			<div id="detail_QnA_Writer">
				<input type="button" class="button" value="작성하기">
			</div>
		</div>
	</div>
		
	</div><!--QnA-->
	
	<div id="detail_s_info">
		<table border="1">
				<caption></caption>
					<colgroup><col style="width:18%"><col style="width:32%"><col style="width:18%"><col style="width:32%"></colgroup>	
						<tbody>
						<tr>
							<th scope="row">판매자명</th>
							<td>리바트키친</td>
							<th scope="row">연락처</th>
							<td>031-1577-3332</td>
						</tr>
				
						
						<tr>
							<th scope="row">반품/교환 배송비</th>
							<td colspan="3">(구매자귀책) 0원/0원 / 초기배송비 무료시 반품배송비 부과방법 : 왕복(편도x2)</td>
						</tr>
						<tr>
							<th scope="row">반품/교환지 주소</th>
							<td colspan="3">보내실 곳: 449884 경기도 용인시 처인구 남사면 북리 54-10</td>
						</tr>
						
						
						<tr>
							<th scope="row">반품/교환 안내</th>
							<td colspan="3">시스템 주방 제품은 최종계약 후 주문생산이 진행되므로 취소/변경/환불이 불가합니다.</td>
						</tr>
				
						<tr height="200">
							<th scope="row">반품/교환 기준</th>
							<td colspan="3">상품 수령 후 7일 이내에 신청하실 수 있습니다. 단, 제품이 표시광고 내용과 다르거나 불량 등 계약과 다르게 이행된 경우는 제품 수령일부터 3개월 이내, 그 사실을 안 날 <span style="margin-left:20px;"></span>또는 알 수 있었던 날부터 30일이내에 교환/반품이 가능합니다
								<ul class="dot">
									<li>추가적으로 다음의 경우 해당하는 반품/교환은 신청이 불가능할 수 있습니다.
										<ul class="dash">
											<li>소비자의 책임 있는 사유로 상품 등이 멸실 또는 훼손된 경우 (단지, 상품 확인을 위한 포장 훼손 제외)</li>
											<li>소비자의 사용 또는 소비에 의해 상품 등의 가치가 현저히 감소한 경우</li>
											<li>시간의 경과에 의해 재판매가 곤란할 정도로 상품 등의 가치가 현저히 감소한 경우</li>
											<li>복제가 가능한 상품 등의 포장을 훼손한 경우</li>
											<li>소비자의 주문에 따라 개별적으로 생산되는 상품이 제작에 들어간 경우</li>
										</ul>
									</li>
								</ul>
							</td>
						</tr>
				
						</tbody>
					</table>
	</div><!--판매자 정보-->
</div>
	
	<div class="blank"></div>
</div>

<!-- scrolling -->

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