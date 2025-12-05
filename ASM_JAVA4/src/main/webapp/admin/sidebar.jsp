<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="layout/sidebar.css">
<aside class="sidebar">

    <!-- LOGO -->
    <div class="sidebar-logo">
        <div class="sidebar-logo-icon">
            <span class="material-symbols-outlined" style="color:#fff;font-size:22px;">movie</span>
        </div>
        <h1 class="sidebar-logo-title">ASM</h1>
    </div>

    <!-- MENU -->
    <div class="sidebar-menu">

        <!-- DASHBOARD -->
        <a class="${page == 'dashboard' ? 'active' : ''}"
           href="${pageContext.request.contextPath}/admin/index">
            <span class="material-symbols-outlined">dashboard</span>
            <span>Bảng điều khiển</span>
        </a>

        <!-- REPORT -->
        <a class="${page == 'report' ? 'active' : ''}"
           href="${pageContext.request.contextPath}/admin/reports?type=summary">
            <span class="material-symbols-outlined">bar_chart</span>
            <span>Báo cáo</span>
        </a>

        <!-- VIDEOS -->
        <a class="${page == 'videos' ? 'active' : ''}"
           href="${pageContext.request.contextPath}/admin/videos">
            <span class="material-symbols-outlined">theaters</span>
            <span>Quản lý Phim</span>
        </a>

        <!-- USERS -->
        <a class="${page == 'users' ? 'active' : ''}"
           href="${pageContext.request.contextPath}/admin/users">
            <span class="material-symbols-outlined">group</span>
            <span>Quản lý Người dùng</span>
        </a>

    </div>

    <!-- FOOTER -->
    <div class="sidebar-footer">

        <!-- QUAY LẠI USER -->
        <a href="${pageContext.request.contextPath}/index" class="sidebar-logout">
            <span class="material-symbols-outlined">arrow_back</span>
            <span>Quay lại trang người dùng</span>
        </a>

        <!-- LOGOUT -->
        <a href="${pageContext.request.contextPath}/logout" class="sidebar-logout">
            <span class="material-symbols-outlined">logout</span>
            <span>Đăng xuất</span>
        </a>
    </div>

</aside>
