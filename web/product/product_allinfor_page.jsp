<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="product.*" %>
<%@ page import="shopping.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*"%>

<HTML>

<!-- Mirrored from web.hichina.com/sitemanager/templet/006/left1/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:01:44 GMT -->
<HEAD>
<TITLE>
<!--Your Company Name-->
Template
</TITLE>
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<!--CharSet-->
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
<link rel="stylesheet" href="images/CSS.CSS" type="text/css">
<style type="text/css">
<!--
.bg {  background-image: url(images/index_top1.gif); background-repeat: no-repeat}
.leftbg {  background-image: url(images/index_leftbg.gif)}
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
}
%>

</HEAD>
<BODY BGCOLOR=#007091 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" class="indexbg" LANGUAGE=javascript onLoad="return window_onload()">
<!--Counter-->
<!--Something Here-->
<table width="100%" border="0" cellspacing="0" cellpadding="0" height="165">
  <tr>
    <td valign="top" background="images/index_topbg.gif"> 
      <table width="100%" border="0" cellspacing="0" cellpadding="0" height="165">
        <tr> 
          <td height="153"> 
            <table width="778" border="0" cellspacing="0" cellpadding="0" height="153" align="right">
              <tr> 
                <td colspan="2" height="15" bgcolor="#007091"><img src="images/index_top1.gif" width="700" height="15"></td>
              </tr>
              <tr> 
                <td width="460" background="images/index_top2.gif" valign="top" height="138"> 
                  <table border="0" cellspacing="0" cellpadding="0" align="center" width="317">
                    <tr> 
                      <td height="30">&nbsp;</td>
                    </tr>
                    <tr> 
                      <td height="36"> 
                        <div align="right"><font size="5" color="#000000"><b>
<!--Your Company Name-->
商品销售部信息管理
                          </b></font></div>
                      </td>
                    </tr>
                    <tr> 
                      <td height="36"> 
                        <div align="center"><font size="5" color="#000000">
<!--Your Company Name.English-->
The Merchandise Sale Department
</font></div>
                      </td>
                    </tr>
                  </table>
                </td>
                <td width="318" background="images/01.gif" height="138"> 
                  <div align="right"><img src="images/index_toppic.gif" width="318" height="138"></div>
                </td>
              </tr>
            </table>
          </td>
        </tr>
        <tr> 
          <td height="12"> 
            <table width="100%" border="0" cellspacing="0" cellpadding="0" height="12" background="images/index_topbottombg.gif">
              <tr> 
                <td><img src="images/index_top3.gif" width="200" height="12"></td>
                <td></td>
                <td> 
                  <div align="right"><img src="images/index_top4.gif" width="318" height="12"></div>
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr valign="top"> 
    <td width="200" background="images/index_lmbg.gif">
      <table width="200%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><img src="images/index_lmtop.gif" width="200" height="60"></td>
        </tr>
      </table>
      <table width="200" border="0" cellspacing="0" cellpadding="0">
        <tr valign="top"> 
          <td width="40"><img src="images/index_lmcenter.gif" width="40" height="120"></td>
          <td>
            <table width="150" border="0" cellspacing="0" cellpadding="0">

              <tr> 
                <td rowspan="13" width="5">&nbsp;</td>
                <td height="36"> 
                  <table width="140" border="0" cellpadding="0" height="26" cellspacing="0">
                    <tr> 
                      <td> 
                        <div align="center"><b><a href="#"><font color="#000000">
<!--Language-->
<!--Something Here-->
                          </font></a></b></div>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>

              <tr> 
                <td height="36"> 
                  <table width="140" border="0" cellpadding="0" height="26" cellspacing="0" background="images/index_lm.gif">
                    <tr> 
                      <td> 
                        <div align="center"><b><a href="../menu_index/sale_department_index.jsp"><font color="#000000">商品销售部 
                          </font></a></b></div>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>

<!--Button1.Content.Begin-->
              <tr> 
                <td height="36"> 
                  <table width="140" border="0" cellpadding="0" height="26" cellspacing="0" background="images/index_lm.gif">
                    <tr> 
                      <td> 
                        <div align="center"><b>
<!--Button1.Link-->
<a href="product_allinfor_page.jsp">
						<font color="#000000">
<!--Button1-->
商品信息显示                          </font></a></b></div>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
<!--Button1.Content.End-->
<!--Button1.Content.Begin-->
              <tr> 
                <td height="36"> 
                  <table width="140" border="0" cellpadding="0" height="26" cellspacing="0" background="images/index_lm.gif">
                    <tr> 
                      <td> 
                        <div align="center"><b>
<!--Button1.Link-->
<a href="product_allinfor_edit.jsp">
						<font color="#000000">
<!--Button1-->
商品销售管理                          </font></a></b></div>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
<!--Button1.Content.End-->


<!--Button2.Content.Begin-->
              <tr> 
                <td height="36"> 
                  <table width="140" border="0" cellpadding="0" height="26" cellspacing="0" background="images/index_lm.gif">
                    <tr> 
                      <td> 
                        <div align="center"><b>
<!--Button2.Link-->
<a href="../login/login_exit.jsp">
						<font color="#000000">
<!--Button2-->
退出系统                          </font></a></b></div>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
<!--Button2.Content.End-->
            </table>
          </td>
        </tr>
      </table>
    </td>
    <td bgcolor="#289CBF"> 
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td height="10" background="images/index_centerbg.gif" width="30">&nbsp;</td>
          <td height="10" background="images/index_centerbg.gif">&nbsp;</td>
        </tr>
        <tr> 
          <td width="30">&nbsp;</td>
          <td> <br>
<!--IndexPage.Content.Begin-->


<%
	String pg = request.getParameter("page");
	if(pg==null || pg=="") 
	{
	 pg="1";
	}
%>
<jsp:useBean id="product" class="product.ProductBean" scope="session" />
<jsp:useBean id="productpage" class="product.ProductBeanPage" scope="session" />


<table width="720" height="166" border="12" align="center">
  <tr>
    <td colspan="7" align="center">所有商品的基本信息</td>
  </tr>
  <tr>
    <td width="76">商品编号</td>
    <td width="128">商品名称</td>
    <td width="93">商品类型编号</td>
    <td width="67">商品单位</td>
    <td width="93">商品当前价格</td>
    <td width="36">数量</td>
    <td width="159">描述</td>
   
  </tr>
 <%
    
	int i=0;
	int pgsize = 5;
	int curpage = Integer.parseInt(pg);
	int totalpage = productpage.totalPage(pgsize);
	
	try{
		ResultSet rs = productpage.getPageof(pg, pgsize);
		if(rs != null) {
			while(rs.next() && i<pgsize) {
%>
  <tr>
    <td><%=rs.getString("ProId")%></td>
    <td><%=rs.getString("ProName")%></td>
    <td><%=rs.getString("TypeId")%></td>
    <td><%=rs.getString("ProUnit")%></td>
    <td><%=rs.getString("NowPrice")%></td>
    <td><%=rs.getString("Quantity")%></td>
    <td><%=rs.getString("Memo")%></td>	
  
  </tr>
<%
				i++;
			}
		}
	}catch(SQLException e) {}
%>
</table>
<form method="get" action="product_allinfor_page.jsp">
<a href="product_allinfor_page.jsp">返回</a>
共<%=totalpage%>页&nbsp;
<%
if(curpage>1 && totalpage>1)
	out.print("<a href=\"product_allinfor_page.jsp?page="+ (curpage-1)+"\">上一页</a>");
else
	out.print("上一页");
%>&nbsp;
<%
if(curpage<totalpage)
	out.print("<a href=\"product_allinfor_page.jsp?page="+ (curpage+1)+"\">下一页</a>");
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








</td>
        </tr>
      </table>
<!--IndexPage.Content.End-->
    </td>
    <td width="50" background="images/index_tbbg.gif"><img src="images/index_tbtop.gif" width="50" height="50"></td>
  </tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" background="images/index_bottombg.gif">
  <tr>
    <td width="230"><img src="images/index_bottom1.gif" width="230" height="100"></td>
    <td> <br>
      <table width="94%" border="0" cellspacing="0" cellpadding="0" align="center" class="englishfont">
        <tr> 
          <td> 
            <div align="center">
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
</div>
            <p></p>
            <div align="center"></div>
          </td>
        </tr>
      </table>
    </td>
    <td width="50"> 
      <div align="right"><img src="images/index_bottom2.gif" width="50" height="100"></div>
    </td>
  </tr>
</table>
</BODY>

<!-- Mirrored from web.hichina.com/sitemanager/templet/006/left1/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:01:44 GMT -->
</HTML>