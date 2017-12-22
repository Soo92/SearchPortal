<%@page import="member.ShoppingBean"%>
<%@page import="java.util.Vector"%>
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id="shop_mgr" class="member.ShoppingMgr"/>
<jsp:useBean id="bean" class="member.ShoppingBean"/>
<%
		request.setCharacterEncoding("euc-kr");
		Vector<ShoppingBean> vlist = shop_mgr.getShoppingList();
%>

<!doctype>
<html>
   <meta charset="utf-8">
   <head>
   <title>상품 등록페이지</title>
<link rel="stylesheet" href="../css/admin_style.css" type="text/css">
   </head>
   <body>
   
      <div id="all">
      <div id="header_">
         <div id="header">
            <div id="wrap2">
               <a href="../index.jsp">
               <div id="logo"></div>
               </a>
               
               <a href="product_home.jsp">
               <div id="subject"><p><span>상품</span> &nbsp;등록 Corner</p></div>
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
                     <li><a href="product_new.jsp">중고세상</a></li><li class="ulul" id="aaa">|</li>
                     <li class="ulul"><a href="product_used.jsp">술집맛집</a></li><li class="ulul" id="aaa">|</li>
                     <li class="ulul"><a href="product_review.jsp">영화나라</a></li><li class="ulul" id="aaa">|</li>
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
   
      <div id="title_admin" style="width:1100px;">
         <div id="space_box"></div>
         <h2>상품등록 List</h2>
         <p>bingo9127 님! 환영합니다:-) 오늘도 좋은하루되세요!</p>
   </div>
   
   <div id="proList">
      <table width="1100px" cellpadding="5" cellspacing="0" border="0" align="center" style="border-collapse:collapse; background:background:#ff5b1b; margin-bottom:7px;">
         <tr>
            <th><input type="checkbox" value="" style="width:25px"></th>
            <th style="width:60px;">번호</th>
            <th>사진</th>
            <th>제목</th>
            <th>판매자</th>
            <th>가격</th>
            <th>재고</th>
            <th>관리툴</th>
         </tr>
         <%
         	for(int i=0; i<vlist.size(); i++){
         		bean = vlist.get(i);
         		int idx = bean.getIndex();
         		bean = shop_mgr.getShopping(idx);
         		String Seller=bean.getSeller();
         		String title=bean.getTitle();
         		String price=bean.getPrice();
         		String account=bean.getAccount();
         		String shipAccount=bean.getShipAccount();
         		String shipDate=bean.getShipDate();
         		int maxBuy=bean.getMaxBuy();
         		String origin=bean.getOrigin();
         		String stock=bean.getStock();
         		String option=bean.getOpt();
         		String proAdd=bean.getProAdd();
         		String s_adr=bean.getS_adr();
         		String mainImg=bean.getMainImg();
         		String listImg=bean.getListImg();
         		String detailImg=bean.getDetailImg();
         		
         		if(i%2==0){
         %>
        <tr>
         <%}else{ %><tr style="background:#efefef"><%} 
       
         %>
            <td><input type="checkbox" value=""></td>
            <td><%=i+1 %></td>
            <td style="width:120px;">
            <div id="adminListImg">
               <img src="../product/<%=mainImg %>" width="100px" height="100">
            </div>
         </td>
            
            <td class="three">
         <p style="font-size:18px; font-weight:bold;">
         <%=title %>
         </p>
         <p style="color:#ff4800"><%=account %></p>
         <p style="color:gray"><%=option %></p>
         
         </td>
            
            <td><%=Seller %></td>
            <td><%=price %>원</td>
            <td><%=stock %>개</td>
                   
            <td style="width:90px;">
                 <a href="admin_update.jsp?index=<%=idx%>">
                <input type="button" value="수정" name="">
                </a>
                
                <a href="admin_delete.jsp?index=<%=idx%>">
                 <input type="button" value="삭제" name="" style="margin-top:10px;">
                 </a>
            </td>
          
         </tr>
         <%} %>
             
      </table>
      
      			<div id="last_button">
      			<a href="admin_pro.jsp">
					<input type="button" value="상품등록" style="height:30px;" onclick="proAddCheck()">
				</a>	
				<input type="button" value="수     정" style="height:30px; margin-left:10px;">	
				<input type="button" value="삭     제" style="height:30px; margin-left:10px;">	
			</div>
      
     </div>
     
     
        <div id="footerWrap_">
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
   </div>
     
     
   </body>
</html>