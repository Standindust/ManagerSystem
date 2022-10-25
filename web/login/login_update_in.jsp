<%@ include file="common.jsp" %>
<%@ page contentType="text/html; charset=GB2312" %>
<%@ page import="login.*" %>


<HTML>

<!-- Mirrored from web.hichina.com/sitemanager/templet/009/left3/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:02:17 GMT -->
<HEAD>
<TITLE>
<!--Your Company Name-->
Template
</TITLE>
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<!--CharSet-->
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
<link rel="stylesheet" href="login_images/CSS.CSS" type="text/css">
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
<script language="javascript">
function checkvalue()
{  
	var mainform = document.forms["form2"];
	if( mainform.PassWords.value.length==0 )
	{
		alert( "请输入密码！" );
		mainform.PassWords.focus();
		return false;
	}
	if( mainform.Password_cfrm.value.length==0 )
	{
		alert( "请输入确认密码！" );
		mainform.Password_cfrm.focus();
		return false;
	}
	if( mainform.PassWords.value!=mainform.Password_cfrm.value )
	{
		alert( "两次输入的密码不同！" );
		mainform.Cfrm_Passwords.focus();
		return false;
	}
	return true;
}

</script>



<%
if ( session.getAttribute("UserName")==null || session.getAttribute("UserName")=="" || session.getAttribute("UserType")==null || session.getAttribute("UserType")=="")
{
    session.removeAttribute("UserName");
    session.removeAttribute("UserType");
	response.sendRedirect("index.jsp");
	//超级管理员页面
}
%>

</HEAD>


<BODY BGCOLOR=#996666 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" class="leftbg" LANGUAGE=javascript onLoad="return window_onload()">
<!--Counter-->
<!--Something Here-->
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center" height="130">
  <tr> 
    <td rowspan="2" width="220" height="130"><img src="login_images/index_top1.gif" width="220" height="130"></td>
    <td colspan="3" height="38"><img src="login_images/index_top2.gif" width="558" height="38"></td>
  </tr>
  <tr> 
    <td width="354" height="90" background="login_images/index_top3.gif"> 
      <table border="0" cellspacing="0" cellpadding="0" width="317" align="center">
        <tr> 
          <td height="30"> 
            <div align="center"><font size="5"><b>
<!--Your Company Name-->用户登陆信息管理</b></font></div>
          </td>
        </tr>
        <tr> 
          <td height="36"> 
            <div align="center"><font size="4"><b>
<!--Your Company Name.English-->
The Customer Information Management
</b></font></div>
          </td>
        </tr>
      </table>
    </td>
    <td width="186" height="90"><img src="login_images/01.gif" width="186" height="92"></td>
    <td width="18" height="90"><img src="login_images/index_top4.gif" width="18" height="92"></td>
  </tr>
</table>
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center" background="login_images/index_bg.gif">
  <tr> 
    <td>
      <table width="778" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td width="174" valign="top"> 
            <table width="174" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td><img src="login_images/index_lmtop.gif" width="174" height="22"></td>
              </tr>
              <tr> 
                <td> 
                  <table width="174" border="0" cellspacing="0" cellpadding="0" background="login_images/index_lmbg.gif">



                    <tr> 
                      <td height="36"> 
                        <table width="174" border="0" cellspacing="0" cellpadding="0" height="32">
                          <tr> 
                            <td>
                              <table width="174" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="27">&nbsp;</td>
                                  <td width="147">
                                    <div align="center"><b><a href="#"><font color="#FFFFFF">
<!--Language-->
<!--Something Here-->

                                      </font></a></b></div>
                                  </td>
                                </tr>
                              </table>
                            </td>
                          </tr>
                        </table>
                      </td>
                    </tr>




                    <tr> 
                      <td height="36"> 
                        <table width="174" border="0" cellspacing="0" cellpadding="0" height="32" background="login_images/index_lm.gif">
                          <tr> 
                            <td>
                              <table width="174" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="27">&nbsp;</td>
                                  <td width="147">
                                    <div align="center"><b><a href="login_exit.jsp"><font color="#FFFFFF">重新登陆 
                                      </font></a></b></div>
                                  </td>
                                </tr>
                              </table>
                            </td>
                          </tr>
                        </table>
                      </td>
                    </tr>





<!--Button1.Content.Begin-->
                    <tr> 
                      <td height="36"> 
                        <table width="174" border="0" cellspacing="0" cellpadding="0" height="32" background="login_images/index_lm.gif">
                          <tr> 
                            <td>
                              <table width="174" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="27">&nbsp;</td>
                                  <td width="147">
                                    <div align="center"><b>
<!--Button1.Link-->
<a href="login_update_query.jsp">
<font color="#FFFFFF">
<!--Button1-->
修改密码                                      </font></a></b></div>
                                  </td>
                                </tr>
                              </table>
                            </td>
                          </tr>
                        </table>
                      </td>
                    </tr>
<!--Button1.Content.End-->



<!--Button2.Content.Begin-->
                    <tr> 
                      <td height="36"> 
                        <table width="174" border="0" cellspacing="0" cellpadding="0" height="32" background="login_images/index_lm.gif">
                          <tr> 
                            <td>
                              <table width="174" border="0" cellspacing="0" cellpadding="0">
                                <tr> 
                                  <td width="27">&nbsp;</td>
                                  <td width="147"> 
                                    <div align="center"><b>
<!--Button2.Link-->
<a href="login_exit.jsp">
									<font color="#FFFFFF">
<!--Button2-->
退出系统                                      </font></a></b></div>
                                  </td>
                                </tr>
                              </table>
                            </td>
                          </tr>
                        </table>
                      </td>
                    </tr>
<!--Button2.Content.End-->
<!--Button1.Content.Begin-->
                    <tr> 
                      <td height="36"> 
                        <table width="174" border="0" cellspacing="0" cellpadding="0" height="32" background="login_images/index_lm.gif">
                          <tr> 
                            <td>
                              <table width="174" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="27">&nbsp;</td>
                                  <td width="147">
                                    <div align="center"><b>
<!--Button1.Link-->
<a href="index_all.jsp">
<font color="#FFFFFF">
<!--Button1-->
超级管理页面                                      </font></a></b></div>
                                  </td>
                                </tr>
                              </table>
                            </td>
                          </tr>
                        </table>
                      </td>
                    </tr>
<!--Button1.Content.End-->




                  </table>
                </td>
              </tr>
              <tr> 
                <td><img src="login_images/index_lmbuttom.gif" width="174" height="100"></td>
              </tr>
            </table>
          </td>
          <td valign="top"> 
            <table width="604" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="30">&nbsp;</td>
                <td width="594"> 
<!--IndexPage.Content.Begin-->
<!--IndexPage.Content.End-->

<%
String  UserId=request.getParameter("UserId");
//out.println("UserId="+UserId);
String  UserName=request.getParameter("UserName");
//out.println("Username="+UserName);
String  PassWords=request.getParameter("PassWords");
//out.println("Passwords="+PassWords);
%>
<jsp:useBean id="login" scope="session" class="login.LoginBean"/>
<%
	int result = login.SelectOneUsersLoginInfor(UserId,UserName,PassWords);
	if( result==1 )
	{
     Login login1 = login.getUsersLoginDetails(UserId);

%>
<form id="form2" name="form2" method="post" action="login_update_cfrm.jsp">
  <table width="405" height="265" border="12" align="center" bordercolor="#993333">
    <tr>
      <td colspan="2" align="center">用户登录个人密码修改 
		 </td>
    </tr>
    <tr>
      <td width="181">用户编号
        <input type="hidden" name="UserId1" value="<%=convert(login1.getUserId())%>"></td>
      <td width="208"><input type="text" name="UserId" id="textfield" value="<%=login1.getUserId()%>" disabled="disabled"/>
      </td>
    <tr>
      <td width="181">用户姓名
        <input type="hidden" name="UserName1" value="<%=convert(login1.getUserName())%>"></td>
      <td width="208"><input type="text" name="UserName" id="textfield" value="<%=login1.getUserName()%>"disabled="disabled"/>
      </td>
    </tr>
    <tr>
      <td>新的密码</td>
      <td><input type="password" name="PassWords" id="textfield" /></td>
    </tr>
    <tr>
      <td>确认密码</td>
      <td><input type="password" name="Password_cfrm" id="textfield"  /></td>
    </tr> 
    <tr>
      <td height="64"><input type="submit" name="Submit3" value="修改" id="Submit" onClick="javascript:return (checkvalue());" />
      </td>
      <td><input type="reset" name="Reset" value="重填" id="Submit" />
      </td>
    </tr>
  </table>

</form>
<%					
	}
	else
	{
	 out.println( "不存在该用户" );
	 }
%>







<br>
                  <b><font size="3"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="../menu_index/personnael_department_index.jsp">人力资源部</a>※<a href="../menu_index/finance_department_index.jsp">公司财务部</a>※<a href="../menu_index/purchase_department_index.jsp">商品采购部</a>※<a href="../menu_index/sale_department_index.jsp">商品销售部</a>※<a href="../menu_index/common_employee_index.jsp">个人信息管理</a><br>
                  </font></b> 
                  <table width="94%" border="0" cellspacing="0" cellpadding="0" align="center" class="englishfont" height="1">
                    <tr> 
                      <td bgcolor="#000000"> </td>
                    </tr>
                  </table>
                  <br>
                  <table width="96%" border="0" cellspacing="0" cellpadding="0" align="center" class="englishfont">
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
                <td width="20">&nbsp;</td>
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
    <td><img src="login_images/index_bottom.gif" width="778" height="41"></td>
  </tr>
</table>
</BODY>

<!-- Mirrored from web.hichina.com/sitemanager/templet/009/left3/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:02:17 GMT -->
</HTML>