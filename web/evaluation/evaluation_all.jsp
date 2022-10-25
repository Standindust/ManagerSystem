<%@ include file="common.jsp" %>
<%@ page contentType="text/html; charset=GB2312" %>
<%@ page import="evaluation.*" %>
<%@ page import="employees.*" %>
<%@ page import="java.sql.*"%>

<head>
<title>Untitled Document</title>
</head>
<body>
<%
	String pg = request.getParameter("page");
	if(pg==null || pg=="") 
	{
	 pg="1";
	}
%>
<jsp:useBean id="evaluationpage" scope="session" class="evaluation.EvaluationBeanPage"/>
<jsp:useBean id="employees" scope="session" class="employees.EmployeesBean"/>
<table width="848" height="76" border="1">
  <tr>
    <td colspan="7">员工所有考勤信息</td>
  </tr>
  <tr>
    <td>EvaId</td>
    <td>EmpId</td>
    <td>EmpName</td>
    <td>EvaDate</td>
    <td>Subject</td>
    <td>Result</td>
    <td>Score</td>
 
  </tr>
 <%
    
	int i=0;
	int pgsize = 5;
	int curpage = Integer.parseInt(pg);
	int totalpage = evaluationpage.totalPage(pgsize);
	
	try{
		ResultSet rs = evaluationpage.getPageof(pg, pgsize);
		if(rs != null) {
			while(rs.next() && i<pgsize) {
			String EmpId=rs.getString("EmpId");
            Employees employees1 = employees.getEmployeesDetails(EmpId);
 %>
  <tr>
    <td>&nbsp;<%=rs.getString("EvaId")%></td>
    <td>&nbsp;<%=rs.getString("EmpId")%></td>
    <td>&nbsp;<%=employees1.getEmpName()%></td>
    <td>&nbsp;<%=rs.getString("EvaDate")%></td>
    <td>&nbsp;<%=rs.getString("Subject")%></td>
    <td>&nbsp;<%=rs.getString("Result")%></td>
    <td>&nbsp;<%=rs.getString("Score")%></td>
  
  </tr>
<%
				i++;
			}
		}
	}catch(SQLException e) {}
%>
</table>
<form method="get" action="evaluation_all.jsp">
<a href="evaluation_all.jsp">返回</a>
共<%=totalpage%>页&nbsp;
<%
if(curpage>1 && totalpage>1)
	out.print("<a href=\"evaluation_all.jsp?page="+ (curpage-1)+"\">上一页</a>");
else
	out.print("上一页");
%>&nbsp;
<%
if(curpage<totalpage)
	out.print("<a href=\"evaluation_all.jsp?page="+ (curpage+1)+"\">下一页</a>");
else
	out.print("下一页");
%>

跳到第<select name="page" OnChange="document.forms[0].submit()">
<script language="JavaScript">
	for(i=1; i<=<%=totalpage%>; i++)
		document.write("<option value="+i+">"+i+"</option>")
	document.forms[0].page.options[<%=curpage-1%>].selected = true;
</script>		
	</select>页
</form>


</body>
</html>