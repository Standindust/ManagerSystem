<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8"  pageEncoding="UTF-8"%>

<HTML>

<!-- Mirrored from web.hichina.com/sitemanager/templet/088/left1/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:02:02 GMT -->
<HEAD>
<TITLE>
<!--Your Company Name-->
Template
</TITLE>
<!--CharSet-->
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=UTF-8">
<link rel="stylesheet" href="employee_images/CSS.CSS" type="text/css">
<style type="text/css">
<!--
-->
</style>
<SCRIPT ID=clientEventHandlersJS LANGUAGE=javascript>
<!--

function window_onload() {
<!--Page.OnLoad-->
}

//-->
</SCRIPT>

<script language="javascript">
function checkvalue()
{  
	var mainform = document.forms["main"];
	if( mainform.EmpId.value.length==0 )
	{
		alert( "请输入员工编号！" );
		mainform.EmpId.focus();
		return false;
	}
	if( mainform.EmpName.value.length==0 )
	{
		alert( "请输入员工姓名！" );
		mainform.EmpName.focus();
		return false;
	}
	if( mainform.Nationality.value.length==0 )
	{
		alert( "请输入员工的籍贯！" );
		mainform.Nationality.focus();
		return false;
	}
   if( mainform.Birth.value.length==0 )
	{
		alert( "请输入员工的出生年月日！" );
		mainform.Birth.focus();
		return false;
	}
  if( mainform.Academic.value.length==0 )
	{
		alert( "请输入员工的学历！" );
		mainform.Academic.focus();
		return false;
	}
	if( mainform.Original.value.length==0 )
	{
		alert( "请输入员工的住址！" );
		mainform.Original.focus();
		return false;
	}
	if( mainform.Mobile.value.length==0 )
	{
		alert( "请输入员工的联系电话！" );
		mainform.Mobile.focus();
		return false;
	}
	if( mainform.Id_Card.value.length==0 )
	{
		alert( "请输入员工的身份证号码！" );
		mainform.Id_Card.focus();
		return false;
	}
	if( mainform.Memo.value.length==0 )
	{
		alert( "请输入员工的描述！" );
		mainform.Memo.focus();
		return false;
	}

	return true;
}

</script>


</HEAD>
<%
if ( session.getAttribute("UserName")==null || session.getAttribute("UserName")=="" || session.getAttribute("UserType")==null || session.getAttribute("UserType")=="")
{
    session.removeAttribute("UserName");
    session.removeAttribute("UserType");
	response.sendRedirect("login/index.jsp");
	//超级管理员页面
}
%>


<BODY BGCOLOR=#994D00 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<!--Counter-->
<!--Something Here-->
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center" height="150">
  <tr> 
    <td height="150" width="200" background="employee_images/01.gif"><img src="employee_images/index_pic.gif" width="200" height="150"></td>
    <td height="150" width="578" background="employee_images/index_top1.gif" valign="top"> 
      <table border="0" cellspacing="0" cellpadding="0" width="578" align="center">
        <tr> 
          <td height="30" width="408"> <b></b> <b></b></td>
          <td height="30" width="170">&nbsp;</td>
        </tr>
        <tr> 
          <td height="30" width="408"> 
            <div align="center"><font color="#FFFFFF"><b><font size="5">
<!--Your Company Name-->
企业人力资源部――员工信息管理 
              </font></b></font></div>
          </td>
          <td height="30" width="170">&nbsp;</td>
        </tr>
        <tr> 
          <td height="30" width="408"> 
            <div align="center"><font size="4" color="#FFFFFF">
<!--Your Company Name.English-->
Human Resource Department
</font></div>
          </td>
          <td height="30" width="170">&nbsp;</td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<table width="778" border="0" cellspacing="0" cellpadding="0" background="employee_images/index_bg.gif" align="center">
  <tr> 
    <td width="200" valign="top" rowspan="2"> 
      <table width="200" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td height="226" align="center"> 

            <table width="200" border="0" cellspacing="0" cellpadding="0" height="20">
              <tr> 
                <td> 
                  <div align="center"></div>
                </td>
              </tr>
            </table>
            <br>
<!--Language-->
<!--Something Here-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="employee_images/index_lm.gif">
              <tr> 
                <td> <div align="center"><b>

<a href="../menu_index/personnael_department_index.jsp">

首页</a></b> </div></td>
              </tr>
            </table>

<!--Button1.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="employee_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button1.Link-->
<a href="../menu_index/personnael_department_index.jsp">
<!--Button1-->
人事部信息管理</a></b> </div>
                </td>
              </tr>
            </table>
<!--Button1.Content.End-->

<!--Button2.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="employee_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button2.Link-->
<a href="employees_all_infor_page.jsp">
<!--Button2-->
所有员工信息 </a></b></div>
                </td>
              </tr>
            </table>
<!--Button2.Content.End-->

<!--Button3.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="employee_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button3.Link-->
<a href="employee_insert.jsp">
<!--Button3-->
员工信息添加 </a></b></div>
                </td>
              </tr>
            </table>
<!--Button3.Content.End-->

<!--Button4.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="employee_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button4.Link-->
<a href="employee_delete.jsp">
<!--Button4-->
单个员工删除 </a></b></div>
                </td>
              </tr>
            </table>
<!--Button4.Content.End-->
<!--Button4.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="employee_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button4.Link-->
<a href="employees_many_del.jsp">
<!--Button4-->
员工批量删除 </a></b></div>
                </td>
              </tr>
            </table>
<!--Button4.Content.End-->

<!--Button5.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="employee_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button5.Link-->
<a href="employee_update.jsp">
<!--Button5-->
员工信息修改</a></b></div>
                </td>
              </tr>
            </table>
<!--Button5.Content.End-->
<!--Button6.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="employee_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button6.Link-->
<a href="query_employee.jsp">
<!--Button6-->员工信息查询</a></b></div>
                </td>
              </tr>
            </table>
<!--Button6.Content.End-->
<!--Button6.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="employee_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button6.Link-->
<a href="../login/login_exit.jsp">
<!--Button6-->
退出系统</a></b></div>
                </td>
              </tr>
            </table>
<!--Button6.Content.End-->

          </td>
        </tr>
      </table>
    </td>
    <td valign="top" colspan="2"><img src="employee_images/index_top2.gif" width="578" height="30"></td>
  </tr>
  <tr> 
    <td valign="top" width="20">&nbsp; </td>
    <td width="558" valign="top">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td></td>
        </tr>
        <tr> 
          <td> 
           

<form id="form1" name="main" method="post" action="employee_insert_cfrm.jsp">
<table width="536" height="514" border="12" >
  <tr>
    <td colspan="2" align="center">&nbsp;  添加员工信息  </td>
    </tr>
  <tr>
    <td width="121">员工编号</td>
    <td width="377">
      <input type="text" name="EmpId"  />    </td>
  </tr>
  <tr>
    <td>员工姓名</td>
    <td>
      <input type="text" name="EmpName" />   </td>
  </tr>
  <tr>
    <td>部门</td>

    <td>

        <jsp:useBean id="db" class="hotel.model.DBBean" scope="page"/>
        <%
            String s="SELECT * FROM hotel.departments;";

            ResultSet rs=db.executeQuery(s);
            int i=1;String a="";
            %>
        <select name="bumen" size="1" id="select">


        <option value="1"> <%rs.next();out.println(rs.getString(2));rs.next(); %> </option>
            <option value="2"> <%out.println(rs.getString(2));rs.next(); %></option>
            <option value="3"> <%out.println(rs.getString(2));rs.next(); %></option>
            <option value="4"> <%out.println(rs.getString(2));rs.next();
            rs.close();
            db.close(); %></option>


        </select>
    </td>
  </tr>
  <tr>
    <td>性别</td>
    <td><input type="radio" name="Sex" value="男" checked>男
         <input type="radio" name="Sex" value="女">女&nbsp;</td>
  </tr>
  <tr>
    <td>是否结婚</td>
    <td>
     <input type="radio" name="Marital" value="Mar" checked>是
         <input type="radio" name="Marital" value="Nomar">否</td>
  </tr>
  <tr>
    <td>籍贯</td>
    <td>
      <input type="text" name="Nationality" />   </td>
  </tr>
  <tr>
    <td>出生年月</td>
    <td>
      <input type="text" name="Birth" />  </td>
  </tr>
  <tr>
    <td>学历</td>
    <td>
      <input type="text" name="Academic"/>   </td>
  </tr>
  <tr>
    <td>地址</td>
    <td>
      <input type="text" name="Original"/>    </td>
  </tr>
  <tr>
    <td>电话</td>
    <td>
      <input type="text" name="Mobile"/>    </td>
  </tr>
  <tr>
    <td>身份证号码</td>
    <td>
      <input type="text" name="Id_Card"/>   </td>
  </tr>
  <tr>
    <td>个人描述</td>
    <td>
      <textarea name="Memo" cols="45" rows="6"></textarea>  </td>
  </tr>

    <tr>
    <td>&nbsp; <input type="submit" name="add" value="添加并登记面部信息" onClick="javascript:return (checkvalue());" /></td>
    <td>&nbsp;<input name="Submit2" type="reset" value="清除" /></td>
  </tr>
</table>
</form>





<!--IndexPage.Content.Begin-->
<!--IndexPage.Content.End-->
<table width="90%" border="0" cellspacing="0" cellpadding="0" align="center" height="1">
              <tr>
                <td bgcolor="#000000"> </td>
              </tr>
            </table>
            <table width="90%" border="0" cellspacing="0" cellpadding="4" align="center">
              <tr>
                <td>
                  <div align="center">

<A HREF='mailto:
<!--Email-->

'>
<!--Email-->
</A>                  </div>                </td>
              </tr>
            </table>          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><img src="employee_images/index_bottom.gif" width="778" height="50"></td>
  </tr>
</table>
</BODY>

<!-- Mirrored from web.hichina.com/sitemanager/templet/088/left1/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:02:02 GMT -->
</HTML>
