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
  <h2>��ʷ������ס��Ϣ�б�</h2>

<center>

  	
	<table align=center width=900 border=1>
	  <tr><th>���<th>����<th>����<th>����<th>�Ա�<th>ID<th>��ϵ��ʽ<th>�Ǽ���סʱ��<th>�˷�ʱ��
	   			
	  <jsp:useBean id="db" class="hotel.model.DBBean" scope="page"/>
	
	  <%
	  String s="select *from backup order by OUTTIME,roomNumber;";
	  
	  ResultSet rs=db.executeQuery(s);
	  int i=1;
	  while(rs.next()){
	    int id=rs.getInt(1);
	    out.println("<tr><td>"+i+
	    		"</td><td>"+rs.getString(1)
	    +"</td><td>"+rs.getString(6)
	    +"</td><td>"+rs.getString(3)
	    +"<td>"+rs.getString(4)
	    +"</td><td>"+rs.getString(2)
	    +"</td><td>"+rs.getString(5)
	    +"</td><td>"+rs.getString(7)
	    +"</td><td>"+ rs.getString(8)
	    +"</td></tr>");
	 i++;
	 
	  }
	 
 	 
	
		
	  rs.close();
	  db.close();
	  %>
	  
	</table><a href="index.jsp">������ҳ</a>
  </center> 
  </form>

  </body>
  