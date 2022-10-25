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
	io.deleteAllFile("D:\\1pyidentity\\imgdata\\"+temp);
	for(int i=1;i<=40;i++){
		io.deleteFile("D:\\1pyidentity\\imgdata\\allface\\"+id+"."+i+".0.guest.jpg");
	}
	io.trainall();
	int i=db.executeUpdate("UPDATE guestIn SET outTime=NOW() WHERE roomNumber="+id+";");
	int j=db.executeUpdate("UPDATE backup SET outTime=NOW() WHERE roomNumber="+id+";");
	int k=db.executeUpdate("delete from guest WHERE roomNumber="+id+";");
	int l=db.executeUpdate("delete from guestIn WHERE roomNumber="+id+";");
	int g=db.executeUpdate("UPDATE guestIn SET isUsed=0 WHERE roomNumber="+id+";");
	if(i==1||i==2||j==1||j==2)
		{out.println("<script language='javaScript'> alert('退房成功，点击确定后自动跳到主页！');</script>");
		room r=new room();
		r.setRoomNumber(Integer.parseInt(id));
		r.upDateRoomOut();
		response.setHeader("refresh","1;url=../index.jsp");
		}
		else{
		out.println("<script language='javaScript'> alert('删除失败，点击确定后自动跳到主页！');</script>");
		response.setHeader("refresh","1;url=../index.jsp");
		}
     db.close();
	%>

</body>
</html>
