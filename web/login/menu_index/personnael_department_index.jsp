<%@ page contentType="text/html;charset=gb2312"%>
<HTML>

<!-- Mirrored from web.hichina.com/sitemanager/templet/088/left1/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:02:02 GMT -->
<HEAD>
<TITLE>
<!--Your Company Name-->
Template
</TITLE>
<!--CharSet-->
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
<link rel="stylesheet" href="personnael_department_images/CSS.CSS" type="text/css">
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
<BODY BGCOLOR=#994D00 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<%
if ( session.getAttribute("UserName")==null || session.getAttribute("UserName")=="" || session.getAttribute("UserType")==null || session.getAttribute("UserType")=="" )
{
    session.removeAttribute("UserName");
    session.removeAttribute("UserType");
	response.sendRedirect("login/login_exit.jsp");
	//out.println("dengluchengong��Ϊ���ά��ά��ȴ�޶�");
}
%>
<%
  String usertype=(String)session.getAttribute("UserType");
  if(!(usertype.equals("five1") || usertype.equals("one1")) )
 // out.println("usertype="+usertype);
  response.sendRedirect("login/login_exit.jsp");
%>




<!--Counter-->
<!--Something Here-->
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center" height="150">
  <tr> 
    <td height="150" width="200" background="personnael_department_images/01.gif"><img src="personnael_department_images/index_pic.gif" width="200" height="150"></td>
    <td height="150" width="578" background="personnael_department_images/index_top1.gif" valign="top"> 
      <table border="0" cellspacing="0" cellpadding="0" width="578" align="center">
        <tr> 
          <td height="30" width="408"> <b></b> <b></b></td>
          <td height="30" width="170">&nbsp;</td>
        </tr>
        <tr> 
          <td height="30" width="408"> 
            <div align="center"><font color="#FFFFFF"><b><font size="5">
<!--Your Company Name-->������Դ����Ϣ����</font></b></font></div>
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
<table width="778" border="0" cellspacing="0" cellpadding="0" background="personnael_department_images/index_bg.gif" align="center">
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
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="personnael_department_images/index_lm.gif">
              <tr> 
                <td> <div align="center"><b>

<a href="personnael_department_index.jsp">

���²��ŵ���Ϣ����</a></b> </div></td>
              </tr>
            </table>

<!--Button1.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="personnael_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button1.Link-->
<a href="../Departments/Departments_index.jsp">
<!--Button1-->
���²�����Ϣ����</a></b> </div>
                </td>
              </tr>
            </table>
<!--Button1.Content.End-->

<!--Button2.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="personnael_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button2.Link-->
<a href="../employee/employee_index.jsp">
<!--Button2-->
Ա����ϸ��Ϣ���� </a></b></div>
                </td>
              </tr>
            </table>
<!--Button2.Content.End-->



<!--Button4.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="personnael_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button4.Link-->
<a href="../evaluation/evaluation_index.jsp">
<!--Button4-->
Ա��������Ϣ���� </a></b></div>
                </td>
              </tr>
            </table>
<!--Button4.Content.End-->



<!--Button4.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="personnael_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button4.Link-->
<a href="../login/index_all.jsp">
<!--Button4-->
ϵͳ��������ҳ�� </a></b></div>
                </td>
              </tr>
            </table>
<!--Button4.Content.End-->


<!--Button4.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="personnael_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button4.Link-->
<a href="../login/login_update_query.jsp">
<!--Button4-->
�޸��û����� </a></b></div>
                </td>
              </tr>
            </table>
<!--Button4.Content.End-->

<!--Button5.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="personnael_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button5.Link-->
<a href="../login/login_exit.jsp">
<!--Button5-->
�˳�ϵͳ</a></b></div>
                </td>
              </tr>
            </table>
<!--Button5.Content.End-->
          </td>
        </tr>
      </table>
    </td>
    <td valign="top" colspan="2"><img src="personnael_department_images/index_top2.gif" width="578" height="30"></td>
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
            <p>&nbsp;</p>
<!--IndexPage.Content.Begin-->
<table width="520" height="359" border="12" align="center">
  <tr>
    <td colspan="2" align="center"><p>������Դ������ְ��</p></td>
    </tr>
  <tr>
    <td width="28">1</td>
    <td width="455">������ڴ����¹������������ҵ�������´�ĸ��������</td>
  </tr>
  <tr>
    <td>2</td>
    <td>���ݺ��ڴ������ƻ���Э���ﻮ������������Դ��չ�滮����Ա����ƻ�����ݺ��ƶ����¹���취�͹��ʷ������취</td>
  </tr>
  <tr>
    <td>3</td>
    <td>������ڴ���Ա��ѡ����Ƹ����Ƹ��¼�úͽ�Ƹ������������ع�����ϵ�İ�����ƶ������ͬǩ���취</td>
  </tr>
  <tr>
    <td>4</td>
    <td>����н�ʹ������䷽�����ⶨ��Э�������ʹ�ϵ�����������Ա�����ʹ����н�굵������</td>
  </tr>
  <tr>
    <td>5</td>
    <td>��ϸ������ƶ������ŵĸ�������ƶȣ��ƶ����ڴ�������Ĺ����ƶȡ�����취�͸������������׼��ʵʩ�����ල��飬���ٹ�����ʱ��ȡ���������Ľ���ʩ����߷�������</td>
  </tr>
  <tr>
    <td>6</td>
    <td>������ڴ���Ч����ְ������Ա�����������˽��͵ȹ���</td>
  </tr>
  <tr>
    <td>7</td>
    <td>�����ƶ�ְ����ְ������ѵ�ƻ�����ѵ�������ʹ�üƻ���������ѵ����֯ʵʩ�;��ѵ�ʹ��</td>
  </tr>
  <tr>
    <td>8</td>
    <td>���������ƺ��ڴ����µ������������µ���������ά��������͵��Ĺ����������˲Ŵ�����������������Ͽ�</td>
  </tr>
  <tr>
    <td>9</td>
    <td>����ϼ������������������</td>
  </tr>
</table>
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
��������ҵ��ơ���
<!--TCopyRight-->
 ��Ȩ����
@2006<br>
<!--TAddress-->
��˾��ַ:YSU
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
    <td><img src="personnael_department_images/index_bottom.gif" width="778" height="50"></td>
  </tr>
</table>
</BODY>

<!-- Mirrored from web.hichina.com/sitemanager/templet/088/left1/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:02:02 GMT -->
</HTML>
