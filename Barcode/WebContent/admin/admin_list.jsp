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
   <title>��ǰ ���������</title>
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
               <div id="subject"><p><span>��ǰ</span> &nbsp;��� Corner</p></div>
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
                     <li><a href="product_new.jsp">�߰���</a></li><li class="ulul" id="aaa">|</li>
                     <li class="ulul"><a href="product_used.jsp">��������</a></li><li class="ulul" id="aaa">|</li>
                     <li class="ulul"><a href="product_review.jsp">��ȭ����</a></li><li class="ulul" id="aaa">|</li>
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
   
      <div id="title_admin" style="width:1100px;">
         <div id="space_box"></div>
         <h2>��ǰ��� List</h2>
         <p>bingo9127 ��! ȯ���մϴ�:-) ���õ� �����Ϸ�Ǽ���!</p>
   </div>
   
   <div id="proList">
      <table width="1100px" cellpadding="5" cellspacing="0" border="0" align="center" style="border-collapse:collapse; background:background:#ff5b1b; margin-bottom:7px;">
         <tr>
            <th><input type="checkbox" value="" style="width:25px"></th>
            <th style="width:60px;">��ȣ</th>
            <th>����</th>
            <th>����</th>
            <th>�Ǹ���</th>
            <th>����</th>
            <th>���</th>
            <th>������</th>
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
            <td><%=price %>��</td>
            <td><%=stock %>��</td>
                   
            <td style="width:90px;">
                 <a href="admin_update.jsp?index=<%=idx%>">
                <input type="button" value="����" name="">
                </a>
                
                <a href="admin_delete.jsp?index=<%=idx%>">
                 <input type="button" value="����" name="" style="margin-top:10px;">
                 </a>
            </td>
          
         </tr>
         <%} %>
             
      </table>
      
      			<div id="last_button">
      			<a href="admin_pro.jsp">
					<input type="button" value="��ǰ���" style="height:30px;" onclick="proAddCheck()">
				</a>	
				<input type="button" value="��     ��" style="height:30px; margin-left:10px;">	
				<input type="button" value="��     ��" style="height:30px; margin-left:10px;">	
			</div>
      
     </div>
     
     
        <div id="footerWrap_">
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
   </div>
     
     
   </body>
</html>