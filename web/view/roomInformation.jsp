<%@ page contentType="text/html; charset=GBK" 
import="java.util.*" import="hotel.model.room"%>
<html>
  <head>
    <title>房间信息</title>
  </head>  
  <body>
  <center>
  <h2>房间信息列表</h2>
    <form action="view/judgeRoomBed.jsp" method="post">
  <table border bordercolor="black">
  <tr><th>序号<th>房号<th>可进行登记人数<th>是否被使用<th>选择
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
        	 b="已使用";
         }else{
        	 b="未使用";
         }
         %><%=b%>      
		
         <% 
         
			
         if(ui.getisUsed()!=1){%><td align="center">
      <input  name="xuanze" type="radio" value=<%=ui.getRoomNumber()%> >
         <% }else{%><td>正在使用<% }%>
        	 
        
         
    <td align="center">
   </tr>
    <%       i++;        }    %>


  </table>
<input type="submit" value="提交">


  </form>
  </center>
  </body>
  