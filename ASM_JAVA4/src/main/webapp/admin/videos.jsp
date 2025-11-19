<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Quản lý Video</title>

    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet"/>

    <link rel="stylesheet" href="../layout/adminsytle.css">

    <style>
.video-form {
    padding: 20px;
}

.video-form .form-row {
    margin-bottom: 15px;
    display: flex;
    flex-direction: column;
}

.video-form label {
    font-weight: 600;
    margin-bottom: 5px;
    color: #1a3d7c; /* Xanh dương đậm */
}

.form-input {
    padding: 10px 12px;
    background: #ffffff; /* Nền trắng */
    border: 1px solid #1a73e8; /* Viền xanh dương */
    border-radius: 8px;
    color: #1a3d7c; /* Chữ xanh dương đậm */
    font-size: 15px;
}

.form-input:focus {
    border-color: #0b57d0; /* Xanh dương tươi */
    box-shadow: 0 0 5px rgba(11, 87, 208, 0.4);
}

textarea.form-input {
    resize: vertical;
}

    </style>
</head>

<body>

<div class="app-wrapper">

    <!-- SIDEBAR -->
<!-- Sidebar -->
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
        <a href="users.jsp" class="active">
            <span class="material-symbols-outlined">group</span>
            <span>Quản lý Người dùng</span>
        </a>
 <!--       <a href="#">
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



    <!-- MAIN CONTENT -->
    <main class="main">
        <div class="main-inner">

            <!-- Header -->
            <div class="page-header">
                <div class="page-title-block">
                    <h2 class="page-title">Quản lý Video</h2>
                    <p class="page-subtitle">Điền đầy đủ thông tin để thêm video mới vào hệ thống.</p>
                </div>
            </div>


            <!-- ======================= FORM THÊM VIDEO ======================= -->

            <div class="table-card" style="margin-bottom: 30px;">
                <div class="table-wrapper">
                    <form class="video-form">

                        <div class="form-row">
                            <label>Tên Video</label>
                            <input type="text" class="form-input" placeholder="Nhập tên video...">
                        </div>

                        <div class="form-row">
                            <label>Danh Mục</label>
                            <select class="form-input">
                                <option>Hành động</option>
                                <option>Viễn tưởng</option>
                                <option>Hài hước</option>
                                <option>Kinh dị</option>
                                <option>Tình cảm</option>
                            </select>
                        </div>

                        <div class="form-row">
                            <label>Link Thumbnail</label>
                            <input type="text" class="form-input" placeholder="Dán link thumbnail tại đây...">
                        </div>

                        <div class="form-row">
                            <label>Link Video</label>
                            <input type="text" class="form-input" placeholder="Dán link video (MP4 hoặc Youtube embed)...">
                        </div>

                        <div class="form-row">
                            <label>Mô tả</label>
                            <textarea class="form-input" rows="3" placeholder="Nhập mô tả video..."></textarea>
                        </div>

                        <div class="form-row">
                            <label>Trạng thái</label>
                            <select class="form-input">
                                <option value="public">Công khai</option>
                                <option value="private">Riêng tư</option>
                                <option value="hidden">Đã ẩn</option>
                            </select>
                        </div>

                        <div class="form-row">
                            <button class="primary-btn" type="submit" style="margin-top: 10px;">
                                <span class="material-symbols-outlined">add</span>
                                <span>Thêm Video</span>
                            </button>
                        </div>

                    </form>
                </div>
            </div>



<!-- ======================= BẢNG DANH SÁCH VIDEO ======================= -->

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
            Hiển thị <span>1–3</span> trong <span>100</span> video
        </div>

        <ul class="pagination">
            <li><a href="#">Trước</a></li>
            <li><a href="#">1</a></li>
            <li class="active"><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">Tiếp</a></li>
        </ul>

    </div>
</div>

        </div>
    </main>
</div>

</body>
</html>
