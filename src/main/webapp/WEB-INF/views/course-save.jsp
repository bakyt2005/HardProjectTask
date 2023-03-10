<%--
  Created by IntelliJ IDEA.
  User: bakytapsamtov
  Date: 11/3/23
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/saveCourse" method="post">
    <label>courseName:</label><input type="text" name="courseName">
    <label>duration:</label><input type="text" name="duration">
    <input type="submit" value="save">
</form>
</body>
</html>
