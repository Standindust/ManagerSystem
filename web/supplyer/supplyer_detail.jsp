<%@ page contentType="text/html; charset=GB2312" %>
<%@ page import="common.*" %>
<%@ page import="supplyer.*" %>
<%@ page import="java.util.Properties" %>
<%@ include file="common.jsp" %>


<HTML>

<!-- Mirrored from web.hichina.com/sitemanager/templet/096/left1/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:02:03 GMT -->
<HEAD>
<TITLE>
<!--Your Company Name-->
Template
</TITLE>
<!--CharSet-->
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
<link rel="stylesheet" href="purchase_department_images/CSS.CSS" type="text/css">
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
if ( session.getAttribute("UserName")==null || session.getAttribute("UserName")=="" || session.getAttribute("UserType")==null || session.getAttribute("UserType")=="" )
{
    session.removeAttribute("UserName");
    session.removeAttribute("UserType");
	response.sendRedirect("../login/index.jsp");
	//out.println("dengluchengong��Ϊ���ά��ά��ȴ�޶�");
}
%>




</HEAD>
<BODY BGCOLOR=#669999 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<!--Counter-->
<!--Something Here-->
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center" height="130">
  <tr>
    <td background="purchase_department_images/index_top1.gif" valign="top"> 
      <table border="0" cellspacing="0" cellpadding="0" width="778" align="center">
        <tr> 
          <td height="25"> <font color="#FFFFFF"><b></b></font> 
            <div align="center"><font color="#FFFFFF"><b></b></font></div>
          </td>
        </tr>
        <tr> 
          <td height="30"> <font color="#FFFFFF"><b></b></font> 
            <div align="center"><font color="#000000"><b><font size="5">
<!--Your Company Name-->
���й���ϵͳ������Ʒ�ɹ���
              </font></b></font></div>
          </td>
        </tr>
        <tr> 
          <td height="30"> 
            <div align="center"><font size="4" color="#000000">
<!--Your Company Name.English-->
Enterprise Purchase Department
</font> </div>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center" background="purchase_department_images/index_bg.gif">
  <tr> 
    <td valign="top" width="215" rowspan="2">
      <table width="215" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td> 
            <table width="215" border="0" cellspacing="0" cellpadding="0" height="20" background="purchase_department_images/01.gif">
              <tr> 
                <td> <img src="purchase_department_images/index_pic.gif" width="215" height="155"></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr> 
          <td> 
            <table width="215" border="0" cellspacing="0" cellpadding="0" height="15">
              <tr> 
                <td> 
                  <div align="center">
<!--Language-->
<!--Something Here-->
</div>
                </td>
              </tr>
            </table>
            <table width="215" border="0" cellspacing="0" cellpadding="0" height="40" background="purchase_department_images/index_lm.gif">
              <tr> 
                <td> <div align="center"><b><a href="../menu_index/purchase_department_index.jsp">��Ʒ�ɹ���</a></b> </div></td>
              </tr>
            </table>
	<!--Button2.Content.Begin-->
            <table width="215" border="0" cellspacing="0" cellpadding="0" height="40" background="purchase_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button2.Link-->
<a href="supplyer_all_infor_page.jsp">
<!--Button2-->
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��Ӧ�̳���������Ϣ</a></b></div>
                </td>
              </tr>
            </table>
<!--Button2.Content.End-->

<!--Button2.Content.Begin-->
            <table width="215" border="0" cellspacing="0" cellpadding="0" height="40" background="purchase_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button2.Link-->
<a href="supplyer_one_query.jsp">
<!--Button2-->
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��Ӧ�̳�����Ϣ��ѯ</a></b></div>
                </td>
              </tr>
            </table>
<!--Button2.Content.End-->



<!--Button4.Content.Begin-->
            <table width="215" border="0" cellspacing="0" cellpadding="0" height="40" background="purchase_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button4.Link-->
<a href="add_supplyer.jsp">
<!--Button4-->
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��Ӧ�̳�����Ϣ����</a></b></div>
                </td>
              </tr>
            </table>
<!--Button4.Content.End-->

<!--Button5.Content.Begin-->
            <table width="215" border="0" cellspacing="0" cellpadding="0" height="40" background="purchase_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button5.Link-->
<a href="supplyeroneinfor_update.jsp">
<!--Button5-->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��Ӧ�̳�����Ϣ�޸�</a></b></div>
                </td>
              </tr>
            </table>
<!--Button5.Content.End-->

<!--Button6.Content.Begin-->
            <table width="215" border="0" cellspacing="0" cellpadding="0" height="40" background="purchase_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button6.Link-->
<a href="supplyeroneinfor_delete.jsp">
<!--Button6-->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
��Ӧ�̳�����Ϣɾ��</a></b></div>
                </td>
              </tr>
            </table>
<!--Button6.Content.End-->

<!--Button7.Content.Begin-->
            <table width="215" border="0" cellspacing="0" cellpadding="0" height="40" background="purchase_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button7.Link-->
<a href="../login/login_exit.jsp">
<!--Button7-->�˳�ϵͳ</a></b></div>
                </td>
              </tr>
            </table>
<!--Button7.Content.End-->
          </td>
        </tr>
      </table>
    </td>
    <td valign="top" width="563"><img src="purchase_department_images/index_top2.gif" width="563" height="70"></td>
  </tr>
  <tr>
    <td valign="top">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td></td>
        </tr>
        <tr> 
          <td> 
<!--IndexPage.Content.Begin-->




<jsp:useBean id="supplyer" scope="request" class="supplyer.SupplyerBean"/>
<%
  String SupId=request.getParameter("SupId");
 // out.println("SupId="+SupId);
  Supplyer supplyer1 = supplyer.getSupplyerDetails(SupId);
  if(supplyer1==null)
  {
  out.println("�����ڹ�Ӧ�̳��ҵ���Ϣ��");
  }
  else
  {
  
%>

<table width="526" height="250" border="12" align="center">
  <tr>
    <td colspan="2" align="center"> ��Ӧ�̳�����Ϣ</td>
  </tr>
  <tr>
    <td width="262">���ұ��</td>
    <td width="292">&nbsp;<%=supplyer1.getSupId()%></td>
  </tr>
  <tr>
    <td>��������</td>
    <td>&nbsp;<%=supplyer1.getSupName()%></td>
  </tr>
  <tr>
    <td>���ҵ�ַ</td>
    <td>&nbsp;<%=supplyer1.getAddress()%></td>
  </tr>
  <tr>
    <td>�ʱ�</td>
    <td>&nbsp;<%=supplyer1.getPostcode()%></td>
  </tr>
  <tr>
    <td>������Ʒ����</td>
    <td>&nbsp;<%=supplyer1.getProductName()%></td>
  </tr>
</table>
<%
}
%>






<!--IndexPage.Content.End-->
<table width="90%" border="0" cellspacing="0" cellpadding="0" align="center" height="1">
              <tr> 
                <td bgcolor="#000000"> </td>
              </tr>
            </table>
            <table width="90%" border="0" cellspacing="0" cellpadding="4" align="center">
              <tr> 
                <td> 
                  <p align="center">
<!--Your Company Name-->
��������ҵ��ơ���
<!--TCopyRight-->
 ��Ȩ����
@2002<br>
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
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><img src="purchase_department_images/index_bottom.gif" width="778" height="50"></td>
  </tr>
</table>
</BODY>

<!-- Mirrored from web.hichina.com/sitemanager/templet/096/left1/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:02:03 GMT -->
</HTML>