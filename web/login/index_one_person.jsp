<%@ page contentType="text/html;charset=gb2312"%>

<HTML>

<!-- Mirrored from web.hichina.com/sitemanager/templet/093/left1/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:02:03 GMT -->
<HEAD>
<TITLE>
<!--Your Company Name-->
Template
</TITLE>
<!--CharSet-->
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
<link rel="stylesheet" href="images_one/CSS.CSS" type="text/css">
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

<%
if ( session.getAttribute("UserName")==null || session.getAttribute("UserName")=="" || session.getAttribute("UserType")==null || session.getAttribute("UserType")=="")
{
    session.removeAttribute("UserName");
    session.removeAttribute("UserType");
	response.sendRedirect("index.jsp");
	//��������Աҳ��
}
%>

</HEAD>
<BODY BGCOLOR=#7C297C leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<!--Counter-->
<!--Something Here-->
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center" height="194" background="images_one/index_top.gif">
  <tr>
    <td valign="top"> 
      <table border="0" cellspacing="0" cellpadding="0" width="778" align="center">
        <tr> 
          <td height="10" width="698"> 
            <div align="center"><font color="#FFFFFF"><b></b></font></div>
          </td>
          <td height="10" width="80"> 
            <div align="center"><font color="#FFFFFF"><b></b></font></div>
          </td>
        </tr>
        <tr> 
          <td height="40" width="698"> 
            <div align="center"><font color="#FFFFFF"><b><font size="5">
<!--Your Company Name-->
��С�ͳ����ۺϹ�����Ϣϵͳ 
              </font></b></font></div>
          </td>
          <td height="40" width="80"> 
            <div align="center"></div>
          </td>
        </tr>
        <tr>
          <td height="40" width="698">
            <div align="center"><font size="4" color="#FFFFFF">
<!--Your Company Name.English-->
��ҵ��ơ���YanShan.University 
</font> </div>
          </td>
          <td height="40" width="80">&nbsp;</td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center" background="images_one/index_bg.gif">
  <tr> 
    <td valign="top" width="212"> 
      <table width="212" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td background="images_one/01.gif"><img src="images_one/index_pic.gif" width="212" height="138"></td>
        </tr>
        <tr> 
          <td> <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td align="center">
<!--Language-->
<!--Something Here-->
</td>
              </tr>
            </table>
            <table width="212" border="0" cellspacing="0" cellpadding="0" height="40" background="images_one/index_lm.gif">
              <tr> 
                <td> <div align="center"><b><a href="index_one_person.jsp">������Ϣ��ѯ</a></b></div></td>
              </tr>
            </table>
<!--Button1.Content.Begin-->
            <table width="212" border="0" cellspacing="0" cellpadding="0" height="40" background="images_one/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button1.Link-->
<a href="../employee/query_employee_oneperson.jsp">
<!--Button1-->
Ա����ϸ��Ϣ��ѯ</a></b> </div>
                </td>
              </tr>
            </table>
<!--Button1.Content.End-->

<!--Button2.Content.Begin-->
            <table width="212" border="0" cellspacing="0" cellpadding="0" height="40" background="images_one/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button2.Link-->
<a href="../evaluation/evaluation_query_oneperson.jsp">
<!--Button2-->
Ա��������Ϣ��ѯ </a></b></div>
                </td>
              </tr>
            </table>
<!--Button2.Content.End-->

<!--Button3.Content.Begin-->			
            <table width="212" border="0" cellspacing="0" cellpadding="0" height="40" background="images_one/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button3.Link-->
<a href="../salary/salaryoneinfor_query_oneperson.jsp">
<!--Button3-->
Ա��������Ϣ��ѯ </a></b></div>
                </td>
              </tr>
            </table>
<!--Button3.Content.End-->

<!--Button3.Content.Begin-->			
            <table width="212" border="0" cellspacing="0" cellpadding="0" height="40" background="images_one/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button3.Link-->
<a href="index_all.jsp">
<!--Button3-->
�����û�����ҳ�� </a></b></div>
                </td>
              </tr>
            </table>
<!--Button3.Content.End-->

<!--Button4.Content.Begin-->
            <table width="212" border="0" cellspacing="0" cellpadding="0" height="40" background="images_one/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button4.Link-->
<a href="login_update_query.jsp">
<!--Button4-->
�޸����� </a></b></div>
                </td>
              </tr>
            </table>
<!--Button4.Content.End-->

<!--Button5.Content.Begin-->
            <table width="212" border="0" cellspacing="0" cellpadding="0" height="40" background="images_one/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button5.Link-->
<a href="login_exit.jsp">
<!--Button5-->
�˳�ϵͳ</a></b></div>
                </td>
              </tr>
            </table>
<!--Button5.Content.End-->

            <br>
            <br>
          </td>
        </tr>
      </table>
    </td>
    <td valign="top">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td></td>
        </tr>
        <tr> 
          <td> 
<!--IndexPage.Content.Begin-->
            <table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
              <tr> 
                <td height="20"><table width="513" height="284" border="10" align="center">
                  <tr>
                    <td colspan="2" align="center">������Ϣ��ѯҳ��</td>
                    </tr>
                  <tr>
                    <td width="180">Ա����ϸ��Ϣ</td>
                    <td width="299">����Ա����ſ��Խ��в�ѯ������Ϣ</td>
                  </tr>
                  <tr>
                    <td>Ա�����ڱ��</td>
                    <td>����Ա�����ڱ�ſ��Բ�ѯ���˿�����Ϣ</td>
                  </tr>
                  <tr>
                    <td>Ա��������Ϣ</td>
                    <td>����Ա�����ʱ�ſ��Բ�ѯ���˹�����Ϣ</td>
                  </tr>
                  <tr>
                    <td>��������ҳ��</td>
                    <td>�ó����ӿ���ֱ�ӷ��ص���������ҳ��</td>
                  </tr>
                </table>                  
                <a href="#"> </a> </td>
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
                  <p align="center"><br>
<!--Your Company Name-->
���Ĺ�˾����
<!--TCopyRight-->
 ��Ȩ����
@2002<br>
<!--TAddress-->
��˾��ַ:
<!--Address-->
<br>
<!--TTelephone-->
�绰:
<!--Telephone-->
<!--TEMail-->
 �����ʼ�:
<!--EMail-->
<A HREF='mailto:
<!--Email-->

'>
<!--Email-->
</A>

                  </p>
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
</BODY>

<!-- Mirrored from web.hichina.com/sitemanager/templet/093/left1/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:02:03 GMT -->
</HTML>
