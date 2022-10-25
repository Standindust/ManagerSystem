<%@ page contentType="text/html; charset=GB2312" %>
<%@ page import="product.*" %>
<%@ page import="java.util.Properties" %>
<%@ page import="shopping.*" %>
<%@ page import="java.util.*" %>
<%!
   public String convert(String s){
    try{
     	return new String(s.getBytes("GB2312"),"GB2312");
    }catch(Exception e){return null;}
   }
%>

<HTML>

<!-- Mirrored from web.hichina.com/sitemanager/templet/006/left4/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:02:51 GMT -->
<HEAD>
<TITLE>
<!--Your Company Name-->
Template
</TITLE>
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<!--CharSet-->
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
<link rel="stylesheet" href="yellow_images/CSS.CSS" type="text/css">
<style type="text/css">
<!--
.bg {  background-image: url(yellow_images/index_top1.gif); background-repeat: no-repeat}
.leftbg {  background-image: url(yellow_images/index_leftbg.gif)}
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
<BODY BGCOLOR=#7F4F11 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" class="indexbg" LANGUAGE=javascript onLoad="return window_onload()">
<!--Counter-->
<!--Something Here-->
<table width="100%" border="0" cellspacing="0" cellpadding="0" height="165">
  <tr>
    <td valign="top" background="yellow_images/index_topbg.gif"> 
      <table width="100%" border="0" cellspacing="0" cellpadding="0" height="165">
        <tr> 
          <td height="153"> 
            <table width="778" border="0" cellspacing="0" cellpadding="0" height="153" align="right">
              <tr> 
                <td colspan="2" height="15" bgcolor="#7F4F11"><img src="yellow_images/index_top1.gif" width="700" height="15"></td>
              </tr>
              <tr> 
                <td width="460" background="yellow_images/index_top2.gif" valign="top" height="138"> 
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
                <td width="318" background="yellow_images/01.gif" height="138"> 
                  <div align="right"><img src="yellow_images/index_toppic.gif" width="318" height="138"></div>
                </td>
              </tr>
            </table>
          </td>
        </tr>
        <tr> 
          <td height="12"> 
            <table width="100%" border="0" cellspacing="0" cellpadding="0" height="12" background="yellow_images/index_topbottombg.gif">
              <tr> 
                <td><img src="yellow_images/index_top3.gif" width="200" height="12"></td>
                <td></td>
                <td> 
                  <div align="right"><img src="yellow_images/index_top4.gif" width="318" height="12"></div>
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
    <td width="200" background="yellow_images/index_lmbg.gif">
      <table width="200%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><img src="yellow_images/index_lmtop.gif" width="200" height="60"></td>
        </tr>
      </table>
      <table width="200" border="0" cellspacing="0" cellpadding="0">
        <tr valign="top"> 
          <td width="40"><img src="yellow_images/index_lmcenter.gif" width="40" height="120"></td>
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
                  <table width="140" border="0" cellpadding="0" height="26" cellspacing="0" background="yellow_images/index_lm.gif">
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
                  <table width="140" border="0" cellpadding="0" height="26" cellspacing="0" background="yellow_images/index_lm.gif">
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


<!--Button2.Content.Begin-->
              <tr> 
                <td height="36"> 
                  <table width="140" border="0" cellpadding="0" height="26" cellspacing="0" background="yellow_images/index_lm.gif">
                    <tr> 
                      <td> 
                        <div align="center"><b>
<!--Button2.Link-->
<a href="product_allinfor_edit.jsp">
						<font color="#000000">
<!--Button2-->
商品销售管理                          </font></a></b></div>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
<!--Button2.Content.End-->

<!--Button3.Content.Begin-->
              <tr> 
                <td height="36"> 
                  <table width="140" border="0" cellpadding="0" height="26" cellspacing="0" background="yellow_images/index_lm.gif">
                    <tr> 
                      <td> 
                        <div align="center"><b>
<!--Button3.Link-->
<a href="../login/login_exit.jsp">
						<font color="#000000">
<!--Button3-->
退出系统                          </font></a></b></div>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
<!--Button3.Content.End-->
            </table>
          </td>
        </tr>
      </table>
    </td>
    <td bgcolor="#AD7A3A"> 
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td height="10" background="yellow_images/index_centerbg.gif" width="30">&nbsp;</td>
          <td height="10" background="yellow_images/index_centerbg.gif">&nbsp;</td>
        </tr>
        <tr> 
          <td width="30">&nbsp;</td>
          <td> <br>
<!--IndexPage.Content.Begin-->
<!--IndexPage.Content.Begin-->



<jsp:useBean id="productbean" scope="session" class="product.ProductBean"/>
<jsp:useBean id="cart" scope="session" class="shopping.ShoppingCart"/>
<jsp:useBean id="checkout" scope="session" class="shopping.CheckoutBean"/>

<table width="727" height="129" border="12" align="center">
  <tr>
    <td colspan="4" align="center">购物清单</td>
  </tr>
  <tr>
    <td>数量</td>
    <td width="81">商品编号</td>
    <td width="108">商品名称</td>
    <td width="282">价格</td>
  </tr>


<%
    Iterator i = cart.getItems().iterator();
    while (i.hasNext()) {
      ShoppingCartItem item = (ShoppingCartItem)i.next();
      Product productone = (Product)item.getItem();
	//////////////////////////////////////////////////////////////////////////
	  String proid=productone.getProId();
	 // out.println("proid="+proid);
	  
	  String proname=productone.getProName();
	 // out.println("proname="+proname);
	  
	  String typeid=productone.getTypeId();
	  //  out.println("typeid="+typeid);
		
	  String prounit=productone.getProUnit();
	 // out.println("prounit="+prounit);
	  
      int quantity = item.getQuantity() ;
	  //out.println("quantity="+quantity);

	  float nowprice=productone.getNowPrice();
	 // out.println("nowprice="+nowprice);
	  
	  float proprice=productone.getProPrice();
	 // out.println("proprice="+proprice);
	  /////////////////////////////////////////////////////////////////////////
	
	int result=checkout.InsertCheckout(proid,proname,typeid,prounit,nowprice,proprice,quantity); 
    String PRONAME=productone.getProName();
	String PROID=productone.getProId();
	 
	  	  
%>
<tr>
    <td width="228">&nbsp;<%=item.getQuantity()%></td>
    <td width="81">&nbsp;<%=PROID%></td>
    <td width="108">&nbsp;<%=PRONAME%></td>
    <td width="282">&nbsp;<%=productone.getNowPrice()%></td>
  </tr>  
<%    // End of while
}
%>
<tr>
    <td colspan="2">总额(元)&nbsp;</td>
    <td colspan="2"><%=cart.getTotal()%>&nbsp;</td>
  </tr>
</table>




</td>
        </tr>
      </table>
<!--IndexPage.Content.End-->
    </td>
    <td width="50" background="yellow_images/index_tbbg.gif"><img src="yellow_images/index_tbtop.gif" width="50" height="50"></td>
  </tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" background="yellow_images/index_bottombg.gif">
  <tr>
    <td width="230"><img src="yellow_images/index_bottom1.gif" width="230" height="100"></td>
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
      <div align="right"><img src="yellow_images/index_bottom2.gif" width="50" height="100"></div>
    </td>
  </tr>
</table>
</BODY>

<!-- Mirrored from web.hichina.com/sitemanager/templet/006/left4/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:02:51 GMT -->
</HTML>