<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quên mật khẩu</title>

<link rel="stylesheet" 
      href="${pageContext.request.contextPath}/layout/forgot-password.css">
<link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet" />

</head>
<body>

<header>
    <a class="brand" href="index">
        <span class="material-symbols-outlined">movie</span>
        <span>PHIMHAY</span>
    </a>
</header>

<div class="wrap">
    <div class="card">

        <p class="title">Khôi phục Mật khẩu</p>
        <p class="subtitle">Nhập email của bạn để nhận mật khẩu.</p>

        <!-- SUCCESS -->
        <c:if test="${not empty message}">
            <p class="success">${message}</p>
        </c:if>

        <!-- ERROR -->
        <c:if test="${not empty error}">
            <p class="error">${error}</p>
        </c:if>

        <form action="forgot-password" method="post">

            <label for="email">Địa chỉ Email</label>
            <input class="input"
                   type="email"
                   name="email"
                   placeholder="Nhập email của bạn"
                   required />

            <button class="btn" type="submit">Gửi mật khẩu</button>

        </form>

        <p class="back">
            Nhớ mật khẩu?
            <a href="login">Quay lại Đăng nhập</a>
        </p>

    </div>
</div>

</body>
</html>
