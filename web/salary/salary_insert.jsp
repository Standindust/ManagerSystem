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
<script language="javascript">
function checkvalue()
{  
	var mainform = document.forms["form1"];
	if( mainform.EmpId.value.length==0 )
	{
		alert( "请输入员工编号！" );
		mainform.EmpId.focus();
		return false;
	}
	if( mainform.SalaryId.value.length==0 )
	{
		alert( "请输入员工工资编号！" );
		mainform.SalaryId.focus();
		return false;
	}
	if( mainform.BasicSalary.value.length==0 )
	{
		alert( "请输入员工的基本工资！" );
		mainform.BasicSalary.focus();
		return false;
	}
   if( mainform.Item1.value.length==0 )
	{
		alert( "请输入员工的月度奖金！" );
		mainform.Item1.focus();
		return false;
	}
  if( mainform.Item2.value.length==0 )
	{
		alert( "请输入员工的季度奖金！" );
		mainform.Item3.focus();
		return false;
	}
	if( mainform.Item4.value.length==0 )
	{
		alert( "请输入员工的年度奖金！" );
		mainform.Item4.focus();
		return false;
	}
	if( mainform.Item5.value.length==0 )
	{
		alert( "请输入员工的鼓励奖金！" );
		mainform.Item5.focus();
		return false;
	}
	if( mainform.SalaryTime.value.length==0 )
	{
		alert( "请输入时间！" );
		mainform.SalaryTime.focus();
		return false;
	}
	return true;
}

</script>


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



<form id="form1" name="form1" method="post" action="salary_insert_cfrm.jsp">
<table width="520" height="369" border="12" align="center">
  <tr>
    <td colspan="2" align="center">员工工资信息</td>
  </tr>
  <tr>
    <td width="225">工资编号</td>
    <td width="402">&nbsp;<input type="text" name="SalaryId" id="textfield" ></td>
  </tr>
  <tr>
    <td>员工编号</td>
    <td>&nbsp;<input type="text" name="EmpId" id="textfield" ></td>
  </tr>
  <tr>
    <td>基本工资</td>
    <td>&nbsp;<input type="text" name="BasicSalary" id="textfield" ></td>
  </tr>
  <tr>
    <td>月度奖金</td>
    <td>&nbsp;<input type="text" name="Item1" id="textfield" ></td>
  </tr>
  <tr>
    <td>季度奖金</td>
    <td>&nbsp;<input type="text" name="Item2" id="textfield" ></td>
  </tr>
  <tr>
    <td>年度奖金</td>
    <td>&nbsp;<input type="text" name="Item3" id="textfield" ></td>
  </tr>
  <tr>
    <td>加班费用</td>
    <td>&nbsp;<input type="text" name="Item4" id="textfield" ></td>
  </tr>
  <tr>
    <td>鼓励基金</td>
    <td>&nbsp;<input type="text" name="Item5" id="textfield" ></td>
  </tr>
  <tr>
    <td>时间</td>
    <td>&nbsp;<input type="text" name="SalaryTime" id="textfield" ></td>
  </tr>
  <tr>
    <td>&nbsp;<input type="submit" name="Submit" value="添加" id="Submit" onClick="javascript:return (checkvalue());" /></td>
    <td>&nbsp;<input type="reset" name="Reset" value="重填" id="Submit" /></td>
  </tr>
</table>
</form>






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