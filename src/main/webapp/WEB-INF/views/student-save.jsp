<%--
  Created by IntelliJ IDEA.
  User: bakytapsamtov
  Date: 12/3/23
  Time: 13:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/saveStudent" method="post">
  <label>lastName:</label><input type="text" name="firstName">
  <label>firstName:</label><input type="text" name="lastName">
  <label>email:</label><input type="text" name="email">
  <input type="submit" value="save">
</form>
</body>
</html>
