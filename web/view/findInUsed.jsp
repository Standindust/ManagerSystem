<%@ page contentType="text/html; charset=GBK" 
import="java.util.*" import="hotel.model.guestIn"
import="hotel.model.guest"
import="hotel.model.room"
import="java.sql.*"
%>
<html>
  <head>
    <title>������Ϣ</title>
  </head>  
  <body>
  <center>
  <h2>��ǰ������ס��Ϣ�б�</h2>

<center>

  	
	<table align=center width=1200 border=1>
	  <tr><th>���<th>����<th>����<th>����<th>�Ա�<th>    ID    <th>��ϵ��ʽ<th >�Ǽ���סʱ��<th>�˷�ʱ��<th>�沿��Ϣ<th>����
	   			
	  <jsp:useBean id="db" class="hotel.model.DBBean" scope="page"/>
	
	  <%
	  String s="select *from(select * from guest left join room USING(roomNumber))e left join guestIn USING(guestId,roomNumber) order by OUTTIME,roomNumber;";
	  
	  ResultSet rs=db.executeQuery(s);
	  int i=1;String a="";

	  while(rs.next()){
	    out.println("<tr><td>"+i+
	    		"</td><td>"+rs.getString(1)
	    +"</td><td>"+rs.getString(6)
	    +"</td><td>"+rs.getString(3)
	    +"<td>"+rs.getString(4)
	    +"</td><td>"+rs.getString(2)
	    +"</td><td>"+rs.getString(5)
	    +"</td><td>"+rs.getString(9)
	    +"</td><td>"+rs.getString(10)
	    +"</td><td>"+rs.getString(11)
	    +"</td>"+"<td><a href='view/checkOut.jsp?id="+rs.getString(1)+"."+rs.getString(2)+"'>�˷�</a>&nbsp;" +
	      "<a href='view/openthedoor.jsp?id="+rs.getString(1)+"'>����</a>&nbsp;</td>"+
	      "</tr>");
	 i++;
	 
	  }
	 
 	 
	
		
	  rs.close();
	  db.close();
	  %>
	  
<%--	</table><a href="./index.jsp">������ҳ</a>--%>
  </center> 
  </form>

  </body>
  