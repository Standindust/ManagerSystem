<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*"%>


<HTML>

<!-- Mirrored from web.hichina.com/sitemanager/templet/007/left3/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:02:16 GMT -->
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
if ( session.getAttribute("UserName")==null || session.getAttribute("UserName")=="" || session.getAttribute("UserType")==null || session.getAttribute("UserType")=="" )
{
    session.removeAttribute("UserName");
    session.removeAttribute("UserType");
	response.sendRedirect("../login/login_exit.jsp");
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
商品销售部信息管理 
</font></span><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#FFFFFF">
<!--Your Company Name.English-->
The Merchandise Sale Department
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
                <td height="27" width="130"><b><a href="../menu_index/finance_department_index.jsp"><font color="#FFFFFF"><span class="text">公司财务部 
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
<a href="checkout.jsp">
				<font color="#FFFFFF">
				<span class="text">
<!--Button1-->
 商品销售信息                  </span></font></a></b></td>
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
<a href="checkout_del.jsp">
				<font color="#FFFFFF">
				<span class="text">
<!--Button1-->
销售信息删除                  </span></font></a></b></td>
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
<a href="../login/login_exit.jsp">
				<font color="#FFFFFF">
				<span class="text">
<!--Button2-->
退出系统                  </span></font></a></b></td>
              </tr>
            </table>
          </td>
        </tr>
<!--Button2.Content.End-->
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
<jsp:useBean id="checkout" class="checkout.CheckoutBeanPage" scope="session" />




<table width="720" height="149" border="12" align="center">
  <tr>
    <td height="38" colspan="8" align="center">商品的销售信息</td>
  </tr>
  <tr>
    <td width="61" height="43">商品编号</td>
    <td width="123">商品名称</td>
    <td width="94">商品类型编号</td>
    <td width="72">商品单位</td>
    <td width="70">当前价格</td>
    <td width="39">进货价格</td>
    <td width="107">数量</td>
    <td width="80">删除</td>
  </tr>
 <%
    
	int i=0;
	int pgsize = 5;
	int curpage = Integer.parseInt(pg);
	int totalpage = checkout.totalPage(pgsize);
	
	try{
		ResultSet rs = checkout.getPageof(pg, pgsize);
		if(rs != null) {
			while(rs.next() && i<pgsize) {
%>
  <tr>
    <td height="36"><%=rs.getString("ProId")%></td>
    <td><%=rs.getString("ProName")%></td>
    <td><%=rs.getString("TypeId")%></td>
    <td><%=rs.getString("ProUnit")%></td>
    <td><%=rs.getString("NowPrice")%></td>
    <td><%=rs.getString("ProPrice")%></td>
    <td><%=rs.getString("Quantity")%></td>	
    <td><a href="checkout_del_crfm.jsp?Add=<%=rs.getString("ProId")%>">&nbsp;删除&nbsp;</a></td>
  </tr>
<%
				i++;
			}
		}
	}catch(SQLException e) {}
%>


</table>
<form method="get" action="checkout_del.jsp">
<a href="checkout_del.jsp">返回</a>
共<%=totalpage%>页&nbsp;
<%
if(curpage>1 && totalpage>1)
	out.print("<a href=\"checkout_del.jsp?page="+ (curpage-1)+"\">上一页</a>");
else
	out.print("上一页");
%>&nbsp;
<%
if(curpage<totalpage)
	out.print("<a href=\"checkout_del.jsp?page="+ (curpage+1)+"\">下一页</a>");
else
	out.print("下一页");
%>

跳到第<select name="page" OnChange="document.forms[0].submit()">
<script language="JavaScript">
	for(i=1; i<=<%=totalpage%>; i++)
		document.write("<option value="+i+">"+i+"</option>")
	document.forms[0].page.options[<%=curpage-1%>].selected = true;
</script>		
	</select>页	
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

<!-- Mirrored from web.hichina.com/sitemanager/templet/007/left3/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:02:16 GMT -->
</HTML>