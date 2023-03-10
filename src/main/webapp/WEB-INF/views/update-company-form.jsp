<%--
  Created by IntelliJ IDEA.
  User: bakytapsamtov
  Date: 11/3/23
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/real/update/${company.id}" method="post">
    <label>nameCompany</label><input value="${company.companyName}" type="text" name="companyName">
    <label>locatedCountry</label><input value="${company.locatedCountry}" type="text" name="locatedCountry">
    <br><input type="submit" value="update">
</form>
</body>
</html>