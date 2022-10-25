<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="hotel.model.room"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>旅客入住</title>
</head>
<body><% 
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

	<input type="submit" value="登记并录入人脸信息">
<input type="reset" value="重置">
</form>
</center>
</body>
</html>