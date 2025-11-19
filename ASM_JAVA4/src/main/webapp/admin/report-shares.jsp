<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Báo cáo Hoạt động Chia sẻ Video</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;700;800&display=swap" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet"/>

    <style>
        :root {
            --primary: #e60a15;
            --bg-dark: #181111;
            --bg-darker: #221011;
            --bg-subtle: #392829;
            --border-subtle: #543b3c;
            --text-main: #ffffff;
            --text-subtle: #ba9c9d;
        }

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: 'Plus Jakarta Sans', system-ui, -apple-system, BlinkMacSystemFont, sans-serif;
            background-color: var(--bg-dark);
            color: var(--text-main);
        }

        .material-symbols-outlined {
            font-variation-settings:
            'FILL' 0,
            'wght' 400,
            'GRAD' 0,
            'opsz' 24;
            vertical-align: middle;
        }

        /* Layout */
        .layout-root {
            display: flex;
            min-height: 100vh;
            width: 100%;
        }

        .sidebar {
            width: 256px;
            background-color: var(--bg-darker);
            color: var(--text-main);
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .sidebar-inner {
            padding: 16px;
            display: flex;
            flex-direction: column;
            gap: 16px;
            height: 100%;
        }

        .sidebar-top {
            display: flex;
            flex-direction: column;
            gap: 16px;
            flex: 1;
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
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            flex-shrink: 0;
        }

        .sidebar-user-name {
            font-size: 14px;
            font-weight: 500;
        }

        .sidebar-user-email {
            font-size: 12px;
            color: var(--text-subtle);
        }

        .sidebar-nav {
            display: flex;
            flex-direction: column;
            gap: 8px;
        }

        .sidebar-link {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 8px 12px;
            border-radius: 8px;
            font-size: 14px;
            text-decoration: none;
            color: var(--text-main);
            transition: background-color 0.15s ease, color 0.15s ease;
        }

        .sidebar-link:hover {
            background-color: rgba(230, 10, 21, 0.2);
        }

        .sidebar-link-active {
            background-color: var(--primary);
        }

        .sidebar-bottom {
            padding: 0 16px 16px 16px;
            display: flex;
            flex-direction: column;
            gap: 4px;
        }

        /* Main */
        .main {
            flex: 1;
            padding: 24px 24px 32px;
            overflow: auto;
        }

        .main-inner {
            max-width: 1120px;
            margin: 0 auto;
        }

        /* Breadcrumbs */
        .breadcrumbs {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            gap: 8px;
            margin-bottom: 16px;
            font-size: 14px;
        }

        .breadcrumb-link {
            color: var(--text-subtle);
            text-decoration: none;
            font-weight: 500;
        }

        .breadcrumb-link:hover {
            color: var(--text-main);
        }

        .breadcrumb-sep {
            color: var(--text-subtle);
        }

        .breadcrumb-current {
            color: var(--text-main);
            font-weight: 500;
        }

        /* Heading + export btn */
        .page-heading-row {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-between;
            gap: 16px;
            margin-bottom: 24px;
        }

        .page-title {
            font-size: 32px;
            font-weight: 800;
            letter-spacing: -0.033em;
            margin: 0;
        }

        .btn {
            border: none;
            outline: none;
            cursor: pointer;
            font-family: inherit;
        }

        .btn-primary {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            min-width: 84px;
            height: 40px;
            padding: 0 16px;
            border-radius: 8px;
            background-color: var(--primary);
            color: #fff;
            font-size: 13px;
            font-weight: 700;
            letter-spacing: 0.015em;
            white-space: nowrap;
            transition: background-color 0.15s ease;
        }

        .btn-primary:hover {
            background-color: #c50913;
        }

        /* Stats cards */
        .stats-grid {
            display: grid;
            grid-template-columns: 1fr;
            gap: 16px;
            margin-bottom: 32px;
        }

        .stat-card {
            padding: 24px;
            border-radius: 16px;
            border: 1px solid var(--border-subtle);
            background-color: var(--bg-darker);
            display: flex;
            flex-direction: column;
            gap: 8px;
        }

        .stat-title {
            font-size: 15px;
            font-weight: 500;
        }

        .stat-value {
            font-size: 22px;
            font-weight: 700;
        }

        @media (min-width: 768px) {
            .stats-grid {
                grid-template-columns: repeat(2, minmax(0, 1fr));
            }
        }

        @media (min-width: 1024px) {
            .stats-grid {
                grid-template-columns: repeat(3, minmax(0, 1fr));
            }
        }

        /* Filter box */
        .filter-box {
            padding: 24px;
            margin-bottom: 32px;
            border-radius: 16px;
            border: 1px solid var(--border-subtle);
            background-color: var(--bg-darker);
        }

        .filter-title {
            margin: 0 0 16px;
            font-size: 18px;
            font-weight: 700;
        }

        .filter-grid {
            display: grid;
            grid-template-columns: 1fr;
            gap: 16px;
        }

        @media (min-width: 768px) {
            .filter-grid {
                grid-template-columns: repeat(2, minmax(0, 1fr));
            }
        }

        @media (min-width: 1024px) {
            .filter-grid {
                grid-template-columns: repeat(3, minmax(0, 1fr));
            }
        }

        @media (min-width: 1280px) {
            .filter-grid {
                grid-template-columns: repeat(5, minmax(0, 1fr));
            }
        }

        .field {
            display: flex;
            flex-direction: column;
            gap: 6px;
        }

        .field-label {
            font-size: 13px;
            font-weight: 500;
            color: var(--text-subtle);
        }

        .field-input {
            height: 40px;
            padding: 0 12px;
            border-radius: 8px;
            border: 1px solid var(--border-subtle);
            background-color: var(--bg-subtle);
            color: var(--text-main);
            font-size: 14px;
            outline: none;
        }

        .field-input::placeholder {
            color: var(--text-subtle);
        }

        .field-input:focus {
            border-color: var(--primary);
            box-shadow: 0 0 0 1px var(--primary);
        }

        .filter-actions {
            display: flex;
            align-items: flex-end;
            gap: 8px;
        }

        .btn-filter-primary {
            flex: 1;
            height: 40px;
            border-radius: 8px;
            background-color: var(--primary);
            color: #fff;
            font-size: 13px;
            font-weight: 700;
            border: none;
            cursor: pointer;
        }

        .btn-filter-primary:hover {
            background-color: #c50913;
        }

        .btn-filter-secondary {
            flex: 1;
            height: 40px;
            border-radius: 8px;
            background-color: var(--bg-subtle);
            color: var(--text-subtle);
            font-size: 13px;
            font-weight: 500;
            border: none;
            cursor: pointer;
        }

        .btn-filter-secondary:hover {
            background-color: var(--border-subtle);
            color: var(--text-main);
        }

        /* Table */
        .table-wrapper {
            border-radius: 16px;
            border: 1px solid var(--border-subtle);
            background-color: var(--bg-darker);
            overflow-x: auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            font-size: 14px;
        }

        thead {
            background-color: var(--bg-subtle);
        }

        thead th {
            padding: 12px 24px;
            text-align: left;
            font-size: 11px;
            text-transform: uppercase;
            color: var(--text-subtle);
            font-weight: 600;
        }

        tbody td {
            padding: 16px 24px;
            border-bottom: 1px solid var(--border-subtle);
        }

        tbody tr:last-child td {
            border-bottom: none;
        }

        tbody tr {
            background-color: var(--bg-darker);
            transition: background-color 0.15s ease;
        }

        tbody tr:hover {
            background-color: var(--bg-subtle);
        }

        .table-user-email,
        .table-sub {
            font-size: 12px;
            color: var(--text-subtle);
        }

        .table-video {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .table-thumb {
            width: 80px;
            height: 48px;
            border-radius: 6px;
            object-fit: cover;
            flex-shrink: 0;
        }

        .badge {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            padding: 4px 10px;
            border-radius: 999px;
            font-size: 11px;
            font-weight: 600;
        }

        .badge-green {
            background-color: #064e3b;
            color: #bbf7d0;
        }

        .badge-yellow {
            background-color: #78350f;
            color: #facc15;
        }

        /* Pagination */
        .pagination-wrapper {
            padding: 16px;
            display: flex;
            flex-direction: column;
            gap: 12px;
        }

        @media (min-width: 768px) {
            .pagination-wrapper {
                flex-direction: row;
                align-items: center;
                justify-content: space-between;
            }
        }

        .pagination-info {
            font-size: 13px;
            color: var(--text-subtle);
        }

        .pagination-info span {
            font-weight: 600;
            color: var(--text-main);
        }

        .pagination-list {
            list-style: none;
            display: inline-flex;
            align-items: stretch;
            padding: 0;
            margin: 0;
            gap: 0;
        }

        .pagination-item a {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 6px 12px;
            font-size: 13px;
            text-decoration: none;
            color: var(--text-subtle);
            border: 1px solid var(--border-subtle);
            background-color: var(--bg-subtle);
            transition: background-color 0.15s ease, color 0.15s ease;
        }

        .pagination-item:first-child a {
            border-top-left-radius: 6px;
            border-bottom-left-radius: 6px;
        }

        .pagination-item:last-child a {
            border-top-right-radius: 6px;
            border-bottom-right-radius: 6px;
        }

        .pagination-item a:hover {
            background-color: var(--border-subtle);
            color: var(--text-main);
        }

        .pagination-item.active a {
            background-color: rgba(230, 10, 21, 0.2);
            border-color: var(--primary);
            color: #fff;
        }

        .pagination-icon {
            font-size: 18px;
        }

        /* Utility */
        .text-xs {
            font-size: 12px;
        }
    </style>
</head>
<body>
<div class="layout-root">
    <!-- Sidebar -->
    <aside class="sidebar">
        <div class="sidebar-inner">
            <div class="sidebar-top">
                <div class="sidebar-user">
                    <div class="avatar-circle"
                         style="background-image:url('https://lh3.googleusercontent.com/aida-public/AB6AXuDv5LxxtFgXJi4BEH9ujVFhPNG-J5h3mUgI19-lfEJtUqqfQ3Rn9w0RGOv3UsXQjKbr4RePnZOcQwBPLBDKHyDpFNBsNowUSeqDkwzeJF7BtLsnHqX6SRdBqq4sUCFy1OwEOXKpCSlrwSGyG1rY7ZBcYNRM-UcqZ0TLUgMYOLjlCilXFvWvYB4Y0bH14OUHgoQkMAfo12N3GSQpzUECCN5oF9yZSyFLde1vswfSmCpV7wCTH2-f1sOfgGZHd4SxqdyBbxLMBBJMpTQ');">
                    </div>
                    <div>
                        <div class="sidebar-user-name">Admin</div>
                        <div class="sidebar-user-email">admin@website.com</div>
                    </div>
                </div>

                <nav class="sidebar-nav">
                    <a href="#" class="sidebar-link">
                        <span class="material-symbols-outlined">dashboard</span>
                        <span>Dashboard</span>
                    </a>
                    <a href="#" class="sidebar-link sidebar-link-active">
                        <span class="material-symbols-outlined">bar_chart</span>
                        <span>Báo cáo</span>
                    </a>
                    <a href="#" class="sidebar-link">
                        <span class="material-symbols-outlined">movie</span>
                        <span>Quản lý nội dung</span>
                    </a>
                    <a href="#" class="sidebar-link">
                        <span class="material-symbols-outlined">group</span>
                        <span>Quản lý người dùng</span>
                    </a>
                </nav>
            </div>

            <div class="sidebar-bottom">
                <a href="#" class="sidebar-link">
                    <span class="material-symbols-outlined">settings</span>
                    <span>Cài đặt</span>
                </a>
                <a href="#" class="sidebar-link">
                    <span class="material-symbols-outlined">logout</span>
                    <span>Đăng xuất</span>
                </a>
            </div>
        </div>
    </aside>

    <!-- Main content -->
    <main class="main">
        <div class="main-inner">
            <!-- Breadcrumbs -->
            <div class="breadcrumbs">
                <a href="#" class="breadcrumb-link">Dashboard</a>
                <span class="breadcrumb-sep">/</span>
                <a href="#" class="breadcrumb-link">Báo cáo</a>
                <span class="breadcrumb-sep">/</span>
                <span class="breadcrumb-current">Chia sẻ Video</span>
            </div>

            <!-- Heading + Export -->
            <div class="page-heading-row">
                <h1 class="page-title">Báo cáo Chia sẻ Video</h1>
                <button class="btn btn-primary">
                    <span class="material-symbols-outlined">download</span>
                    <span>Xuất ra CSV</span>
                </button>
            </div>

            <!-- Stats -->
            <div class="stats-grid">
                <div class="stat-card">
                    <div class="stat-title">Tổng lượt chia sẻ</div>
                    <div class="stat-value">1,234</div>
                </div>
                <div class="stat-card">
                    <div class="stat-title">Video được chia sẻ nhiều nhất</div>
                    <div class="stat-value" title="Hành Động Kịch Tính">Hành Động Kịch Tính</div>
                </div>
                <div class="stat-card">
                    <div class="stat-title">Người dùng chia sẻ nhiều nhất</div>
                    <div class="stat-value" title="user_best@email.com">user_best@email.com</div>
                </div>
            </div>

            <!-- Filter Section -->
            <div class="filter-box">
                <h3 class="filter-title">Bộ lọc</h3>
                <div class="filter-grid">
                    <div class="field">
                        <label for="date-range" class="field-label">Khoảng thời gian</label>
                        <input id="date-range" type="text" class="field-input" placeholder="Chọn ngày">
                    </div>
                    <div class="field">
                        <label for="sender" class="field-label">Người Gửi</label>
                        <input id="sender" type="text" class="field-input" placeholder="Email, Tên hoặc ID">
                    </div>
                    <div class="field">
                        <label for="recipient" class="field-label">Người Nhận</label>
                        <input id="recipient" type="text" class="field-input" placeholder="Email, Tên hoặc ID">
                    </div>
                    <div class="field">
                        <label for="video-name" class="field-label">Tên Video</label>
                        <input id="video-name" type="text" class="field-input" placeholder="Tên phim hoặc ID">
                    </div>
                    <div class="filter-actions">
                        <button class="btn-filter-primary">Áp dụng</button>
                        <button class="btn-filter-secondary">Xóa</button>
                    </div>
                </div>
            </div>

            <!-- Data Table -->
            <div class="table-wrapper">
                <table>
                    <thead>
                    <tr>
                        <th scope="col">Thời gian</th>
                        <th scope="col">Người Gửi</th>
                        <th scope="col">Người Nhận</th>
                        <th scope="col">Video</th>
                        <th scope="col">Trạng thái</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>2023-10-27 10:30 AM</td>
                        <td>
                            <div>user1@email.com</div>
                            <div class="table-sub">Nguyễn Văn A</div>
                        </td>
                        <td>
                            <div>user2@email.com</div>
                            <div class="table-sub">Trần Thị B</div>
                        </td>
                        <td>
                            <div class="table-video">
                                <img class="table-thumb"
                                     src="https://lh3.googleusercontent.com/aida-public/AB6AXuBghT4i4lpp9qvmdUBRMhypmdRpEDLwLL3oZLKaR5xt0sz-3oiFaJYOg4osCCQM0q-u-dVRHaWwTBBlVP-GtsmE4HjuhYI-RQ5G9s9W1PvsARRi5BPW_ydZz2Jn5kqRsT_U_5KGYO9aRFgxzwJKdR_s69EPNhcJLHfbxC9rpA0t9ya0Yf-fs1DG9tK1qCVJ1pD9p7rMwoIpZ4smI-6gN6o696bUO-q7-Y3eZ5uvsWKiMW5d-9Gvh2Mn7xP7EIbnIMo77iJVJLyzl_Q"
                                     alt="Movie thumbnail for Action Movie">
                                <span>Hành Động Kịch Tính</span>
                            </div>
                        </td>
                        <td>
                            <span class="badge badge-green">Đã xem</span>
                        </td>
                    </tr>

                    <tr>
                        <td>2023-10-27 09:15 AM</td>
                        <td>
                            <div>user3@email.com</div>
                            <div class="table-sub">Lê Văn C</div>
                        </td>
                        <td>
                            <div>user4@email.com</div>
                            <div class="table-sub">Phạm Thị D</div>
                        </td>
                        <td>
                            <div class="table-video">
                                <img class="table-thumb"
                                     src="https://lh3.googleusercontent.com/aida-public/AB6AXuCWXH2eiYp513vEOmBeskC2sta5Mp4s1Lru2o-8XFSVBifarjALVevHhFaMixg517sSQkhneUwL500LGFtKvFO4DEHHChRykt2nvjvhthr4rVeUkFuulnJ61SAwqUKq3LMBdiEek0PvxludFhYhPvCUI3c-rWek5TWFB-JgDvM_ciCOBsS44PgQ-3BGKd8zIOhFyyMpzmO_vCRjmY9VZQSYwYBpZGjkRszbW_wHs5xWLIjjsUquO7SRlxObA0paSq96MqGgeSDIwBI"
                                     alt="Movie thumbnail for Comedy Special">
                                <span>Tiếng Cười Vỡ Bụng</span>
                            </div>
                        </td>
                        <td>
                            <span class="badge badge-yellow">Chưa xem</span>
                        </td>
                    </tr>

                    <tr>
                        <td>2023-10-26 08:00 PM</td>
                        <td>
                            <div>user_best@email.com</div>
                            <div class="table-sub">Võ Thị E</div>
                        </td>
                        <td>
                            <div>user5@email.com</div>
                            <div class="table-sub">Hoàng Văn F</div>
                        </td>
                        <td>
                            <div class="table-video">
                                <img class="table-thumb"
                                     src="https://lh3.googleusercontent.com/aida-public/AB6AXuBFr2Zy4NbiAaeggn6dvVwXPH-bllrcgEgcIhUKTMVcAI2jcKk3Hu67qOdMbFHli7n74jV2QiECku81_y-7rlbkIPUUylbWnosISOFcWjh3v44d-8kb0t-oitH56I7TwdUVQOiZsVy0znLauvtLqfOTd0QJBxJq1TEyuQui6wJ9X7lwF2QRcniM8byr2lTiSdtdORs-oeG0qO-b2EobAV-I6YomOIY8jmwKCLfds5NfO6j88H96kjbRfGIyoTi5kfMuAF9QfUyAdyo"
                                     alt="Movie thumbnail for Sci-Fi Adventure">
                                <span>Hành Tinh Bí Ẩn</span>
                            </div>
                        </td>
                        <td>
                            <span class="badge badge-green">Đã xem</span>
                        </td>
                    </tr>
                    </tbody>
                </table>

                <!-- Pagination -->
                <div class="pagination-wrapper">
                    <span class="pagination-info">
                        Hiển thị <span>1-10</span> của <span>1000</span>
                    </span>
                    <ul class="pagination-list">
                        <li class="pagination-item">
                            <a href="#">
                                <span class="material-symbols-outlined pagination-icon">chevron_left</span>
                            </a>
                        </li>
                        <li class="pagination-item">
                            <a href="#">1</a>
                        </li>
                        <li class="pagination-item">
                            <a href="#">2</a>
                        </li>
                        <li class="pagination-item active">
                            <a href="#">3</a>
                        </li>
                        <li class="pagination-item">
                            <a href="#">...</a>
                        </li>
                        <li class="pagination-item">
                            <a href="#">100</a>
                        </li>
                        <li class="pagination-item">
                            <a href="#">
                                <span class="material-symbols-outlined pagination-icon">chevron_right</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
    </main>
</div>
</body>
</html>
