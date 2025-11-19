<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Báo cáo: Người dùng yêu thích Video</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Font & Icon -->
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:ital,wght@0,200..800;1,200..800&display=swap" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet"/>

    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        :root {
            --primary: #e60a15;
            --background-dark: #181111;
            --surface-dark: #221011;
            --subtle-dark: #392829;
            --text-main: #ffffff;
            --text-subtle: #ba9c9d;
            --border-subtle: rgba(255, 255, 255, 0.1);
        }

        body {
            font-family: "Plus Jakarta Sans", "Noto Sans", sans-serif;
            background-color: var(--background-dark);
            color: var(--text-main);
        }

        .material-symbols-outlined {
            font-variation-settings:
            'FILL' 0,
            'wght' 400,
            'GRAD' 0,
            'opsz' 24;
        }

        .material-symbols-outlined.fill {
            font-variation-settings: 'FILL' 1;
        }

        .app {
            display: flex;
            min-height: 100vh;
            width: 100%;
        }

        /* Sidebar */
        .sidebar {
            width: 260px;
            background-color: var(--background-dark);
            border-right: 1px solid var(--border-subtle);
            padding: 16px;
            display: flex;
            flex-direction: column;
            gap: 16px;
        }

        .sidebar-top {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .sidebar-avatar {
            width: 40px;
            height: 40px;
            border-radius: 999px;
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

        .sidebar-user-name {
            font-size: 14px;
            font-weight: 500;
        }

        .sidebar-user-email {
            font-size: 13px;
            color: var(--text-subtle);
        }

        .sidebar-nav {
            display: flex;
            flex-direction: column;
            gap: 4px;
            margin-top: 10px;
        }

        .sidebar-link {
            display: flex;
            align-items: center;
            gap: 8px;
            padding: 8px 12px;
            border-radius: 8px;
            font-size: 13px;
            color: var(--text-main);
            text-decoration: none;
            transition: background-color 0.2s ease;
        }

        .sidebar-link span.material-symbols-outlined {
            font-size: 20px;
        }

        .sidebar-link:hover {
            background-color: var(--subtle-dark);
        }

        .sidebar-link.active {
            background-color: var(--subtle-dark);
        }

        /* Main */
        .main {
            flex: 1;
            display: flex;
            flex-direction: column;
        }

        .content-grid {
            display: flex;
            flex-direction: column;
            height: 100%;
            min-height: 100vh;
        }

        @media (min-width: 992px) {
            .content-grid {
                flex-direction: row;
            }
        }

        /* Left panel (video list + filter) */
        .left-panel {
            background-color: var(--surface-dark);
            border-right: 1px solid var(--border-subtle);
            display: flex;
            flex-direction: column;
            width: 100%;
        }

        @media (min-width: 992px) {
            .left-panel {
                width: 40%;
                max-width: 520px;
            }
        }

        @media (min-width: 1200px) {
            .left-panel {
                width: 40%;
            }
        }

        .left-header {
            padding: 16px;
            border-bottom: 1px solid var(--border-subtle);
        }

        .left-title {
            font-size: 20px;
            font-weight: 700;
        }

        .left-subtitle {
            font-size: 13px;
            margin-top: 4px;
            color: var(--text-subtle);
        }

        .left-controls {
            padding: 16px;
            border-bottom: 1px solid transparent;
        }

        .search-wrapper {
            margin-bottom: 12px;
        }

        .search-input-wrapper {
            display: flex;
            height: 44px;
            border-radius: 8px;
            overflow: hidden;
        }

        .search-icon-box {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 0 12px;
            background-color: var(--subtle-dark);
            color: var(--text-subtle);
        }

        .search-input {
            flex: 1;
            border: none;
            outline: none;
            padding: 0 12px;
            background-color: var(--subtle-dark);
            color: var(--text-main);
            font-size: 14px;
        }

        .search-input::placeholder {
            color: var(--text-subtle);
        }

        .chip-row {
            display: flex;
            gap: 8px;
            overflow-x: auto;
            padding-top: 4px;
        }

        .chip {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            height: 32px;
            padding: 0 14px;
            border-radius: 8px;
            font-size: 13px;
            white-space: nowrap;
            border: none;
            outline: none;
            cursor: pointer;
            background-color: var(--subtle-dark);
            color: var(--text-main);
            transition: background-color 0.2s ease;
        }

        .chip-primary {
            background-color: var(--primary);
        }

        .chip:hover {
            background-color: rgba(230, 10, 21, 0.5);
        }

        .video-list {
            flex: 1;
            overflow-y: auto;
            padding: 0 8px 8px;
        }

        .video-item {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 12px;
            padding: 10px 12px;
            border-radius: 8px;
            cursor: pointer;
        }

        .video-item:hover {
            background-color: rgba(57, 40, 41, 0.8);
        }

        .video-item.selected {
            background-color: rgba(230, 10, 21, 0.2);
            border-left: 4px solid var(--primary);
        }

        .video-item-left {
            display: flex;
            align-items: center;
            gap: 12px;
            min-width: 0;
        }

        .video-thumb {
            width: 96px;
            height: 56px;
            border-radius: 8px;
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            flex-shrink: 0;
        }

        .video-text {
            display: flex;
            flex-direction: column;
            justify-content: center;
            gap: 2px;
            min-width: 0;
        }

        .video-title {
            font-size: 14px;
            font-weight: 500;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        .video-meta {
            font-size: 13px;
            color: var(--text-subtle);
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        .video-fav {
            display: flex;
            align-items: center;
            gap: 4px;
            font-size: 14px;
        }

        .video-fav-icon {
            font-size: 16px;
        }

        /* Right panel */
        .right-panel {
            flex: 1;
            display: flex;
            flex-direction: column;
            width: 100%;
            background-color: var(--background-dark);
        }

        .right-header {
            padding: 16px 24px;
            border-bottom: 1px solid var(--border-subtle);
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 12px;
        }

        .right-header-title {
            font-size: 16px;
            font-weight: 700;
        }

        .right-header-subtitle {
            font-size: 14px;
            color: var(--text-subtle);
        }

        .btn-primary {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 6px;
            height: 40px;
            padding: 0 16px;
            border-radius: 8px;
            border: none;
            outline: none;
            cursor: pointer;
            background-color: var(--primary);
            color: #fff;
            font-size: 14px;
            font-weight: 500;
            transition: background-color 0.2s ease;
        }

        .btn-primary:hover {
            background-color: #c10913;
        }

        .btn-primary span.material-symbols-outlined {
            font-size: 18px;
        }

        .table-wrapper {
            flex: 1;
            overflow-x: auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            min-width: 600px;
        }

        thead {
            background-color: var(--surface-dark);
        }

        thead th {
            font-size: 12px;
            text-transform: uppercase;
            color: var(--text-subtle);
            text-align: left;
            padding: 10px 24px;
        }

        tbody tr {
            border-bottom: 1px solid var(--border-subtle);
            transition: background-color 0.2s ease;
        }

        tbody tr:hover {
            background-color: rgba(57, 40, 41, 0.5);
        }

        tbody td,
        tbody th {
            padding: 12px 24px;
            font-size: 14px;
        }

        tbody th {
            font-weight: 500;
        }

        .user-cell {
            display: flex;
            align-items: center;
            gap: 12px;
            white-space: nowrap;
        }

        .user-avatar {
            width: 40px;
            height: 40px;
            border-radius: 999px;
            object-fit: cover;
            flex-shrink: 0;
        }

        .user-name {
            font-size: 14px;
        }

        .user-email,
        .cell-subtle {
            color: var(--text-subtle);
            font-size: 14px;
        }

        .pagination {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 12px 16px 16px;
            border-top: 1px solid var(--border-subtle);
            font-size: 13px;
        }

        .pagination span strong {
            color: var(--text-main);
        }

        .pagination-controls {
            display: inline-flex;
            gap: 6px;
        }

        .btn-page {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            height: 32px;
            padding: 0 12px;
            border-radius: 8px;
            border: none;
            background-color: var(--subtle-dark);
            color: var(--text-main);
            font-size: 13px;
            cursor: pointer;
            gap: 4px;
            transition: background-color 0.2s ease;
        }

        .btn-page:hover {
            background-color: rgba(230, 10, 21, 0.5);
        }

        .btn-page span.material-symbols-outlined {
            font-size: 16px;
        }

        @media (max-width: 768px) {
            .sidebar {
                display: none; /* nếu muốn ẩn sidebar trên mobile */
            }
            .main {
                width: 100%;
            }
            .left-panel {
                width: 100%;
                max-width: none;
            }
            .right-header {
                flex-direction: column;
                align-items: flex-start;
            }
            .btn-primary {
                width: 100%;
                justify-content: center;
            }
            thead {
                font-size: 11px;
            }
        }
    </style>
</head>
<body>
<div class="app">
    <!-- Sidebar -->
    <aside class="sidebar">
        <div>
            <div class="sidebar-top">
                <div class="sidebar-avatar"
                     style='background-image:url("https://lh3.googleusercontent.com/aida-public/AB6AXuDX4TlxICPOZDzGljh0gktOsqRK-Dp4sCKU68NKt2yCXVLI9R8DUhSJltNITt_b-KFQ0ZKONYkkDhOSQ6t3L7TapQsiXN19MSmRLUDFtajjVkbMka1Tl0XyEHbegf0dveRBzWv_U9264wcnAsGIy8AdQFeJJ6aNwAXmcVnWq-4-zTyoOz4U0bm0i6KLWdKEEq1uYoATYXMIPZsn1Q3uzkN4R9hvuxDRECg93xWy_Un6UtmfCThGRHH9yKowZ50Ea6TnpCD1sl0I-Dg");'>
                </div>
                <div>
                    <div class="sidebar-user-name">Admin</div>
                    <div class="sidebar-user-email">admin@movieweb.com</div>
                </div>
            </div>

            <nav class="sidebar-nav">
                <a href="#" class="sidebar-link">
                    <span class="material-symbols-outlined">dashboard</span>
                    <p>Dashboard</p>
                </a>
                <a href="#" class="sidebar-link">
                    <span class="material-symbols-outlined">folder_managed</span>
                    <p>Content Management</p>
                </a>
                <a href="#" class="sidebar-link">
                    <span class="material-symbols-outlined">group</span>
                    <p>User Management</p>
                </a>
                <a href="#" class="sidebar-link active">
                    <span class="material-symbols-outlined fill">bar_chart</span>
                    <p>Reports</p>
                </a>
                <a href="#" class="sidebar-link">
                    <span class="material-symbols-outlined">settings</span>
                    <p>Settings</p>
                </a>
            </nav>
        </div>
    </aside>

    <!-- Main -->
    <main class="main">
        <div class="content-grid">
            <!-- Left: Video filter & list -->
            <section class="left-panel">
                <div class="left-header">
                    <h2 class="left-title">Báo cáo: Người dùng yêu thích Video</h2>
                    <p class="left-subtitle">Chọn một video từ danh sách bên dưới để xem báo cáo.</p>
                </div>

                <div class="left-controls">
                    <div class="search-wrapper">
                        <div class="search-input-wrapper">
                            <div class="search-icon-box">
                                <span class="material-symbols-outlined">search</span>
                            </div>
                            <input type="text"
                                   class="search-input"
                                   placeholder="Tìm kiếm theo tên video...">
                        </div>
                    </div>

                    <div class="chip-row">
                        <button class="chip chip-primary">Tất cả</button>
                        <button class="chip">Phim Lẻ</button>
                        <button class="chip">Phim Bộ</button>
                        <button class="chip">Hành Động</button>
                        <button class="chip">Hài</button>
                    </div>
                </div>

                <div class="video-list">
                    <!-- Selected item -->
                    <div class="video-item selected">
                        <div class="video-item-left">
                            <div class="video-thumb"
                                 style='background-image:url("https://lh3.googleusercontent.com/aida-public/AB6AXuC2lx4feq5I6k5bAuUL-99mQJF1ifIrwtHvIJRANTukGTbpuXRhVQpzO3jvQ59g4E_YSvNeJAlRAVwNAqDWbOdti-FUcpP7V8eAp1mbTHjZF-_u0QXeFTo18elbIH21e7FB-LpLrET9ibfm2q-1a-U0P4MKM-C2SmOAkLqTIiW6CoajFGjVnPxDwDnf-vvVncJgermsy78rxKBcmDG1c9rCiw6fNmvLXPtmH9NN1B1oixvuMvWZ_o1SmUMb5gkIXiVeQ6RcpERm59s");'>
                            </div>
                            <div class="video-text">
                                <p class="video-title">Blade Runner 2049</p>
                                <p class="video-meta">Phim Lẻ, Khoa học viễn tưởng</p>
                            </div>
                        </div>
                        <div class="video-fav">
                            <span class="material-symbols-outlined video-fav-icon">favorite</span>
                            <span>2,450</span>
                        </div>
                    </div>

                    <!-- Others -->
                    <div class="video-item">
                        <div class="video-item-left">
                            <div class="video-thumb"
                                 style='background-image:url("https://lh3.googleusercontent.com/aida-public/AB6AXuASc-FVUNJG8Vmk38LiLhJEN3kgDi2JLyUzmDh7V95BM7e6fUJaHT_AsWaMmrKqeloc9wUJfYqQMc1n2JZ7Yk6nIdBVr0yLQ7GvhyBryoDmCWGGKla3156nVUyPnsLog7lkeJTjHTd5AJEZtB6WiJSil3KoXBDkl2BvQ8CHgIlCyTmpFFOyfPAGHcwpME1gSGT0Rc0PQ-cL03FBhlfwfAAbOs1DhQusMi1aHdEhgiWbxJgLXa9axLFg8HdFUkF6CQa_nIeaRiQRy6s");'>
                            </div>
                            <div class="video-text">
                                <p class="video-title">Inception</p>
                                <p class="video-meta">Phim Lẻ, Hành Động</p>
                            </div>
                        </div>
                        <div class="video-fav">
                            <span class="material-symbols-outlined video-fav-icon">favorite</span>
                            <span>1,832</span>
                        </div>
                    </div>

                    <div class="video-item">
                        <div class="video-item-left">
                            <div class="video-thumb"
                                 style='background-image:url("https://lh3.googleusercontent.com/aida-public/AB6AXuCCeVgl6nvAyFaYNieueUb0MWjDaHLeEgmg0Ch3-p3084dJ5un0RTfQFL34gva1f1Ph0DVNgD-jrcmdf799mcsnO120Gb24X9xd-iNSz3Fr_EkHOex2XesDl39Rf5y8rq5bw8y0VgAcCgPc-OKX_7BiaHRVlrDFQ6a82FztcNsJOdCS5QR5cKtctCwi6eAEN_N6vHOTySSn8IQq9dTy4hAwhQTMSwbQynAO2rBnQu08-pahsz8bdjdAAnuaXFUdkwcBFmiMA5duICs");'>
                            </div>
                            <div class="video-text">
                                <p class="video-title">Game of Thrones</p>
                                <p class="video-meta">Phim Bộ, Giả Tưởng</p>
                            </div>
                        </div>
                        <div class="video-fav">
                            <span class="material-symbols-outlined video-fav-icon">favorite</span>
                            <span>5,120</span>
                        </div>
                    </div>

                    <div class="video-item">
                        <div class="video-item-left">
                            <div class="video-thumb"
                                 style='background-image:url("https://lh3.googleusercontent.com/aida-public/AB6AXuDTFvketaP7T8QngQQ3MwTsl5yPQal-ckT3ioH5mdOjgOsgFtld0m611SOPLUOqXYpkUT5U3ob1XsaGC-H9RpblaS_QCHmnm_1dtSxVptuLBWaFfoovfBjc9QlG9vlJHaaVHSAan4q3_-3HsgbeYI4xXszGC_d93YS7TL0M1-dMwyYONJuco3AO8F81zZQUneQtcyJtPfAIxzmyq3sRyLRrePX5b_9XC4YzQNtIF5oYbHoB42DLzSNyF3YqdLOdJ2jdCUItCpeZS1s");'>
                            </div>
                            <div class="video-text">
                                <p class="video-title">Breaking Bad</p>
                                <p class="video-meta">Phim Bộ, Tội Phạm</p>
                            </div>
                        </div>
                        <div class="video-fav">
                            <span class="material-symbols-outlined video-fav-icon">favorite</span>
                            <span>4,990</span>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Right: Users table -->
            <section class="right-panel">
                <div class="right-header">
                    <div>
                        <div class="right-header-title">Danh sách người dùng đã yêu thích:</div>
                        <div class="right-header-subtitle">Blade Runner 2049</div>
                    </div>
                    <button class="btn-primary">
                        <span class="material-symbols-outlined">download</span>
                        Xuất báo cáo
                    </button>
                </div>

                <div class="table-wrapper">
                    <table>
                        <thead>
                        <tr>
                            <th>Tên người dùng</th>
                            <th>Email</th>
                            <th>Ngày tham gia</th>
                            <th>Ngày yêu thích</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th scope="row">
                                <div class="user-cell">
                                    <img class="user-avatar"
                                         src="https://lh3.googleusercontent.com/aida-public/AB6AXuBlI6Nvg-SXXdjfn5FSffCJW738SR22AFVssG8fzwat5MeYV67mn8yWWS0NtFxe-6Q8kvzsxEVELqdJ4p9az1YQSunJEsESmygjIFlXr_ke1Orbgm1xushVUbSlwTwLMT1Go9Dp7BCBR7hY3ityhPH-Nh-EGZ9L0DHOgTsaYtQaJdwB7RPHlcdvGjY-XWMqG8emMLXW33bVT6Uf-tkSk1tQpdKjKvCDTjGeUeBuUjwJwMJsWizPmf6PN6YQvMTOQ_OMxJvuJoxFjpE"
                                         alt="User avatar"/>
                                    <span class="user-name">John Doe</span>
                                </div>
                            </th>
                            <td class="cell-subtle">john.doe@example.com</td>
                            <td class="cell-subtle">2023-01-15</td>
                            <td class="cell-subtle">2024-05-10</td>
                        </tr>
                        <tr>
                            <th scope="row">
                                <div class="user-cell">
                                    <img class="user-avatar"
                                         src="https://lh3.googleusercontent.com/aida-public/AB6AXuD9SddpZN34w9rXy2riNis-HORTEYNJLAH1ZgXdaC4O7I9UQc2xzzGrIuQgmRvzF_doZeRkTwk0zvfFtzgKnelTiUanGbU9jHmATLT-NMPszNHX57hLIXKzIq7mIvpt969CCThzvn5FjOxz1rV-ZP6m7qH7TV1JKWhBgycudyg_Gi-MPEMQsjAF_RllItJ3gZcDtQDMsufDW7USEV_iAVHYw50--pBitY-rhpZohDDuNayY0uF4gXUa-M3K3W5iiWxjTFev7BSo0pc"
                                         alt="User avatar"/>
                                    <span class="user-name">Jane Smith</span>
                                </div>
                            </th>
                            <td class="cell-subtle">jane.smith@example.com</td>
                            <td class="cell-subtle">2022-11-20</td>
                            <td class="cell-subtle">2024-05-09</td>
                        </tr>
                        <tr>
                            <th scope="row">
                                <div class="user-cell">
                                    <img class="user-avatar"
                                         src="https://lh3.googleusercontent.com/aida-public/AB6AXuBp6q2x8hYkZZXolE0Gs5qgBIAy_Aq1l-UA4RbDhSiJLud8WbGKpbsJo4sjyXPQftje4ZKkuz0Sx0ySnhy6HwI0-M_BEE4dWH-QC7l0aGvPVg3UZZiUxWqQy-957Km_XkRx7hcX2fjZ85R7PPYZ7SxrEnpgI6qFPwREmSWz2qBZ-DAEpMjCURdLz8t6fGISqJ86MLpgVj6wOfqXrXhqH3Mlbv_b34fXpDfWdhPg8mgE87PfzfRcIk5B5WpCXN98-wRm3gF1oG25Guk"
                                         alt="User avatar"/>
                                    <span class="user-name">Robert Johnson</span>
                                </div>
                            </th>
                            <td class="cell-subtle">robert.j@example.com</td>
                            <td class="cell-subtle">2023-03-10</td>
                            <td class="cell-subtle">2024-05-08</td>
                        </tr>
                        <tr>
                            <th scope="row">
                                <div class="user-cell">
                                    <img class="user-avatar"
                                         src="https://lh3.googleusercontent.com/aida-public/AB6AXuAYsVTJe6ZVUFnLdFsTPMfP88GBv4ySR77-8wjFlXq_9EYaW_6o3hJG_rTSldH-ioZO61FDLT-m72nwE1KPnS6mZQ4dbVhm4FmX7wnG8Pu_fBeoeGKXm-9W5VdEXttMsYKcqOxjqPAoRWkRbVnT9KpXZaGEhQHx9x_nJjcS39uigmOQeZZ9IntZDZJbVDTIedXepkLzMs9VmysqoWXfgDwziGGGE5dZoKp9JAOLitZEuZcpMDBvjMCrN_7ASgvo5JFHHFwZkjGJ5c8"
                                         alt="User avatar"/>
                                    <span class="user-name">Emily Davis</span>
                                </div>
                            </th>
                            <td class="cell-subtle">emily.d@example.com</td>
                            <td class="cell-subtle">2023-08-05</td>
                            <td class="cell-subtle">2024-05-07</td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <div class="pagination">
                    <span>Hiển thị <strong>1-4</strong> trên <strong>2,450</strong></span>
                    <div class="pagination-controls">
                        <button class="btn-page">
                            <span class="material-symbols-outlined">chevron_left</span>
                            <span>Trước</span>
                        </button>
                        <button class="btn-page">
                            <span>Sau</span>
                            <span class="material-symbols-outlined">chevron_right</span>
                        </button>
                    </div>
                </div>
            </section>
        </div>
    </main>
</div>
</body>
</html>
