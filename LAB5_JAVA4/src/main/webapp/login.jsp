<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng nhập</title>
</head>
<body>

<h2>Đăng nhập</h2>

<form action="login" method="post">
    <label>Username:</label>
    <input name="username" placeholder="Nhập username"><br><br>

    <label>Password:</label>
    <input name="password" type="password" placeholder="Nhập password"><br><br>

    <button type="submit">Login</button>
</form>

<!-- Hiển thị lỗi -->
<p style="color:red">${msg}</p>

</body>
</html>
