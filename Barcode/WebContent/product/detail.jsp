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
	<title>��ǰ�ڳ�</title>
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
					<div id="subject"><p><span>�Ż���߰�</span> &nbsp;��ǰ Corner</p></div>
					</a>
					<div id="login">
					<a href="../member/login.jsp">
						<table width="70px" cellpadding="5" cellspacing="0" border="1" align="center" style="border-collapse:collapse; border:1px #b73400 solid; background:background:#ff5b1b; margin-bottom:7px;">
							<tr>
								<td height="30px;"><p>�α���</p></td>
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
							<li><a href="product_new.jsp">�Ż�ǰ</a></li><li class="ulul" id="aaa">|</li>
							<li class="ulul"><a href="product_used.jsp">�߰���</a></li><li class="ulul" id="aaa">|</li>
							<li class="ulul"><a href="product_review.jsp">��������</a></li><li class="ulul" id="aaa">|</li>
							<li class="ulul"><a href="product_best100.jsp">����Ʈ100</a></li><li class="ulul" id="aaa">|</li>
							<li class="ulul"><a href="product_notice.jsp">��������</a></li><li class="ulul" id="aaa">|</li>
							<li class="ulul"><a href="product_QnA.jsp">Q&A </a></li>
						</ul>
					</div>
					<div id="navRight">
						<table border="0">
							<tr>
								<td><a href="basket.jsp">��ٱ���</a></td>
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
								placeholder="�˻��غ�����!">
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
						<p style="margin-right:10px;">[<%=Seller %>] / ���:<%=stock %>��</p>
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
					<p style="font-size:18px; font-weight:bold;">���� : 
					<span style="font-size:30px; color:#ff4800;"><%=price %>��</span></p>
				</td>
				<td   height="36px" width="270px;"></td>
			</tr>
			
			<tr>
				<td   height="36px" width="30px;"></td>
				<td colspan="3" height="120px" rowspan="3" style="border-bottom:1px lightgray dotted">
					<p style="line-height:25px;">��ۺ� : <span><%=shipAccount %>��</span></p>
					<p style="line-height:25px;">����� : <span><%=shipDate %>�� �ҿ�</span></p>
					<p style="line-height:25px;">������ : <span><%=origin %></span></p>
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
					<p style="margin-top:10px;">�ɼ�</p>
						<select style="margin:10px 0px 10px 0px; width:300px; height:30px;">
						<option>�ɼ��� �����Ͻÿ�.</option>
						<% StringTokenizer opt=new StringTokenizer(option,",");
								for(int i=0;opt.hasMoreElements();i++){
						%>
						<option><%=opt.nextToken()%></option>
						<%}%>
					</select>
					
					<p>�߰�����</p>
					<select style="margin:10px 0px 10px 0px; width:300px; height:30px;">
						<option>�߰������� �����Ͻÿ�.</option>
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
					<p>�ִ뱸�ż��� : <%=maxBuy %>��&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;�ڡڡڡڡ� <%=proStar %></p>
				</td>
				
				<!--���� / ��ǰ���� (��)/ ���ƿ� / ���� -->
				<td  height="36px" width="270px;">
					<table width="300px" height="20px" cellpadding="5" cellspacing="0" border="0" align="center"
								style="border-collapse:collapse; border:none; background:#fff;
								 float:left; text-align:left; font-size:12px; text-align:center;">
								<tr>
									
									<td width="90" style="border-right:1px lightgray solid">
										<P>���� <span><%=reviewNum %> ��</span></p>
									</td>
									<td width="90">
										<p>
										<a href="#">
										�� <span><%=likeNum %></span>
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
				<p>�����ϱ�</p>
			</div>
			<div id="detail_basket">
				<p>��ٱ���</p>
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
                    } //0�̵Ǹ� �����
               }// 0 ���� �۰� -200���� Ŭ�� �������� �̵��ض�.
               
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
		<li><a href="#detail_p_info">��ǰ����</a></li><li id="navSpace" class="nav_2_ul">|</li>
		<li class="nav_2_ul"><a href="#detail_review">��ǰ����</a></li><li id="navSpace" class="nav_2_ul">|</li>
		<li class="nav_2_ul"><a href="#detail_QnA">��ǰ QnA</a></li><li id="navSpace" class="nav_2_ul">|</li>
		<li class="nav_2_ul"><a href="#detail_s_info">�Ǹ��� ����</a></li>
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
			<h3>���� ��ǰ�� ���� ����</h3>
			
			<p>���� ��ǰ�� �������� ��̳���? ��) 
			<span style="font-weight:900">������ �����ּ���!</span></p>
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
					<td class="  lt" colspan="6">��ǰ/��� ���� ���ǻ����� �����ּ���! ��ȭ���� �ż��ϰ� �亯�帮���� �ϰڽ��ϴ�!</td>
				</tr>

				<!-- LIST REPEAT -->

				<tr class="bl_noticeline">
					<td class="bl_no">:::</td>
					<td class="bl_icon"><img src="../img/b2_notice.gif"></td>
					
					<td class="bl_subject_lt" colspan="2"><img src="../img/b2_head.gif" style="margin-right:5px;" align="absmiddle"><span class="BoardBrandName"></span><a href="board.html?code=storia0720_board4&amp;page=1&amp;board_cate=&amp;type=v&amp;num1=995513&amp;num2=00000&amp;lock=N&amp;flag=notice">��ȯ/��ǰ �� �� Ȯ���� �ּ���!</a>&nbsp;&nbsp;</td>
					<td class="bl_star">�ڡڡڡڡ�</td>
					<td class="bl_name"><div style="padding-left:2px; padding-right:2px;"><img src="../img/b2_adminimg.gif" border="0"></div></td>
					
					<td class="bl_date"><span class="bl_oldcontent">2016/06/02</span></td>
					
					<td class="bl_hits">1844</td>
				</tr>
<%for(int i=0;i<10;i++) {%>
				<tr onclick="reView('tr<%=i%>')" class="bl_evenline">
					<td class="bl_no">27003</td>
					<td class="bl_icon"><img src="../img/b2_lock.gif" border="0"></td>
					
					<td class=" "></td>
					
					<td class="bl_subject_lt" colspan="1"><img src="../img/b2_head.gif" style="margin-right:5px;" align="absmiddle"><span class="BoardBrandName"></span><a style="cursor:pointer;" onclick="reView()">�ֹ����</a>&nbsp;&nbsp;<img src="../img/b2_new.gif" border="0" align="absmiddle"></td>
					
					<td class="bl_star">�ڡڡڡڡ�	</td>
					<td class="bl_name"><div style="padding-left:2px; padding-right:2px;">ne24285</div></td>
					
					<td class="bl_date"><span class="bl_newcontent">2017/12/10</span></td>
					
					<td class="bl_hits">0</td>
				</tr>
				<tr id="tr<%=i %>" style="display:none">
					<th><p>����</p></th>
					<td colspan="2" id="review_img" width="700px">
						<!--<img src="" width="500px" height="500px">-->
					</td>
						<td colspan="5"><!--text-->
							<p style="margin:10px; text-indent:0;line-height:1.5;">��¥ �����Ѿ��� �����ؾ��� ���ּž� �ؿ䤻������ ��� sbs���� �濵 �Ǿ���'����'���� �پ��ϰ� �����ִ� ī���������� �ɿ��԰� ��ö? ������ �������� ���� �λ����µ��丸�� �̹� ��ȭ�� �⿬ �ȴٸ� �����ؾ��� ������ �̹��� ���ٴ� ĳ���� �����ѿ� �°� ���ּŵ� ������ �� ���ƿ�.
		��Ȳ������ �̼��糪 �ű��� ���ָ� �ڹ̵�� �ٲ� �� ���� �콺�� ���� ��㵵 �غ��ϴ�. ����������������
		�������� �������� �������� �������� �������� �������� �������� �������� �������� �������� �������� �������� �������� �������� �������� �������� �������� �������� �������� �������� �������� �������� �������� �������� �������� �������� �������� �������� ��������</p>
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
				<input type="radio" id="detail_QnA_radioButton" name="QnA_search"><label class="radioSpace">����</label>
				<input type="radio" id="detail_QnA_radioButton" name="QnA_search"><label class="radioSpace">�̸�</label>
				<input type="radio" id="detail_QnA_radioButton" name="QnA_search"><label class="radioSpace">����</label>
				<input type="text" id="QnAsearchBox">
			</div>
			
			<div id="detail_QnA_Writer">
				<input type="button" class="button" value="�ۼ��ϱ�">
			</div>
		</div>
	</div>
		
	</div><!--review-->
	
	
	
	<div id="detail_QnA">
		<div id="detail_QnA_header">
			<div id="spaceBox"></div>
			<h1>QnA</h1>
			<h3>���� ��ǰ�� ���� ����</h3>
			
			<p>��ǰ�� ���� �ñ��Ͻ����� �����ôٸ�
			<span style="font-weight:900">ģ���ϰ� �亯</span>�� �帮�ڽ��ϴ� ^-^</p>
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
					<td class="  lt" colspan="5">��ǰ/��� ���� ���ǻ����� �����ּ���! ��ȭ���� �ż��ϰ� �亯�帮���� �ϰڽ��ϴ�!</td>
				</tr>

				<!-- LIST REPEAT -->

				<tr class="bl_noticeline">
					<td class="bl_no">:::</td>
					<td class="bl_icon"><img src="../img/b2_notice.gif"></td>
					
					
					
					<td class="bl_subject_lt" colspan="2"><img src="../img/b2_head.gif" style="margin-right:5px;" align="absmiddle"><span class="BoardBrandName"></span><a href="board.html?code=storia0720_board4&amp;page=1&amp;board_cate=&amp;type=v&amp;num1=995513&amp;num2=00000&amp;lock=N&amp;flag=notice">��ȯ/��ǰ �� �� Ȯ���� �ּ���!</a>&nbsp;&nbsp;</td>
					<td class="bl_name"><div style="padding-left:2px; padding-right:2px;"><img src="../img/b2_adminimg.gif" border="0"></div></td>
					
					<td class="bl_date"><span class="bl_oldcontent">2016/06/02</span></td>
					
					<td class="bl_hits">1844</td>
				</tr>

				<tr class="bl_evenline">
					<td class="bl_no">27003</td>
					<td class="bl_icon"><img src="../img/b2_lock.gif" border="0"></td>
					
					<td class=" "></td>
					
					<td class="bl_subject_lt" colspan="1"><img src="../img/b2_head.gif" style="margin-right:5px;" align="absmiddle"><span class="BoardBrandName"></span><a href="board.html?code=storia0720_board4&amp;page=1&amp;board_cate=&amp;type=v&amp;num1=985887&amp;num2=00000&amp;lock=Y">�ֹ����</a>&nbsp;&nbsp;<img src="../img/b2_new.gif" border="0" align="absmiddle"></td>
					<td class="bl_name"><div style="padding-left:2px; padding-right:2px;">ne24285</div></td>
					
					<td class="bl_date"><span class="bl_newcontent">2017/12/10</span></td>
					
					<td class="bl_hits">0</td>
				</tr>

				<tr class="bl_oddline">
					<td class="bl_no">27002</td>
					<td class="bl_icon"><img src="../img/b2_lock.gif" border="0"></td>
					
					<td class="bl_product"><a href="/shop/shopdetail.html?branduid=1187620"><img src="../img/0020040000063.jpg" border="0" height="70" align="center"></a></td>
					
					<td class="bl_subject_lt" colspan="1"><img src="../img/b2_head.gif" style="margin-right:5px;" align="absmiddle"><a class="BoardBrandName" href="/shop/shopdetail.html?branduid=1187620">[9�� �ݰ��� ���� ���� �� ���̺�]</a><a href="board.html?code=storia0720_board4&amp;page=1&amp;board_cate=&amp;type=v&amp;num1=985888&amp;num2=00000&amp;lock=Y">���԰�</a>&nbsp;&nbsp;<img src="../img/b2_new.gif" border="0" align="absmiddle"></td>
					<td class="bl_name"><div style="padding-left:2px; padding-right:2px;">cj401124</div></td>
					
					<td class="bl_date"><span class="bl_newcontent">2017/12/10</span></td>
					
					<td class="bl_hits">0</td>
				</tr>

				<tr class="bl_evenline">
					<td class="bl_no">27001</td>
					<td class="bl_icon"><img src="../img/b2_lock.gif" border="0"></td>
					
					<td class="bl_product"><a href="/shop/shopdetail.html?branduid=1121832"><img src="../img/0020050000013.jpg" border="0" height="70" align="center"></a></td>
					
					<td class="bl_subject_lt" colspan="1"><img src="../img/b2_head.gif" style="margin-right:5px;" align="absmiddle"><a class="BoardBrandName" href="/shop/shopdetail.html?branduid=1121832">[Ʈ���� ���� ����ġ ���ӸӸ� ���� ��]</a><a href="board.html?code=storia0720_board4&amp;page=1&amp;board_cate=&amp;type=v&amp;num1=985890&amp;num2=00000&amp;lock=Y">��ũ���� ���� �԰�ǳ���</a>&nbsp;&nbsp;<img src="../img/b2_new.gif" border="0" align="absmiddle"></td>
					<td class="bl_name"><div style="padding-left:2px; padding-right:2px;">hill003</div></td>
					
					<td class="bl_date"><span class="bl_newcontent">2017/12/10</span></td>
					
					<td class="bl_hits">1</td>
				</tr>

				<tr class="bl_oddline">
					<td class="bl_no">27000</td>
					<td class="bl_icon"><img src="../img/b2_lock.gif" border="0"></td>
					
					<td class=" "></td>
					
					<td class="bl_subject_lt" colspan="1"><img src="../img/b2_head.gif" style="margin-right:5px;" align="absmiddle"><span class="BoardBrandName"></span><a href="board.html?code=storia0720_board4&amp;page=1&amp;board_cate=&amp;type=v&amp;num1=985891&amp;num2=00000&amp;lock=Y">�ֹ����</a>&nbsp;&nbsp;<img src="../img/b2_new.gif" border="0" align="absmiddle"></td>
					<td class="bl_name"><div style="padding-left:2px; padding-right:2px;">joyj0919</div></td>
					
					<td class="bl_date"><span class="bl_newcontent">2017/12/10</span></td>
					
					<td class="bl_hits">1</td>
				</tr>
				
				

				<tr class="bl_evenline">
					<td class="bl_no">26999</td>
					<td class="bl_icon"><img src="../img/b2_lock.gif" border="0"></td>
					
					
					<td class="bl_product"><a href="/shop/shopdetail.html?branduid=1118806"><img src="../img/0020010000033.jpg" border="0" height="70" align="center"></a></td>
					
					<td class="bl_subject_lt" colspan="1"><img src="../img/b2_head.gif" style="margin-right:5px;" align="absmiddle"><a class="BoardBrandName" href="/shop/shopdetail.html?branduid=1118806">[������ �帲 �� ���̺�]</a><a href="board.html?code=storia0720_board4&amp;page=1&amp;board_cate=&amp;type=v&amp;num1=985892&amp;num2=00000&amp;lock=Y">��ó�� ���ɿ��� ���߸� ����</a>&nbsp;&nbsp;<img src="../img/b2_new.gif" border="0" align="absmiddle"></td>
					<td class="bl_name"><div style="padding-left:2px; padding-right:2px;">nae0919</div></td>
					
					<td class="bl_date"><span class="bl_newcontent">2017/12/10</span></td>
					
					<td class="bl_hits">0</td>
				</tr>

				<tr class="bl_oddline">
					<td class="bl_no">26998</td>
					<td class="bl_icon"><img src="../img/b2_lock.gif" border="0"></td>
					
					<td class=" "></td>
					
					<td class="bl_subject_lt" colspan="1"><img src="../img/b2_head.gif" style="margin-right:5px;" align="absmiddle"><span class="BoardBrandName"></span><a href="board.html?code=storia0720_board4&amp;page=1&amp;board_cate=&amp;type=v&amp;num1=985893&amp;num2=00000&amp;lock=Y">���󺯰�</a>&nbsp;&nbsp;<img src="../img/b2_new.gif" border="0" align="absmiddle"></td>
					<td class="bl_name"><div style="padding-left:2px; padding-right:2px;">tnals824</div></td>
					
					<td class="bl_date"><span class="bl_newcontent">2017/12/10</span></td>
					
					<td class="bl_hits">0</td>
				</tr>

				<tr class="bl_evenline">
					<td class="bl_no">26997</td>
					<td class="bl_icon"><img src="../img/b2_lock.gif" border="0"></td>
					
					<td class=" "></td>
					
					<td class="bl_subject_lt" colspan="1"><img src="../img/b2_head.gif" style="margin-right:5px;" align="absmiddle"><span class="BoardBrandName"></span><a href="board.html?code=storia0720_board4&amp;page=1&amp;board_cate=&amp;type=v&amp;num1=985894&amp;num2=00000&amp;lock=Y">9�ιݰ��� ���밡���� �����ΰ���??</a>&nbsp;&nbsp;<img src="../img/b2_new.gif" border="0" align="absmiddle"></td>
					<td class="bl_name"><div style="padding-left:2px; padding-right:2px;">yuuuuj</div></td>
					
					<td class="bl_date"><span class="bl_newcontent">2017/12/10</span></td>
					
					<td class="bl_hits">1</td>
				</tr>

				<tr class="bl_oddline">
					<td class="bl_no">26996</td>
					<td class="bl_icon"><img src="../img/b2_lock.gif" border="0"></td>
					
					<td class=" "></td>
					
					<td class="bl_subject_lt" colspan="1"><img src="../img/b2_head.gif" style="margin-right:5px;" align="absmiddle"><span class="BoardBrandName"></span><a href="board.html?code=storia0720_board4&amp;page=1&amp;board_cate=&amp;type=v&amp;num1=985895&amp;num2=00000&amp;lock=Y">�԰� �ȵǰ� �Ա��� �ߴµ� ������ ��ȯ ���ֽǼ� �����Ű��� ,,?</a>&nbsp;&nbsp;<img src="../img/b2_new.gif" border="0" align="absmiddle"></td>
					<td class="bl_name"><div style="padding-left:2px; padding-right:2px;">rhaehfdl4892</div></td>
					
					<td class="bl_date"><span class="bl_newcontent">2017/12/10</span></td>
					
					<td class="bl_hits">0</td>
				</tr>

				<tr class="bl_evenline">
					<td class="bl_no">26995</td>
					<td class="bl_icon"><img src="../img/b2_lock.gif" border="0"></td>
					
					<td class=" "></td>
					
					<td class="bl_subject_lt" colspan="1"><img src="../img/b2_head.gif" style="margin-right:5px;" align="absmiddle"><span class="BoardBrandName"></span><a href="board.html?code=storia0720_board4&amp;page=1&amp;board_cate=&amp;type=v&amp;num1=985896&amp;num2=00000&amp;lock=Y">����� �ֹ���Һ�Ź�����</a>&nbsp;&nbsp;<img src="../img/b2_new.gif" border="0" align="absmiddle"></td>
					<td class="bl_name"><div style="padding-left:2px; padding-right:2px;">Shorty9949</div></td>
					
					<td class="bl_date"><span class="bl_newcontent">2017/12/10</span></td>
					
					<td class="bl_hits">0</td>
				</tr>

				<tr class="bl_oddline">
					<td class="bl_no">26994</td>
					<td class="bl_icon"><img src="../img/b2_lock.gif" border="0"></td>
					
					<td class=" "></td>
					
					<td class="bl_subject_lt" colspan="1"><img src="../img/b2_head.gif" style="margin-right:5px;" align="absmiddle"><span class="BoardBrandName"></span><a href="board.html?code=storia0720_board4&amp;page=1&amp;board_cate=&amp;type=v&amp;num1=985897&amp;num2=00000&amp;lock=Y">���԰� ����</a>&nbsp;&nbsp;<img src="../img/b2_new.gif" border="0" align="absmiddle"></td>
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
				<input type="radio" id="detail_QnA_radioButton" name="QnA_search"><label class="radioSpace">����</label>
				<input type="radio" id="detail_QnA_radioButton" name="QnA_search"><label class="radioSpace">�̸�</label>
				<input type="radio" id="detail_QnA_radioButton" name="QnA_search"><label class="radioSpace">����</label>
				<input type="text" id="QnAsearchBox">
			</div>
			
			<div id="detail_QnA_Writer">
				<input type="button" class="button" value="�ۼ��ϱ�">
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
							<th scope="row">�Ǹ��ڸ�</th>
							<td>����ƮŰģ</td>
							<th scope="row">����ó</th>
							<td>031-1577-3332</td>
						</tr>
				
						
						<tr>
							<th scope="row">��ǰ/��ȯ ��ۺ�</th>
							<td colspan="3">(�����ڱ�å) 0��/0�� / �ʱ��ۺ� ����� ��ǰ��ۺ� �ΰ���� : �պ�(��x2)</td>
						</tr>
						<tr>
							<th scope="row">��ǰ/��ȯ�� �ּ�</th>
							<td colspan="3">������ ��: 449884 ��⵵ ���ν� ó�α� ����� �ϸ� 54-10</td>
						</tr>
						
						
						<tr>
							<th scope="row">��ǰ/��ȯ �ȳ�</th>
							<td colspan="3">�ý��� �ֹ� ��ǰ�� ������� �� �ֹ������� ����ǹǷ� ���/����/ȯ���� �Ұ��մϴ�.</td>
						</tr>
				
						<tr height="200">
							<th scope="row">��ǰ/��ȯ ����</th>
							<td colspan="3">��ǰ ���� �� 7�� �̳��� ��û�Ͻ� �� �ֽ��ϴ�. ��, ��ǰ�� ǥ�ñ��� ����� �ٸ��ų� �ҷ� �� ���� �ٸ��� ����� ���� ��ǰ �����Ϻ��� 3���� �̳�, �� ����� �� �� <span style="margin-left:20px;"></span>�Ǵ� �� �� �־��� ������ 30���̳��� ��ȯ/��ǰ�� �����մϴ�
								<ul class="dot">
									<li>�߰������� ������ ��� �ش��ϴ� ��ǰ/��ȯ�� ��û�� �Ұ����� �� �ֽ��ϴ�.
										<ul class="dash">
											<li>�Һ����� å�� �ִ� ������ ��ǰ ���� ��� �Ǵ� �Ѽյ� ��� (����, ��ǰ Ȯ���� ���� ���� �Ѽ� ����)</li>
											<li>�Һ����� ��� �Ǵ� �Һ� ���� ��ǰ ���� ��ġ�� ������ ������ ���</li>
											<li>�ð��� ����� ���� ���ǸŰ� ����� ������ ��ǰ ���� ��ġ�� ������ ������ ���</li>
											<li>������ ������ ��ǰ ���� ������ �Ѽ��� ���</li>
											<li>�Һ����� �ֹ��� ���� ���������� ����Ǵ� ��ǰ�� ���ۿ� �� ���</li>
										</ul>
									</li>
								</ul>
							</td>
						</tr>
				
						</tbody>
					</table>
	</div><!--�Ǹ��� ����-->
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
				var speed = 500; //��ũ�Ѽӵ�
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
			<p>�ֱ� �� ��ǰ</p>
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
			<p>��õ ��ǰ</p>
			<a href="#">
			<div id="view_product_link"></div>
			</a>

		</div>
		
		<div id="google">
			<p>���� ��ǰ</p>
			<a href="#">
			<div id="view_product_link"></div>
			</a>

		</div>
		
		<div id="top" onclick="scrolling()">
			<p> �� Top</p>
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