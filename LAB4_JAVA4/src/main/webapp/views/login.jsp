<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Đăng nhập</title>
</head>
<body>

<h2>Đăng nhập</h2>

<c:if test="${not empty error}">
    <p style="color:red">${error}</p>
</c:if>

<c:if test="${not empty message}">
    <p style="color:green">${message}</p>
</c:if>

<form action="login" method="post">
    <label>Tên đăng nhập hoặc Email:</label><br>
    <input type="text" name="idOrEmail" required><br><br>

    <label>Mật khẩu:</label><br>
    <input type="password" name="password" required><br><br>

    <button type="submit">Đăng nhập</button>
</form>

</body>
</html>
