<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="salary.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*"%>


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



<%
	String pg = request.getParameter("page");
	if(pg==null || pg=="") 
	{
	 pg="1";
	}
%>

<jsp:useBean id="salarypage" class="salary.SalaryBeanPage"  scope="session"/>
<table width="538" height="126" border="10" align="center">
  <tr>
    <td height="40" colspan="9" align="center">Ա��������Ϣ�б�</td>
  </tr>
  <tr>
    <td width="65" height="39">���ʱ��</td>
    <td width="60">Ա�����</td>
    <td width="61">��������</td>
    <td width="38">�¶Ƚ���</td>
    <td width="34">���Ƚ���</td>
    <td width="40">��Ƚ���</td>
    <td width="36">�Ӱ����</td>
    <td width="38">��������</td>
    <td width="90">ʱ��</td>
  </tr>
 <%
    
	int i=0;
	int pgsize = 5;
	int curpage = Integer.parseInt(pg);
	int totalpage = salarypage.totalPage(pgsize);
	
	try{
		ResultSet rs = salarypage.getPageof(pg, pgsize);
		if(rs != null) {
			while(rs.next() && i<pgsize) {
%>
  <tr>
    <td height="37">&nbsp;<%=rs.getString("SalaryId")%></td>
    <td>&nbsp;<%=rs.getString("EmpId")%></td>
    <td>&nbsp;<%=rs.getString("BasicSalary")%></td>
    <td>&nbsp;<%=rs.getString("Item1")%></td>
    <td>&nbsp;<%=rs.getString("Item2")%></td>
    <td>&nbsp;<%=rs.getString("Item3")%></td>
    <td>&nbsp;<%=rs.getString("Item4")%></td>
    <td>&nbsp;<%=rs.getString("Item5")%></td>
    <td>&nbsp;<%=rs.getString("SalaryTime")%></td>
  </tr>
<%
				i++;
			}
		}
	}catch(SQLException e) {}
%>
</table>
<form method="get" action="salary_all_infor_page.jsp">
<a href="salary_all_infor_page.jsp">����</a>
��<%=totalpage%>ҳ&nbsp;
<%
if(curpage>1 && totalpage>1)
	out.print("<a href=\"salary_all_infor_page.jsp?page="+ (curpage-1)+"\">��һҳ</a>");
else
	out.print("��һҳ");
%>&nbsp;
<%
if(curpage<totalpage)
	out.print("<a href=\"salary_all_infor_page.jsp?page="+ (curpage+1)+"\">��һҳ</a>");
else
	out.print("��һҳ");
%>

������<select name="page" OnChange="document.forms[0].submit()">
<script language="JavaScript">
	for(i=1; i<=<%=totalpage%>; i++)
		document.write("<option value="+i+">"+i+"</option>")
	document.forms[0].page.options[<%=curpage-1%>].selected = true;
</script>		
	</select>ҳ
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