<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" import="hotel.model.room"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>酒店管理系统</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="a.css" rel="stylesheet" type="text/css">
</head>

<body>
<div id="mainWrapper">
	<section id="offer">
		<!-- The offer section displays a banner text for promotions -->
		<h2>酒店管理系统</h2>
		<p>Hotel Manager&nbsp;&nbsp;</p>
	</section>
	<div id="content">
		<section class="sidebar">
			<div id="menubar">
				<nav class="menu">
					<h2><!-- Title for menuset 1 -->监控系统</h2>
					<hr>
					<ul>
						<!-- List of links under menuset 1 -->
						<li><jsp:include page="cam.jsp"></jsp:include></li>
					</ul>
				</nav>
				<nav class="menu">
					<h2><!-- Title for menuset 1 -->登记入住</h2>
					<hr>
					<ul>
						<!-- List of links under menuset 1 -->
						<li><jsp:include page="register_mvc.jsp"></jsp:include></li>
					</ul>
				</nav>
				<nav class="menu">
					<h2><!-- Title for menuset 1 -->查看入住记录</h2>
					<hr>
					<ul>
						<!-- List of links under menuset 1 -->
						<li><a href="./history.jsp">历史入住</a></li>
					</ul>
				</nav>
				<nav class="menu">
					<h2><!-- Title for menuset 1 -->查看当前入住情况</h2>
					<hr>
					<ul>
						<!-- List of links under menuset 1 -->
						<li><a href="./index.jsp">当前入住</a></li>
					</ul>
				</nav>
				<!-- This adds a sidebar with 1 searchbox,2 menusets, each with 4 links -->
		</section>
		<section class="mainContent">
			<div class="productRow"><!-- Each product row contains info of 3 elements -->
				<%
					int str =Integer.parseInt(request.getParameter("xuanze"))/100;
					String s="";
					if(str==11){
						s="标准单人间";
					}else if(str==13){
						s="商务单人间";
					}else if(str==15){
						s="豪华大床房";
					}else if(str==12){
						s="标准双人间";
					}else if(str==14){
						s="商务双人间";
					}else if(str==16){
						s="豪华双床房间";
					}

				%>
				<center>
					<h1>旅客入住</h1>
					<hr>
					<form name="f" method="post" action="register.action" onSubmit="return check()">
						<table>
							<tr><td align="center">选择房型:<td><input type="text" name="roomType" readonly="readonly" value=<%=s %> >
							<tr><td align="center">姓名:<td><input type="text" name="guestName"  >
							<tr><td align="center">ID:<td><input type="text" name="guestId">
							<tr><td align="center">性别:<td><input type="text" name="sex">
							<tr><td align="center">房间号:<td><input type="text" readonly="readonly" name="roomNumber" value=<%=request.getParameter("xuanze") %>>
							<tr><td align="center">phoneNumber:<td><input type="text" name="phoneNumber"></td>


						</table>

						<input type="submit" value="登记并录入人脸信息"></input>
						<input type="reset" value="重置">
					</form>

				</center>



			</div>
		</section>
	</div>

</div>
</body>
</html>
