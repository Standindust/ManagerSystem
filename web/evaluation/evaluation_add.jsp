<%@ page contentType="text/html; charset=GB2312" %>

<HTML>

<!-- Mirrored from web.hichina.com/sitemanager/templet/088/left3/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:02:47 GMT -->
<HEAD>
<TITLE>
<!--Your Company Name-->
Template
</TITLE>
<!--CharSet-->
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
<link rel="stylesheet" href="evaluation_images/CSS.CSS" type="text/css">
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
</HEAD>


<%
if ( session.getAttribute("UserName")==null || session.getAttribute("UserName")=="" || session.getAttribute("UserType")==null || session.getAttribute("UserType")=="")
{
    session.removeAttribute("UserName");
    session.removeAttribute("UserType");
	response.sendRedirect("../login/index.jsp");
	//��������Աҳ��
}
%>

<script language="javascript">
function checkvalue()
{  
	var mainform = document.forms["main"];
	if( mainform.EvaId.value.length==0 )
	{
		alert( "������Ա�����ڱ�ţ�" );
		mainform.EmpId.focus();
		return false;
	}
	if( mainform.EmpId.value.length==0 )
	{
		alert( "������Ա����ţ�" );
		mainform.EmpName.focus();
		return false;
	}
	if( mainform.EmpName.value.length==0 )
	{
		alert( "������Ա����������" );
		mainform.EmpName.focus();
		return false;
	}
   if( mainform.EvaDate.value.length==0 )
	{
		alert( "������Ա���Ŀ���ʱ�䣡" );
		mainform.EvaDate.focus();
		return false;
	}
  if( mainform.Subject.value.length==0 )
	{
		alert( "�����뿼�ڵ����⣡" );
		mainform.Subject.focus();
		return false;
	}
	if( mainform.Result.value.length==0 )
	{
		alert( "�����뿼�ڵĽ����" );
		mainform.Result.focus();
		return false;
	}
	if( mainform.Score.value.length==0 )
	{
		alert( "������Ա�����ڵķ�����" );
		mainform.Score.focus();
		return false;
	}
	if( mainform.Memo.value.length==0 )
	{
		alert( "������Ա����������" );
		mainform.Memo.focus();
		return false;
	}
	return true;
}

</script>


<BODY BGCOLOR=#994D00 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<!--Counter-->
<!--Something Here-->
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center" height="150">
  <tr> 
    <td height="150" width="200" background="evaluation_images/01.gif"><img src="evaluation_images/index_pic.gif" width="200" height="150"></td>
    <td height="150" width="578" background="evaluation_images/index_top1.gif" valign="top"> 
      <table border="0" cellspacing="0" cellpadding="0" width="578" align="center">
        <tr> 
          <td height="30" width="408"> <b></b> <b></b></td>
          <td height="30" width="170">&nbsp;</td>
        </tr>
        <tr> 
          <td height="30" width="408"> 
            <div align="center"><font color="#FFFFFF"><b><font size="5">
<!--Your Company Name--><font color="#FFFFFF"><b>��ҵ������Դ������������Ϣ����</b></font></font></b></font></div>
          </td>
          <td height="30" width="170">&nbsp;</td>
        </tr>
        <tr> 
          <td height="30" width="408"> 
            <div align="center"><font size="4" color="#FFFFFF">
<!--Your Company Name.English-->
Human Resource Department
</font></div>
          </td>
          <td height="30" width="170">&nbsp;</td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<table width="778" border="0" cellspacing="0" cellpadding="0" background="evaluation_images/index_bg.gif" align="center">
  <tr> 
    <td width="200" valign="top" rowspan="2"> 
      <table width="200" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td height="226" align="center"> 

            <table width="200" border="0" cellspacing="0" cellpadding="0" height="20">
              <tr> 
                <td> 
                  <div align="center"></div>
                </td>
              </tr>
            </table>
            <br>
<!--Language-->
<!--Something Here-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="evaluation_images/index_lm.gif">
              <tr> 
                <td> <div align="center"><b>

<a href="../menu_index/personnael_department_index.jsp">

��ҳ</a></b> </div></td>
              </tr>
            </table>
			
<!--Button2.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="evaluation_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button2.Link-->
<a href="evaluation_index.jsp">
<!--Button2-->Ա��������Ϣ</a></b></div>
                </td>
              </tr>
            </table>
<!--Button2.Content.End-->

<!--Button3.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="evaluation_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button3.Link-->
<a href="evaluation_add.jsp">
<!--Button3-->
������Ϣ����</a></b></div>
                </td>
              </tr>
            </table>
<!--Button3.Content.End-->

<!--Button4.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="evaluation_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button4.Link-->
<a href="evaluation_update.jsp">
<!--Button4-->������Ϣ�޸�</a></b></div>
                </td>
              </tr>
            </table>
<!--Button4.Content.End-->

<!--Button5.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="evaluation_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button5.Link-->
<a href="evaluation_query.jsp">
<!--Button5-->������Ϣ��ѯ</a></b></div>
                </td>
              </tr>
            </table>
<!--Button5.Content.End-->

<!--Button6.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="evaluation_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button6.Link-->
<a href="evaluation_allinfor_page.jsp">
<!--Button6-->������Ϣɾ��</a></b></div>
                </td>
              </tr>
            </table>
<!--Button6.Content.End-->

<!--Button9.Content.Begin-->
            <table width="200" border="0" cellspacing="0" cellpadding="0" height="38" background="evaluation_images/index_lm.gif">
              <tr> 
                <td> 
                  <div align="center"><b>
<!--Button9.Link-->
<a href="../login/login_exit.jsp">
<!--Button9-->
�˳�ϵͳ</a></b></div>
                </td>
              </tr>
            </table>
<!--Button9.Content.End-->




          </td>
        </tr>
      </table>
    </td>
    <td valign="top" colspan="2"><img src="evaluation_images/index_top2.gif" width="578" height="30"></td>
  </tr>
  <tr> 
    <td valign="top" width="20">&nbsp; </td>
    <td width="558" valign="top">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td></td>
        </tr>
        <tr> 
          <td> 
            <p>&nbsp;</p>
			
			
<form id="form1" name="main" method="post" action="evaluation_add_cfrm.jsp">
<table width="530" height="390" border="12" align="center">
  <tr>
    <td colspan="2" align="center">Ա��������Ϣ����</td>
  </tr>
  <tr>
    <td width="162">EvaId</td>
    <td width="352"><input type="text" name="EvaId" id="textfield" ></td>
  </tr>
  <tr>
    <td>EmpId</td>
    <td><input type="text" name="EmpId" id="textfield" ></td>
  </tr>
  <tr>
    <td>EmpName</td>
    <td><input type="text" name="EmpName" id="textfield" ></td>
  </tr>
  <tr>
    <td>EvaDate</td>
    <td><input type="text" name="EvaDate" id="textfield" ></td>
  </tr>
  <tr>
    <td>Subject</td>
    <td><input type="text" name="Subject" id="textfield" ></td>
  </tr>
  <tr>
    <td>Result</td>
    <td><input type="text" name="Result" id="textfield" ></td>
  </tr>
  <tr>
    <td>Score</td>
    <td><input type="text" name="Score" id="textfield" ></td>
  </tr>
  <tr>
    <td>Memo</td>
    <td>
      <textarea name="Memo" cols="50" rows="5" id="label"></textarea>
        </td>
  </tr>
    <tr>
    <td>
      <input type="submit" name="Submit" value="����" id="Submit" onClick="javascript:return (checkvalue());" />    
    </td>
    <td><input type="reset" name="Reset" value="����" id="Submit" /></td>
  </tr>
</table>
</form>
			
			
			
			
			
			
			
			
			
			
<!--IndexPage.Content.Begin-->
<!--IndexPage.Content.End-->
<table width="90%" border="0" cellspacing="0" cellpadding="0" align="center" height="1">
              <tr> 
                <td bgcolor="#000000"> </td>
              </tr>
            </table>
            <table width="90%" border="0" cellspacing="0" cellpadding="4" align="center">
              <tr> 
                <td> 
                  <div align="center"> 
<!--Your Company Name-->
��������ҵ��ơ���
<!--TCopyRight-->
 ��Ȩ����
@2006<br>
<!--TAddress-->
��˾��ַ:YSU
<!--Address-->
<br>
<!--TTelephone-->
�绰:
<!--Telephone-->
<!--TEMail-->
 �����ʼ�:ren@126.com
<!--EMail-->
<A HREF='mailto:
<!--Email-->

'>
<!--Email-->
</A>

                  </div>
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
    <td><img src="evaluation_images/index_bottom.gif" width="778" height="50"></td>
  </tr>
</table>
</BODY>

<!-- Mirrored from web.hichina.com/sitemanager/templet/088/left3/ by HTTrack Website Copier/3.x [XR&CO'2003], Thu, 28 Aug 2003 00:02:47 GMT -->
</HTML>