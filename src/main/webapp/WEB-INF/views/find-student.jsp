<%--
  Created by IntelliJ IDEA.
  User: bakytapsamtov
  Date: 12/3/23
  Time: 17:14
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
    <th>firstName</th>
    <th>lastName</th>
    <th>email</th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <td>${student.id}</td>
    <td>${student.firstName}</td>
    <td>${student.lastName}</td>
    <td>${student.email}</td>
  </tr>
  </tbody>
</table>
</body>
</html>
