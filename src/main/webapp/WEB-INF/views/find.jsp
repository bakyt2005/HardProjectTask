<%--
  Created by IntelliJ IDEA.
  User: bakytapsamtov
  Date: 12/3/23
  Time: 16:50
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
        <th>companyName</th>
        <th>locatedCountry</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>${company.id}</td>
        <td>${company.companyName}</td>
        <td>${company.locatedCountry}</td>
    </tr>
    </tbody>
</table>
</body>
</html>
