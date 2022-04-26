<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Армен
  Date: 24.04.2022
  Time: 3:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="UTF-8"%>
<m>
<!DOCTYPE html>
<html>
<head>
    <title></title>
</head>
<body>

<h2>User's details</h2>
<br><br>

<form:form action="saveUser" modelAttribute="user">
    <form:hidden path="id"/>

    Name <form:input path="name"/>
    <br><br>
    Surname <form:input path="surname"/>
    <br><br>
    Age <form:input path="age"/>
    <br><br><br>
    <input type="submit" value="Ok">

</form:form>

</body>
</html>
