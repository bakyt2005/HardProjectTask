<%--
  Created by IntelliJ IDEA.
  User: bakytapsamtov
  Date: 11/3/23
  Time: 19:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <c:forEach items="${allss}" var="group">
        <tr>
            <td>${group.id}</td>
            <td>
                <a href="/get/by/groups/${group.id}">${group.groupName}</a>
            </td>
            <td>${group.dateOfStart}</td>
            <td>${group.dateOfFinish}</td>
            <td>
                <form action="/studentses" method="get">
                    <button type="submit">Students</button>
                </form>
            </td>
            <td>
                <form action="/deleteGroups/${group.id}" method="get">
                    <button type="submit">DELETE</button>
                </form>
            </td>
            <td>
                <form action="/update/groups/${group.id}" method="get">
                    <button type="submit">UPDATE</button>
                </form>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<a href="/groupsForm" style="color: green">CREATE A COURSE</a>
<a href="/" style="color: green">BACK</a>
</body>
</html>
