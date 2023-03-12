<%--
  Created by IntelliJ IDEA.
  User: bakytapsamtov
  Date: 12/3/23
  Time: 17:08
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
    <th>groupsName</th>
    <th>dateOfStart</th>
    <th>dateOfFinish</th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <td>${groups.id}</td>
    <td>${groups.groupName}</td>
    <td>${groups.dateOfStart}</td>
    <td>${groups.dateOfFinish}</td>
  </tr>
  </tbody>
</table>
</body>
</html>
