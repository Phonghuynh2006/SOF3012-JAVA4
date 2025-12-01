<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>Đăng nhập</h2>

<p style="color:red">${message}</p>

<form action="${pageContext.request.contextPath}/login" method="post">
    <label>Username:</label><br>
    <input name="username"><br><br>
 
    <label>Password:</label><br>
    <input name="password" type="password"><br><br>

    <button>Login</button>
</form>

</body>
</html>