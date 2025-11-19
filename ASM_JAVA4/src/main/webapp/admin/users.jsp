<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Quản lý Người dùng - Admin</title>

    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet"/>

    <!-- CSS chính của bạn -->
    <link rel="stylesheet" href="../layout/adminsytle.css">
</head>

<body>

<div class="app-wrapper">

    <!-- SIDEBAR -->
    <aside class="sidebar">

        <div class="sidebar-logo">
            <div class="sidebar-logo-icon">
                <span class="material-symbols-outlined" style="color:#fff;font-size:22px;">movie</span>
            </div>
            <h1 class="sidebar-logo-title">ASM</h1>
        </div>

        <div class="sidebar-menu">
            <a href="../admin/index.jsp">
                <span class="material-symbols-outlined">dashboard</span>
                <span>Bảng điều khiển</span>
            </a>

            <a href="videos.jsp">
                <span class="material-symbols-outlined">theaters</span>
                <span>Quản lý Phim</span>
            </a>

            <a class="active" href="#">
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

            <a class="sidebar-logout" href="#">
                <span class="material-symbols-outlined">logout</span>
                <span>Đăng xuất</span>
            </a>
        </div>
    </aside>

    <!-- MAIN CONTENT -->
    <main class="main">
        <div class="main-inner">

            <!-- HEADER -->
            <div class="page-header">
                <div class="page-title-block">
                    <p class="page-title">Quản lý Người dùng</p>
                    <p class="page-subtitle">Xem, chỉnh sửa hoặc vô hiệu hóa tài khoản người dùng.</p>
                </div>

                <div class="avatar-large"
                     style="background-image:url('https://lh3.googleusercontent.com/aida-public/AB6AXuDUjOUPRISf6eSB6_aAjjmGJ6dWZbnNL__cetQeHOHuE9lTrHbpvSFE8BY6twsxL9yxA47zxdOHx4_M-nCgK0nzlDkJvcUgvOrad6oOZKdrUDnpte2j0Ki9LYMgeBpk7NbOj47G0tZeoDTyMHNuw2IXzSRPMzP8SFfXJMQWsUHm6vRsHoGoeJDPezcz6s8C3j2N1sSqxwZRORkf1Rz4JGY5kdFR0bXMhGKQWnXT2XYHufXIRiYzQ6AYeQ8T-GnUS_4w_2CdRv_Xx8E');">
                </div>
            </div>

            <!-- TOOLBAR -->
<!-- TOOLBAR -->
<div class="toolbar">
    <div class="toolbar-row">

        <div class="toolbar-search-wrapper">
            <div class="search-input-wrapper">
                <div class="search-icon-box">
                    <span class="material-symbols-outlined">search</span>
                </div>
                <input type="text" class="search-input" placeholder="Tìm kiếm theo tên hoặc email...">
            </div>
        </div>

        <div class="toolbar-filters">
            <button class="filter-btn">
                <span class="material-symbols-outlined">filter_list</span>
                Lọc
            </button>

            <button class="filter-btn">
                <span class="material-symbols-outlined">swap_vert</span>
                Sắp xếp
            </button>
        </div>

        <!-- ⭐ NÚT THÊM NGƯỜI DÙNG MỚI ⭐ -->
        <button class="primary-btn" type="button" onclick="window.location.href='addUser.jsp'">
            <span class="material-symbols-outlined">add</span>
            <span>Thêm người dùng</span>
        </button>

    </div>
</div>


<!-- FORM THÊM NGƯỜI DÙNG -->
<div class="table-card" style="margin-bottom: 30px;">
    <div class="table-wrapper">

        <form class="user-form">

            <div class="form-row">
                <label>Họ và Tên</label>
                <input type="text" class="form-input" placeholder="Nhập họ tên người dùng...">
            </div>

            <div class="form-row">
                <label>Email</label>
                <input type="email" class="form-input" placeholder="Nhập email người dùng...">
            </div>

            <div class="form-row">
                <label>Mật khẩu</label>
                <input type="password" class="form-input" placeholder="Nhập mật khẩu...">
            </div>

            <div class="form-row">
                <label>Vai trò</label>
                <select class="form-input">
                    <option value="user">User</option>
                    <option value="admin">Admin</option>
                </select>
            </div>

            <div class="form-row">
                <label>Ảnh đại diện (URL)</label>
                <input type="text" class="form-input" placeholder="Dán link avatar...">
            </div>

            <div class="form-row">
                <label>Trạng thái</label>
                <select class="form-input">
                    <option value="active">Active</option>
                    <option value="disabled">Disabled</option>
                </select>
            </div>

            <button class="primary-btn" type="submit">
                <span class="material-symbols-outlined">add</span>
                <span>Thêm người dùng</span>
            </button>

        </form>

    </div>
</div>


            <!-- TABLE -->
            <div class="table-card">
                <div class="table-wrapper">

                    <table class="admin-table">

                        <thead>
                        <tr>
                            <th>Tên người dùng</th>
                            <th>Vai trò</th>
                            <th>Ngày đăng ký</th>
                            <th>Trạng thái</th>
                            <th>Hành động</th>
                        </tr>
                        </thead>

                        <tbody>

                        <!-- ROW TEMPLATE -->
                        <tr>
                            <td>
                                <div class="user-cell">
                                    <div class="user-avatar"
                                         style="background-image:url('https://i.pravatar.cc/150?img=5');"></div>

                                    <div class="user-info">
                                        <div class="user-name">Nguyễn Văn A</div>
                                        <div class="user-email">nguyenvana@example.com</div>
                                    </div>
                                </div>
                            </td>

                            <td><span class="badge badge-green">Admin</span></td>
                            <td>25/12/2023</td>
                            <td><span class="badge badge-green">Active</span></td>

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
            </div>

        </div>
    </main>

</div>

</body>
</html>
