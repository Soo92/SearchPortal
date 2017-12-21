<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<jsp:useBean id ="mgr_shop" class="member.ShoppingMgr"/>
<jsp:useBean id ="bean" class="member.ShoppingBean"/>
<jsp:setProperty  name="bean" property="*"/>
<jsp:setProperty  name="bean" property="title" value="dd"/>
<jsp:setProperty  name="bean" property="account" value="dd"/>
<jsp:setProperty  name="bean" property="stock" value="dd"/>
<jsp:setProperty  name="bean" property="price" value="dd"/>

<%request.setCharacterEncoding("euc-kr");
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

%>

<!doctype>
<html>
	<meta charset="utf-8">
	<head>
	
	</head>
	<body>
		<p>title : <%=title %></p>
		<p><%=account %></p>
		<p><%=stock %></p>
		<p><%=price %></p>
		<p><%=shipAccount %></p>
		<p><%=shipDate %></p>
		<p><%=origin %></p>
		<p><%=option %></p>
		<p><%=proAdd %></p>
		<p><%=maxBuy %></p>
		<p><%=Seller %></p>		
	</body>
</html>