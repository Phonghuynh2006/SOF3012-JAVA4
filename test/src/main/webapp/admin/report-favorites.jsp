<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Báo cáo Lượt Yêu Thích</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <!-- Font & Icons -->
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700;900&display=swap" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet"/>

    <style>
        :root {
            --primary: #e60a15;
            --bg-dark: #181111;
            --card-bg: #271b1c;
            --card-border: #543b3c;
            --text-main: #ffffff;
            --text-muted: #ba9c9d;
            --hover-bg: #392829;
        }

        * {
            box-sizing: border-box;
        }

        html, body {
            margin: 0;
            padding: 0;
            height: 100%;
        }

        body {
            font-family: "Inter", sans-serif;
            background-color: var(--bg-dark);
            color: var(--text-main);
        }

        .material-symbols-outlined {
            font-variation-settings: 'FILL' 0,'wght' 400,'GRAD' 0,'opsz' 24;
            vertical-align: middle;
        }

        .page-root {
            min-height: 100vh;
            display: flex;
        }

        .layout-row {
            display: flex;
            width: 100%;
            min-height: 100vh;
        }

        /* SIDEBAR */
        .sidebar {
            width: 260px;
            flex-shrink: 0;
            background-color: var(--bg-dark);
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            padding: 16px;
        }

        .sidebar-top {
            display: flex;
            flex-direction: column;
            gap: 16px;
        }

        .sidebar-user {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 8px;
        }

        .avatar-circle {
            width: 40px;
            height: 40px;
            border-radius: 999px;
            background-position: center;
            background-size: cover;
            background-repeat: no-repeat;
        }

        .sidebar-user-name {
            font-size: 14px;
            font-weight: 500;
            color: #ffffff;
        }

        .sidebar-user-email {
            font-size: 13px;
            color: var(--text-muted);
        }

        .sidebar-nav {
            display: flex;
            flex-direction: column;
            gap: 6px;
            margin-top: 4px;
        }

        .sidebar-link {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 8px 12px;
            border-radius: 8px;
            text-decoration: none;
            color: #ffffff;
            font-size: 14px;
            transition: background-color 0.15s ease;
        }

        .sidebar-link:hover {
            background-color: var(--hover-bg);
        }

        .sidebar-link-active {
            background-color: var(--hover-bg);
        }

        .sidebar-bottom {
            display: flex;
            flex-direction: column;
            gap: 4px;
        }

        /* MAIN */
        .main {
            flex: 1;
            padding: 24px 16px;
        }

        @media (min-width: 768px) {
            .main {
                padding: 40px;
            }
        }

        .main-inner {
            max-width: 1120px;
            margin: 0 auto;
            display: flex;
            flex-direction: column;
            gap: 24px;
        }

        .page-title-row {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-between;
            gap: 12px;
        }

        .page-title {
            font-size: 32px;
            font-weight: 900;
            letter-spacing: -0.03em;
            margin: 0;
        }

        /* STATS */
        .stats-grid {
            display: grid;
            grid-template-columns: 1fr;
            gap: 16px;
        }

        @media (min-width: 640px) {
            .stats-grid {
                grid-template-columns: repeat(2, minmax(0, 1fr));
            }
        }

        @media (min-width: 1024px) {
            .stats-grid {
                grid-template-columns: repeat(3, minmax(0, 1fr));
            }
        }

        .stat-card {
            background-color: var(--card-bg);
            border: 1px solid var(--card-border);
            border-radius: 12px;
            padding: 20px;
            display: flex;
            flex-direction: column;
            gap: 8px;
        }

        .stat-label {
            font-size: 15px;
            font-weight: 500;
        }

        .stat-value-xl {
            font-size: 26px;
            font-weight: 700;
        }

        .stat-value-lg {
            font-size: 22px;
            font-weight: 700;
        }

        .stat-truncate {
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        /* REPORT WRAPPER */
        .report-wrapper {
            background-color: var(--card-bg);
            border-radius: 12px;
            border: 1px solid var(--card-border);
            display: flex;
            flex-direction: column;
            overflow: hidden;
        }

        /* TOOLBAR */
        .toolbar {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-between;
            padding: 12px 16px;
            border-bottom: 1px solid var(--card-border);
            gap: 12px;
        }

        .toolbar-left {
            display: flex;
            gap: 8px;
        }

        .icon-btn {
            width: 36px;
            height: 36px;
            border-radius: 8px;
            border: none;
            background: transparent;
            color: #ffffff;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: background-color 0.15s ease;
        }

        .icon-btn:hover {
            background-color: rgba(255, 255, 255, 0.08);
        }

        .btn-primary {
            border-radius: 8px;
            border: none;
            padding: 0 16px;
            height: 40px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            background-color: var(--primary);
            color: #ffffff;
            font-size: 14px;
            font-weight: 700;
            cursor: pointer;
            white-space: nowrap;
            transition: background-color 0.15s ease;
        }

        .btn-primary:hover {
            background-color: #c80812;
        }

        /* TABLE */
        .table-container {
            overflow-x: auto;
            width: 100%;
        }

        .table-wrapper-inline {
            min-width: 100%;
            display: inline-block;
            vertical-align: top;
        }

        table {
            border-collapse: collapse;
            width: 100%;
            min-width: 720px;
        }

        thead {
            background-color: #181111;
        }

        th, td {
            padding: 8px 16px;
            text-align: left;
            font-size: 14px;
        }

        th {
            font-weight: 500;
            color: #ffffff;
        }

        .th-sortable {
            display: inline-flex;
            align-items: center;
            gap: 4px;
            cursor: pointer;
        }

        tbody tr {
            border-top: 1px solid var(--card-border);
        }

        tbody tr:hover {
            background-color: var(--hover-bg);
        }

        .thumb-cell {
            height: 72px;
            width: 80px;
        }

        .thumb-video {
            width: 80px;
            height: 48px;
            border-radius: 6px;
            background-position: center;
            background-size: cover;
            background-repeat: no-repeat;
        }

        .badge-category {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            height: 28px;
            padding: 0 12px;
            border-radius: 999px;
            background-color: var(--hover-bg);
            color: #ffffff;
            font-size: 11px;
            font-weight: 500;
            white-space: nowrap;
        }

        .text-muted {
            color: var(--text-muted);
        }

        .text-link {
            color: var(--primary);
            font-size: 13px;
            font-weight: 700;
            letter-spacing: 0.015em;
            text-decoration: none;
        }

        .text-link:hover {
            text-decoration: underline;
        }

        /* PAGINATION */
        .pagination-row {
            padding: 12px 16px;
            border-top: 1px solid var(--card-border);
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 12px;
        }

        .pagination-info {
            font-size: 13px;
            color: var(--text-muted);
        }

        .pagination-controls {
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .page-btn {
            width: 32px;
            height: 32px;
            border-radius: 8px;
            border: none;
            background: transparent;
            color: #ffffff;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: background-color 0.15s ease;
        }

        .page-btn:hover:not(:disabled) {
            background-color: rgba(255, 255, 255, 0.08);
        }

        .page-btn:disabled {
            opacity: 0.5;
            cursor: not-allowed;
        }

        .page-btn-number {
            width: 32px;
            height: 32px;
            border-radius: 8px;
            border: none;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            font-size: 13px;
            cursor: pointer;
            transition: background-color 0.15s ease;
        }

        .page-btn-number.active {
            background-color: var(--primary);
            color: #ffffff;
        }

        .page-btn-number:not(.active) {
            background: transparent;
            color: #ffffff;
        }

        .page-btn-number:not(.active):hover {
            background-color: rgba(255, 255, 255, 0.08);
        }

        @media (max-width: 640px) {
            .sidebar {
                display: none; /* ADMIN thường PC, nếu cần responsive sau có thể chỉnh */
            }
            .main {
                padding: 16px;
            }
            .page-title {
                font-size: 24px;
            }
        }
    </style>
</head>
<body>
<div class="page-root">
    <div class="layout-row">
        <!-- SIDEBAR -->
        <aside class="sidebar">
            <div class="sidebar-top">
                <div class="sidebar-user">
                    <div class="avatar-circle"
                         style="background-image:url('https://lh3.googleusercontent.com/aida-public/AB6AXuCC320ml9sKP-IcCI2fDB_OogZRB2sjYWWw9JXIRKyEJPWTk-sTZv9GUJOZ7A95LF6e2bq1con9Adqwnn4xoyek2dnHKTfzhLVhcWIpLZJ4Dm9ggmFaG34fT8a38QQs2EppVsyVCxoqPAqNqbpVkVrfdnz0MwQ0PKvG8J_W6Zi3Zg0cWvWt1N-lh3qIaAV4OGND7UFjsZYfNHMBcZ2pru3sQT99BJGguR5cuk3lzuG4RPwjMHdTvpPsHlYF701OMEcWlqj8s9EyPKI');">
                    </div>
                    <div>
                        <div class="sidebar-user-name">Admin</div>
                        <div class="sidebar-user-email">admin@movie-site.com</div>
                    </div>
                </div>

                <nav class="sidebar-nav">
                    <a href="#" class="sidebar-link">
                        <span class="material-symbols-outlined">dashboard</span>
                        <span>Dashboard</span>
                    </a>
                    <a href="#" class="sidebar-link">
                        <span class="material-symbols-outlined">folder_open</span>
                        <span>Content</span>
                    </a>
                    <a href="#" class="sidebar-link">
                        <span class="material-symbols-outlined">group</span>
                        <span>Users</span>
                    </a>
                    <a href="#" class="sidebar-link sidebar-link-active">
                        <span class="material-symbols-outlined"
                              style="font-variation-settings:'FILL' 1,'wght' 400,'GRAD' 0,'opsz' 24;">bar_chart</span>
                        <span>Analytics</span>
                    </a>
                    <a href="#" class="sidebar-link">
                        <span class="material-symbols-outlined">settings</span>
                        <span>Settings</span>
                    </a>
                </nav>
            </div>

            <div class="sidebar-bottom">
                <a href="#" class="sidebar-link">
                    <span class="material-symbols-outlined">help</span>
                    <span>Help</span>
                </a>
                <a href="#" class="sidebar-link">
                    <span class="material-symbols-outlined">logout</span>
                    <span>Log Out</span>
                </a>
            </div>
        </aside>

        <!-- MAIN CONTENT -->
        <main class="main">
            <div class="main-inner">
                <!-- Heading -->
                <div class="page-title-row">
                    <h1 class="page-title">Báo cáo Lượt Yêu Thích</h1>
                </div>

                <!-- Stats -->
                <div class="stats-grid">
                    <div class="stat-card">
                        <div class="stat-label">Tổng Lượt Yêu Thích</div>
                        <div class="stat-value-xl">1,234,567</div>
                    </div>

                    <div class="stat-card">
                        <div class="stat-label">Video Yêu Thích Nhất</div>
                        <div class="stat-value-lg stat-truncate">Đại Chiến Giữa Các Vì Sao</div>
                    </div>

                    <div class="stat-card">
                        <div class="stat-label">Tổng Video Có Lượt Thích</div>
                        <div class="stat-value-xl">8,921</div>
                    </div>
                </div>

                <!-- Report Table -->
                <div class="report-wrapper">
                    <!-- Toolbar -->
                    <div class="toolbar">
                        <div class="toolbar-left">
                            <button class="icon-btn" type="button">
                                <span class="material-symbols-outlined">calendar_month</span>
                            </button>
                            <button class="icon-btn" type="button">
                                <span class="material-symbols-outlined">search</span>
                            </button>
                            <button class="icon-btn" type="button">
                                <span class="material-symbols-outlined">download</span>
                            </button>
                        </div>
                        <button class="btn-primary" type="button">
                            <span class="material-symbols-outlined"
                                  style="font-variation-settings:'FILL' 1,'wght' 400,'GRAD' 0,'opsz' 24;">download</span>
                            <span>Xuất Báo Cáo</span>
                        </button>
                    </div>

                    <!-- Table -->
                    <div class="table-container">
                        <div class="table-wrapper-inline">
                            <table>
                                <thead>
                                <tr>
                                    <th style="width:56px;"></th>
                                    <th>Tên Video</th>
                                    <th>Danh Mục</th>
                                    <th>Ngày Đăng</th>
                                    <th>
                                        <span class="th-sortable">
                                            <span>Số Lượt Yêu Thích</span>
                                            <span class="material-symbols-outlined" style="font-size:16px;">arrow_downward</span>
                                        </span>
                                    </th>
                                    <th>Hành Động</th>
                                </tr>
                                </thead>
                                <tbody>
                                <!-- Row 1 -->
                                <tr>
                                    <td class="thumb-cell">
                                        <div class="thumb-video"
                                             style="background-image:url('https://lh3.googleusercontent.com/aida-public/AB6AXuDUUC3VwZ6hGC0jtHgzZFJaQ7jmsU5gvNc392qgAHmaS3bzEhDbkO9SdveeK3Zdv629Zb0JtP8jy3WYIb1CA--6pGErnkHKsv2_pceA1iR9aE7nQCHO7vYEzkfOrgVhyxluiPvv9mRgINskzU1vFMUyn34boi4DHXt8QfXFHQlr1URvBMKOPkFG2eZWEjaPcAILpO2R0__CC8dhWJmQqPEaViXzn1Ubq9ytOgemz0go1pqnqPIbKEmSzKBQWpKnHsXKm5AmX63MaHY');">
                                        </div>
                                    </td>
                                    <td>Đại Chiến Giữa Các Vì Sao</td>
                                    <td>
                                        <span class="badge-category">Hành Động</span>
                                    </td>
                                    <td class="text-muted">2023-10-26</td>
                                    <td class="text-muted" style="font-weight:500;">15,234</td>
                                    <td>
                                        <a href="#" class="text-link">Xem Chi Tiết</a>
                                    </td>
                                </tr>

                                <!-- Row 2 -->
                                <tr>
                                    <td class="thumb-cell">
                                        <div class="thumb-video"
                                             style="background-image:url('https://lh3.googleusercontent.com/aida-public/AB6AXuARkS0TM44W1dHWnAoNUFZ5QN1t7dkszLgsofTN7rTbpl01QQCUyvnYble4Jm-jVzTGy1J21nAtltyR6XKlD1-rJ01qMq1eHVW1DFmg-H-0SV7Ma_Ln9zTAY8fkWpOBHTa7y6NcCwn7x5UK3DAru2ySe_cTGtmuNwXxqhRx7WmjWFx4Z9gbDlHgGGW4jLdm_yVw_bTYYwUVhliKjhFSWoLlt9TZHzWwN5S2MdCBGpXYZYH8uuSVwi4L6KSqSDiieMKkv7sWOveC05U');">
                                        </div>
                                    </td>
                                    <td>Chuyện Tình Paris</td>
                                    <td>
                                        <span class="badge-category">Lãng Mạn</span>
                                    </td>
                                    <td class="text-muted">2023-10-25</td>
                                    <td class="text-muted" style="font-weight:500;">12,876</td>
                                    <td>
                                        <a href="#" class="text-link">Xem Chi Tiết</a>
                                    </td>
                                </tr>

                                <!-- Row 3 -->
                                <tr>
                                    <td class="thumb-cell">
                                        <div class="thumb-video"
                                             style="background-image:url('https://lh3.googleusercontent.com/aida-public/AB6AXuDkuPfS2S75ybt7_u56TqG198IIcn8aBJTZsl5OUZvAisbS3Z6ogz11X9Wim3O3rTkI7P1qIN_gmXKiHNlZYfXG6WIEHr2tk3G9IaU8-3qRjzD0GM8PVonhQIf1uffXfQOP2LByFBZJs4u05gCNqng3hZ0q2JkXieOF40w13Z1QpDmzIM-HHiXQC4kZz3T_c59wXueEzJJPUgtBIWhStiz_YEFv532CXUoYBQWr5DjA1IqEOkgzeRJE_tf2UYsL5-iXDEI1L8EFaMA');">
                                        </div>
                                    </td>
                                    <td>Vua Sư Tử</td>
                                    <td>
                                        <span class="badge-category">Hoạt Hình</span>
                                    </td>
                                    <td class="text-muted">2023-10-24</td>
                                    <td class="text-muted" style="font-weight:500;">11,543</td>
                                    <td>
                                        <a href="#" class="text-link">Xem Chi Tiết</a>
                                    </td>
                                </tr>

                                <!-- Row 4 -->
                                <tr>
                                    <td class="thumb-cell">
                                        <div class="thumb-video"
                                             style="background-image:url('https://lh3.googleusercontent.com/aida-public/AB6AXuCZ33WwfdfdXsg4_vKMSGFYOIe70NyMheUHCD3aUxBYKNWtQHzfiPXDV-PaKQlKiXta04ZrHP4XCCo32pEb0hMpE7MSCYLiLbxij7TKMd4wR2y3Juk8oHHfNPtsA92z7BRhTDWfJj8oUF3Cz5KWbPoN1zeKyC0RdXLSbFDVLi7BtDkVW5Mze2o1bfYs5uC380hWFdW45_xS-6VpI2PkWMsEUrIl6jd6yNqMi-8qwL-TX9Miro40z-0jMzYC36dYWS-r6yBMmPurHYI');">
                                        </div>
                                    </td>
                                    <td>Du Hành Không Gian</td>
                                    <td>
                                        <span class="badge-category">Viễn Tưởng</span>
                                    </td>
                                    <td class="text-muted">2023-10-23</td>
                                    <td class="text-muted" style="font-weight:500;">9,871</td>
                                    <td>
                                        <a href="#" class="text-link">Xem Chi Tiết</a>
                                    </td>
                                </tr>

                                <!-- Row 5 -->
                                <tr>
                                    <td class="thumb-cell">
                                        <div class="thumb-video"
                                             style="background-image:url('https://lh3.googleusercontent.com/aida-public/AB6AXuBDgYiXaMoWh5Ned10xLv7y5sTJeAkmSMPupEmyXVeM-dTAPlv_zRnBmfnv3cgjjlweAlOL-XiiC7lCbhuyKogW7ma5Spw5g8GUKQRMr5LyjrojI3Bzh3U0KjyObHLOKc037xiLmhBNKOWXtm2Z5OwT4ebn36KzlhSoZjfDd3TDHbe6xeG6KcrDiFh7VX4aIU3oRfFj6a0thipbS_xd6YJI9Urqjk4u1a0Xprq_O8TAfzM0erh_C0iI-5TJ1r3Nm__bX0JhKuLi92k');">
                                        </div>
                                    </td>
                                    <td>Ngôi Nhà Ma Ám</td>
                                    <td>
                                        <span class="badge-category">Kinh Dị</span>
                                    </td>
                                    <td class="text-muted">2023-10-22</td>
                                    <td class="text-muted" style="font-weight:500;">8,652</td>
                                    <td>
                                        <a href="#" class="text-link">Xem Chi Tiết</a>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <!-- Pagination -->
                    <div class="pagination-row">
                        <span class="pagination-info">Showing 1 to 5 of 20 results</span>
                        <div class="pagination-controls">
                            <button class="page-btn" type="button" disabled>
                                <span class="material-symbols-outlined" style="font-size:18px;">chevron_left</span>
                            </button>
                            <button class="page-btn-number active" type="button">1</button>
                            <button class="page-btn-number" type="button">2</button>
                            <button class="page-btn-number" type="button">3</button>
                            <button class="page-btn" type="button">
                                <span class="material-symbols-outlined" style="font-size:18px;">chevron_right</span>
                            </button>
                        </div>
                    </div>
                </div>

            </div>
        </main>
    </div>
</div>
</body>
</html>
