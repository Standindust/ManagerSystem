<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
  <title>酒店登记客人信息录入系统</title>
</head>

<body>
<center>
    <div class="primary_header">
        <h1 class="title">酒店管理系统（客房部）</h1>
    </div>
<hr>
  <center>
  登记入住
<form action="checkName.action" method="post"><tr><td align="center" name="a">房间选择：  <a>
 <select size=1 name="r" >
  <option value="标单">标准单人间</option>
  <option value="标双">标准双人间</option>
  <option value="商务单人间">商务单人间</option>
  <option value="商务双人间">商务双人间</option>
  <option value="豪华大床房">豪华大床房</option>
  <option value="豪华双床房">豪华双床房</option>

</select><input type="submit" value="房间查询" ></a>

</form>



</center>

</body>
</html>

