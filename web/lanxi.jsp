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
		alert( "�������û�������" );
		mainform.Usersname.focus();
		return false;
	}
	if( mainform.Passwords.value.length==0 )
	{
		alert( "���������룡" );
		mainform.Passwords.focus();
		return false;
	}
	if( mainform.Cfrm_Passwords.value.length==0 )
	{
		alert( "������ȷ�����룡" );
		mainform.Cfrm_Passwords.focus();
		return false;
	}
	if( mainform.Cfrm_Passwords.value!=mainform.Passwords.value )
	{
		alert( "������������벻ͬ��" );
		mainform.Cfrm_Passwords.focus();
		return false;
	}
	return true;
}

function linkcheck()
{  
	
	if( confirm("Would you like to play this ?") )
	{
		alert( "�㰲��ȷ�ϼ���" );
		
		return true;
	}
	else
	{
	alert( "�㰲��ȡ������" );
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
      <input type="submit" name="Submit" value="�ύ" onClick="javascript:return (checkvalue());">
      </td>
    <td> <a href="employee/query_employee.jsp" ><input type="button" name="Button" value="�ύ">
    </a>
      </td>
  </tr>
</table>
</form>
</body>
</html>
