<%@ include file="common.jsp" %>
<%@ page contentType="text/html; charset=GB2312" %>

<HTML>

<!-- Mirrored from web.hichina.com/sitemanager/templet/096/left4/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:03:25 GMT -->
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
	response.sendRedirect("login/login_exit.jsp");
	//out.println("dengluchengong认为其二维尔维尔却无二");
}
%>


</HEAD>



<BODY BGCOLOR=#669966 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
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
<a href="saler_all_infor_page.jsp">
<!--Button1-->
联系人所有信息</a></b> </div>
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
<a href="saler_insert.jsp">
<!--Button2-->
联系人信息添加 </a></b></div>
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
<a href="saler_update.jsp">
<!--Button3-->
联系人信息修改 </a></b></div>
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
<a href="saler_delete.jsp">
<!--Button4-->
联系人信息删除 </a></b></div>
                </td>
              </tr>
            </table>
<!--Button4.Content.End-->

<!--Button5.Content.Begin-->
            <table width="215" border="0" cellspacing="0" cellpadding="0" height="40" background="images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button5.Link-->
<a href="../login/login_exit.jsp">
<!--Button5-->
退出系统</a></b></div>
                </td>
              </tr>
            </table>
<!--Button5.Content.End-->




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



请输入要删除的供应商联系人编号：
<form id="form1" name="form1" method="POST" action="saler_delete.jsp">
  <label>
  <input type="text" name="SalerId" value="" />
  </label>
  <label>
  <input type="submit" name="Submit" value="查询" />
  </label>
  <label>
  <input type="reset" name="Submit2" value="重新设置" />
  </label>
</form>
<jsp:useBean id="saler" scope="session" class="saler.SalerBean"/>
<%
  String SalerId=request.getParameter("SalerId");
 if(SalerId!=null)
 {
 %> 
<%
  Saler saler1 = saler.getSalerDetails(SalerId);
  if(saler1==null)
  out.println("不存在该供应商联系人的基本信息");
  else
  {
%>

<form id="form2" name="form2" method="post" action="saler_delete_cfrm.jsp">
<table width="500" height="360" border="10" align="center">
  <tr>
    <td colspan="2" align="center">联系人信息<input type="hidden" name="SalerId1" value="<%=convert(saler1.getSalerId())%>" /></td>
  </tr>
  <tr>
    <td width="269">联系人编号</td>
    <td width="231"><%=convert(saler1.getSalerId())%></td>
  </tr>
  <tr>
    <td>联系人姓名</td>
    <td><%=saler1.getSalerName()%> </td>
  </tr>
     <tr>
    <td>供货厂家编号</td>
    <td><%=saler1.getSupId()%>
        </td>
  </tr>
    <%
  String Sexx=saler1.getSalerSex();
  if(Sexx.equals("Male"))
  Sexx ="男";
  else
  Sexx ="女";
  %>
  <tr>
    <td>性别</td>
    <td>&nbsp;<%=Sexx%></td>
  </tr>
  <tr>
    <td>职位</td>
    <td><%=saler1.getSalerTitle()%> </td>
  </tr>
  <tr>
    <td>办公室电话</td>
    <td><%=saler1.getSalerOffice()%></td>
  </tr>
  <tr>
    <td>移动电话</td>
    <td><%=convert(saler1.getSalerMobile())%></td>
  </tr>
  <tr>
    <td>爱好</td>
    <td><%=saler1.getSalerHobby()%> </td>
  </tr>
  <tr>
    <td>描述</td>
    <td><%=saler1.getSalerMemo()%>
    
        </td>
  </tr>

    <tr>
    <td>
      <label for="Submit"></label>
      <input type="submit" name="Submit" value="删除" id="Submit" />
    
    </td>
    <td><input type="reset" name="Reset" value="重填" id="Submit" /></td>
  </tr>
</table>
</form>
<%
}
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

<!-- Mirrored from web.hichina.com/sitemanager/templet/096/left4/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:03:25 GMT -->
</HTML>
