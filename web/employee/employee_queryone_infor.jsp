<%@ page contentType="text/html; charset=GB2312" %>
<%@ page import="java.util.*" %>
<%@ page import="employees.*" %>
<%@ page import="java.util.Properties" %>
<%@ page errorPage="errorpage.jsp" %>
<%!
   public String convert(String s){
    try{
     	return new String(s.getBytes("Gb2312"),"GB2312");
    }catch(Exception e){return null;}
   }
%>

<head>
<title>Untitled Document</title>
</head>

<body>
<p>
请输入要查询员工的编号，进行查询该员工详细信息：
</p>
<form id="form1" name="form1" method="POST" action="employee_queryone_infor.jsp">
<label>
  <input type="text" name="EmpId" value="" />
  </label>
  <label>
  <input type="submit" name="Submit" value="查询" />
  </label>
  <label>
  <input type="reset" name="Submit2" value="重新设置" />
  </label>
</form>
<jsp:useBean id="employees" scope="session" class="employees.EmployeesBean"/>
<%
 String EmpId=request.getParameter("EmpId");
 if(EmpId!=null)
 {
      Employees employees1 = employees.getEmployeesDetails(EmpId);
        if(employees1==null)
		{
           out.println("不存在该员工的基本信息");
		 }
        else
        {
          out.println("员工的信息列表如下：");
%>
<form id="form1" name="form1" method="post" action="">
<table width="616" height="514" border="1" >
  <tr>
    <td colspan="2">&nbsp;  员工<%=convert(employees1.getEmpId())%> 的详细信息：
      <input type="hidden" name="EmpId1" value="<%=convert(employees1.getEmpId())%>"></td>
    </tr>
  <tr>
    <td width="136">EmpId</td>
    <td width="434">
      <input type="text" name="EmpId" value="<%=convert(employees1.getEmpId())%>" disabled="disabled"  />    </td>
  </tr>
  <tr>
    <td>EmpName</td>
    <td>
      <input type="text" name="EmpName" value="<%=convert(employees1.getEmpName())%>" disabled="disabled" />   </td>
  </tr>
  <tr>
    <td>DepId</td>
    <td>
      <input type="text" name="DepId" value="<%=convert(employees1.getDepId())%>" disabled="disabled"/>   </td>
  </tr>
  <tr>
    <td>Sex</td>
    <td>
      <input type="text" name="Sex" value="<%=convert(employees1.getSex())%>" disabled="disabled" />   </td>
  </tr>
  <tr>
    <td>Nationality</td>
    <td>
      <input type="text" name="Nationality" value="<%=convert(employees1.getNationality())%>" disabled="disabled" />   </td>
  </tr>
  <tr>
    <td>Birth</td>
    <td>
      <input type="text" name="Birth" value="<%=convert(employees1.getBirth())%>"  disabled="disabled" />  </td>
  </tr>
  <tr>
    <td>Academic</td>
    <td>
      <input type="text" name="Academic" value="<%=convert(employees1.getAcademic())%>" disabled="disabled" />   </td>
  </tr>
  <tr>
    <td>Marital</td>
    <td>
      <input type="text" name="Marital" value="<%=convert(employees1.getMarital())%>" disabled="disabled" />  </td>
  </tr>
  <tr>
    <td>Original</td>
    <td>
      <input type="text" name="Original" value="<%=convert(employees1.getOriginal())%>" disabled="disabled" />    </td>
  </tr>
  <tr>
    <td>Id_Card</td>
    <td>
      <input type="text" name="Id_Card" value="<%=convert(employees1.getId_Card())%>" disabled="disabled" />   </td>
  </tr>
  <tr>
    <td>Mobile</td>
    <td>
      <input type="text" name="Mobile" value="<%=convert(employees1.getMobile())%>" disabled="disabled" />    </td>
  </tr>
  <tr>
    <td>Memo</td>
    <td>
      <textarea name="Memo" cols="60" rows="6"  disabled="disabled"><%=convert(employees1.getMemo())%></textarea>  </td>
  </tr>
</table>
</form>
<%
}
}
%>



</body>
</html>
