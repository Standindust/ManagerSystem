<%@ page contentType="text/html; charset=GBK" 
import="java.util.*" import="hotel.model.room"%>
<html>
  <head>
    <title>������Ϣ</title>
  </head>  
  <body>
  <center>
  <h2>������Ϣ�б�</h2>
    <form action="view/judgeRoomBed.jsp" method="post">
  <table border bordercolor="black">
  <tr><th>���<th>����<th>�ɽ��еǼ�����<th>�Ƿ�ʹ��<th>ѡ��
    <%// String str = request.getParameter("r");
      //request.setAttribute("str1", str);
     // String str2 = (String)request.getAttribute("str1");
    ArrayList<room>  list=(ArrayList<room>)request.getAttribute("list");
        int i=1;
        
        for(room ui:list){
    %>
 <tr>    <td align="center"><%=i%>
		
 		<td align="center"><%=ui.getRoomNumber()%>
         <td align="center"><%=ui.getRoomBed()%>
         <td align="center"><% int a=ui.getisUsed(); 
         String b;
         
         if(a==1){
        	 b="��ʹ��";
         }else{
        	 b="δʹ��";
         }
         %><%=b%>      
		
         <% 
         
			
         if(ui.getisUsed()!=1){%><td align="center">
      <input  name="xuanze" type="radio" value=<%=ui.getRoomNumber()%> >
         <% }else{%><td>����ʹ��<% }%>
        	 
        
         
    <td align="center">
   </tr>
    <%       i++;        }    %>


  </table>
<input type="submit" value="�ύ">


  </form>
  </center>
  </body>
  