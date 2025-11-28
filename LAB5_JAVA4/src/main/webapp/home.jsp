<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Trang chủ</title>
</head>
<body>

<p>Lượt truy cập: ${applicationScope.visitors}</p>
<hr>

<c:if test="${!empty sessionScope.user}">
    <h3>Xin chào: ${sessionScope.user.fullname}</h3>

    <!-- Nút đăng xuất -->
    <a href="logout">Đăng xuất</a>
</c:if>

<h2>Xin chào bạn</h2>

<a href="login.jsp">Đăng nhập lại</a>

</body>
</html>
