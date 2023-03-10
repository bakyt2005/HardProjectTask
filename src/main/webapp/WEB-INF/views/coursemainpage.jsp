<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: bakytapsamtov
  Date: 11/3/23
  Time: 17:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<tbody>
<table>
    <thead>
    <tr id="id" style="color: wheat">

        <th>id</th>
        <th>courseName</th>
        <th>duration</th>
        <th>delete</th>
        <th>update</th>

    </tr>
    </thead>
<c:forEach items="${alls}" var="course">
    <tr>
        <td>${course.id}</td>
        <td>
            <a href="/get/course/by/${course.id}">${course.courseName}</a>
        </td>
        <td>${course.duration}</td>
        <td>
            <form action="/teachers" method="get">
                <button type="submit">Teacher</button>
            </form>
        </td>
        <td>
            <form action="/deleteCourse/${course.id}" method="get">
                <button type="submit">DELETE</button>
            </form>
        </td>
        <td>
            <form action="/update/course/${course.id}" method="get">
                <button type="submit">UPDATE</button>
            </form>
        </td>
    </tr>
</c:forEach>
</tbody>
</table>
<a href="/courseForm" style="color: green">CREATE A COURSE</a>
<a href="/" style="color: green">BACK</a>

</body>
</html>
