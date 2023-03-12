<%--
  Created by IntelliJ IDEA.
  User: bakytapsamtov
  Date: 12/3/23
  Time: 17:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
  <thead>
  <tr>
    <th>id</th>
    <th>courseName</th>
    <th>duration</th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <td>${course.id}</td>
    <td>${course.courseName}</td>
    <td>${course.duration}</td>
  </tr>
  </tbody>
</table>
</body>
</html>
