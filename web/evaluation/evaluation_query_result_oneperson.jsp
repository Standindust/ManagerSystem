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

<a href="../login/index_one_person.jsp">

个人信息咨询</a></b> </div></td>
              </tr>
            </table>
			


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
           
			
 <jsp:useBean id="evaluation" scope="session" class="evaluation.EvaluationBean"/>
<jsp:useBean id="employees" scope="session" class="employees.EmployeesBean"/>
  <%
       String EvaId=request.getParameter("EvaId");
	   String EmpId=request.getParameter("EmpId");

    //   out.println("EvaId="+EvaId);
	//   out.println("EmpId="+EmpId);

%>
<% 
         if(EvaId.equals("")&&EmpId.equals(""))
		 {
       //    out.println("都为空");
	//	    out.println("EvaId="+EvaId);
	 //       out.println("EmpId="+EmpId);
			response.sendRedirect("evaluation_allinfor_page.jsp");
         }
		  if(EvaId.equals("")&&!EmpId.equals(""))
		 {
       //    out.println("EmpId不为空，但是EvaID为空");
%>



<%
    java.util.Vector Evas = evaluation.allOneEmployeeEvaluationInfor(EmpId);	
	if( null==Evas )
	{
		out.println( "没有找到该员工的考勤信息！" );
	}
	else
	{
%>
<table width="558" height="117" border="12" align="center" >
  <tr>
    <td height="38" colspan="8" align="center">该员工所有考勤信息</td>
  </tr>
  <tr>
    <td width="58" height="31">EvaId</td>
    <td width="58">EmpId</td>
    <td width="77">EmpName</td>
    <td width="83">EvaDate</td>
    <td width="58">Subject</td>
    <td width="56">Result</td>
    <td width="57">Score</td>
    <td width="65">删除</td>
  </tr>
 <%
		for( int i=0; i<Evas.size(); i++ )
		{
			Evaluation  evaluation1 = (Evaluation)Evas.get( i );
		    EmpId=evaluation1.getEmpId();
            Employees employees1 = employees.getEmployeesDetails(EmpId);
			String EVAID=evaluation1.getEvaId();
			String EMPID=evaluation1.getEmpId();
			String EMPNAME=employees1.getEmpName();
			String EVADATE=evaluation1.getEvaDate();
			String SUBJECT=evaluation1.getSubject();
			String RESULT=evaluation1.getResult();
			String SCORE=convert(evaluation1.getScore());
 %>
  <tr>
    <td height="38">&nbsp;<%=EVAID%></td>
    <td>&nbsp;<%=EMPID%></td>
    <td>&nbsp;<%=EMPNAME%></td>
    <td>&nbsp;<%=EVADATE%></td>
    <td>&nbsp;<%=SUBJECT%></td>
    <td>&nbsp;<%=RESULT%></td>
    <td>&nbsp;<%=SCORE%></td>
    <td><a href="evaluation_delete_cfrm.jsp?EvaId=<%=convert(evaluation1.getEvaId())%>">删除</td>
  </tr>
  <%
  }
  %>
</table>

<%
  }
%>




<%
          }
	    if(!EvaId.equals("")&&EmpId.equals(""))
		{  
		// out.println("EvaId一定不为空！EmpId为空");
	  //   out.println("EvaId="+EvaId);
     //    out.println("EmpId="+EmpId);

  Evaluation evaluation2 = evaluation.getEvaluationDetails(EvaId);
  if(evaluation2==null)
  {
  out.println("不存在该考勤信息的基本信息");
  }
  else
  {  // String EmpId1=request.getParameter("EmpId");
    EmpId=evaluation2.getEmpId();
    Employees employees2 = employees.getEmployeesDetails(EmpId); 
 %>
<table width="546" height="396" border="12" align="center">
  <tr>
    <td colspan="2" align="center">员工考勤信息  
      </td>
  </tr>
  <tr>
    <td width="200">EvaId</td>
    <td width="330"><%=convert(evaluation2.getEvaId())%></td>
  </tr>
  <tr>
    <td>EmpId</td>
    <td><%=convert(evaluation2.getEmpId())%></td>
  </tr>
  <tr>
    <td>EmpName</td>
    <td><%=employees2.getEmpName()%></td>
  </tr>
  <tr>
    <td>EvaDate</td>
    <td><%=evaluation2.getEvaDate()%></td>
  </tr>
  <tr>
    <td>Subject</td>
    <td><%=evaluation2.getSubject()%></td>
  </tr>
  <tr>
    <td>Result</td>
    <td><%=evaluation2.getResult()%></td>
  </tr>
  <tr>
    <td>Score</td>
    <td><%=convert(evaluation2.getScore())%></td>
  </tr>
  <tr>
    <td>Memo</td>
    <td>
      <textarea name="Memo" cols="50" rows="5" id="label" disabled="disabled"><%=evaluation2.getMemo()%></textarea>
        </td>
  </tr>
</table>

					  
					 					  					  
<%		
     }			  
%>	 
	

		 
<%		 
		 }
		 else
		// if((!EvaId.equals(""))&&(!EmpId.equals("")))
		{  
		// out.println("EvaId不为空！EmpId不为空");
	   //  out.println("EvaId="+EvaId);
		//  out.println("EmpId="+EmpId);
		  
%>
<%

  Evaluation evaluation3 = evaluation.getEvaluationDetailsEmpId(EvaId,EmpId);
  if(evaluation3==null)
  {
 // out.println("不存在该考勤信息的基本信息");
  }
  else
  { 
    EmpId=evaluation3.getEmpId();    
    Employees employees3 = employees.getEmployeesDetails(EmpId); 
 %>
<table width="545" height="386" border="12" align="center"  >
  <tr>
    <td colspan="2" align="center">员工考勤信息  
      </td>
  </tr>
  <tr>
    <td width="200">EvaId</td>
    <td width="329"><%=convert(evaluation3.getEvaId())%></td>
  </tr>
  <tr>
    <td>EmpId</td>
    <td><%=convert(evaluation3.getEmpId())%></td>
  </tr>
  <tr>
    <td>EmpName</td>
    <td><%=employees3.getEmpName()%></td>
  </tr>
  <tr>
    <td>EvaDate</td>
    <td><%=evaluation3.getEvaDate()%></td>
  </tr>
  <tr>
    <td>Subject</td>
    <td><%=evaluation3.getSubject()%></td>
  </tr>
  <tr>
    <td>Result</td>
    <td><%=evaluation3.getResult()%></td>
  </tr>
  <tr>
    <td>Score</td>
    <td><%=convert(evaluation3.getScore())%></td>
  </tr>
  <tr>
    <td>Memo</td>
    <td>
      <textarea name="Memo" cols="50" rows="5" id="label" disabled="disabled"><%=evaluation3.getMemo()%></textarea>
        </td>
  </tr>
</table>

					  
					 					  					  
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
