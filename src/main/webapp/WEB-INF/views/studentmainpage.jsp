<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: bakytapsamtov
  Date: 12/3/23
  Time: 12:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <tbody>
    <thead>
    <tr>
        <th>ID</th>
        <th>firstName</th>
        <th>lastName</th>
        <th>email</th>
        <th>update</th>
        <th>delete</th>

    </tr>
    </thead>
    <c:forEach items="${allsss}" var="students">
        <tr>
            <td>${students.id}</td>
            <td>
                <a href="/get/by/student/${students.id}">${students.firstName}</a>
            </td>
            <td>${students.lastName}</td>
            <td>${students.email}</td>
            <td>
                <form action="/deleteStudent/${students.id}" method="get">
                    <button type="submit">DELETE</button>
                </form>
            </td>
            <td>
                <form action="/update/student/${students.id}" method="get">
                    <button type="submit">UPDATE</button>
                </form>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<a href="/studentForm" style="color: green">CREATE A COURSE</a>
<a href="/" style="color: green">BACK</a>
</body>
</html>
