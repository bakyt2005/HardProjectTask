<%--
  Created by IntelliJ IDEA.
  User: bakytapsamtov
  Date: 11/3/23
  Time: 19:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/saveGroups" method="post">
    <label>groupsName:</label><input type="text" name="groupsName">
    <label>dateOfStart:</label><input type="text" name="dateOfStart">
    <label>dateOfFinish:</label><input type="text" name="dateOfFinish">
    <input type="submit" value="save">
</form>
</body>
</html>
