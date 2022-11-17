<%--
  Created by IntelliJ IDEA.
  User: Standindust
  Date: 2022/9/20
  Time: 13:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>openthedoor</title>
    <jsp:useBean id="face" class="hotel.control.FaceCollection" scope="page"/>
<%
        String id=request.getParameter("id");
    int i = 0;
    try {
        i = face.identy(id);
    } catch (Exception e) {
        throw new RuntimeException(e);
    }

    if (i==1)
            {out.println("<script language='javaScript'> " +
                    "alert('开门成功，点击确定后自动跳到主页！');</script>");

                response.setHeader("refresh","1;url=index.jsp");
            }else {out.println("<script language='javaScript'> " +
            "alert('开门失败，点击确定后自动跳到主页！');</script>");
            response.setHeader("refresh","1;url=index.jsp");
    }

        %>

</head>
<body>

</body>
</html>
