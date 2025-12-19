<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee</title>
</head>
<body>

<table border="1">
<tr>
    <th>Id</th>
    <th>Name</th>
    <th>Salary</th>
    <th>Department</th>
</tr>

<c:forEach var="e" items="${list}">
<tr>
    <td>${e.id}</td>
    <td>${e.name}</td>
    <td>${e.salary}</td>
    <td>${e.department.name}</td>
</tr>
</c:forEach>

</table>

</body>
</html>
