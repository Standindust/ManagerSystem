<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8" import="hotel.model.room"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>判断床位</title>
</head>
<body>

<%  boolean p;
System.out.println("Begin:");
//String str = request.getParameter((String)request.getAttribute("str1"));
//String str =request.getParameter("r");
//if(str!=null){
	//if(str.equals("标单")||str.equals("商务单人间")||str.equals("豪华大床房")){
		//p=true;}

//else{
		//p=false;
	//}
	int str =Integer.parseInt(request.getParameter("xuanze"))/100;
	
		if(str==11){
			p=true;
			}else if(str==13){
				p=true;
			}else if(str==15){
				p=true;
				}
			
		

	else{
			p=false;
		}
if(p){System.out.println("true:");%><jsp:forward page="sinGuest.jsp"></jsp:forward><%
	
	
}else{System.out.println("false:");%>
<jsp:forward page="douGuest.jsp"></jsp:forward>	<%
	
}

	
%>

</body>
</html>