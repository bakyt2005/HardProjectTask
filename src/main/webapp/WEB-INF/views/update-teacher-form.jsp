<%--
  Created by IntelliJ IDEA.
  User: bakytapsamtov
  Date: 12/3/23
  Time: 16:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/real/update/teacher/${teacher.id}" method="post">
  <label>firstName</label><input value="${teacher.firstName}" type="text" name="firstName">
  <label>lastName</label><input value="${teacher.lastName}" type="text" name="lastName">
  <label>email</label><input value="${teacher.email}" type="text" name="email">
  <br><input type="submit" value="update">
</form>
</body>
</html>
