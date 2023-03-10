<%--
  Created by IntelliJ IDEA.
  User: bakytapsamtov
  Date: 11/3/23
  Time: 17:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/real/update/course/${course.id}" method="post">
    <label>courseName</label><input value="${course.courseName}" type="text" name="courseName">
    <label>duration</label><input value="${course.duration}" type="text" name="duration">
    <br><input type="submit" value="update">
</form>
</body>
</html>
