<%--
  Created by IntelliJ IDEA.
  User: bakytapsamtov
  Date: 11/3/23
  Time: 20:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="/real/update/groups/${groups.id}" method="post">
  <label>groupName</label><input value="${groups.groupName}" type="text" name="groupsName">
  <label>dateOfStart</label><input value="${groups.dateOfStart}" type="text" name="dateOfStart">
  <label>dateOfFinish</label><input value="${groups.dateOfFinish}" type="text" name="dateOfFinish">
  <br><input type="submit" value="update">
</form>
</body>
</html>
