<%@ page contentType="text/html; charset=GB2312" %>

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
<link rel="stylesheet" href="common_images/css.css" type="text/css">
<SCRIPT ID=clientEventHandlersJS LANGUAGE=javascript>
<!--

function window_onload() {
<!--Page.OnLoad-->
}

//-->
</SCRIPT>

<%
if ( session.getAttribute("UserName")==null || session.getAttribute("UserName")=="" || session.getAttribute("UserType")==null || session.getAttribute("UserType")=="")
{
    session.removeAttribute("UserName");
    session.removeAttribute("UserType");
	response.sendRedirect("login/login_exit.jsp");
	//超级管理员页面
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
			<IMG SRC="common_images/index_01.jpg" WIDTH=213 HEIGHT=196></TD>
		
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
中型超市管理系统 
</font></span><font face="Verdana, Arial, Helvetica, sans-serif" size="2" color="#FFFFFF">
<!--Your Company Name.English-->
YanShan.University 
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
                <td height="27" width="130"><b><font color="#FFFFFF"><span class="text"><a href="common_employee_index.jsp">首页</a>                  </span></font></b></td>
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
<a href="#">
				<font color="#FFFFFF">
				<span class="text">
<!--Button1-->
员工详细信息查询
                  </span></font></a></b></td>
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
<a href="#">
				<font color="#FFFFFF">
				<span class="text">
<!--Button2-->
员工考勤信息查询 
                  </span></font></a></b></td>
              </tr>
            </table>
          </td>
        </tr>
<!--Button2.Content.End-->



<!--Button3.Content.Begin-->
        <tr> 
          <td align="center"> 
            <table width="176" border="0" cellspacing="0" cellpadding="0" class="button">
              <tr> 
                <td height="27" width="46">&nbsp;</td>
                <td height="27" width="130"><b>
<!--Button3.Link-->
<a href="#">
				<font color="#FFFFFF">
				<span class="text">
<!--Button3-->
员工工资信息查询
				</span></font></a></b></td>
              </tr>
            </table>
          </td>
        </tr>
<!--Button3.Content.End-->



<!--Button4.Content.Begin-->
        <tr> 
          <td align="center"> 
            <table width="176" border="0" cellspacing="0" cellpadding="0" class="button">
              <tr> 
                <td height="27" width="46">&nbsp;</td>
                <td height="27" width="130"><b>
<!--Button4.Link-->
<a href="../login/login_update_query.jsp">
				<font color="#FFFFFF">
				<span class="text">
<!--Button4-->
修改个人密码                  </span></font></a></b></td>
              </tr>
            </table>
          </td>
        </tr>
<!--Button4.Content.End-->



<!--Button5.Content.Begin-->
        <tr> 
          <td align="center"> 
            <table width="176" border="0" cellspacing="0" cellpadding="0" class="button">
              <tr> 
                <td height="27" width="46">&nbsp;</td>
                <td height="27" width="130"><b>
<!--Button5.Link-->
<a href="../login/login_exit.jsp">
				<font color="#000000">
				<span class="text">
				<font color="#FFFFFF">
<!--Button5-->
退出系统				</font></span></font></a></b></td>
              </tr>
            </table>
          </td>
        </tr>
<!--Button5.Content.End-->

        <tr> 
          <td align="center">&nbsp;</td>
        </tr>
      </table>
    </TD>
		
    <TD align="center" valign="top"> 
<!--IndexPage.Content.Begin-->
      <table width="94%" border="0" cellspacing="0" cellpadding="0" align="center" class="text">
        <tr> 
          <td>&nbsp; </td>
        </tr>
        <tr> 
          <td><font color="#FFCC00">
<!--SubButton1.Content.Begin-->
<!--SubButton.Front-->
<!--Something Here-->
<!--SubButton1.Link-->
<a href="#"> 
<!--SubButton1-->
团队精神
</a>
<!--SubButton.Back-->
| 
<!--SubButton1.Content.End-->

<!--SubButton2.Content.Begin-->
<!--SubButton2.Link-->
<a href="#"> 
<!--SubButton2-->
团队介绍
</a> | 
<!--SubButton2.Content.End-->

<!--SubButton3.Content.Begin-->
<!--SubButton3.Link-->
<a href="#"> 
<!--SubButton3-->
公司目标
</a> | 
<!--SubButton3.Content.End-->

<!--SubButton4.Content.Begin-->
<!--SubButton4.Link-->
<a href="#"> 
<!--SubButton4-->
发展方向
</a> | 
<!--SubButton4.Content.End-->

<!--SubButton5.Content.Begin-->
<!--SubButton5.Front-->
<!--Something Here-->
<!--SubButton5.Link-->
<!--Something Here-->
<!--SubButton5-->
<!--Something Here-->
</a>
<!--SubButton5.Back-->
<!--Something Here-->
<!--SubButton5.Content.End-->


<!--SubButton6.Content.Begin-->
<!--SubButton6.Front-->
<!--Something Here-->
<!--SubButton6.Link-->
<!--Something Here-->
<!--SubButton6-->
<!--Something Here-->
</a>
<!--SubButton6.Back-->
<!--Something Here-->
<!--SubButton6.Content.End-->

<!--SubButton7.Content.Begin-->
<!--SubButton7.Front-->
<!--Something Here-->
<!--SubButton7.Link-->
<!--Something Here-->
<!--SubButton7-->
<!--Something Here-->
</a>
<!--SubButton7.Back-->
<!--Something Here-->
<!--SubButton7.Content.End-->

<!--SubButton8.Content.Begin-->
<!--SubButton8.Front-->
<!--Something Here-->
<!--SubButton8.Link-->
<!--Something Here-->
<!--SubButton8-->
<!--Something Here-->
</a>
<!--SubButton8.Back-->
<!--Something Here-->
<!--SubButton8.Content.End-->

<!--SubButton9.Content.Begin-->
<!--SubButton9.Front-->
<!--Something Here-->
<!--SubButton9.Link-->
<!--Something Here-->
<!--SubButton9-->
<!--Something Here-->
</a>
<!--SubButton9.Back-->
<!--Something Here-->
<!--SubButton9.Content.End-->

<!--SubButton10.Content.Begin-->
<!--SubButton10.Front-->
<!--Something Here-->
<!--SubButton10.Link-->
<!--Something Here-->
<!--SubButton10-->
<!--Something Here-->
</a>
<!--SubButton10.Back-->
<!--Something Here-->
<!--SubButton10.Content.End-->
</font></td>
        </tr>
        <tr> 
          <td bgcolor="#000000"><font color="#FFFFFF"><img src="common_images/Spacer.gif" width="1" height="1"></font></td>
        </tr>
        <tr> 
          <td> 
            <div align="right"><font color="#FFFFFF">
<!--SubPage.Begin-->
<!--Something Here-->
<!--SubPage.End-->
</font></div>
          </td>
        </tr>
        <tr> 
          <td>
<!--Page.Content.Begin-->
<!--Something Here-->
<font color="#FFFFFF"><br>
            现在</font><a href="buy.html" target="_blank"><font color="#FFCC00">订购</font></a><font color="#FFFFFF">，这个专业的页面就是你的！ 
            <br>
            <br>
            这只是一个让您观看效果的临时页面，在这里您可以看到您的公司名称、描述、栏目的名称等等，一切您输入的东西都可以动态的在这里显示出来。<br>
            <br>
            <br>
            如果您觉得这样的页面效果不理想，您可以尝试变换页面栏目的左右放置方式、页面的颜色，直至</font><a href="categories.html"><font color="#FFCC00">更换另一个您喜欢的模板。</font></a><font color="#FFFFFF"><a href="categories.html"> 
            </a><br>
            <br>
            如果您喜欢这个页面，那么现在就</font><a href="http://web.hichina.com/sitemanager/templet/buy.asp" target="_blank"><font color="#FFFFFF">订购</font></a><font color="#FFFFFF">它吧！ 
            如果您认为我们现在提供的主题图片都不适合您的公司或网站，您只需要联系我们，提出您的要求或提供您的素材，我们将会为您设计您自己的主题图片。<br>
            <br>
            如果您想在我们的模板中使用您自己的logo标志，我们将尽量帮助您在我们的页面模板中使用它，请在定购模板后将您的logo发送给我们。<br>
            <br>
            一旦您完成订购并付款，我们将在收到您的付款后24小时内开通您的管理帐号，你可以在获得账号后立即使用我们的<b>Site Manager</b>--网站即时通系统（</font><a href="sitemanager/demo.html"><font color="#FFCC00">看演示系统</font></a><font color="#FFFFFF">）来具体定制您的页面内容。<br>
            <br>
            </font><b><font size="3"><a href="buy.html" target="_blank"><font color="#FFCC00">现在订购！</font></a></font></b><font color="#FFFFFF"><b><font size="3"><a href="buy.html" target="_blank"> 
            </a></font></b></font>
<!--Something Here-->
<!--Page.Content.End-->
</td>
        </tr>
      </table>
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
<A HREF='mailto:
<!--Email-->

'>
<!--Email-->
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