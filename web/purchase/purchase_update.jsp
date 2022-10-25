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
	//out.println("dengluchengong认为其二维尔维尔却无二");
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
超市管理系统——商品采购部 
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
                <td> <div align="center"><b><a href="../menu_index/purchase_department_index.jsp">商品采购部</a></b> </div></td>
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
采购信息列表</a></b> </div>
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
采购信息添加 </a></b></div>
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
采购信息编辑 </a></b></div>
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
退出系统 </a></b></div>
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
    <td colspan="2" align="center">采购信息显示</td>
  </tr>
  <tr>
    <td width="269">采购编号<input type="hidden" name="PurId" value="<%=purchase1.getPurId()%>"></td>
    <td width="304"><input type="text" name="PurId" id="textfield" value="<%=purchase1.getPurId()%>"  disabled="disabled"></td>
  </tr>
    </tr>
    <tr>
    <td >商品编号</td>
    <td ><input type="text" name="ProId" id="textfield" value="<%=purchase1.getProId()%>" ></td>
  </tr>
  <tr>
    <td>商品名称</td>
    <td><input type="text" name="ProName" id="textfield"  value="<%=purchase1.getProName()%>" ></td>
  <tr>
    <td>联系人编号</td>
    <td><input type="text" name="SalerId" id="textfield"  value="<%=purchase1.getSalerId()%>"></td>
  </tr>
  <tr>
    <td>公司采购员编号</td>
    <td><input type="text" name="EmpId" id="textfield" value="<%=purchase1.getEmpId()%>"></td>
  </tr>
  <tr>
    <td>数量</td>
    <td><input type="text" name="Quantity" id="textfield" value="<%=purchase1.getQuantity()%>" ></td>
  </tr>
  <tr>
    <td>单价</td>
    <td><input type="text" name="Price" id="textfield" value="<%=purchase1.getPrice()%>" ></td>
  </tr>
  <tr>
    <td>时间</td>
    <td><input type="text" name="Data" id="textfield"  value="<%=purchase1.getData()%>"></td>
  </tr>
  <tr>
    <td>地点</td>
    <td><input type="text" name="Address" id="textfield" value="<%=purchase1.getAddress()%>" ></td>
  </tr>
  <tr>
    <td>描述</td>
    <td>
      <textarea name="Memo" cols="50" rows="5" id="label"  ><%=purchase1.getMemo()%></textarea>
        </td>
  </tr>
    <tr>
    <td>
      <input type="submit" name="Submit" value="修改" id="Submit" /> 
    </td>
    <td><input type="reset" name="Reset" value="重填" id="Submit" /></td>
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
任晓明毕业设计——
<!--TCopyRight-->
 版权所有
@2006<br>
<!--TAddress-->
公司地址:ysu
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
