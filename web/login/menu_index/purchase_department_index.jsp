<%@ page contentType="text/html;charset=gb2312"%>

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
.style1 {
	font-size: 24px;
	font-family: "����";
}
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
	response.sendRedirect("login/login_exit.jsp");
	//out.println("dengluchengong��Ϊ���ά��ά��ȴ�޶�");
}
%>
<%
  String usertype=(String)session.getAttribute("UserType");
  if(!(usertype.equals("five1") || usertype.equals("three1")) )
 // out.println("usertype="+usertype);
  response.sendRedirect("login/login_exit.jsp");
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
                <td> <div align="center"><b><a href="purchase_department_index.jsp">��Ʒ�ɹ���</a></b> </div></td>
              </tr>
            </table>


<!--Button2.Content.Begin-->
            <table width="215" border="0" cellspacing="0" cellpadding="0" height="40" background="purchase_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button2.Link-->
<a href="../../protype/protype_all.jsp">
<!--Button2-->
 
 ��Ʒ������Ϣ����</a></b></div>
                </td>
              </tr>
            </table>
<!--Button2.Content.End-->

<!--Button3.Content.Begin-->
            <table width="215" border="0" cellspacing="0" cellpadding="0" height="40" background="purchase_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button3.Link-->
<a href="../../product/product_index.jsp">
<!--Button3-->
��Ʒ��ϸ��Ϣ����</a></b></div>
                </td>
              </tr>
            </table>
<!--Button3.Content.End-->

<!--Button4.Content.Begin-->
            <table width="215" border="0" cellspacing="0" cellpadding="0" height="40" background="purchase_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button4.Link-->
<a href="../../supplyer/supplyer_all_infor_page.jsp">
<!--Button4-->
��Ӧ�̳��ҹ���</a></b></div>
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
<a href="../../saler/saler_all_infor_page.jsp">
<!--Button5-->�ɹ���ϵ�˹���</a></b></div>
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
<a href="../../purchase/purchase_all_infor_page.jsp">
<!--Button6-->
�ɹ���Ϣ����</a></b></div>
                </td>
              </tr>
            </table>
<!--Button6.Content.End-->

<!--Button6.Content.Begin-->
            <table width="215" border="0" cellspacing="0" cellpadding="0" height="40" background="purchase_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button6.Link-->
<a href="../index_all.jsp">
<!--Button6-->
ϵͳ��������</a></b></div>
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
<a href="../login_update_query.jsp">
<!--Button7-->�޸�����</a></b></div>
                </td>
              </tr>
            </table>
<!--Button7.Content.End-->
<!--Button7.Content.Begin-->
            <table width="215" border="0" cellspacing="0" cellpadding="0" height="40" background="purchase_department_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button7.Link-->
<a href="../login_exit.jsp">
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
<table width="564" height="452" border="12" align="center">
  <tr>
    <td  align="center"><span class="style1">�ɹ��ɱ����ƴ�ʩ</span></td>
  </tr>
  <tr>
    <td height="401">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���Ʋɹ��ɱ�����һ����ҵ�ľ�Ӫҵ��������Ҫ���ɹ��ɱ��½�������������ҵ�ֽ������ļ��٣�����ֱ����������Ʒ�ɱ����½�����������ӣ��Լ���ҵ����������ǿ��Ҫ���Ͳɹ��ɱ�Ӧ�����¼����������֣�һ�����������Ʋɹ��ƶȣ����òɹ��ɱ����ƵĻ����������ɹ������漰��㣬������Ҫ�Ǻ����򽻵�����ˣ������ҵ���ƶ��ϸ�Ĳɹ��ƶȺͳ��򣬲����ɹ��������¿�����������ɹ���Ա�ṩ����������´����������Ʋɹ�����Ҫע�����¼��㣺�����ϸ����ƵĲɹ��ƶȣ������ܹ淶��ҵ�Ĳɹ�������Ч�ʣ��ž�����֮�䳶Ƥ������Ԥ���ɹ���Ա�Ĳ�����Ϊ���ɹ��ƶ�Ӧ�涨��Ʒ�ɹ������롢��Ȩ�˵���׼Ȩ�ޡ���Ʒ�ɹ������̡���ز��ţ��ر��ǲ����ţ������κ͹�ϵ��������Ʒ�ɹ��Ĺ涨�ͷ�ʽ�����ۺͼ۸������ȡ������۸񵵰��ͼ۸�������ϵ����ҵ�ɹ�����Ҫ�����вɹ���Ʒ�����۸񵵰�����ÿһ���ɹ���Ʒ�ı��ۣ�Ӧ������鵵�Ĳ��ϼ۸���бȽϣ������۸�����ԭ����������ԭ��ԭ���ϲɹ��ļ۸��ܳ��������еļ۸�ˮƽ������Ҫ������ϸ��˵���������ص���ϵļ۸�Ҫ�����۸�������ϵ���ɹ�˾�йز�����ɼ۸������飬�����ռ��йصĹ�Ӧ�۸���Ϣ�����������������еļ۸�ˮƽ�����Թ鵵�ļ۸񵵰��������ۺ͸��¡����������������һ���Ȼ�������һ�Ρ�������Ʒ�ı�׼�ɹ��۸񲢶Բɹ���Ա���ݹ���ҵ�����н��������񲿶��ص��صĲ��ϸ����г��ı仯�Ͳ�Ʒ��׼�ɱ������ƶ���׼�ɹ��۸񣬴�ʹ�ɹ���Ա����Ѱ�һ�Դ���������ң����ϵؽ��Ͳɹ��۸񣬱�׼�ɹ��۸������۸�������ϵ����������У���������ʹ�ʩ������ɽ��͹�˾�ɹ��ɱ�����Ĳɹ���Ա���н�������û����ɲɹ��ɱ��½�����Ĳɹ���Ա������ԭ��ȷ�����佱�͵Ĵ�ʩ��ͨ�������ĸ�����Ĺ�������Ȼ������ȫ�ž��ɹ���Ա�İ���������Զ����Ʋɹ��������Ч�ʣ����Ʋɹ��ɱ���ȷʵ�нϴ�ĳ�Ч��</td>
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
