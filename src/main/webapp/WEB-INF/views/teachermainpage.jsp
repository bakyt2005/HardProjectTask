<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: bakytapsamtov
  Date: 12/3/23
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="2px" style="color: yellow" align="center">
    <tbody>
    <thead>
    <tr style="color: wheat">
        <th>id</th>
        <th>firstName</th>
        <th>lastName</th>
        <th>email</th>
        <th>update</th>
        <th>delete</th>

    </tr>
    </thead>
    <c:forEach items="${bo}" var="teacher">
        <tr>
            <td>${teacher.id}</td>
            <td>
                <a href="/get/by/teacher/${teacher.id}">,${teacher.firstName}</a>
            </td>
            <td>${teacher.lastName}</td>
            <td>${teacher.email}</td>
            <td>
                <form action="/deleteTeacher/${teacher.id}" method="get">
                    <button type="submit">DELETE</button>
                </form>
            </td>
            <td>
                <form action="/update/teacher/${teacher.id}" method="get">
                    <button type="submit">UPDATE</button>
                </form>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<a href="/teacherForm" style="color: green">CREATE A COURSE</a>
<a href="/" style="color: green">BACK</a>
</body>
</html>