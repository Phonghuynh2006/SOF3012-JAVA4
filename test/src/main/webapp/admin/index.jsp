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

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: "Plus Jakarta Sans", sans-serif;
            background: #221011;
            color: #ffffff;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        .material-symbols-outlined {
            font-variation-settings:
            'FILL' 0,
            'wght' 400,
            'GRAD' 0,
            'opsz' 24;
        }

        /* ===== LAYOUT ===== */
        .admin-layout {
            display: flex;
            min-height: 100vh;
            width: 100%;
        }

        /* ===== SIDEBAR ===== */
        .sidebar {
            width: 260px;
            background: rgba(255, 255, 255, 0.05);
            padding: 16px;
            display: flex;
            flex-direction: column;
            position: sticky;
            top: 0;
            height: 100vh;
        }

        .sidebar-logo {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 12px;
        }

        .sidebar-logo-icon {
            background: #e60a15;
            width: 40px;
            height: 40px;
            border-radius: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .sidebar-logo-title {
            font-size: 20px;
            font-weight: 700;
        }

        .sidebar-menu {
            margin-top: 32px;
            flex-grow: 1;
            display: flex;
            flex-direction: column;
            gap: 8px;
        }

        .sidebar-menu a {
            display: flex;
            align-items: center;
            gap: 10px;
            padding: 8px 12px;
            border-radius: 8px;
            font-size: 14px;
            font-weight: 500;
            transition: background 0.2s, color 0.2s;
        }

        .sidebar-menu a .material-symbols-outlined {
            font-size: 20px;
        }

        .sidebar-menu a.active {
            background: #e60a15;
            color: #ffffff;
        }

        .sidebar-menu a.active .material-symbols-outlined {
            color: #ffffff;
        }

        .sidebar-menu a:not(.active) {
            color: rgba(255, 255, 255, 0.7);
        }

        .sidebar-menu a:not(.active):hover {
            background: rgba(255, 255, 255, 0.1);
        }

        .sidebar-footer {
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            padding-top: 16px;
            margin-top: 16px;
        }

        .sidebar-admin {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .sidebar-admin-avatar {
            width: 40px;
            height: 40px;
            border-radius: 999px;
            background-position: center;
            background-size: cover;
            background-repeat: no-repeat;
        }

        .sidebar-admin-info h2 {
            font-size: 14px;
            font-weight: 500;
        }

        .sidebar-admin-info p {
            font-size: 12px;
            color: rgba(255, 255, 255, 0.6);
        }

        .sidebar-logout {
            display: flex;
            align-items: center;
            gap: 10px;
            padding: 8px 12px;
            border-radius: 8px;
            margin-top: 8px;
            font-size: 14px;
            color: rgba(255, 255, 255, 0.7);
            cursor: pointer;
            transition: background 0.2s;
        }

        .sidebar-logout:hover {
            background: rgba(255, 255, 255, 0.1);
        }

        /* ===== MAIN CONTENT ===== */
        .admin-main {
            flex: 1;
            padding: 32px;
        }

        .admin-main-inner {
            max-width: 1120px;
            margin: 0 auto;
        }

        /* Heading + Filter */
        .admin-header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 16px;
            margin-bottom: 24px;
            flex-wrap: wrap;
        }

        .admin-header-text h1 {
            font-size: 28px;
            font-weight: 700;
        }

        .admin-header-text p {
            font-size: 14px;
            color: rgba(255, 255, 255, 0.6);
            margin-top: 4px;
        }

        .admin-header-filter {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 8px 14px;
            border-radius: 8px;
            border: none;
            background: rgba(255, 255, 255, 0.1);
            color: #ffffff;
            cursor: pointer;
            font-size: 14px;
            font-weight: 500;
        }

        .admin-header-filter:hover {
            background: rgba(255, 255, 255, 0.2);
        }

        /* Stats cards */
        .stats-grid {
            display: grid;
            grid-template-columns: repeat(4, minmax(0, 1fr));
            gap: 16px;
            margin-bottom: 24px;
        }

        .stat-card {
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 12px;
            padding: 18px;
        }

        .stat-title {
            font-size: 14px;
            color: rgba(255, 255, 255, 0.7);
            margin-bottom: 6px;
        }

        .stat-value {
            font-size: 26px;
            font-weight: 700;
            margin-bottom: 4px;
        }

        .stat-change {
            font-size: 14px;
            color: #4ade80;
        }

        /* Charts layout */
        .charts-grid {
            display: grid;
            grid-template-columns: minmax(0, 2fr) minmax(0, 1fr);
            gap: 16px;
            margin-bottom: 24px;
        }

        .chart-card {
            background: rgba(255, 255, 255, 0.05);
            border-radius: 12px;
            border: 1px solid rgba(255, 255, 255, 0.1);
            padding: 18px;
            display: flex;
            flex-direction: column;
            gap: 8px;
        }

        .chart-title {
            font-size: 16px;
            font-weight: 600;
        }

        .chart-sub {
            font-size: 14px;
            color: rgba(255, 255, 255, 0.6);
        }

        .chart-main-value {
            display: flex;
            align-items: baseline;
            gap: 8px;
        }

        .chart-main-value span.value {
            font-size: 26px;
            font-weight: 700;
        }

        .chart-main-value span.green {
            font-size: 14px;
            color: #4ade80;
        }

        .chart-main-value span.note {
            font-size: 13px;
            color: rgba(255, 255, 255, 0.6);
        }

        .line-chart-wrapper {
            height: 200px;
            margin-top: 12px;
            margin-bottom: 12px;
        }

        .line-chart-wrapper svg {
            width: 100%;
            height: 100%;
        }

        .line-chart-weeks {
            display: flex;
            justify-content: space-around;
            font-size: 11px;
            color: rgba(255, 255, 255, 0.6);
            font-weight: 600;
            text-transform: uppercase;
        }

        .pie-chart-center {
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 16px 0;
        }

        .pie-chart-details {
            display: flex;
            flex-direction: column;
            gap: 8px;
            margin-top: auto;
        }

        .pie-row {
            display: flex;
            justify-content: space-between;
            font-size: 13px;
        }

        .pie-left {
            display: flex;
            align-items: center;
            gap: 6px;
        }

        .pie-dot {
            width: 8px;
            height: 8px;
            border-radius: 999px;
        }

        /* Table */
        .table-card {
            background: rgba(255, 255, 255, 0.05);
            border-radius: 12px;
            border: 1px solid rgba(255, 255, 255, 0.1);
            overflow: hidden;
        }

        .table-title {
            padding: 14px 18px;
            font-size: 16px;
            font-weight: 700;
        }

        .admin-table {
            width: 100%;
            border-collapse: collapse;
            font-size: 14px;
        }

        .admin-table thead {
            background: rgba(255, 255, 255, 0.03);
        }

        .admin-table th {
            padding: 10px 14px;
            text-align: left;
            font-size: 11px;
            font-weight: 600;
            color: rgba(255, 255, 255, 0.6);
            text-transform: uppercase;
        }

        .admin-table tbody tr {
            border-top: 1px solid rgba(255, 255, 255, 0.08);
        }

        .admin-table td {
            padding: 10px 14px;
            color: rgba(255, 255, 255, 0.85);
        }

        .admin-table tbody tr:hover {
            background: rgba(255, 255, 255, 0.05);
        }

        .badge {
            display: inline-flex;
            align-items: center;
            padding: 3px 8px;
            border-radius: 999px;
            font-size: 11px;
            font-weight: 600;
        }

        .badge-green {
            background: rgba(34, 197, 94, 0.1);
            color: #4ade80;
        }

        .badge-yellow {
            background: rgba(234, 179, 8, 0.1);
            color: #fbbf24;
        }

        /* Responsive */
        @media (max-width: 960px) {
            .admin-layout {
                flex-direction: column;
            }

            .sidebar {
                position: static;
                height: auto;
                width: 100%;
                margin-bottom: 16px;
            }

            .admin-main {
                padding: 16px;
            }

            .stats-grid {
                grid-template-columns: repeat(2, minmax(0, 1fr));
            }

            .charts-grid {
                grid-template-columns: 1fr;
            }
        }

        @media (max-width: 640px) {
            .stats-grid {
                grid-template-columns: 1fr;
            }

            .admin-header {
                align-items: flex-start;
            }

            .admin-header-filter {
                width: 100%;
                justify-content: center;
            }
        }
    </style>
</head>
<body>

<div class="admin-layout">
    <!-- Sidebar -->
    <aside class="sidebar">
        <div class="sidebar-logo">
            <div class="sidebar-logo-icon">
                <span class="material-symbols-outlined" style="color:#fff;font-size:22px;">movie</span>
            </div>
            <h1 class="sidebar-logo-title">FilmHub</h1>
        </div>

        <div class="sidebar-menu">
            <a href="#" class="active">
                <span class="material-symbols-outlined">dashboard</span>
                <span>Bảng điều khiển</span>
            </a>
            <a href="#">
                <span class="material-symbols-outlined">theaters</span>
                <span>Quản lý Phim</span>
            </a>
            <a href="#">
                <span class="material-symbols-outlined">group</span>
                <span>Quản lý Người dùng</span>
            </a>
            <a href="#">
                <span class="material-symbols-outlined">analytics</span>
                <span>Phân tích</span>
            </a>
            <a href="#">
                <span class="material-symbols-outlined">settings</span>
                <span>Cài đặt</span>
            </a>
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

            <!-- Charts -->
            <div class="charts-grid">
                <!-- Line chart -->
                <div class="chart-card">
                    <p class="chart-title">Lượt xem và Người dùng mới</p>
                    <div class="chart-main-value">
                        <span class="value">240k Lượt xem</span>
                        <span class="green">+15.6%</span>
                        <span class="note">so với 30 ngày qua</span>
                    </div>
                    <div class="line-chart-wrapper">
                        <svg viewBox="0 0 545 150" xmlns="http://www.w3.org/2000/svg">
                            <path d="M0 109C20.6818 109 20.6818 21 41.3636 21C62.0455 21 62.0455 41 82.7273 41C103.409 41 103.409 93 124.091 93C144.773 93 144.773 33 165.455 33C186.136 33 186.136 101 206.818 101C227.5 101 227.5 61 248.182 61C268.864 61 268.864 45 289.545 45C310.227 45 310.227 121 330.909 121C351.591 121 351.591 149 372.273 149C392.955 149 392.955 1 413.636 1C434.318 1 434.318 81 455 81C475.682 81 475.682 129 496.364 129C517.045 129 517.045 25 537.727 25"
                                  stroke="#e60a15" stroke-width="3" stroke-linecap="round" fill="none"></path>
                            <path d="M0 109C20.6818 109 20.6818 21 41.3636 21C62.0455 21 62.0455 41 82.7273 41C103.409 41 103.409 93 124.091 93C144.773 93 144.773 33 165.455 33C186.136 33 186.136 101 206.818 101C227.5 101 227.5 61 248.182 61C268.864 61 268.864 45 289.545 45C310.227 45 310.227 121 330.909 121C351.591 121 351.591 149 372.273 149C392.955 149 392.955 1 413.636 1C434.318 1 434.318 81 455 81C475.682 81 475.682 129 496.364 129C517.045 129 517.045 25 537.727 25V149H0V109Z"
                                  fill="url(#line-chart-gradient)"></path>
                            <defs>
                                <linearGradient id="line-chart-gradient" x1="272" y1="1" x2="272" y2="149" gradientUnits="userSpaceOnUse">
                                    <stop stop-color="#e60a15" stop-opacity="0.3"/>
                                    <stop offset="1" stop-color="#e60a15" stop-opacity="0"/>
                                </linearGradient>
                            </defs>
                        </svg>
                    </div>
                    <div class="line-chart-weeks">
                        <span>Tuần 1</span>
                        <span>Tuần 2</span>
                        <span>Tuần 3</span>
                        <span>Tuần 4</span>
                    </div>
                </div>

                <!-- Pie chart -->
                <div class="chart-card">
                    <p class="chart-title">Top Thể loại Phim</p>
                    <p class="chart-sub">Tháng này</p>
                    <div class="pie-chart-center">
                        <div style="position:relative; width:180px; height:180px;">
                            <svg viewBox="0 0 36 36" style="width:100%; height:100%;">
                                <path d="M18 2.0845 a 15.9155 15.9155 0 0 1 0 31.831 a 15.9155 15.9155 0 0 1 0 -31.831"
                                      fill="none" stroke="#374151" stroke-width="3"></path>
                                <path d="M18 2.0845 a 15.9155 15.9155 0 0 1 0 31.831"
                                      fill="none" stroke="#e60a15" stroke-width="3"
                                      stroke-dasharray="90, 100"></path>
                                <path d="M18 2.0845 a 15.9155 15.9155 0 0 1 0 31.831"
                                      fill="none" stroke="#fbbf24" stroke-width="3"
                                      stroke-dasharray="25, 100" stroke-dashoffset="-90"></path>
                                <path d="M18 2.0845 a 15.9155 15.9155 0 0 1 0 31.831"
                                      fill="none" stroke="#4ade80" stroke-width="3"
                                      stroke-dasharray="15, 100" stroke-dashoffset="-115"></path>
                            </svg>
                            <div style="position:absolute; inset:0; display:flex; flex-direction:column; align-items:center; justify-content:center;">
                                <span style="font-size:26px;font-weight:700;">45%</span>
                                <span style="font-size:14px;color:rgba(255,255,255,0.7);">Hành động</span>
                            </div>
                        </div>
                    </div>
                    <div class="pie-chart-details">
                        <div class="pie-row">
                            <div class="pie-left">
                                <span class="pie-dot" style="background:#e60a15;"></span>
                                <span style="color:rgba(255,255,255,0.8);">Hành động</span>
                            </div>
                            <span style="font-weight:600;">45%</span>
                        </div>
                        <div class="pie-row">
                            <div class="pie-left">
                                <span class="pie-dot" style="background:#fbbf24;"></span>
                                <span style="color:rgba(255,255,255,0.8);">Kinh dị</span>
                            </div>
                            <span style="font-weight:600;">25%</span>
                        </div>
                        <div class="pie-row">
                            <div class="pie-left">
                                <span class="pie-dot" style="background:#4ade80;"></span>
                                <span style="color:rgba(255,255,255,0.8);">Hài</span>
                            </div>
                            <span style="font-weight:600;">15%</span>
                        </div>
                    </div>
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
