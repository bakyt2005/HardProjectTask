<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: bakytapsamtov
  Date: 10/3/23
  Time: 16:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style></style>
<html>
<head>
    <title>Title</title>

</head>
<body>
<div id="Welcome" style="color: green"><h2 id="h2">WELCOME TO MY SITE</h2></div>

<table id="table" border="3px" align="center">
    <thead>
    <tr id="id" style="color: wheat">

</head>
<body>
<div><h2>WELCOME TO MY SITE</h2></div>

<table>
    <thead>
    <tr>
        <th>id</th>
        <th>companyName</th>
        <th>locatedCountry</th>
        <th>Course</th>
        <th>Group</th>
        <th>delete</th>
        <th>update</th>

    </tr>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${all}" var="company">
        <tr>
            <td>${company.id}</td>
            <td>
                <a href="/get/by/${company.id}">${company.companyName}</a>
            </td>
            <td>${company.locatedCountry}</td>
            <td>
                <form action="/courses" method="get">
                <a href="/get/by/${company.id}">,${company.name}</a>
            </td>
            <td>${company.locatedCountry}</td>
            <td>
                <form action="/" method="get">
                    <button type="submit">Course</button>
                </form>
            </td>
            <td>
                <form action="/" method="get">
                <form action="/w" method="get">
                    <button type="submit">Group</button>
                </form>
            </td>
            <td>
                <form action="/deleteCompany/${company.id}" method="get">
                <form action="/delete/Company/${company.id}" method="get">
                    <button type="submit">DELETE</button>
                </form>
            </td>
            <td>
                <form action="/update/${company.id}" method="get">
                    <button type="submit">UPDATE</button>
                </form>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<a href="/saveCompanyForm">add-company</a>
<br>
<a href="/clear">delete</a>
</body>
</html>
<a href="/companyForm" style="color: green">CREATE A COMPANY</a>


</body>
</html>
<style>
    #Welcome {
        background: black;
        margin-left: auto;
        margin-right: auto;
        padding: 20px;
        border: green;

    }

    #h2 {
        margin-right: 325px;
        margin-left: 490px;
    }

    #table {
        margin-right: auto;
        margin-left: auto;
        padding: 20px;
        width: 15em;
        border: wheat;

    }

    #id {
        margin-left: auto;
        margin-right: auto;
        padding: 15px;
        font-family: sans-serif;
        text-align: left;
        border-collapse: separate;
        border-spacing: 5px;
        background: black;
        color: bisque;
        border: 16px lime;
        border-radius: 20px;
    }
</style>