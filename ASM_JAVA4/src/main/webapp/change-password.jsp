<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<title>Đổi mật khẩu</title>

<link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;700;800&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet" />

<!-- CSS chung layout -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/layout/sidebar.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/layout/change-password.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/layout/edit-profile.css">

</head>
<body>

<!-- HEADER -->
<jsp:include page="header.jsp"/>

<!-- Active page -->
<c:set var="page" value="password" />

<div class="container">

    <!-- SIDEBAR -->
    <jsp:include page="sidebar-profile.jsp" />

    <!-- MAIN CONTENT -->
    <div class="main">

        <h1>Đổi Mật Khẩu</h1>
        <p class="sub">Thay đổi mật khẩu tài khoản của bạn.</p>

        <!-- SUCCESS -->
        <c:if test="${not empty message}">
            <div class="alert-success">${message}</div>
        </c:if>

        <!-- ERROR -->
        <c:if test="${not empty error}">
            <div class="alert-error">${error}</div>
        </c:if>

        <div class="wrapper">

            <form action="change-password" method="post">

                <!-- OLD PASS -->
                <div class="form-group">
                    <label>Mật khẩu cũ</label>
                    <div class="input-box">
                        <input type="password" name="currentPass" required placeholder="Nhập mật khẩu cũ">
                    </div>
                </div>

                <!-- NEW PASS -->
                <div class="form-group">
                    <label>Mật khẩu mới</label>
                    <div class="input-box">
                        <input type="password" name="newPass" required placeholder="Nhập mật khẩu mới">
                    </div>
                </div>

                <!-- CONFIRM -->
                <div class="form-group">
                    <label>Xác nhận mật khẩu mới</label>
                    <div class="input-box">
                        <input type="password" name="confirmPass" required placeholder="Nhập lại mật khẩu mới">
                    </div>
                </div>

<div class="action-row">
    <button type="submit" class="btn-save">Đổi Mật Khẩu</button>
</div>


            </form>

        </div>

    </div>

</div>

<!-- FOOTER -->
<jsp:include page="footer.jsp"/>

</body>
</html>
