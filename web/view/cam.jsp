<%--
  Created by IntelliJ IDEA.
  User: Standindust
  Date: 2022/11/14
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>监控系统</title>
</head>

<body>
<script type="text/javascript">
    function sumRes(){

            $("submitForm").submit();


    }
</script>
<form action="opencam.action" method = "post" id = "submitForm" >
    <input type="submit" value="打开监控">
</form>


</body>
</html>
