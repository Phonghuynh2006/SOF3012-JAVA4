<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Quản lý Người dùng - Admin</title>

    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet"/>

    <link rel="stylesheet" href="layout/adminsytle.css">
</head>

<body>

<div class="admin-layout">

    <!-- SIDEBAR -->
    <jsp:include page="sidebar.jsp"/>

    <!-- MAIN -->
    <main class="admin-main">
        <div class="admin-main-inner">

            <!-- HEADER -->
            <jsp:include page="header.jsp">
                <jsp:param name="title" value="Quản lý Người dùng"/>
                <jsp:param name="subtitle" value="Xem, chỉnh sửa hoặc vô hiệu hóa tài khoản người dùng."/>
            </jsp:include>

            <!-- ========== FORM THÊM / SỬA USER ========== -->
            <div class="table-card" style="margin-bottom: 30px;">
                <div class="table-wrapper">

                    <form class="user-form" method="post" action="users">

                        <input type="hidden" name="id" value="${user.userId}"/>

                        <div class="form-row">
                            <label>Họ và Tên</label>
                            <input type="text" name="fullname" class="form-input"
                                   value="${user.fullname}" required>
                        </div>

                        <div class="form-row">
                            <label>Email</label>
                            <input type="email" name="email" class="form-input"
                                   value="${user.email}" required>
                        </div>

                        <div class="form-row">
                            <label>Mật khẩu</label>
                            <input type="password" name="password" class="form-input"
                                   value="${user.password}" required>
                        </div>

                        <div class="form-row">
                            <label>Vai trò</label>
                            <select name="role" class="form-input">
                                <option value="user" ${!user.isAdmin ? "selected" : ""}>User</option>
                                <option value="admin" ${user.isAdmin ? "selected" : ""}>Admin</option>
                            </select>
                        </div>

                        <div class="form-row">
                            <label>Trạng thái</label>
                            <select name="active" class="form-input">
                                <option value="active" ${user.activated ? "selected" : ""}>Active</option>
                                <option value="disabled" ${!user.activated ? "selected" : ""}>Disabled</option>
                            </select>
                        </div>

                        <button class="primary-btn" type="submit" name="action"
                                value="${user != null ? 'update' : 'create'}">
                            <span class="material-symbols-outlined">save</span>
                            <span>${user != null ? "Cập nhật" : "Thêm người dùng"}</span>
                        </button>

                    </form>

                </div>
            </div>

            <!-- ========== TABLE USER ========== -->
            <div class="table-card">
                <div class="table-wrapper">

                    <table class="admin-table">

                        <thead>
                        <tr>
                            <th>Người dùng</th>
                            <th>Vai trò</th>
                            <th>Email</th>
                            <th>Trạng thái</th>
                            <th>Hành động</th>
                        </tr>
                        </thead>

                        <tbody>

                        <c:forEach var="u" items="${list}">
                            <tr>

                                <!-- User info -->
                                <td>
                                    <div class="user-cell">
                                        <div class="user-avatar"
                                             style="background-image:url('https://i.pravatar.cc/150?u=${u.email}');"></div>

                                        <div class="user-info">
                                            <div class="user-name">${u.fullname}</div>
                                            <div class="user-email">${u.email}</div>
                                        </div>
                                    </div>
                                </td>

                                <!-- Role -->
                                <td>
                                    <span class="badge ${u.isAdmin ? 'badge-green' : 'badge-yellow'}">
                                        ${u.isAdmin ? "Admin" : "User"}
                                    </span>
                                </td>

                                <!-- Email -->
                                <td>${u.email}</td>

                                <!-- Status -->
                                <td>
                                    <span class="badge ${u.activated ? 'badge-green' : 'badge-red'}">
                                        ${u.activated ? "Active" : "Disabled"}
                                    </span>
                                </td>

                                <!-- ACTIONS -->
                                <td>
                                    <div class="action-buttons">

                                        <a class="icon-btn"
                                           href="users?action=edit&id=${u.userId}">
                                            <span class="material-symbols-outlined">edit</span>
                                        </a>

                                        <a class="icon-btn delete"
                                           href="users?action=delete&id=${u.userId}"
                                           onclick="return confirm('Bạn chắc muốn xóa?');">
                                            <span class="material-symbols-outlined">delete</span>
                                        </a>

                                    </div>
                                </td>

                            </tr>
                        </c:forEach>

                        <c:if test="${empty list}">
                            <tr><td colspan="5" style="text-align:center; padding:16px;">Chưa có người dùng.</td></tr>
                        </c:if>

                        </tbody>
                    </table>

                </div>
            </div>

        </div>
    </main>

</div>

</body>
</html>
