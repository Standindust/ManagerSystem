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
	response.sendRedirect("../login/login_exit.jsp");
	//��������Աҳ��
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
��˾���񲿡���Ա�����ʹ��� 
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
                <td height="27" width="130"><b><a href="../menu_index/finance_department_index.jsp"><font color="#FFFFFF"><span class="text">��˾����
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
Ա�����ʲ�ѯ                  </span></font></a></b></td>
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
Ա���������                  </span></font></a></b></td>
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
Ա�������޸�                  </span></font></a></b></td>
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
Ա������ɾ��				</span></font></a></b></td>
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
Ա��������Ϣ				</span></font></a></b></td>
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
�˳�ϵͳ                  </span></font></a></b></td>
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



������Ҫ�޸�Ա�����ʵı�ţ����в�ѯ��Ա��������Ϣ��
<form id="form1" name="form1" method="POST" action="salary_update.jsp">
  <label>
  <input type="text" name="SalaryId" value="" />
  </label>
  <label>
  <input type="submit" name="Submit" value="��ѯ" />
  </label>
  <label>
  <input type="reset" name="Submit2" value="��������" />
  </label>
</form>
<jsp:useBean id="salary" scope="session" class="salary.SalaryBean"/>
<%
  String SalaryId=request.getParameter("SalaryId");
 if(SalaryId!=null)
 {
 %> 
<%
  Salary salary1 = salary.getSalaryDetails(SalaryId);
  if(salary1==null)
  out.println("�����ڸ�Ա���Ĺ��ʻ�����Ϣ");
  else
  {
%>

<form id="form2" name="form2" method="post" action="salary_update_cfrm.jsp">
<table width="520" height="369" border="12" align="center">
  <tr>
    <td colspan="2" align="center">Ա��������Ϣ
      <input type="hidden" name="SalaryId1" value="<%=convert(salary1.getSalaryId())%>"></td>
  </tr>
  <tr>
    <td width="225">���ʱ��</td>
    <td width="402">&nbsp;<input type="text" name="SalaryId" id="textfield" value="<%=convert(salary1.getSalaryId())%>" disabled="disabled" ></td>
  </tr>
  <tr>
    <td>Ա�����</td>
    <td>&nbsp;<input type="text" name="EmpId" id="textfield" value="<%=convert(salary1.getEmpId())%>" disabled="disabled"><input type="hidden" name="EmpId" value="<%=convert(salary1.getEmpId())%>" ></td>
  </tr>
  <tr>
    <td>��������</td>
    <td>&nbsp;<input type="text" name="BasicSalary" id="textfield" value="<%=salary1.getBasicSalary()%>" ></td>
  </tr>
  <tr>
    <td>�¶Ƚ���</td>
    <td>&nbsp;<input type="text" name="Item1" id="textfield" value="<%=salary1.getItem1()%>" ></td>
  </tr>
  <tr>
    <td>���Ƚ���</td>
    <td>&nbsp;<input type="text" name="Item2" id="textfield" value="<%=salary1.getItem2()%>"></td>
  </tr>
  <tr>
    <td>��Ƚ���</td>
    <td>&nbsp;<input type="text" name="Item3" id="textfield" value="<%=salary1.getItem3()%>" ></td>
  </tr>
  <tr>
    <td>�Ӱ����</td>
    <td>&nbsp;<input type="text" name="Item4" id="textfield"  value="<%=salary1.getItem4()%>"></td>
  </tr>
  <tr>
    <td>��������</td>
    <td>&nbsp;<input type="text" name="Item5" id="textfield" value="<%=salary1.getItem5()%>"></td>
  </tr>
  <tr>
    <td>ʱ��</td>
    <td>&nbsp;<input type="text" name="SalaryTime" id="textfield" value="<%=convert(salary1.getSalaryTime())%>"  ></td>
  </tr>
  <tr>
    <td>&nbsp;<input type="submit" name="Submit" value="�޸�" id="Submit" /></td>
    <td>&nbsp;<input type="reset" name="Reset" value="����" id="Submit" /></td>
  </tr>
</table>
</form>
<%
}
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
��������ҵ��ơ���
<!--TCopyRight-->
 ��Ȩ����
@2006<br>
<!--TAddress-->
��˾��ַ:ysu
<!--Address-->
<br>
<!--TTelephone-->
�绰:
<!--Telephone-->
<!--TEMail-->
 �����ʼ�:ren@126.com
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