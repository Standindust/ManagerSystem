<%@ page contentType="text/html;charset=gb2312"%>
<%@ page session="true" %>
<%@ page import="product.*" %>

<HTML>

<!-- Mirrored from web.hichina.com/sitemanager/templet/006/left5/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:03:26 GMT -->
<HEAD>
<TITLE>
<!--Your Company Name-->
Template
</TITLE>
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<!--CharSet-->
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
<link rel="stylesheet" href="product_images/CSS.CSS" type="text/css">
<style type="text/css">
<!--
.bg {  background-image: url(product_images/index_top1.gif); background-repeat: no-repeat}
.leftbg {  background-image: url(product_images/index_leftbg.gif)}
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
}
%>



</HEAD>
<BODY BGCOLOR=#43375A leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" class="indexbg" LANGUAGE=javascript onLoad="return window_onload()">
<!--Counter-->
<!--Something Here-->
<table width="100%" border="0" cellspacing="0" cellpadding="0" height="165">
  <tr>
    <td valign="top" background="product_images/index_topbg.gif"> 
      <table width="100%" border="0" cellspacing="0" cellpadding="0" height="165">
        <tr> 
          <td height="153"> 
            <table width="778" border="0" cellspacing="0" cellpadding="0" height="153" align="right">
              <tr> 
                <td colspan="2" height="15" bgcolor="#43375A"><img src="product_images/index_top1.gif" width="700" height="15"></td>
              </tr>
              <tr> 
                <td width="460" background="product_images/index_top2.gif" valign="top" height="138"> 
                  <table border="0" cellspacing="0" cellpadding="0" align="center" width="317">
                    <tr> 
                      <td height="30">&nbsp;</td>
                    </tr>
                    <tr> 
                      <td height="36"> 
                        <div align="right"><font size="5" color="#000000"><b>
<!--Your Company Name-->
???????????????????????????? 
                          </b></font></div>
                      </td>
                    </tr>
                    <tr> 
                      <td height="36"> 
                        <div align="center"><font size="5" color="#000000">
<!--Your Company Name.English-->
The Merchandise Information Management
</font></div>
                      </td>
                    </tr>
                  </table>
                </td>
                <td width="318" background="product_images/01.gif" height="138"> 
                  <div align="right"><img src="product_images/index_toppic.gif" width="318" height="138"></div>
                </td>
              </tr>
            </table>
          </td>
        </tr>
        <tr> 
          <td height="12"> 
            <table width="100%" border="0" cellspacing="0" cellpadding="0" height="12" background="product_images/index_topbottombg.gif">
              <tr> 
                <td><img src="product_images/index_top3.gif" width="200" height="12"></td>
                <td></td>
                <td> 
                  <div align="right"><img src="product_images/index_top4.gif" width="318" height="12"></div>
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
    <td width="200" background="product_images/index_lmbg.gif">
      <table width="200%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><img src="product_images/index_lmtop.gif" width="200" height="60"></td>
        </tr>
      </table>
      <table width="200" border="0" cellspacing="0" cellpadding="0">
        <tr valign="top"> 
          <td width="40"><img src="product_images/index_lmcenter.gif" width="40" height="120"></td>
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
                  <table width="140" border="0" cellpadding="0" height="26" cellspacing="0" background="product_images/index_lm.gif">
                    <tr> 
                      <td> 
                        <div align="center"><b><a href="../menu_index/purchase_department_index.jsp"><font color="#000000">?????????? 
                          </font></a></b></div>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>

<!--Button1.Content.Begin-->
              <tr> 
                <td height="36"> 
                  <table width="140" border="0" cellpadding="0" height="26" cellspacing="0" background="product_images/index_lm.gif">
                    <tr> 
                      <td> 
                        <div align="center"><b>
<!--Button1.Link-->
<a href="product_add.jsp">
						<font color="#000000">
<!--Button1-->
????????????                          </font></a></b></div>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
<!--Button1.Content.End-->


<!--Button2.Content.Begin-->
              <tr> 
                <td height="36"> 
                  <table width="140" border="0" cellpadding="0" height="26" cellspacing="0" background="product_images/index_lm.gif">
                    <tr> 
                      <td> 
                        <div align="center"><b>
<!--Button2.Link-->
<a href="product_query_and_result.jsp">
						<font color="#000000">
<!--Button2-->
????????????                          </font></a></b></div>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
<!--Button2.Content.End-->

<!--Button3.Content.Begin-->
              <tr> 
                <td height="36"> 
                  <table width="140" border="0" cellpadding="0" height="26" cellspacing="0" background="product_images/index_lm.gif">
                    <tr> 
                      <td> 
                        <div align="center"><b>
<!--Button3.Link-->
<a href="product_update_query.jsp">
						<font color="#000000">
<!--Button3-->
????????????                          </font></a></b></div>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
<!--Button3.Content.End-->

<!--Button4.Content.Begin-->
              <tr> 
                <td height="36"> 
                  <table width="140" border="0" cellpadding="0" height="26" cellspacing="0" background="product_images/index_lm.gif">
                    <tr> 
                      <td> 
                        <div align="center"><b>
<!--Button4.Link-->
<a href="product_allinfor_del.jsp">
						<font color="#000000">
<!--Button4-->
????????????                          </font></a></b></div>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
<!--Button4.Content.End-->
<!--Button4.Content.Begin-->
              <tr> 
                <td height="36"> 
                  <table width="140" border="0" cellpadding="0" height="26" cellspacing="0" background="product_images/index_lm.gif">
                    <tr> 
                      <td> 
                        <div align="center"><b>
<!--Button4.Link-->
<a href="product_index.jsp">
						<font color="#000000">
<!--Button4-->????????????						</font></a></b></div>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
<!--Button4.Content.End-->



<!--Button4.Content.Begin-->
              <tr> 
                <td height="36"> 
                  <table width="140" border="0" cellpadding="0" height="26" cellspacing="0" background="product_images/index_lm.gif">
                    <tr> 
                      <td> 
                        <div align="center"><b>
<!--Button4.Link-->
<a href="newproduct_edit.jsp">
						<font color="#000000">
<!--Button4-->
??????????????                          </font></a></b></div>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
<!--Button4.Content.End-->


<!--Button5.Content.Begin-->
              <tr> 
                <td height="36"> 
                  <table width="140" border="0" cellpadding="0" height="26" cellspacing="0" background="product_images/index_lm.gif">
                    <tr> 
                      <td> 
                        <div align="center"><b>
<!--Button5.Link-->
<a href="../login/login_exit.jsp">
						<font color="#000000">
<!--Button5-->
????????                          </font></a></b></div>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
<!--Button5.Content.End-->
 




            </table>
          </td>
        </tr>
      </table>
    </td>
    <td bgcolor="#6B5790"> 
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td height="10" background="product_images/index_centerbg.gif" width="30">&nbsp;</td>
          <td height="10" background="product_images/index_centerbg.gif">&nbsp;</td>
        </tr>
        <tr> 
          <td width="30">&nbsp;</td>
          <td> <br>
<!--IndexPage.Content.Begin-->



<% 
String ProId =request.getParameter("ProId");
String ProName =request.getParameter("ProName");
String TypeId =request.getParameter("TypeId");
String ProUnit =request.getParameter("ProUnit");
String  NowPrice =request.getParameter("NowPrice");
String  ProPrice =request.getParameter("ProPrice");
String Quantity=request.getParameter("Quantity");
String Memo=request.getParameter("Memo");


//out.println("ProId="+ProId);
//out.println("ProName="+ProName);
//out.println("TypeId="+TypeId);
//out.println("ProUnit="+ProUnit);
//out.println("ProPrice="+ProPrice);
//out.println("NowPrice="+NowPrice);
//out.println("Quantity="+Quantity);
//out.println("Memo="+Memo);

%>
<jsp:useBean id="product" scope="session" class="product.ProductBean" />
<%
	int result = product.InsertProduct(ProId,ProName,TypeId,ProUnit,NowPrice,ProPrice,Quantity,Memo);
	if( result==1 )
	{
		out.println( "??????????" );
	}
	if( result==2 )
	{
	    out.println( "????????????????????????????" );
	}
	if(result==0)
		{
	    out.println( "????????????????????????" );
	}
%>
	







</td>
        </tr>
      </table>
<!--IndexPage.Content.End-->
    </td>
    <td width="50" background="product_images/index_tbbg.gif"><img src="product_images/index_tbtop.gif" width="50" height="50"></td>
  </tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" background="product_images/index_bottombg.gif">
  <tr>
    <td width="230"><img src="product_images/index_bottom1.gif" width="230" height="100"></td>
    <td> <br>
      <table width="94%" border="0" cellspacing="0" cellpadding="0" align="center" class="englishfont">
        <tr> 
          <td> 
            <div align="center">
<!--Your Company Name-->
??????????????????
<!--TCopyRight-->
 ????????
@2006<br>
<!--TAddress-->
????????:ysu
<!--Address-->
<br>
<!--TTelephone-->
????:
<!--Telephone-->
<!--TEMail-->
 ????????:ren@126.com
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
      <div align="right"><img src="product_images/index_bottom2.gif" width="50" height="100"></div>
    </td>
  </tr>
</table>
</BODY>

<!-- Mirrored from web.hichina.com/sitemanager/templet/006/left5/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:03:26 GMT -->
</HTML>