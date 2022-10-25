<%@ page contentType="text/html;charset=gb2312"%>
<head>
<title>Untitled Document</title>
</head>
<%
String result="00";
%>
<script language="javascript">
function checkvalue()
{  
	var mainform = document.forms["main"];
	if( mainform.Usersname.value.length==0 )
	{
		alert( "请输入用户姓名！" );
		mainform.Usersname.focus();
		return false;
	}
	if( mainform.Passwords.value.length==0 )
	{
		alert( "请输入密码！" );
		mainform.Passwords.focus();
		return false;
	}
	if( mainform.Cfrm_Passwords.value.length==0 )
	{
		alert( "请输入确认密码！" );
		mainform.Cfrm_Passwords.focus();
		return false;
	}
	if( mainform.Cfrm_Passwords.value!=mainform.Passwords.value )
	{
		alert( "两次输入的密码不同！" );
		mainform.Cfrm_Passwords.focus();
		return false;
	}
	return true;
}

function linkcheck()
{  
	
	if( confirm("Would you like to play this ?") )
	{
		alert( "你安了确认键！" );
		
		return true;
	}
	else
	{
	alert( "你安了取消键！" );
	return false;
	}
}
</script>

<body>
<form id="form1" name="main" method="post" action="">
<table width="578" height="264" border="12" align="center">
  <tr>
    <td colspan="2">&nbsp;</td>
    </tr>
  <tr>
    <td width="249">Usersname</td>
    <td width="313">
        <input type="text" name="Usersname" />    </td>
  </tr>
  <tr>
    <td>Passwords</td>
    <td><input type="text" name="Passwords" onKeyUp="this.value=this.value.replace(/[^\d]/g,'')" onpaste="return false" />   </td>
  </tr>
  <tr>
    <td>Cfrm_Passwords</td>
    <td><input type="text" name="Cfrm_Passwords"  onkeyup="this.value=this.value.replace(/[^\d]/g,'')" onpaste="return false" />   </td>
  </tr>
    <tr>
    <td><a href="employee/query_employee.jsp" onClick="javascript:return (linkcheck())" >Floate</a></td>
    <td> Floate</td>
  </tr>
  <tr>
    <td>
      <input type="submit" name="Submit" value="提交" onClick="javascript:return (checkvalue());">
      </td>
    <td> <a href="employee/query_employee.jsp" ><input type="button" name="Button" value="提交">
    </a>
      </td>
  </tr>
</table>
</form>
</body>
</html>
