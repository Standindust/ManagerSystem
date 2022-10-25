<%@ page contentType="text/html;charset=gb2312"%>
<%@ page session="true" %>
<%@ page import="departments.*" %>
<%!
   public String convert(String s){
    try{
     	return new String(s.getBytes("ISO-8859-1"),"GB2312");
    }catch(Exception e){return null;}
   }
%>



<HTML>

<!-- Mirrored from web.hichina.com/sitemanager/templet/088/left1/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:02:02 GMT -->
<HEAD>
<TITLE>
<!--Your Company Name-->
Template
</TITLE>
<!--CharSet-->
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
<link rel="stylesheet" href="Departments_images/CSS.CSS" type="text/css">
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
	if( mainform.DepId.value.length==0 )
	{
		alert( "请输入部门的编号！" );
		mainform.DepId.focus();
		return false;
	}
	if( mainform.DepName.value.length==0 )
	{
		alert( "请输入部门的名称！" );
		mainform.DepName.focus();
		return false;
	}
	return true;
}
</script>



</HEAD>
<BODY BGCOLOR=#994D00 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<!--Counter-->
<!--Something Here-->
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center" height="150">
  <tr> 
    <td height="150" width="200" background="Departments_images/01.gif"><img src="Departments_images/index_pic.gif" width="200" height="150"></td>
    <td height="150" width="578" background="Departments_images/index_top1.gif" valign="top"> 
      <table border="0" cellspacing="0" cellpadding="0" width="578" align="center">
        <tr> 
          <td height="30" width="408"> <b></b> <b></b></td>
          <td height="30" width="170">&nbsp;</td>
        </tr>
        <tr> 
          <td height="30" width="408"> 
            <div align="center"><font color="#FFFFFF"><b><font size="5">
<!--Your Company Name-->
企业人力资源部——人事部
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
<table width="778" border="0" cellspacing="0" cellpadding="0" background="Departments_images/index_bg.gif" align="center">
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
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="Departments_images/index_lm.gif">
              <tr> 
                <td> <div align="center"><b>

<a href="../menu_index/personnael_department_index.jsp">

首页</a></b> </div></td>
              </tr>
            </table>

<!--Button1.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="Departments_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button1.Link-->
<a href="Departments_index.jsp">
<!--Button1-->
人事部门信息管理</a></b> </div>
                </td>
              </tr>
            </table>
<!--Button1.Content.End-->

<!--Button2.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="Departments_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button2.Link-->
<a href="Departments_index.jsp">
<!--Button2-->
所有部门信息 </a></b></div>
                </td>
              </tr>
            </table>
<!--Button2.Content.End-->

<!--Button3.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="Departments_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button3.Link-->
<a href="Departments_add.jsp">
<!--Button3-->
部门信息添加 </a></b></div>
                </td>
              </tr>
            </table>
<!--Button3.Content.End-->

<!--Button4.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="Departments_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button4.Link-->
<a href="Departments_del.jsp">
<!--Button4-->
部门信息删除 </a></b></div>
                </td>
              </tr>
            </table>
<!--Button4.Content.End-->

<!--Button5.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="Departments_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button5.Link-->
<a href="Departments_all_edit.jsp">
<!--Button5-->
部门信息修改</a></b></div>
                </td>
              </tr>
            </table>
<!--Button5.Content.End-->

<!--Button6.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="Departments_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button6.Link-->
<a href="#">
<!--Button6-->
联系我们
</a></b></div>
                </td>
              </tr>
            </table>
<!--Button6.Content.End-->

          </td>
        </tr>
      </table>
    </td>
    <td valign="top" colspan="2"><img src="Departments_images/index_top2.gif" width="578" height="30"></td>
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
		  
		   
<%
String DepId=request.getParameter("DepId");
//out.println("DepId="+DepId);

%>
<jsp:useBean id="departments" scope="request" class="departments.DepartmentsBean"/>
<%
  Departments departments1 = departments.getDepartmentsDetails(DepId);
%>


<form id="form1" name="main" method="post" action="Departments_update_cfrm.jsp" >
<table width="379" height="158" border="12" align="center" cellspacing="1">
  <tr>
    <td colspan="2"><div align="center" class="style1">部门基本信息的修改
      <input type="hidden" name="DepId" value="<%=convert(departments1.getDepId())%>">
    </div></td>
  </tr>
  <tr>
    <td width="253" height="44">部门编号：</td>
    <td width="317">
<input type="text" name="DepId" value="<%=convert(departments1.getDepId())%>" onKeyUp="this.value=this.value.replace(/[^\d]/g,'')" onpaste="return false" disabled="disabled" />
    </td>
  </tr>
  <tr>
    <td height="41" class="style2">部门名称：</td>
    <td><input type="text" name="DepName" value="<%=departments1.getDepName()%>"  />
	</td>
  </tr>
  <tr>
    <td>
      <label>
        <input type="submit" name="Submit" value="提交"onclick="javascript:return (checkvalue());" />
        </label>
    
    </td>
    <td><label>
      <input type="reset" name="Submit2" value="重填" />
    </label></td>
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
<!--Your Company Name-->
您的公司名称
<!--TCopyRight-->
 版权所有
@2002<br>
<!--TAddress-->
公司地址:
<!--Address-->
<br>
<!--TTelephone-->
电话:
<!--Telephone-->
<!--TEMail-->
 电子邮件:
<!--EMail-->
<A HREF='mailto:
<!--Email-->

'>
<!--Email-->
</A>

                  </div>
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><img src="Departments_images/index_bottom.gif" width="778" height="50"></td>
  </tr>
</table>
</BODY>

<!-- Mirrored from web.hichina.com/sitemanager/templet/088/left1/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:02:02 GMT -->
</HTML>
