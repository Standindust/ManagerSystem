<%@ include file="common.jsp" %>
<%@ page contentType="text/html; charset=GB2312" %>
<%@ page import="evaluation.*" %>
<%@ page import="employees.*" %>
<%@ page import="java.sql.*"%>

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
	response.sendRedirect("../login/index.jsp");
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
      
						
<%
	String pg = request.getParameter("page");
	if(pg==null || pg=="") 
	{
	 pg="1";
	}
%>
<jsp:useBean id="evaluationpage" scope="session" class="evaluation.EvaluationBeanPage"/>
<jsp:useBean id="employees" scope="session" class="employees.EmployeesBean"/>
<table width="552" height="98" border="12" align="center">
  <tr>
    <td colspan="8" align="center">员工所有考勤信息</td>
  </tr>
  <tr>
    <td width="49" height="27">EvaId</td>
    <td width="56">EmpId</td>
    <td width="70">EmpName</td>
    <td width="74">EvaDate</td>
    <td width="63">Subject</td>
    <td width="57">Result</td>
    <td width="45">Score</td>
    <td width="64" align="center">删除</td>
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
			String EMPname=employees1.getEmpName();
 %>
  <tr>
    <td height="29">&nbsp;<%=rs.getString("EvaId")%></td>
    <td>&nbsp;<%=rs.getString("EmpId")%></td>
    <td>&nbsp;<%=EMPname%></td>
    <td>&nbsp;<%=rs.getString("EvaDate")%></td>
    <td>&nbsp;<%=rs.getString("Subject")%></td>
    <td>&nbsp;<%=rs.getString("Result")%></td>
    <td>&nbsp;<%=rs.getString("Score")%></td>
    <td align="center"><a href="evaluation_delete_cfrm.jsp?EvaId=<%=convert(rs.getString("EvaId"))%>">删除</td>
  </tr>
<%
				i++;
			}
		}
	}catch(SQLException e) {}
%>
</table>
<form method="get" action="evaluation_allinfor_page.jsp">
<a href="evaluation_allinfor_page.jsp">返回</a>
共<%=totalpage%>页&nbsp;
<%
if(curpage>1 && totalpage>1)
	out.print("<a href=\"evaluation_allinfor_page.jsp?page="+ (curpage-1)+"\">上一页</a>");
else
	out.print("上一页");
%>&nbsp;
<%
if(curpage<totalpage)
	out.print("<a href=\"evaluation_allinfor_page.jsp?page="+ (curpage+1)+"\">下一页</a>");
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
