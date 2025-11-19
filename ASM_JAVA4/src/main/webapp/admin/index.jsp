<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi"> 
<head>
    <meta charset="UTF-8">
    <title>Bảng Điều Khiển Quản Trị</title>

    <!-- Font -->
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;700;800&display=swap" rel="stylesheet" />
    <!-- Icon font -->
    <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet" />

    <link rel="stylesheet" href="../layout/adminsytle.css">
</head>
<body>

<div class="admin-layout">
    <!-- Sidebar -->
    <aside class="sidebar">
        <div class="sidebar-logo">
            <div class="sidebar-logo-icon">
                <span class="material-symbols-outlined" style="color:#fff;font-size:22px;">movie</span>
            </div>
            <h1 class="sidebar-logo-title">ASM</h1>
        </div>

        <div class="sidebar-menu">
            <a href="#" class="active">
                <span class="material-symbols-outlined">dashboard</span>
                <span>Bảng điều khiển</span>
            </a>
            <a href="videos.jsp">
                <span class="material-symbols-outlined">theaters</span>
                <span>Quản lý Phim</span>
            </a>
            <a href="users.jsp">
                <span class="material-symbols-outlined">group</span>
                <span>Quản lý Người dùng</span>
            </a>
             <!--  
            <a href="#">
                <span class="material-symbols-outlined">analytics</span>
                <span>Phân tích</span>
            </a>
            <a href="#">
                <span class="material-symbols-outlined">settings</span>
                <span>Cài đặt</span>
            </a> --> 
        </div>

        <div class="sidebar-footer">
            <div class="sidebar-admin">
                <div class="sidebar-admin-avatar"
                     style="background-image:url('https://lh3.googleusercontent.com/aida-public/AB6AXuDodi_XOoeSZU6frCMsvPTVSF1jScXur8HzKPwYWpYLPsysYn-Cg5hYxK4912Lz0A3ACFYqIHHbiW0BObgVT4uAOI70sO_-vkknnHnNk049jyv3yNR7MxU9jauOCyM_pG_5dxyORZQA_pWKCNVyUm3vHKAVLrhBYtA6NmTuBwpk7Z5YpWK0bOiGxEjpc_WLm0eHEfnHnC5a6aw-URvGnWZ2tph94amZUAvnp4cia2dyuC5HcX3L6dLdIupP5zLU3rmkn_BIQiMrKEM');">
                </div>
                <div class="sidebar-admin-info">
                    <h2>Admin Name</h2>
                    <p>admin@email.com</p>
                </div>
            </div>
            <a href="#" class="sidebar-logout">
                <span class="material-symbols-outlined">logout</span>
                <span>Đăng xuất</span>
            </a>
        </div>
    </aside>

    <!-- Main content -->
    <main class="admin-main">
        <div class="admin-main-inner">

            <!-- Header -->
            <div class="admin-header">
                <div class="admin-header-text">
                    <h1>Bảng điều khiển</h1>
                    <p>Tổng quan hoạt động của trang web</p>
                </div>
                <button class="admin-header-filter">
                    <span class="material-symbols-outlined" style="font-size:18px;">calendar_today</span>
                    <span>Last 30 days</span>
                </button>
            </div>

            <!-- Stats -->
            <div class="stats-grid">
                <div class="stat-card">
                    <p class="stat-title">Tổng số phim</p>
                    <p class="stat-value">1,250</p>
                    <p class="stat-change">+1.2%</p>
                </div>
                <div class="stat-card">
                    <p class="stat-title">Tổng số người dùng</p>
                    <p class="stat-value">15,678</p>
                    <p class="stat-change">+5.4%</p>
                </div>
                <div class="stat-card">
                    <p class="stat-title">Tổng lượt xem</p>
                    <p class="stat-value">2.1M</p>
                    <p class="stat-change">+8.0%</p>
                </div>
                <div class="stat-card">
                    <p class="stat-title">Tổng lượt thích</p>
                    <p class="stat-value">890K</p>
                    <p class="stat-change">+3.5%</p>
                </div>
            </div>


            <!-- Table: Phim mới -->
            <div class="table-card">
                <h2 class="table-title">Phim Mới Được Tải Lên</h2>
                <div style="overflow-x:auto;">
                    <table class="admin-table">
                        <thead>
                        <tr>
                            <th>Tên phim</th>
                            <th>Thể loại</th>
                            <th>Ngày tải lên</th>
                            <th>Lượt xem</th>
                            <th>Trạng thái</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>The Midnight Chronicle</td>
                            <td style="color:rgba(255,255,255,0.7);">Kinh dị</td>
                            <td style="color:rgba(255,255,255,0.7);">20/07/2024</td>
                            <td style="color:rgba(255,255,255,0.7);">12,405</td>
                            <td><span class="badge badge-green">Đã xuất bản</span></td>
                        </tr>
                        <tr>
                            <td>Echoes of Tomorrow</td>
                            <td style="color:rgba(255,255,255,0.7);">Viễn tưởng</td>
                            <td style="color:rgba(255,255,255,0.7);">19/07/2024</td>
                            <td style="color:rgba(255,255,255,0.7);">8,921</td>
                            <td><span class="badge badge-green">Đã xuất bản</span></td>
                        </tr>
                        <tr>
                            <td>Galactic Heroes</td>
                            <td style="color:rgba(255,255,255,0.7);">Hành động</td>
                            <td style="color:rgba(255,255,255,0.7);">18/07/2024</td>
                            <td style="color:rgba(255,255,255,0.7);">25,110</td>
                            <td><span class="badge badge-green">Đã xuất bản</span></td>
                        </tr>
                        <tr>
                            <td>Love in the City</td>
                            <td style="color:rgba(255,255,255,0.7);">Tình cảm</td>
                            <td style="color:rgba(255,255,255,0.7);">17/07/2024</td>
                            <td style="color:rgba(255,255,255,0.7);">5,600</td>
                            <td><span class="badge badge-yellow">Đang chờ</span></td>
                        </tr>
                        <tr>
                            <td>Jester's Gambit</td>
                            <td style="color:rgba(255,255,255,0.7);">Hài</td>
                            <td style="color:rgba(255,255,255,0.7);">16/07/2024</td>
                            <td style="color:rgba(255,255,255,0.7);">18,340</td>
                            <td><span class="badge badge-green">Đã xuất bản</span></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>

        </div>
    </main>
</div>

</body>
</html>
