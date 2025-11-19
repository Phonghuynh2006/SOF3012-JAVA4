<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        margin: 0;
        font-family: 'Plus Jakarta Sans', sans-serif;
        background-color: #121212;
        color: white;
    }

    /* ==== HEADER ==== */
    header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 15px 40px;
        border-bottom: 1px solid rgba(255,255,255,0.1);
    }

    .nav-left {
        display: flex;
        align-items: center;
        gap: 30px;
    }

    .logo {
        display: flex;
        align-items: center;
        gap: 10px;
    }

    .logo svg {
        width: 26px;
        height: 26px;
        color: #e60a15;
    }

    .menu a {
        color: rgba(255,255,255,0.7);
        text-decoration: none;
        font-size: 14px;
        font-weight: 500;
        transition: 0.25s;
    }
    .menu a:hover {
        color: #e60a15;
    }

    /* ==== SEARCH + ICONS ==== */
    .nav-right {
        display: flex;
        align-items: center;
        gap: 16px;
    }

    .search-box {
        display: flex;
        align-items: center;
        background: rgba(255,255,255,0.05);
        border-radius: 8px;
        padding: 6px 10px;
        width: 240px;
    }

    .search-box input {
        border: none;
        background: transparent;
        outline: none;
        padding-left: 8px;
        color: white;
        width: 100%;
    }

    .icon-btn {
        width: 40px;
        height: 40px;
        background: rgba(255,255,255,0.05);
        border-radius: 8px;
        display: flex;
        justify-content: center;
        align-items: center;
        cursor: pointer;
    }

    .avatar {
        width: 40px;
        height: 40px;
        border-radius: 50%;
        background-size: cover;
    }

    /* ==== MAIN CONTENT ==== */
    .container {
        max-width: 1280px;
        margin: 40px auto;
        padding: 0 30px;
        display: flex;
        gap: 40px;
    }

    .video-area {
        flex: 3;
    }

    .video-box {
        width: 100%;
        aspect-ratio: 16/9;
        background: black;
        border-radius: 12px;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .title {
        font-size: 32px;
        margin-top: 20px;
        font-weight: bold;
    }

    .sub-info {
        display: flex;
        gap: 8px;
        margin-top: 8px;
        color: #bbbbbb;
        font-size: 15px;
        flex-wrap: wrap;
    }

    .description {
        margin-top: 15px;
        line-height: 1.6;
        color: #dddddd;
    }

    .action-buttons {
        margin-top: 20px;
        display: flex;
        gap: 12px;
        flex-wrap: wrap;
    }

    .btn {
        background: rgba(255,255,255,0.1);
        border: none;
        padding: 12px 20px;
        font-size: 15px;
        font-weight: bold;
        color: white;
        border-radius: 8px;
        cursor: pointer;
        transition: 0.2s;
    }

    .btn:hover {
        background: rgba(255,255,255,0.2);
    }

    /* ==== SIDEBAR ==== */
    .sidebar {
        flex: 1.2;
    }

    .sidebar h2 {
        font-size: 20px;
        margin-bottom: 16px;
        font-weight: bold;
    }

    .suggest-item {
        display: flex;
        gap: 14px;
        margin-bottom: 16px;
        cursor: pointer;
    }

    .suggest-thumb {
        width: 150px;
        height: 85px;
        background-size: cover;
        background-position: center;
        border-radius: 8px;
    }

    .suggest-title {
        font-size: 16px;
        font-weight: 500;
        margin-bottom: 4px;
    }

    .suggest-meta {
        font-size: 13px;
        color: #aaaaaa;
    }

    /* ==== FOOTER ==== */
    footer {
        margin-top: 80px;
        border-top: 1px solid rgba(255,255,255,0.1);
        padding: 40px;
    }

    .footer-grid {
        display: grid;
        grid-template-columns: repeat(4, 1fr);
        gap: 30px;
    }

    .footer-grid h3 {
        margin-bottom: 12px;
        font-weight: bold;
    }

    .footer-grid a {
        color: rgba(255,255,255,0.6);
        font-size: 14px;
        display: block;
        margin-bottom: 6px;
        text-decoration: none;
    }

    .footer-grid a:hover {
        color: white;
    }
</style>
</head>
<body>

<!-- ================= HEADER ================= -->
<header>
    <div class="nav-left">
        <div class="logo">
            <svg fill="currentColor" viewBox="0 0 24 24">
                <path d="M20 3H4c-1.11 0-2 .89-2 2v12c0 1.1.89 2 2 2h4v2h8v-2h4c1.1 0 2-.9 2-2V5c0-1.11-.9-2-2-2z"/>
            </svg>
            <h2>PhimHay</h2>
        </div>

        <div class="menu">
            <a href="#">Trang chủ</a> /
            <a href="#">Phim Lẻ</a> /
            <a href="#">Phim Bộ</a> /
            <a href="#">Thể Loại</a>
        </div>
    </div>

    <div class="nav-right">
        <div class="search-box">
            🔍 <input placeholder="Tìm kiếm phim...">
        </div>
        <div class="icon-btn">🔔</div>
        <div class="avatar" style="background-image:url('https://i.pravatar.cc/80')"></div>
    </div>
</header>


<!-- ================= MAIN ================= -->
<div class="container">

<!-- ==== VIDEO SECTION ==== -->
<div class="video-area">

    <div class="video-box">
        <iframe width="100%" height="315"
            src="https://www.youtube.com/watch?v=ciCbzlKmKEY"
            title="YouTube video player"
            frameborder="0"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
            allowfullscreen>
        </iframe>
    </div>

    <div class="title">Dune: Part Two</div>
    <div class="sub-info">
        <span>2024</span> •
        <span>Hành Động, Phiêu Lưu, Khoa Học Viễn Tưởng</span> •
        <span>2h 46m</span>
    </div>

    <p class="description">
        Paul Atreides hợp nhất với Chani và người Fremen trong khi tìm cách trả thù...
    </p>

    <div class="action-buttons">
        <button class="btn">👍 Thích</button>

        <a href="share.jsp"><button class="btn">📤 Chia sẻ</button></a>
        <button class="btn">➕ Thêm vào danh sách</button>
    </div>
</div>


    <!-- ==== SIDEBAR ==== -->
    <div class="sidebar">
        <h2>Đề xuất cho bạn</h2>

        <div class="suggest-item">
            <div class="suggest-thumb" style="background-image:url('https://i.imgur.com/1.jpg');"></div>
            <div>
                <div class="suggest-title">Oppenheimer</div>
                <div class="suggest-meta">2.1 triệu lượt xem</div>
            </div>
        </div>

        <div class="suggest-item">
            <div class="suggest-thumb" style="background-image:url('https://i.imgur.com/2.jpg');"></div>
            <div>
                <div class="suggest-title">The Creator</div>
                <div class="suggest-meta">1.8 triệu lượt xem</div>
            </div>
        </div>

    </div>
</div>


<!-- ================= FOOTER ================= -->
<footer>
    <div class="footer-grid">
        <div>
            <h3>PhimHay</h3>
            <a href="#">Về chúng tôi</a>
            <a href="#">Tuyển dụng</a>
        </div>

        <div>
            <h3>Hỗ trợ</h3>
            <a href="#">Trung tâm trợ giúp</a>
            <a href="#">FAQ</a>
        </div>

        <div>
            <h3>Pháp lý</h3>
            <a href="#">Chính sách bảo mật</a>
        </div>

        <div>
            <h3>Mạng xã hội</h3>
            <a href="#">Facebook</a>
            <a href="#">Twitter</a>
        </div>
    </div>
</footer>

</body>
</html>