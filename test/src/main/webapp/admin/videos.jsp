<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Trang Quản lý Video</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Font -->
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet"/>

    <style>
        :root {
            --primary: #e60a15;
            --bg-light: #f8f5f6;
            --bg-dark: #181111;
            --sidebar-bg: #ffffff;
            --sidebar-bg-dark: #1C1616;
            --border-light: #e5e7eb;
            --border-dark: #1f2933;
            --text-main-light: #000000;
            --text-main-dark: #ffffff;
            --text-muted-light: #6b7280;
            --text-muted-dark: #9ca3af;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html, body {
            height: 100%;
        }

        body {
            font-family: "Plus Jakarta Sans", system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
            background-color: var(--bg-dark);
            color: var(--text-main-dark);
        }

        .material-symbols-outlined {
            font-variation-settings:
            'FILL' 0,
            'wght' 400,
            'GRAD' 0,
            'opsz' 24;
            vertical-align: middle;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        button {
            font-family: inherit;
            border: none;
            background: none;
            cursor: pointer;
        }

        /* Layout tổng */

        .app-wrapper {
            display: flex;
            min-height: 100vh;
            width: 100%;
        }

        /* SIDEBAR */

        .sidebar {
            width: 260px;
            flex-shrink: 0;
            background: var(--sidebar-bg-dark);
            border-right: 1px solid #374151;
            padding: 16px;
            position: sticky;
            top: 0;
            height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .sidebar-inner {
            display: flex;
            flex-direction: column;
            height: 100%;
            gap: 16px;
        }

        .sidebar-logo-row {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 0 12px;
        }

        .sidebar-logo-box {
            background: var(--primary);
            border-radius: 8px;
            padding: 8px;
            color: #fff;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .sidebar-logo-box .material-symbols-outlined {
            font-size: 24px;
        }

        .sidebar-title {
            font-size: 20px;
            font-weight: 700;
            color: #fff;
        }

        .sidebar-nav-wrapper {
            margin-top: 24px;
            flex-grow: 1;
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
            color: #d1d5db;
            font-size: 14px;
            font-weight: 500;
            transition: background 0.15s ease, color 0.15s ease;
        }

        .sidebar-link .material-symbols-outlined {
            font-size: 20px;
        }

        .sidebar-link:hover {
            background: rgba(31, 41, 55, 0.9);
            color: #fff;
        }

        .sidebar-link.active {
            background: rgba(230, 10, 21, 0.08);
            color: var(--primary);
        }

        .sidebar-link.active .material-symbols-outlined {
            font-variation-settings:
            'FILL' 1,
            'wght' 400,
            'GRAD' 0,
            'opsz' 24;
        }

        .sidebar-footer {
            border-top: 1px solid #374151;
            padding-top: 16px;
            display: flex;
            flex-direction: column;
            gap: 8px;
        }

        .sidebar-user-row {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 8px 12px;
        }

        .sidebar-user-avatar {
            width: 40px;
            height: 40px;
            border-radius: 999px;
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            flex-shrink: 0;
        }

        .sidebar-user-info {
            display: flex;
            flex-direction: column;
            gap: 2px;
        }

        .sidebar-user-name {
            font-size: 14px;
            font-weight: 500;
            color: #fff;
        }

        .sidebar-user-email {
            font-size: 12px;
            color: #9ca3af;
        }

        .sidebar-footer-link {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 8px 12px;
            border-radius: 8px;
            font-size: 14px;
            font-weight: 500;
            color: #d1d5db;
            transition: background 0.15s ease, color 0.15s ease;
        }

        .sidebar-footer-link .material-symbols-outlined {
            font-size: 20px;
        }

        .sidebar-footer-link:hover {
            background: rgba(31, 41, 55, 0.9);
            color: #fff;
        }

        .sidebar-footer-link.logout {
            color: #f97373;
        }

        .sidebar-footer-link.logout:hover {
            background: rgba(248, 113, 113, 0.12);
        }

        /* MAIN CONTENT */

        .main {
            flex: 1;
            padding: 32px;
            background: var(--bg-dark);
            overflow-x: hidden;
        }

        .main-inner {
            max-width: 1120px;
            margin: 0 auto;
        }

        /* Page heading */

        .page-header {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            align-items: center;
            gap: 16px;
            margin-bottom: 24px;
        }

        .page-title-block {
            display: flex;
            flex-direction: column;
            gap: 4px;
        }

        .page-title {
            font-size: 28px;
            font-weight: 700;
            color: #fff;
        }

        .page-subtitle {
            font-size: 14px;
            color: #9ca3af;
        }

        .primary-btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            padding: 0 16px;
            height: 40px;
            border-radius: 8px;
            background: var(--primary);
            color: #fff;
            font-size: 14px;
            font-weight: 600;
            letter-spacing: 0.015em;
            transition: background 0.15s ease;
            white-space: nowrap;
        }

        .primary-btn:hover {
            background: #c90a13;
        }

        .primary-btn .material-symbols-outlined {
            font-size: 20px;
        }

        /* Toolbar & Filters */

        .toolbar {
            background: #1C1616;
            border-radius: 12px;
            padding: 16px;
            margin-bottom: 24px;
        }

        .toolbar-row {
            display: flex;
            flex-direction: column;
            gap: 16px;
        }

        @media (min-width: 768px) {
            .toolbar-row {
                flex-direction: row;
                align-items: center;
            }
        }

        .toolbar-search-wrapper {
            flex: 1;
        }

        .search-input-wrapper {
            display: flex;
            align-items: stretch;
            height: 44px;
            border-radius: 10px;
            overflow: hidden;
        }

        .search-icon-box {
            width: 44px;
            display: flex;
            align-items: center;
            justify-content: center;
            background: #111827;
            color: #9ca3af;
            flex-shrink: 0;
        }

        .search-input {
            flex: 1;
            border: none;
            padding: 0 12px;
            background: #111827;
            color: #f9fafb;
            font-size: 14px;
        }

        .search-input::placeholder {
            color: #6b7280;
        }

        .search-input:focus {
            outline: 2px solid rgba(230, 10, 21, 0.5);
        }

        .toolbar-filters {
            display: flex;
            flex-wrap: wrap;
            gap: 8px;
        }

        .filter-btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 6px;
            padding: 0 16px;
            height: 44px;
            border-radius: 10px;
            background: #111827;
            color: #f9fafb;
            font-size: 14px;
            font-weight: 500;
        }

        .filter-btn .material-symbols-outlined {
            font-size: 20px;
            color: #9ca3af;
        }

        /* TABLE */

        .table-card {
            background: #1C1616;
            border-radius: 12px;
            overflow: hidden;
        }

        .table-wrapper {
            width: 100%;
            overflow-x: auto;
        }

        table.video-table {
            width: 100%;
            border-collapse: collapse;
            font-size: 14px;
        }

        .video-table thead {
            background: #111827;
            text-transform: uppercase;
            font-size: 12px;
            color: #9ca3af;
        }

        .video-table thead th {
            padding: 12px 16px;
            text-align: left;
            font-weight: 600;
            white-space: nowrap;
        }

        .video-table tbody tr {
            border-bottom: 1px solid #1f2933;
            transition: background 0.15s ease;
        }

        .video-table tbody tr:hover {
            background: #111827;
        }

        .video-table tbody td {
            padding: 12px 16px;
            color: #e5e7eb;
            vertical-align: middle;
        }

        .checkbox-cell {
            width: 48px;
        }

        .checkbox-input {
            width: 16px;
            height: 16px;
        }

        .thumb-img {
            width: 96px;
            height: 56px;
            object-fit: cover;
            border-radius: 6px;
        }

        .status-badge {
            display: inline-flex;
            align-items: center;
            padding: 2px 10px;
            border-radius: 999px;
            font-size: 11px;
            font-weight: 600;
            white-space: nowrap;
        }

        .status-public {
            background: rgba(16, 185, 129, 0.12);
            color: #6ee7b7;
        }

        .status-private {
            background: rgba(234, 179, 8, 0.12);
            color: #facc15;
        }

        .status-hidden {
            background: #374151;
            color: #e5e7eb;
        }

        .action-buttons {
            display: flex;
            gap: 8px;
        }

        .icon-btn {
            padding: 6px;
            border-radius: 6px;
            color: #9ca3af;
            transition: background 0.15s ease, color 0.15s ease;
        }

        .icon-btn .material-symbols-outlined {
            font-size: 20px;
        }

        .icon-btn:hover {
            background: #111827;
            color: #f9fafb;
        }

        .icon-btn.delete {
            color: #f97373;
        }

        .icon-btn.delete:hover {
            background: rgba(248, 113, 113, 0.15);
            color: #fecaca;
        }

        /* Pagination */

        .table-footer {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 12px 16px;
            border-top: 1px solid #1f2933;
            background: #1C1616;
            flex-wrap: wrap;
            gap: 8px;
        }

        .table-summary {
            font-size: 13px;
            color: #9ca3af;
        }

        .table-summary span {
            color: #f9fafb;
            font-weight: 600;
        }

        .pagination {
            display: inline-flex;
            align-items: center;
            list-style: none;
        }

        .pagination li a {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 0 12px;
            height: 32px;
            border: 1px solid #374151;
            font-size: 13px;
            color: #9ca3af;
            background: #1C1616;
        }

        .pagination li:first-child a {
            border-top-left-radius: 6px;
            border-bottom-left-radius: 6px;
        }

        .pagination li:last-child a {
            border-top-right-radius: 6px;
            border-bottom-right-radius: 6px;
        }

        .pagination li a:hover {
            background: #111827;
            color: #f9fafb;
        }

        .pagination li.active a {
            background: rgba(230, 10, 21, 0.15);
            border-color: var(--primary);
            color: #fff;
        }

        /* Responsive nhỏ hơn 768px */

        @media (max-width: 767px) {
            .sidebar {
                display: none; /* nếu cần responsive sidebar thì sau này thêm JS, hiện tại ẩn đi cho đơn giản */
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
<div class="app-wrapper">

    <!-- SIDEBAR -->
    <aside class="sidebar">
        <div class="sidebar-inner">
            <div class="sidebar-logo-row">
                <div class="sidebar-logo-box">
                    <span class="material-symbols-outlined">movie</span>
                </div>
                <h1 class="sidebar-title">MovieWeb</h1>
            </div>

            <div class="sidebar-nav-wrapper">
                <nav class="sidebar-nav">
                    <a href="#" class="sidebar-link">
                        <span class="material-symbols-outlined">dashboard</span>
                        <p>Dashboard</p>
                    </a>
                    <a href="#" class="sidebar-link active">
                        <span class="material-symbols-outlined">movie</span>
                        <p>Videos</p>
                    </a>
                    <a href="#" class="sidebar-link">
                        <span class="material-symbols-outlined">group</span>
                        <p>Users</p>
                    </a>
                    <a href="#" class="sidebar-link">
                        <span class="material-symbols-outlined">sell</span>
                        <p>Categories</p>
                    </a>
                    <a href="#" class="sidebar-link">
                        <span class="material-symbols-outlined">chat</span>
                        <p>Comments</p>
                    </a>
                </nav>
            </div>

            <div class="sidebar-footer">
                <div class="sidebar-user-row">
                    <div class="sidebar-user-avatar"
                         style="background-image:url('https://lh3.googleusercontent.com/aida-public/AB6AXuCloo9UJ_XA_-407Si99ZKp22I5OvnOLQDsriAQ59ZeYcfcT9u3iNIwtJvjzTEqXZr75_S8n8AVdpeyA6oBVwR-EsScguA97Xiyqp-Zjcf0dt8BM-5LhbV2gsVfvxXVFPAg8s__M4q5zTzfRGsca8G45waXn-HB9OFpcj9R_ubbtm0Y45ha3q6hifzHxh2SOcOALhaD-Dmn04UqXIIsYfKgsjUpXqoEbBTonNgA0Oja6mhRNTHhZ09U7ayKB6HHIKlfF4GBntThyQs');">
                    </div>
                    <div class="sidebar-user-info">
                        <span class="sidebar-user-name">Admin</span>
                        <span class="sidebar-user-email">admin@movie-web.com</span>
                    </div>
                </div>

                <a href="#" class="sidebar-footer-link">
                    <span class="material-symbols-outlined">settings</span>
                    <p>Settings</p>
                </a>
                <a href="#" class="sidebar-footer-link logout">
                    <span class="material-symbols-outlined">logout</span>
                    <p>Logout</p>
                </a>
            </div>
        </div>
    </aside>

    <!-- MAIN -->
    <main class="main">
        <div class="main-inner">

            <!-- Header -->
            <div class="page-header">
                <div class="page-title-block">
                    <h2 class="page-title">Quản lý Video</h2>
                    <p class="page-subtitle">
                        Thêm, chỉnh sửa và xóa các video trên nền tảng.
                    </p>
                </div>

                <button class="primary-btn">
                    <span class="material-symbols-outlined">add</span>
                    <span>Thêm Video Mới</span>
                </button>
            </div>

            <!-- Toolbar -->
            <div class="toolbar">
                <div class="toolbar-row">
                    <div class="toolbar-search-wrapper">
                        <div class="search-input-wrapper">
                            <div class="search-icon-box">
                                <span class="material-symbols-outlined">search</span>
                            </div>
                            <input type="text" class="search-input"
                                   placeholder="Tìm kiếm video theo tên hoặc ID...">
                        </div>
                    </div>

                    <div class="toolbar-filters">
                        <button class="filter-btn">
                            <span>Tất cả trạng thái</span>
                            <span class="material-symbols-outlined">expand_more</span>
                        </button>
                        <button class="filter-btn">
                            <span>Tất cả danh mục</span>
                            <span class="material-symbols-outlined">expand_more</span>
                        </button>
                    </div>
                </div>
            </div>

            <!-- Table -->
            <div class="table-card">
                <div class="table-wrapper">
                    <table class="video-table">
                        <thead>
                        <tr>
                            <th class="checkbox-cell">
                                <input type="checkbox" class="checkbox-input" id="checkbox-all">
                            </th>
                            <th>Thumbnail</th>
                            <th>Tên Video</th>
                            <th>Danh Mục</th>
                            <th>Ngày Đăng</th>
                            <th>Trạng Thái</th>
                            <th>Hành Động</th>
                        </tr>
                        </thead>
                        <tbody>
                        <!-- Row 1 -->
                        <tr>
                            <td class="checkbox-cell">
                                <input type="checkbox" class="checkbox-input" id="checkbox-table-1">
                            </td>
                            <td>
                                <img class="thumb-img"
                                     src="https://lh3.googleusercontent.com/aida-public/AB6AXuDO48LkCF603nPC-xs71IICLgGkIjApLA8yiG-rAM5GlnFOwJx8VoW59Z_SN_hAzY0AhNwJqzZ4O6_bo2RpUARYc69AOXOr0_RGBDz76DOWglpBpF59YrotCyUgz0p-5yF5vl6r-Xwb2YcQhHkPkn3o4_jzxEeAH6NylTSHVXlDS3LzYQDqemtT4cItw5jrgGwC3eromUlEC_a2Ynrec3A1ieZRVdkUvHbRStCu9I8bhGVDQJGdwSGre08bRca5lbqO6IlUFZ1zlQ8"
                                     alt="Action movie thumbnail">
                            </td>
                            <td>Mission Impossible: Rogue Nation</td>
                            <td>Hành động</td>
                            <td>20/07/2023</td>
                            <td>
                                <span class="status-badge status-public">Công khai</span>
                            </td>
                            <td>
                                <div class="action-buttons">
                                    <button class="icon-btn">
                                        <span class="material-symbols-outlined">edit</span>
                                    </button>
                                    <button class="icon-btn delete">
                                        <span class="material-symbols-outlined">delete</span>
                                    </button>
                                </div>
                            </td>
                        </tr>

                        <!-- Row 2 -->
                        <tr>
                            <td class="checkbox-cell">
                                <input type="checkbox" class="checkbox-input" id="checkbox-table-2">
                            </td>
                            <td>
                                <img class="thumb-img"
                                     src="https://lh3.googleusercontent.com/aida-public/AB6AXuDfWoVf8azMoVbyqwdwvgzdMJP1WRQFFUPjX8naR84lUB7BhVdXXcxIqwhtw70s8kbRSxyLDepNpgAhN_dDT5PPyf_IjoPGomaA83kCkSMefHBV1HG3nE5hs4-PqxN1_oMPHJVBymJ--OQARE_MR7CUuEZzjIaKobLos47Jqp2Em-toGmY3TxrkmGKAx27rJ4nB04h-2FM7OpHaFFnk02UZ8UknUKF2fiHRdmmigoSS9nbXEZGaxxRWHzAZl9tgou_Q6ZRjGg6veAA"
                                     alt="Sci-fi movie thumbnail">
                            </td>
                            <td>The Matrix Resurrections</td>
                            <td>Viễn tưởng</td>
                            <td>15/06/2023</td>
                            <td>
                                <span class="status-badge status-private">Riêng tư</span>
                            </td>
                            <td>
                                <div class="action-buttons">
                                    <button class="icon-btn">
                                        <span class="material-symbols-outlined">edit</span>
                                    </button>
                                    <button class="icon-btn delete">
                                        <span class="material-symbols-outlined">delete</span>
                                    </button>
                                </div>
                            </td>
                        </tr>

                        <!-- Row 3 -->
                        <tr>
                            <td class="checkbox-cell">
                                <input type="checkbox" class="checkbox-input" id="checkbox-table-3">
                            </td>
                            <td>
                                <img class="thumb-img"
                                     src="https://lh3.googleusercontent.com/aida-public/AB6AXuBDcYh7hUwu-MNzA_qfUMfPViaMJzhDJXiFa-pRAZArSo5gxwx5bkBXXJHSvWXz28msLjRqQVXRAiCbhe4Guez3NVBJmsYte_AtMXdiLkTziASrImnIeXDde_-O4wfM4J9-sDSvF0DlTrcJ1DDULXnBhtrHRxieIqPE_tUmKBCMvgiriu-rf8tu6dxVODSJ6ext0cPKD7PnxTTEhshsLtRZqO4eAVxElhezxOQ5bAbfCUt4NfJY4KP7K5P0HhdVQMe2J7oLZ9yu0cM"
                                     alt="Comedy movie thumbnail">
                            </td>
                            <td>The Grand Budapest Hotel</td>
                            <td>Hài hước</td>
                            <td>01/05/2023</td>
                            <td>
                                <span class="status-badge status-hidden">Đã ẩn</span>
                            </td>
                            <td>
                                <div class="action-buttons">
                                    <button class="icon-btn">
                                        <span class="material-symbols-outlined">edit</span>
                                    </button>
                                    <button class="icon-btn delete">
                                        <span class="material-symbols-outlined">delete</span>
                                    </button>
                                </div>
                            </td>
                        </tr>

                        </tbody>
                    </table>
                </div>

                <!-- Pagination -->
                <div class="table-footer">
                    <div class="table-summary">
                        Showing <span>1-3</span> of <span>100</span>
                    </div>
                    <ul class="pagination">
                        <li><a href="#">Previous</a></li>
                        <li><a href="#">1</a></li>
                        <li class="active"><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">Next</a></li>
                    </ul>
                </div>
            </div>

        </div>
    </main>
</div>
</body>
</html>
