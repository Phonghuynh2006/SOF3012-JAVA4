<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<aside class="sidebar">

    <!-- LOGO -->
    <div class="sidebar-logo">
        <div class="sidebar-logo-icon">
            <span class="material-symbols-outlined" style="color:#fff;font-size:22px;">movie</span>
        </div>
        <h1 class="sidebar-logo-title">ASM</h1>
    </div>


    <!-- MENU CHÍNH -->
    <div class="sidebar-menu">

        <!-- Dashboard -->
        <a href="index">
            <span class="material-symbols-outlined">dashboard</span>
            <span>Bảng điều khiển</span>
        </a>
    <!--
 
        <a href="report-favorites">
            <span class="material-symbols-outlined">bar_chart</span>
            <span>Báo cáo Yêu thích</span>
        </a>

        <a href="report-favorite-users">
            <span class="material-symbols-outlined">bar_chart</span>
            <span>Người dùng yêu thích</span>
        </a>

        <a href="report-shares">
            <span class="material-symbols-outlined">bar_chart</span>
            <span>Báo cáo Chia sẻ</span>
        </a>
-->
        <!-- QUẢN LÝ PHIM -->
        <a href="videos">
            <span class="material-symbols-outlined">theaters</span>
            <span>Quản lý Phim</span>
        </a>

        <!-- QUẢN LÝ USER -->
        <a href="users">
            <span class="material-symbols-outlined">group</span>
            <span>Quản lý Người dùng</span>
        </a>

    </div>


    <!-- ADMIN -->
    <div class="sidebar-footer">
        <a href="/ASM_JAVA4/" class="sidebar-logout">
            <span>Quay lại</span>
        </a>
        <a href="../logout" class="sidebar-logout">
            <span class="material-symbols-outlined">logout</span>
            <span>Đăng xuất</span>
        </a>
    </div>

</aside>
