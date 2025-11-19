<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Quản lý Người dùng - Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <!-- Font & Icons -->
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;900&display=swap" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet"/>

    <style>
        :root {
            --primary: #197fe6;
            --bg-light: #f6f7f8;
            --bg-dark: #111921;
            --text-main: #111827;
            --text-muted: #6b7280;
            --border-color: #e5e7eb;
            --card-bg: #ffffff;
        }

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: "Inter", system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
            background-color: var(--bg-light);
            color: var(--text-main);
        }

        .page-root {
            min-height: 100vh;
            display: flex;
            flex-direction: row;
        }

        /* Sidebar */
        .sidebar {
            width: 260px;
            min-height: 700px;
            background-color: #ffffff;
            border-right: 1px solid var(--border-color);
            padding: 16px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            position: sticky;
            top: 0;
        }

        .sidebar-top {
            display: flex;
            flex-direction: column;
            gap: 16px;
        }

        .sidebar-brand {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 0 12px;
        }

        .sidebar-brand-icon {
            font-size: 32px;
            color: var(--primary);
        }

        .sidebar-brand-title {
            font-size: 20px;
            font-weight: 700;
            color: #111827;
        }

        .sidebar-menu {
            margin-top: 16px;
            display: flex;
            flex-direction: column;
            gap: 4px;
        }

        .sidebar-item {
            display: flex;
            align-items: center;
            gap: 12px;
            padding: 8px 12px;
            border-radius: 8px;
            font-size: 14px;
            font-weight: 500;
            color: #374151;
            text-decoration: none;
        }

        .sidebar-item span.material-symbols-outlined {
            font-size: 22px;
        }

        .sidebar-item.active {
            background-color: rgba(25, 127, 230, 0.1);
            color: var(--primary);
            font-weight: 700;
        }

        .sidebar-item.active .material-symbols-outlined {
            color: var(--primary);
        }

        .sidebar-item:hover {
            background-color: #f3f4f6;
        }

        .sidebar-bottom {
            display: flex;
            flex-direction: column;
            gap: 4px;
        }

        .sidebar-bottom .sidebar-item {
            color: #374151;
        }

        /* Main layout */
        .main {
            flex: 1;
            padding: 32px;
            display: flex;
            justify-content: center;
        }

        .main-inner {
            width: 100%;
            max-width: 1120px;
            display: flex;
            flex-direction: column;
            gap: 24px;
        }

        /* Page header */
        .page-header {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            gap: 16px;
            align-items: center;
        }

        .page-title-block {
            min-width: 280px;
            display: flex;
            flex-direction: column;
            gap: 6px;
        }

        .page-title {
            font-size: 32px;
            font-weight: 900;
            line-height: 1.1;
            letter-spacing: -0.03em;
            color: #111827;
        }

        .page-subtitle {
            font-size: 14px;
            color: var(--text-muted);
        }

        .avatar-large {
            width: 48px;
            height: 48px;
            border-radius: 999px;
            background-position: center;
            background-size: cover;
            background-repeat: no-repeat;
        }

        /* Toolbar */
        .toolbar {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            gap: 16px;
            align-items: center;
            padding: 8px 0;
        }

        .toolbar-left {
            display: flex;
            flex: 1;
            min-width: 260px;
            gap: 8px;
            align-items: center;
        }

        .search-wrapper {
            position: relative;
            width: 100%;
            max-width: 280px;
        }

        .search-wrapper .search-icon {
            position: absolute;
            left: 10px;
            top: 50%;
            transform: translateY(-50%);
            color: #9ca3af;
            font-size: 20px;
            pointer-events: none;
        }

        .search-input {
            width: 100%;
            height: 40px;
            padding: 8px 10px 8px 34px;
            border-radius: 8px;
            border: 1px solid var(--border-color);
            background-color: #ffffff;
            font-size: 14px;
            color: var(--text-main);
        }

        .search-input::placeholder {
            color: #9ca3af;
        }

        .toolbar-btn-icon {
            width: 40px;
            height: 40px;
            border-radius: 8px;
            border: 1px solid var(--border-color);
            background-color: #ffffff;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #4b5563;
            cursor: pointer;
        }

        .toolbar-btn-icon:hover {
            background-color: #f3f4f6;
        }

        .toolbar-btn-primary {
            display: flex;
            align-items: center;
            gap: 6px;
            height: 40px;
            padding: 0 16px;
            border-radius: 8px;
            border: none;
            background-color: var(--primary);
            color: #ffffff;
            font-size: 14px;
            font-weight: 700;
            cursor: pointer;
        }

        .toolbar-btn-primary .material-symbols-outlined {
            font-size: 18px;
        }

        .toolbar-btn-primary:hover {
            background-color: #1664b8;
        }

        /* Table wrapper */
        .table-wrapper {
            padding: 12px 0 0;
        }

        .table-card {
            border-radius: 12px;
            border: 1px solid var(--border-color);
            overflow: hidden;
            background-color: #ffffff;
        }

        table {
            border-collapse: collapse;
            width: 100%;
        }

        thead {
            background-color: #f9fafb;
        }

        th, td {
            padding: 12px 24px;
            text-align: left;
        }

        th {
            font-size: 11px;
            font-weight: 600;
            text-transform: uppercase;
            color: #6b7280;
            letter-spacing: 0.05em;
        }

        tbody tr {
            border-top: 1px solid #e5e7eb;
            transition: background-color 0.15s ease;
        }

        tbody tr:hover {
            background-color: #f9fafb;
        }

        /* User cell */
        .user-cell {
            display: flex;
            align-items: center;
        }

        .user-avatar {
            width: 40px;
            height: 40px;
            border-radius: 999px;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            flex-shrink: 0;
        }

        .user-info {
            margin-left: 12px;
        }

        .user-name {
            font-size: 14px;
            font-weight: 600;
            color: #111827;
        }

        .user-email {
            font-size: 13px;
            color: var(--text-muted);
        }

        /* Badges */
        .badge {
            display: inline-flex;
            align-items: center;
            padding: 2px 8px;
            border-radius: 999px;
            font-size: 11px;
            font-weight: 600;
            line-height: 1.3;
        }

        .badge-role-admin {
            background-color: #dbeafe;
            color: #1d4ed8;
        }

        .badge-role-user {
            background-color: #f3f4f6;
            color: #374151;
        }

        .badge-status-active {
            background-color: #dcfce7;
            color: #166534;
        }

        .badge-status-disabled {
            background-color: #fee2e2;
            color: #b91c1c;
        }

        /* Action buttons */
        .actions {
            display: flex;
            gap: 8px;
        }

        .action-btn {
            border: none;
            background: none;
            padding: 0;
            cursor: pointer;
            color: #6b7280;
        }

        .action-btn .material-symbols-outlined {
            font-size: 20px;
        }

        .action-btn.edit:hover {
            color: var(--primary);
        }

        .action-btn.disable:hover {
            color: #dc2626;
        }

        .action-btn.enable:hover {
            color: #16a34a;
        }

        /* Pagination */
        .pagination {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 16px;
            gap: 4px;
        }

        .page-btn,
        .page-arrow {
            width: 40px;
            height: 40px;
            border-radius: 999px;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 14px;
            text-decoration: none;
            border: none;
            background: none;
            cursor: pointer;
        }

        .page-btn-active {
            background-color: var(--primary);
            color: #ffffff;
            font-weight: 700;
        }

        .page-btn-normal {
            color: #374151;
        }

        .page-btn-normal:hover {
            background-color: #e5e7eb;
        }

        .page-arrow {
            color: #6b7280;
        }

        .page-arrow:hover {
            color: var(--primary);
        }

        .page-dots {
            width: 40px;
            height: 40px;
            border-radius: 999px;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #9ca3af;
            font-size: 14px;
        }

        /* Responsive */
        @media (max-width: 900px) {
            .sidebar {
                display: none;
            }

            .main {
                padding: 20px;
            }

            th, td {
                padding: 10px 12px;
            }
        }

        @media (max-width: 640px) {
            .page-header {
                flex-direction: column;
                align-items: flex-start;
            }

            .toolbar {
                flex-direction: column;
                align-items: stretch;
            }

            .toolbar-left {
                width: 100%;
            }

            .toolbar-btn-primary {
                width: 100%;
                justify-content: center;
            }

            .table-card {
                border-radius: 0;
            }

            .main {
                padding: 16px;
            }
        }
    </style>
</head>
<body>
<div class="page-root">

    <!-- Sidebar -->
    <aside class="sidebar">
        <div class="sidebar-top">
            <div class="sidebar-brand">
                <span class="material-symbols-outlined sidebar-brand-icon">movie</span>
                <h1 class="sidebar-brand-title">MovieAdmin</h1>
            </div>

            <div class="sidebar-menu">
                <a href="#" class="sidebar-item">
                    <span class="material-symbols-outlined">dashboard</span>
                    <p>Dashboard</p>
                </a>
                <a href="#" class="sidebar-item">
                    <span class="material-symbols-outlined">theaters</span>
                    <p>Quản lý Phim</p>
                </a>
                <a href="#" class="sidebar-item active">
                    <span class="material-symbols-outlined">group</span>
                    <p>Quản lý Người dùng</p>
                </a>
            </div>
        </div>

        <div class="sidebar-bottom">
            <a href="#" class="sidebar-item">
                <span class="material-symbols-outlined">settings</span>
                <p>Cài đặt</p>
            </a>
            <a href="#" class="sidebar-item">
                <span class="material-symbols-outlined">logout</span>
                <p>Đăng xuất</p>
            </a>
        </div>
    </aside>

    <!-- Main -->
    <main class="main">
        <div class="main-inner">

            <!-- Page heading -->
            <div class="page-header">
                <div class="page-title-block">
                    <p class="page-title">Quản lý Người dùng</p>
                    <p class="page-subtitle">
                        Xem, chỉnh sửa, hoặc vô hiệu hóa tài khoản người dùng.
                    </p>
                </div>
                <div class="avatar-large"
                     style="background-image:url('https://lh3.googleusercontent.com/aida-public/AB6AXuDUjOUPRISf6eSB6_aAjjmGJ6dWZbnNL__cetQeHOHuE9lTrHbpvSFE8BY6twsxL9yxA47zxdOHx4_M-nCgK0nzlDkJvcUgvOrad6oOZKdrUDnpte2j0Ki9LYMgeBpk7NbOj47G0tZeoDTyMHNuw2IXzSRPMzP8SFfXJMQWsUHm6vRsHoGoeJDPezcz6s8C3j2N1sSqxwZRORkf1Rz4JGY5kdFR0bXMhGKQWnXT2XYHufXIRiYzQ6AYeQ8T-GnUS_4w_2CdRv_Xx8E');">
                </div>
            </div>

            <!-- Toolbar -->
            <div class="toolbar">
                <div class="toolbar-left">
                    <div class="search-wrapper">
                        <span class="material-symbols-outlined search-icon">search</span>
                        <input type="text" class="search-input"
                               placeholder="Tìm kiếm theo tên hoặc email...">
                    </div>
                    <button class="toolbar-btn-icon" type="button">
                        <span class="material-symbols-outlined">filter_list</span>
                    </button>
                    <button class="toolbar-btn-icon" type="button">
                        <span class="material-symbols-outlined">swap_vert</span>
                    </button>
                </div>
                <button class="toolbar-btn-primary" type="button">
                    <span class="material-symbols-outlined">add</span>
                    <span>Thêm người dùng mới</span>
                </button>
            </div>

            <!-- Table -->
            <div class="table-wrapper">
                <div class="table-card">
                    <table>
                        <thead>
                        <tr>
                            <th style="width:40%;">Tên Người Dùng</th>
                            <th>Vai Trò</th>
                            <th>Ngày Đăng Ký</th>
                            <th>Trạng Thái</th>
                            <th>Hành Động</th>
                        </tr>
                        </thead>
                        <tbody>
                        <!-- Row 1 -->
                        <tr>
                            <td>
                                <div class="user-cell">
                                    <div class="user-avatar"
                                         style="background-image:url('https://lh3.googleusercontent.com/aida-public/AB6AXuDnhgV3iyTgwHEj7vYI52l3oAYjb4Iqet8cuGYWbvF0aqldCKuxgt036gQFSN2Qw6V1_XvqNpcOhu6R4IKeeQf4aDS_zxFes-r_j2dNmBsWrkslHhw4kcTjCW4LellPQW9bp23VhXpkyTjCG-XbnFmptY437psWU9OaA82u8yMxZkvvmCCncym4N7UV8QmlZ7vxmtUB4t1ltgYYSWHRiqhoTaEtedLA9AZikrAu0A5s5VtwNo9n0HvwTFtU4PkBuCWB7tZIkOGVNG4');">
                                    </div>
                                    <div class="user-info">
                                        <div class="user-name">Nguyễn Văn A</div>
                                        <div class="user-email">nguyenvana@email.com</div>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <span class="badge badge-role-admin">Admin</span>
                            </td>
                            <td>
                                <span class="user-email">25/12/2023</span>
                            </td>
                            <td>
                                <span class="badge badge-status-active">Active</span>
                            </td>
                            <td>
                                <div class="actions">
                                    <button class="action-btn edit" type="button">
                                        <span class="material-symbols-outlined">edit</span>
                                    </button>
                                    <button class="action-btn disable" type="button">
                                        <span class="material-symbols-outlined">toggle_off</span>
                                    </button>
                                </div>
                            </td>
                        </tr>

                        <!-- Row 2 -->
                        <tr>
                            <td>
                                <div class="user-cell">
                                    <div class="user-avatar"
                                         style="background-image:url('https://lh3.googleusercontent.com/aida-public/AB6AXuBeWSlo1fLHV5Svtn6pkD04KJVWMzTk76zCkDA7koIN4wEi69qbFMTEaELLS37c3XruNH-Ojgh5Xk5ZH9CTCGC7SO86PHl0zzXHH4sVUt7Fra5-0CUsjDmdL2H4N2Y6F2WomTdtWZfFxk-c1yeQIYcPZPqQK3gOecDapLNzrd5-kPEX4d1eMHQXK2j876nWtFH-UEmhQy0otD2QULsGHgFsKJjBE5ceCjP-rctnQC0tTr13l3Uw2b2QwRsnNxMHpwakX7HTnbvHH-g');">
                                    </div>
                                    <div class="user-info">
                                        <div class="user-name">Trần Thị B</div>
                                        <div class="user-email">tranthib@email.com</div>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <span class="badge badge-role-user">User</span>
                            </td>
                            <td>
                                <span class="user-email">24/12/2023</span>
                            </td>
                            <td>
                                <span class="badge badge-status-active">Active</span>
                            </td>
                            <td>
                                <div class="actions">
                                    <button class="action-btn edit" type="button">
                                        <span class="material-symbols-outlined">edit</span>
                                    </button>
                                    <button class="action-btn disable" type="button">
                                        <span class="material-symbols-outlined">toggle_off</span>
                                    </button>
                                </div>
                            </td>
                        </tr>

                        <!-- Row 3 -->
                        <tr>
                            <td>
                                <div class="user-cell">
                                    <div class="user-avatar"
                                         style="background-image:url('https://lh3.googleusercontent.com/aida-public/AB6AXuDsqrSSPj78LxXGzKo2qYl53bvEtxTvilokyX9Ff_Uay4lftEXgHOjK8qlH6yvDvT7UH5Jn7z49pHBD1ybNWZpFLMgq5SaNq4PBOMD8urH0Z95kQjH3KKLE8vGUiKatFOvDyDMiCwb1vNn3J61u8wQ2DqH9fgh-AYwWpVzIxuvgU50RN02HoPhe7FisTLtTIhEdsDg4XgfGrBgwRFnCZjApXkktZm-1Eu651y3xJ4AGBYWQI5g35-dl8IND8z7KkDFFk6QJWulnki4');">
                                    </div>
                                    <div class="user-info">
                                        <div class="user-name">Lê Văn C</div>
                                        <div class="user-email">levanc@email.com</div>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <span class="badge badge-role-user">User</span>
                            </td>
                            <td>
                                <span class="user-email">22/12/2023</span>
                            </td>
                            <td>
                                <span class="badge badge-status-disabled">Disabled</span>
                            </td>
                            <td>
                                <div class="actions">
                                    <button class="action-btn edit" type="button">
                                        <span class="material-symbols-outlined">edit</span>
                                    </button>
                                    <button class="action-btn enable" type="button">
                                        <span class="material-symbols-outlined">toggle_on</span>
                                    </button>
                                </div>
                            </td>
                        </tr>

                        <!-- Row 4 -->
                        <tr>
                            <td>
                                <div class="user-cell">
                                    <div class="user-avatar"
                                         style="background-image:url('https://lh3.googleusercontent.com/aida-public/AB6AXuBE4YTzcDQLNVjqWSGqHbugeVXgiK3G9pg7g3Q99STvzMtjzU_YIQkB_g4thS0VzL_ix1oqAgrDwlcTrr7bnYQbbpx-pyAjKLFMvzBeLz_3STHS8WICVATRH2IacL71bW4ebxXczoJHsvhi8aFS-Mm0Tlh5RoZHEK4SSVDI8a-3dbXQWhfpGOx5E1F9CDj3qVmNoX5UKg8VnJ_C4YVJ37-Pk6IdDuYfHq0uLlRZno8Ru9qQgbP0-sNWy4WciNuCTJL5al_FNQJV8rs');">
                                    </div>
                                    <div class="user-info">
                                        <div class="user-name">Phạm Thị D</div>
                                        <div class="user-email">phamthid@email.com</div>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <span class="badge badge-role-user">User</span>
                            </td>
                            <td>
                                <span class="user-email">21/12/2023</span>
                            </td>
                            <td>
                                <span class="badge badge-status-active">Active</span>
                            </td>
                            <td>
                                <div class="actions">
                                    <button class="action-btn edit" type="button">
                                        <span class="material-symbols-outlined">edit</span>
                                    </button>
                                    <button class="action-btn disable" type="button">
                                        <span class="material-symbols-outlined">toggle_off</span>
                                    </button>
                                </div>
                            </td>
                        </tr>

                        </tbody>
                    </table>
                </div>
            </div>

            <!-- Pagination -->
            <div class="pagination">
                <button class="page-arrow" type="button">
                    <span class="material-symbols-outlined">chevron_left</span>
                </button>
                <button class="page-btn page-btn-active" type="button">1</button>
                <button class="page-btn page-btn-normal" type="button">2</button>
                <button class="page-btn page-btn-normal" type="button">3</button>
                <div class="page-dots">...</div>
                <button class="page-btn page-btn-normal" type="button">10</button>
                <button class="page-arrow" type="button">
                    <span class="material-symbols-outlined">chevron_right</span>
                </button>
            </div>

        </div>
    </main>
</div>
</body>
</html>
