<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>旅客入住</title>
</head>

<center>
<h1>旅客入住</h1>
<hr><% 
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
<body>
<form name="f" method="post" action="registerDouble.action" onSubmit="return check()">
<table> 
<tr><td align="center">选择房型:<td><input type="text" name="roomType" readonly="readonly" value=<%=s %> >
<tr><td align="center">房间号:<td><input type="text" readonly="readonly"name="roomNumber" value=<%=request.getParameter("xuanze") %>>

<tr><td align="center">旅客1：<td><br>
<tr><td align="center">姓名:<td><input type="text" name="guestName1">
<tr><td align="center">ID:<td><input type="text" name="guestId1">
<tr><td align="center">性别:<td><input type="text" name="sex1">
<tr><td align="center">phoneNumber:<td><input type="text" name="phoneNumber1"></td>


<tr><td align="center">旅客2：<td><br>
<tr><td align="center">姓名:<td><input type="text" name="guestName2">
<tr><td align="center">ID:<td><input type="text" name="guestId2">
<tr><td align="center">性别:<td><input type="text" name="sex2">
<tr><td align="center">phoneNumber:<td><input type="text" name="phoneNumber2"></td>
</table>
<input type="submit" value="登记并进行人脸识别">
<input type="reset" value="重置">
</form>
</center>
</body>
</html>