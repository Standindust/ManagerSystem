<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>酒店管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="a.css" rel="stylesheet" type="text/css">
</head>

<body>
<div id="mainWrapper">
    <section id="offer">
        <!-- The offer section displays a banner text for promotions -->
        <h2>酒店管理系统</h2>
        <p>Hotel Manager&nbsp;&nbsp;</p>
    </section>
    <div id="content">
        <section class="sidebar">
            <div id="menubar">
                <nav class="menu">
                    <h2><!-- Title for menuset 1 -->监控系统</h2>
                    <hr>
                    <ul>
                        <!-- List of links under menuset 1 -->
                        <li><jsp:include page="cam.jsp"></jsp:include></li>
                    </ul>
                </nav>
                <nav class="menu">
                    <h2><!-- Title for menuset 1 -->登记入住</h2>
                    <hr>
                    <ul>
                        <!-- List of links under menuset 1 -->
                        <li><jsp:include page="register_mvc.jsp"></jsp:include></li>
                    </ul>
                </nav>
                <nav class="menu">
                    <h2><!-- Title for menuset 1 -->查看入住记录</h2>
                    <hr>
                    <ul>
                        <!-- List of links under menuset 1 -->
                        <li><a href="./history.jsp">历史入住</a></li>
                    </ul>
                </nav>
                <nav class="menu">
                    <h2><!-- Title for menuset 1 -->查看当前入住情况</h2>
                    <hr>
                    <ul>
                        <!-- List of links under menuset 1 -->
                        <li><a href="./index.jsp">当前入住</a></li>
                    </ul>
                </nav>
                <!-- This adds a sidebar with 1 searchbox,2 menusets, each with 4 links -->
        </section>
        <section class="mainContent">
            <div class="productRow"><!-- Each product row contains info of 3 elements -->
                <jsp:include page="findCheckHistory.jsp"></jsp:include>



            </div>
        </section>
    </div>

</div>
</body>
</html>

