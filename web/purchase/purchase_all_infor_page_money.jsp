<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="purchase.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*"%>



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
	response.sendRedirect("login/login_exit.jsp");
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
                <td> <div align="center"><b><a href="../menu_index/finance_department_index.jsp">公司财务部</a></b> </div></td>
              </tr>
            </table>
<!--Button1.Content.Begin-->
            <table width="215" border="0" cellspacing="0" cellpadding="0" height="40" background="images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button1.Link-->
<a href="purchase_all_infor_page_money.jsp">
<!--Button1-->
采购信息列表</a></b> </div>
                </td>
              </tr>
            </table>
<!--Button1.Content.End-->

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
	String pg = request.getParameter("page");
	if(pg==null || pg=="") 
	{
	 pg="1";
	}
%>
<jsp:useBean id="purchasepage" scope="session" class="purchase.PurchaseBeanPage"/>
<table width="566" height="109" border="10" align="center">
  <tr>
    <td height="35" colspan="7" align="center">所有采购信息显示</td>
  </tr>
  <tr>
    <td width="63" height="33">采购编号</td>
	<td width="81">商品名称</td>
    <td width="75">联系人编号</td>
    <td width="84">采购员编号</td>
    <td width="80">采购数量</td>
    <td width="57">单价</td>
    <td width="62">时间</td>
  </tr>
 <%
    
	int i=0;
	int pgsize = 5;
	int curpage = Integer.parseInt(pg);
	int totalpage = purchasepage.totalPage(pgsize);
	
	try{
		ResultSet rs = purchasepage.getPageof(pg, pgsize);
		if(rs != null) {
			while(rs.next() && i<pgsize) {
%>
  <tr>
    <td height="31">&nbsp;<%=rs.getString("PurId")%></td>
	<td>&nbsp;<%=rs.getString("ProName")%></td>
    <td>&nbsp;<%=rs.getString("SalerId")%></td>
    <td>&nbsp;<%=rs.getString("EmpId")%></td>
    <td>&nbsp;<%=rs.getString("Quantity")%></td>
    <td>&nbsp;<%=rs.getString("Price")%></td>
    <td>&nbsp;<%=rs.getString("Data")%></td>	
  </tr>
<%
				i++;
			}
		}
	}catch(SQLException e) {}
%>
</table>
<form method="get" action="purchase_all_infor_page_money.jsp">
<a href="purchase_all_infor_page_money.jsp">返回</a>
共<%=totalpage%>页&nbsp;
<%
if(curpage>1 && totalpage>1)
	out.print("<a href=\"purchase_all_infor_page_money.jsp?page="+ (curpage-1)+"\">上一页</a>");
else
	out.print("上一页");
%>&nbsp;
<%
if(curpage<totalpage)
	out.print("<a href=\"purchase_all_infor_page_money.jsp?page="+ (curpage+1)+"\">下一页</a>");
else
	out.print("下一页");
%>
<table width="90%" border="0" cellspacing="0" cellpadding="0" align="center" height="1">
  <tr>
    <td bgcolor="#000000"></td>
  </tr>
</table>
跳到第
<select name="page" OnChange="document.forms[0].submit()">
<script language="JavaScript">
	for(i=1; i<=<%=totalpage%>; i++)
		document.write("<option value="+i+">"+i+"</option>")
	document.forms[0].page.options[<%=curpage-1%>].selected = true;
</script>		
	</select>页
</form>





<!--IndexPage.Content.End-->
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
</A></p>                </td>
              </tr>
            </table>          </td>
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
