<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<body>

<h1>All Users</h1>
<br><br>

<table border="1">
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Age</th>
        <th>Actions</th>
    </tr>

    <c:forEach var="user" items="${allUsers}">
        <c:url var="updateUser" value="/updateUser">
            <c:param name="userId" value="${user.id}"/>
        </c:url>
        <c:url var="deleteUser" value="/deleteUser">
            <c:param name="userId" value="${user.id}"/>
        </c:url>
        <tr>
            <td>${user.name}</td>
            <td>${user.surname}</td>
            <td>${user.age}</td>
            <td>
                <input type="button" value="Update"
                onclick="window.location.href = '${updateUser}'">
                <input type="button" value="Delete"
                       onclick="window.location.href = '${deleteUser}'">
            </td>
        </tr>
    </c:forEach>


</table>
<br>
<input type="button" value="Add"
       onclick="window.location.href = 'addUser'"/>

</body>
</html>




