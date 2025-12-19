<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Department</title>
</head>
<body>

<h3>Department Form</h3>

<form action="test" method="post">
    Id: <input name="id" value="${form.id}"><br><br>
    Name: <input name="name" value="${form.name}"><br><br>

    <button name="action" value="create">Create</button>
    <button name="action" value="delete">Delete</button>
</form>

<hr>

<table border="1">
<tr>
    <th>Id</th>
    <th>Name</th>
    <th>Action</th>
</tr>

<c:forEach var="d" items="${list}">
<tr>
    <td>${d.id}</td>
    <td>${d.name}</td>
    <td>
        <a href="test?action=edit&id=${d.id}">Edit</a>
        |
        <a href="test?action=employees&id=${d.id}">Show Employees</a>
    </td>
</tr>
</c:forEach>

</table>

</body>
</html>
