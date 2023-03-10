<%--
  Created by IntelliJ IDEA.
  User: bakytapsamtov
  Date: 10/3/23
  Time: 19:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/saveCompany" method="post">
    <label>companyName:</label><input type="text" name="companyName">
    <label>locatedCountry:</label><input type="text" name="locatedCountry">
    <input type="submit" value="save">
</form>
</body>
</html>
