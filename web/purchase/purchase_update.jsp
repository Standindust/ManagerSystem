<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="purchase.*" %>



<HTML>

<!-- Mirrored from web.hichina.com/sitemanager/templet/096/left3/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:02:49 GMT -->
<HEAD>
<TITLE>
<!--Your Company Name-->
Template
</TITLE>
<!--CharSet-->
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
<link rel="stylesheet" href="images/CSS.CSS" type="text/css">
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
	response.sendRedirect("../login/login_exit.jsp");
	//out.println("dengluchengong��Ϊ���ά��ά��ȴ�޶�");
}
%>


</HEAD>
<BODY BGCOLOR=#999966 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<!--Counter-->
<!--Something Here-->
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center" height="130">
  <tr>
    <td background="images/index_top1.gif" valign="top"> 
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
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center" background="images/index_bg.gif">
  <tr> 
    <td valign="top" width="215" rowspan="2">
      <table width="215" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td> 
            <table width="215" border="0" cellspacing="0" cellpadding="0" height="20" background="images/01.gif">
              <tr> 
                <td> <img src="images/index_pic.gif" width="215" height="155"></td>
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
            <table width="215" border="0" cellspacing="0" cellpadding="0" height="40" background="images/index_lm.gif">
              <tr> 
                <td> <div align="center"><b><a href="../menu_index/purchase_department_index.jsp">��Ʒ�ɹ���</a></b> </div></td>
              </tr>
            </table>
<!--Button1.Content.Begin-->
            <table width="215" border="0" cellspacing="0" cellpadding="0" height="40" background="images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button1.Link-->
<a href="purchase_all_infor_page.jsp">
<!--Button1-->
�ɹ���Ϣ�б�</a></b> </div>
                </td>
              </tr>
            </table>
<!--Button1.Content.End-->

<!--Button2.Content.Begin-->
            <table width="215" border="0" cellspacing="0" cellpadding="0" height="40" background="images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button2.Link-->
<a href="purchase_insert.jsp">
<!--Button2-->
�ɹ���Ϣ��� </a></b></div>
                </td>
              </tr>
            </table>
<!--Button2.Content.End-->

<!--Button3.Content.Begin-->
            <table width="215" border="0" cellspacing="0" cellpadding="0" height="40" background="images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button3.Link-->
<a href="purchase_all_infor_edit_page.jsp">
<!--Button3-->
�ɹ���Ϣ�༭ </a></b></div>
                </td>
              </tr>
            </table>
<!--Button3.Content.End-->

<!--Button4.Content.Begin-->
            <table width="215" border="0" cellspacing="0" cellpadding="0" height="40" background="images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button4.Link-->
<a href="../login/login_exit.jsp">
<!--Button4-->
�˳�ϵͳ </a></b></div>
                </td>
              </tr>
            </table>
<!--Button4.Content.End-->

          </td>
        </tr>
      </table>
    </td>
    <td valign="top" width="563"><img src="images/index_top2.gif" width="563" height="70"></td>
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


<%
String PurId=request.getParameter("PurId");
//out.println("PurId="+PurId);
%>
<jsp:useBean id="purchase" scope="session" class="purchase.PurchaseBean"/>
<%
  Purchase purchase1 = purchase.getPurchaseDetails(PurId);
%>
<form id="form1" name="form1" method="post" action="purchase_update_cfrm.jsp">
<table width="550" height="387" border="10" align="center">
  <tr>
    <td colspan="2" align="center">�ɹ���Ϣ��ʾ</td>
  </tr>
  <tr>
    <td width="269">�ɹ����<input type="hidden" name="PurId" value="<%=purchase1.getPurId()%>"></td>
    <td width="304"><input type="text" name="PurId" id="textfield" value="<%=purchase1.getPurId()%>"  disabled="disabled"></td>
  </tr>
    </tr>
    <tr>
    <td >��Ʒ���</td>
    <td ><input type="text" name="ProId" id="textfield" value="<%=purchase1.getProId()%>" ></td>
  </tr>
  <tr>
    <td>��Ʒ����</td>
    <td><input type="text" name="ProName" id="textfield"  value="<%=purchase1.getProName()%>" ></td>
  <tr>
    <td>��ϵ�˱��</td>
    <td><input type="text" name="SalerId" id="textfield"  value="<%=purchase1.getSalerId()%>"></td>
  </tr>
  <tr>
    <td>��˾�ɹ�Ա���</td>
    <td><input type="text" name="EmpId" id="textfield" value="<%=purchase1.getEmpId()%>"></td>
  </tr>
  <tr>
    <td>����</td>
    <td><input type="text" name="Quantity" id="textfield" value="<%=purchase1.getQuantity()%>" ></td>
  </tr>
  <tr>
    <td>����</td>
    <td><input type="text" name="Price" id="textfield" value="<%=purchase1.getPrice()%>" ></td>
  </tr>
  <tr>
    <td>ʱ��</td>
    <td><input type="text" name="Data" id="textfield"  value="<%=purchase1.getData()%>"></td>
  </tr>
  <tr>
    <td>�ص�</td>
    <td><input type="text" name="Address" id="textfield" value="<%=purchase1.getAddress()%>" ></td>
  </tr>
  <tr>
    <td>����</td>
    <td>
      <textarea name="Memo" cols="50" rows="5" id="label"  ><%=purchase1.getMemo()%></textarea>
        </td>
  </tr>
    <tr>
    <td>
      <input type="submit" name="Submit" value="�޸�" id="Submit" /> 
    </td>
    <td><input type="reset" name="Reset" value="����" id="Submit" /></td>
  </tr>
</table>
</form>


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
    <td><img src="images/index_bottom.gif" width="778" height="50"></td>
  </tr>
</table>
</BODY>

<!-- Mirrored from web.hichina.com/sitemanager/templet/096/left3/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:02:49 GMT -->
</HTML>
