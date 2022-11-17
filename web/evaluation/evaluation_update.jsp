<%@ include file="common.jsp" %>
<%@ page contentType="text/html; charset=GB2312" %>
<%@ page import="evaluation.*" %>
<%@ page import="employees.*" %>

<HTML>

<!-- Mirrored from web.hichina.com/sitemanager/templet/088/left3/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:02:47 GMT -->
<HEAD>
<TITLE>
<!--Your Company Name-->
Template
</TITLE>
<!--CharSet-->
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
<link rel="stylesheet" href="evaluation_images/CSS.CSS" type="text/css">
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
    <td height="150" width="200" background="evaluation_images/01.gif"><img src="evaluation_images/index_pic.gif" width="200" height="150"></td>
    <td height="150" width="578" background="evaluation_images/index_top1.gif" valign="top"> 
      <table border="0" cellspacing="0" cellpadding="0" width="578" align="center">
        <tr> 
          <td height="30" width="408"> <b></b> <b></b></td>
          <td height="30" width="170">&nbsp;</td>
        </tr>
        <tr> 
          <td height="30" width="408"> 
            <div align="center"><font color="#FFFFFF"><b><font size="5">
<!--Your Company Name--><font color="#FFFFFF"><b>企业人力资源部——考勤信息管理</b></font></font></b></font></div>
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
<table width="778" border="0" cellspacing="0" cellpadding="0" background="evaluation_images/index_bg.gif" align="center">
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
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="evaluation_images/index_lm.gif">
              <tr> 
                <td> <div align="center"><b>

<a href="../menu_index/personnael_department_index.jsp">

首页</a></b> </div></td>
              </tr>
            </table>
			
<!--Button2.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="evaluation_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button2.Link-->
<a href="evaluation_index.jsp">
<!--Button2-->员工考勤信息</a></b></div>
                </td>
              </tr>
            </table>
<!--Button2.Content.End-->

<!--Button3.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="evaluation_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button3.Link-->
<a href="evaluation_add.jsp">
<!--Button3-->
考勤信息添加</a></b></div>
                </td>
              </tr>
            </table>
<!--Button3.Content.End-->

<!--Button4.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="evaluation_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button4.Link-->
<a href="evaluation_update.jsp">
<!--Button4-->考勤信息修改</a></b></div>
                </td>
              </tr>
            </table>
<!--Button4.Content.End-->

<!--Button5.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="evaluation_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button5.Link-->
<a href="evaluation_query.jsp">
<!--Button5-->考勤信息查询</a></b></div>
                </td>
              </tr>
            </table>
<!--Button5.Content.End-->

<!--Button6.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="evaluation_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button6.Link-->
<a href="evaluation_allinfor_page.jsp">
<!--Button6-->考勤信息删除</a></b></div>
                </td>
              </tr>
            </table>
<!--Button6.Content.End-->

<!--Button9.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="evaluation_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button9.Link-->
<a href="../login/login_exit.jsp">
<!--Button9-->
退出系统</a></b></div>
                </td>
              </tr>
            </table>
<!--Button9.Content.End-->




          </td>
        </tr>
      </table>
    </td>
    <td valign="top" colspan="2"><img src="evaluation_images/index_top2.gif" width="578" height="30"></td>
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
      
						
请输入要修改的考勤信息的编号：
<form id="form1" name="form1" method="POST" action="evaluation_update.jsp">
  <input type="text" name="EvaId" value="" />
  <input type="submit" name="Submit" value="查询" />
  <input type="reset" name="Submit2" value="重新设置" />
</form>
<jsp:useBean id="evaluation" scope="session" class="evaluation.EvaluationBean"/>
<jsp:useBean id="employees" scope="session" class="employees.EmployeesBean"/>
<%
  String EvaId=request.getParameter("EvaId");
  //out.println("EvaId="+EvaId);
 if(EvaId!=null)
 {
 %> 
<%
  Evaluation evaluation1 = evaluation.getEvaluationDetails(EvaId);
  if(evaluation1==null)
  {
  out.println("不存在该考勤信息的基本信息");
  }
  else
  {
    String EmpId=evaluation1.getEmpId();
    Employees employees1 = employees.getEmployeesDetails(EmpId);
%>
<form id="form2" name="form2" method="post" action="evaluation_update_cfrm.jsp">
<table width="533" height="396" border="12" align="center">
  <tr>
    <td colspan="2" align="center">员工考勤信息  
      </td>
  </tr>
  <tr>
    <td width="197">EvaId
      <input type="hidden" name="EvaId" value="<%=convert(evaluation1.getEvaId())%>" /></td>
    <td width="320"><input type="text" name="EvaId" id="textfield" disabled="disabled" value="<%=convert(evaluation1.getEvaId())%>"></td>
  </tr>
  <tr>
    <td>EmpId<input type="hidden" name="EmpId" value="<%=convert(evaluation1.getEmpId())%>" /></td>
    <td><input type="text" name="EmpId" id="textfield" value="<%=convert(evaluation1.getEmpId())%>" disabled="disabled" ></td>
  </tr>
  <tr>
    <td>EmpName<input type="hidden" name="EmpName" value="<%=employees1.getEmpName()%>" /></td>
    <td><input type="text" name="EmpName" id="textfield" value="<%=employees1.getEmpName()%>" disabled="disabled"></td>
  </tr>
  <tr>
    <td>EvaDate</td>
    <td><input type="text" name="EvaDate" id="textfield"value="<%=convert(evaluation1.getEvaDate())%>" ></td>
  </tr>
  <tr>
    <td>Subject</td>
    <td><input type="text" name="Subject" id="textfield" value="<%=evaluation1.getSubject()%>" ></td>
  </tr>
  <tr>
    <td>Result</td>
    <td><input type="text" name="Result" id="textfield" value="<%=evaluation1.getResult()%>" ></td>
  </tr>
  <tr>
    <td>Score</td>
    <td><input type="text" name="Score" id="textfield" value="<%=convert(evaluation1.getScore())%>" ></td>
  </tr>
  <tr>
    <td>Memo</td>
    <td>
      <textarea name="Memo" cols="50" rows="5" id="label"><%=evaluation1.getMemo()%></textarea>
        </td>
  </tr>
    <tr>
    <td>
      <input type="submit" name="Submit" value="修改" id="Submit" />
    </td>
    <td><input type="reset" name="Reset" value="重填" id="Submit" /></td>
  </tr>
</table>
</form>

<%
}
}
%>

			
			
			
			
			
			
			
			
			
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
任晓明毕业设计——
<!--TCopyRight-->
 版权所有
@2006<br>
<!--TAddress-->
公司地址:YSU
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
    <td><img src="evaluation_images/index_bottom.gif" width="778" height="50"></td>
  </tr>
</table>
</BODY>

<!-- Mirrored from web.hichina.com/sitemanager/templet/088/left3/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:02:47 GMT -->
</HTML>
