<%@ page contentType="text/html;charset=gb2312"%>
<HTML>

<!-- Mirrored from web.hichina.com/sitemanager/templet/088/left5/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:04:09 GMT -->
<HEAD>
<TITLE>
<!--Your Company Name-->
Template
</TITLE>
<!--CharSet-->
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
<link rel="stylesheet" href="finance_department_images/CSS.CSS" type="text/css">
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
	response.sendRedirect("login/login_exit.jsp");
	//��������Աҳ��
}
%>
<%
  String usertype=(String)session.getAttribute("UserType");
  if(!(usertype.equals("five1") || usertype.equals("four1")) )
 // out.println("usertype="+usertype);
  response.sendRedirect("login/login_exit.jsp");
%>


</HEAD>
<BODY BGCOLOR=#339933 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<!--Counter-->
<!--Something Here-->
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center" height="150">
  <tr> 
    <td height="150" width="200" background="finance_department_images/01.gif"><img src="finance_department_images/index_pic.gif" width="200" height="150"></td>
    <td height="150" width="578" background="finance_department_images/index_top1.gif" valign="top"> 
      <table border="0" cellspacing="0" cellpadding="0" width="578" align="center">
        <tr> 
          <td height="30" width="408"> <b></b> <b></b></td>
          <td height="30" width="170">&nbsp;</td>
        </tr>
        <tr> 
          <td height="30" width="408"> 
            <div align="center"><font color="#FFFFFF"><b><font size="5">
<!--Your Company Name-->
��˾����
              </font></b></font></div>
          </td>
          <td height="30" width="170">&nbsp;</td>
        </tr>
        <tr> 
          <td height="30" width="408"> 
            <div align="center"><font size="4" color="#FFFFFF">
<!--Your Company Name.English-->
 Enterprise Finance Department
</font></div>
          </td>
          <td height="30" width="170">&nbsp;</td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<table width="778" border="0" cellspacing="0" cellpadding="0" background="finance_department_images/index_bg.gif" align="center">
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
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="finance_department_images/index_lm.gif">
              <tr> 
                <td> <div align="center"><b>

<a href="finance_department_index.jsp">

��˾����</a></b> </div></td>
              </tr>
            </table>

<!--Button1.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="finance_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button1.Link-->
<a href="../../salary/salary_all_infor_page.jsp">
<!--Button1-->
������Ϣ����</a></b> </div>
                </td>
              </tr>
            </table>
<!--Button1.Content.End-->

<!--Button2.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="finance_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button2.Link-->
<a href="../../checkout/checkout.jsp">
<!--Button2-->
��Ʒ����ҵ�� </a></b></div>
                </td>
              </tr>
            </table>
<!--Button2.Content.End-->

<!--Button3.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="finance_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button3.Link-->
<a href="../../purchase/purchase_all_infor_page_money.jsp">
<!--Button3-->
��Ʒ�ɹ����� </a></b></div>
                </td>
              </tr>
            </table>
<!--Button3.Content.End-->

<!--Button3.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="finance_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button3.Link-->
<a href="../index_all.jsp">
<!--Button3-->
��������ҳ�� </a></b></div>
                </td>
              </tr>
            </table>
<!--Button3.Content.End-->

<!--Button4.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="finance_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button4.Link-->
<a href="../login_update_query.jsp">
<!--Button4-->
�޸����� </a></b></div>
                </td>
              </tr>
            </table>
<!--Button4.Content.End-->

<!--Button5.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="finance_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button5.Link-->
<a href="../login_exit.jsp">
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
    <td valign="top" colspan="2"><img src="finance_department_images/index_top2.gif" width="578" height="30"></td>
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
<table width="503" height="290" border="10" align="center">
  <tr>
    <td align="center" >��ҵ���������Ϣ���ĺ���</td>
  </tr>
  <tr>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ҵ���������Ϣ��ָ����ҵ�������ĸ������ڣ���������ִ���Ϣ������������Ϣϵͳ����ʹ��ҵ������Ϣ�õ����ɺ��ۺϣ��Ӷ���߲������ˮƽ�;���Ч��Ĺ��̡���ҵ���������Ϣ���ƶ�����ҵ���徭Ӫ������Ϣ���ķ�չ����������ҵ������Ĵ��º�����������ҵ�ķ�չ׳����������Ҫ�����á�����ʷ��չ�ĽǶȿ����ҹ���ҵ���������Ϣ��������������չ�׶Ρ���һ�׶���ʹ�ò����������ʵ�ֻ�Ƶ��㻯���ü�����ֶμ��ˡ����㡢������Ʊ���ͽ��в���������ڶ��׶��ǣ�����ҵ�ڲ�����ͳһ�ļ����������������ܹ�˾�ͷֹ�˾�Ĳ�����֧��ϵ������ʵ�ֵ������񻷽ڹ������Ϣ���������׶���ʹ�ñȽ��Ƚ��ļ�������������ﵽ��ͳһ�����ƽ̨��ͳһ�����ƶȡ�ͳһ��Ϣ��ҵ����롢ͳһ����ͳһ�ල���Ĳ�����ҵ��һ�廯��Ҫ��ʵ�ֲ���ϵͳ�����ۡ���Ӧ��������ϵͳ����Ϣ���ɺ����ݹ���ͨ��������ҵ�ڲ���������ֱ�����û�������ʹ�ܹ�˾�͸��ֹ�˾�ܼ�ʱ��ӳ�����ݻ����Ϣ��Ϊ��ҵ�����ߺͱ���ʹ���߷����������׶���һ�������Ĺ��̣�ֻ�е������׶β�����������ҵ���������Ϣ����</td>
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
    <td><img src="finance_department_images/index_bottom.gif" width="778" height="50"></td>
  </tr>
</table>
</BODY>

<!-- Mirrored from web.hichina.com/sitemanager/templet/088/left5/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:04:09 GMT -->
</HTML>
