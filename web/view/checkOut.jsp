<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" import="hotel.model.*" %>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<head><title>退房</title></head>
<body>
  <jsp:useBean id="db" class="hotel.model.DBBean" scope="page"/>
  <jsp:useBean id="io" class="hotel.control.FaceCollection" scope="page"/>
	<%

	String id=request.getParameter("id");
	String temp=id.substring(0,4);
	io.deleteAllFile("D:\\1pyidentity\\imgdata\\guest\\"+temp);
	io.deleteAllFile("D:\\1pyidentity\\imgdata\\guest\\"+temp+".redoimg");
	io.deleteAllFile("D:\\1pyidentity\\imgdata\\allface\\"+temp);
	io.trainall();
//	String str ="UPDATE guestIn SET outTime=NOW() WHERE roomNumber="+temp+";";
	int i=db.executeUpdate("UPDATE guestIn SET outTime=NOW() WHERE roomNumber="+temp+";");
	int j=db.executeUpdate("UPDATE backup SET outTime=NOW() WHERE roomNumber="+temp+";");
	int k=db.executeUpdate("delete from guest WHERE roomNumber="+temp+";");
	int l=db.executeUpdate("delete from guestIn WHERE roomNumber="+temp+";");
	int g=db.executeUpdate("UPDATE guestIn SET isUsed=0 WHERE roomNumber="+temp+";");
//	out.println(str+k+l+g);
	if(i==1||i==2||j==1||j==2)
		{out.println("<script language='javaScript'> alert('退房成功，点击确定后自动跳到主页！');</script>");
		room r=new room();
		r.setRoomNumber(Integer.parseInt(temp));
		r.upDateRoomOut();
		response.setHeader("refresh","1;url=index.jsp");
		}
		else{
		out.println("<script language='javaScript'> alert('删除失败，点击确定后自动跳到主页！');</script>");
		response.setHeader("refresh","1;url=index.jsp");
		}
     db.close();
	%>

</body>
</html>
