<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="product.*" %>
<%@ page session="true" %>

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

<script language="javascript">
function checkvalue()
{  
	var mainform = document.forms["main"];
	if( mainform.ProId.value.length==0 )
	{
		alert( "请输入商品编号！" );
		mainform.ProId.focus();
		return false;
	}
	if( mainform.ProName.value.length==0 )
	{
		alert( "请输入商品名称！" );
		mainform.ProName.focus();
		return false;
	}
	if( mainform.TypeId.value.length==0 )
	{
		alert( "请输入商品类型编号！" );
		mainform.TypeId.focus();
		return false;
	}
   if( mainform.ProUnit.value.length==0 )
	{
		alert( "请输入商品单位！" );
		mainform.ProUnit.focus();
		return false;
	}
  if( mainform.NowPrice.value.length==0 )
	{
		alert( "请输入商品当前价格！" );
		mainform.NowPrice.focus();
		return false;
	}
	if( mainform.ProPrice.value.length==0 )
	{
		alert( "请输入商品进货价格！" );
		mainform.ProPrice.focus();
		return false;
	}
	if( mainform.Quantity.value.length==0 )
	{
		alert( "请输入商品数量！" );
		mainform.Quantity.focus();
		return false;
	}
	if( mainform.Memo.value.length==0 )
	{
		alert( "请输入商品数量！" );
		mainform.Memo.focus();
		return false;
	}
	return true;
}

</script>


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
超市管理系统——商品信息管理 
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
                        <div align="center"><b><a href="../menu_index/purchase_department_index.jsp"><font color="#000000">商品采购部 
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
商品信息添加                          </font></a></b></div>
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
商品信息查询                          </font></a></b></div>
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
商品信息修改                          </font></a></b></div>
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
商品信息删除                          </font></a></b></div>
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
退出系统                          </font></a></b></div>
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



<form id="form1" name="main" method="post" action="product_add_result.jsp" >
<table width="659" height="299" border="12" align="center">
  <tr>
    <td colspan="2" align="center">商品基本信息的添加</td>
  </tr>
  <tr>
    <td width="191">商品编号</td>
    <td width="430">
      <input type="text" name="ProId" id="textfield" />
    </td>
  </tr>
  <tr>
    <td>商品名称</td>
    <td><input type="text" name="ProName" id="textfield" />
    </td>
  </tr>
  <tr>
    <td>商品类型编号</td>
    <td><input type="text" name="TypeId" id="textfield" /></td>
  </tr>
  <tr>
    <td>商品单位</td>
    <td><input type="text" name="ProUnit" id="textfield" /></td>
  </tr>
  <tr>
    <td>商品当前价格</td>
    <td><input type="text" name="NowPrice" id="textfield" /></td>
  </tr>
  <tr>
    <td>商品进货价格</td>
    <td><input type="text" name="ProPrice" id="textfield" /></td>
  </tr>
  <tr>
    <td>商品数量</td>
    <td><input type="text" name="Quantity" id="textfield" /></td>
  </tr>
  <tr>
    <td>商品描述</td>
    <td><textarea name="Memo" cols="55" rows="5" id="textfield"></textarea></td>
  </tr>
    <tr>
    <td>  <input type="submit" name="Submit" value="添加" id="Submit" onClick="javascript:return (checkvalue());" /> </td>
    <td>   <input type="reset" name="Submit2" value="重填" id="label" /> </td>
  </tr>
</table>
</form>
	







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
      <div align="right"><img src="product_images/index_bottom2.gif" width="50" height="100"></div>
    </td>
  </tr>
</table>
</BODY>

<!-- Mirrored from web.hichina.com/sitemanager/templet/006/left5/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:03:26 GMT -->
</HTML>