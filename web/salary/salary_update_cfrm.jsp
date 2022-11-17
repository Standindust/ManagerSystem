<%@ include file="common.jsp" %>
<%@ page contentType="text/html; charset=GB2312" %>

<HTML>

<!-- Mirrored from web.hichina.com/sitemanager/templet/007/left5/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:03:26 GMT -->
<HEAD>
<TITLE>
<!--Your Company Name-->
Template
</TITLE>
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<!--CharSet-->
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
<link rel="stylesheet" href="images/css.css" type="text/css">
<SCRIPT ID=clientEventHandlersJS LANGUAGE=javascript>
<!--

function window_onload() {
<!--Page.OnLoad-->
}

//-->
</SCRIPT>

<%
if ( session.getAttribute("UserName")==null || session.getAttribute("UserName")=="" || session.getAttribute("UserType")==null || session.getAttribute("UserType")=="")
{
    session.removeAttribute("UserName");
    session.removeAttribute("UserType");
	response.sendRedirect("login/login_exit.jsp");
	//超级管理员页面
}
%>


</HEAD>
<BODY BGCOLOR=#333333 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" LANGUAGE=javascript onLoad="return window_onload()">
<!--Counter-->
<!--Something Here-->
<p align="center">
<TABLE WIDTH=778 BORDER=0 CELLPADDING=0 CELLSPACING=0 class="bg" align="center">
  <TR>
		<TD>
			<IMG SRC="images/index_01.jpg" WIDTH=213 HEIGHT=196></TD>
		
    <TD>
      <table width="565" border="0" cellspacing="0" cellpadding="0" class="pic" height="196">
        <tr> 
          <td height="119" width="13">&nbsp;</td>
          <td height="119" width="552">&nbsp;</td>
        </tr>
        <tr> 
          <td height="33" width="13">&nbsp;</td>
          <td height="33" width="552"><b><span class="text"><font size="3" color="#FFFFFF">
<!--Your Company Name-->
公司财务部——员工工资管理 
</font></span><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#FFFFFF">
<!--Your Company Name.English-->
 Enterprise Finance Department
</font></b></td>
        </tr>
        <tr> 
          <td width="13">&nbsp;</td>
          <td width="552">&nbsp;</td>
        </tr>
      </table>
    </TD>
	</TR>
	<TR>
		
    <TD align="center" valign="top">
      <table width="90%" border="0" cellspacing="10" cellpadding="0">
        <tr> 
          <td align="center">&nbsp; </td>
        </tr>

        <tr> 
          <td align="center"> 
            <table width="176" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td height="27" width="46">&nbsp;</td>
                <td height="27" width="130"><b><a href="#"><font color="#FFFFFF"><span class="text">
<!--Language-->
<!--Something Here-->
                  </span></font></a></b></td>
              </tr>
            </table>
          </td>
        </tr>


        <tr> 
          <td align="center"> 
            <table width="176" border="0" cellspacing="0" cellpadding="0" class="button">
              <tr> 
                <td height="27" width="46">&nbsp;</td>
                <td height="27" width="130"><b><a href="../menu_index/finance_department_index.jsp"><font color="#FFFFFF"><span class="text">公司财务部
                  </span></font></a></b></td>
              </tr>
            </table>
          </td>
        </tr>





<!--Button1.Content.Begin-->
        <tr> 
          <td align="center"> 
            <table width="176" border="0" cellspacing="0" cellpadding="0" class="button">
              <tr> 
                <td height="27" width="46">&nbsp;</td>
                <td height="27" width="130"><b>
<!--Button1.Link-->
<a href="salaryoneinfor_query.jsp">
				<font color="#FFFFFF">
				<span class="text">
<!--Button1-->
员工工资查询                  </span></font></a></b></td>
              </tr>
            </table>
          </td>
        </tr>
<!--Button1.Content.End-->

<!--Button1.Content.Begin-->
        <tr> 
          <td align="center"> 
            <table width="176" border="0" cellspacing="0" cellpadding="0" class="button">
              <tr> 
                <td height="27" width="46">&nbsp;</td>
                <td height="27" width="130"><b>
<!--Button1.Link-->
<a href="salary_insert.jsp">
				<font color="#FFFFFF">
				<span class="text">
<!--Button1-->
员工工资添加                  </span></font></a></b></td>
              </tr>
            </table>
          </td>
        </tr>
<!--Button1.Content.End-->

<!--Button2.Content.Begin-->
        <tr> 
          <td align="center"> 
            <table width="176" border="0" cellspacing="0" cellpadding="0" class="button">
              <tr> 
                <td height="27" width="46">&nbsp;</td>
                <td height="27" width="130"><b>
<!--Button2.Link-->
<a href="salary_update.jsp">
				<font color="#FFFFFF">
				<span class="text">
<!--Button2-->
员工工资修改                  </span></font></a></b></td>
              </tr>
            </table>
          </td>
        </tr>
<!--Button2.Content.End-->



<!--Button3.Content.Begin-->
        <tr> 
          <td align="center"> 
            <table width="176" border="0" cellspacing="0" cellpadding="0" class="button">
              <tr> 
                <td height="27" width="46">&nbsp;</td>
                <td height="27" width="130"><b>
<!--Button3.Link-->
<a href="salaryoneinfor_delete.jsp">
				<font color="#FFFFFF">
				<span class="text">
<!--Button3-->
员工工资删除				</span></font></a></b></td>
              </tr>
            </table>
          </td>
        </tr>
<!--Button3.Content.End-->

<!--Button3.Content.Begin-->
        <tr> 
          <td align="center"> 
            <table width="176" border="0" cellspacing="0" cellpadding="0" class="button">
              <tr> 
                <td height="27" width="46">&nbsp;</td>
                <td height="27" width="130"><b>
<!--Button3.Link-->
<a href="salary_all_infor_page.jsp">
				<font color="#FFFFFF">
				<span class="text">
<!--Button3-->
员工工资信息				</span></font></a></b></td>
              </tr>
            </table>
          </td>
        </tr>
<!--Button3.Content.End-->



<!--Button4.Content.Begin-->
        <tr> 
          <td align="center"> 
            <table width="176" border="0" cellspacing="0" cellpadding="0" class="button">
              <tr> 
                <td height="27" width="46">&nbsp;</td>
                <td height="27" width="130"><b>
<!--Button4.Link-->
<a href="../login/login_exit.jsp">
				<font color="#FFFFFF">
				<span class="text">
<!--Button4-->
退出系统                  </span></font></a></b></td>
              </tr>
            </table>
          </td>
        </tr>
<!--Button4.Content.End-->

        <tr> 
          <td align="center">&nbsp;</td>
        </tr>
      </table>
    </TD>
		
    <TD align="center" valign="top"> 
<!--IndexPage.Content.Begin-->



<%
       String SalaryId=request.getParameter("SalaryId1");	   
	   	 //  out.println("SalaryId="+SalaryId);
	   String EmpId=request.getParameter("EmpId");
	   	  // out.println("EmpId="+EmpId);
	   String BasicSalary =request.getParameter("BasicSalary");
	   	  // out.println("BasicSalary="+BasicSalary);
	   String Item1=request.getParameter("Item1");
	   	  // out.println("Item1="+Item1);
	   String Item2=request.getParameter("Item2");
	   	  // out.println("Item2="+Item2);
	   String Item3=request.getParameter("Item3");
	   	  // out.println("Item3="+Item3);
	   String Item4=request.getParameter("Item4");
	   	 //  out.println("Item4="+Item4);
	   String Item5=request.getParameter("Item5");
	   	 //  out.println("Item5="+Item5);
	   String SalaryTime=request.getParameter("SalaryTime");
	   	  // out.println("SalaryTime="+SalaryTime);	 
%>
<jsp:useBean id="salary" scope="session" class="salary.SalaryBean"/>
<%
// int result = salary.InsertSalary(SalaryId, EmpId,BasicSalary,Item1,Item2,Item3,Item4,Item5,SalaryTime);
 int nResult= salary.updateSalary(SalaryId, EmpId,BasicSalary,Item1,Item2,Item3,Item4,Item5,SalaryTime);
 if(nResult==1)
 {
 out.println("修改成功！修改后员工工资的列表信息如下：");
 Salary salary1 = salary.getSalaryDetails(SalaryId);
 %>
<table width="520" height="369" border="12" align="center">
  <tr>
    <td colspan="2" align="center">员工工资信息
      </td>
  </tr>
  <tr>
    <td width="225">工资编号</td>
    <td width="402">&nbsp;<%=convert(salary1.getSalaryId())%> </td>
  </tr>
  <tr>
    <td>员工编号</td>
    <td>&nbsp;<%=convert(salary1.getEmpId())%></td>
  </tr>
  <tr>
    <td>基本工资</td>
    <td>&nbsp;<%=salary1.getBasicSalary()%></td>
  </tr>
  <tr>
    <td>月度奖金</td>
    <td>&nbsp;<%=salary1.getItem1()%></td>
  </tr>
  <tr>
    <td>季度奖金</td>
    <td>&nbsp;<%=salary1.getItem2()%></td>
  </tr>
  <tr>
    <td>年度奖金</td>
    <td>&nbsp;<%=salary1.getItem3()%></td>
  </tr>
  <tr>
    <td>加班费用</td>
    <td>&nbsp;<%=salary1.getItem4()%></td>
  </tr>
  <tr>
    <td>鼓励奖金</td>
    <td>&nbsp;<%=salary1.getItem5()%></td>
  </tr>
  <tr>
    <td>时间</td>
    <td>&nbsp;<%=convert(salary1.getSalaryTime())%></td>
  </tr>
</table>

<%
}
else
{
out.println("修改失败！因为其它原因！");
}
%>






<!--IndexPage.Content.End-->
<br>
      <table width="94%" border="0" cellspacing="0" cellpadding="0" align="center" class="englishfont" height="1">
        <tr> 
          <td bgcolor="#000000"> </td>
        </tr>
      </table>
      <br>
      <table width="94%" border="0" cellspacing="0" cellpadding="0" align="center" class="text">
        <tr> 
          <td> 
            <div align="center"><font color="#FFFFFF">
<!--Your Company Name-->
任晓明毕业设计——
<!--TCopyRight-->
 版权所有
@2006<br>
<!--TAddress-->
公司地址:ysu
<!--Address-->
<br>
<!--TTelephone-->
电话:
<!--Telephone-->
<!--TEMail-->
 电子邮件:ren@126.com
<!--EMail-->
<A HREF='mailto:
<!--Email-->

'>
<!--Email-->
</A>
</font></div>
            <p></p>
            <div align="center"></div>
          </td>
        </tr>
      </table>
    </TD>
	</TR>
</TABLE>
<p></p>
</BODY>

<!-- Mirrored from web.hichina.com/sitemanager/templet/007/left5/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:03:26 GMT -->
</HTML>