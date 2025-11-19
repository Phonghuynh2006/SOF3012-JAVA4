<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    :root {
        --primary: #e60a15;
        --bg-dark: #121212;
        --text-muted: rgba(255,255,255,0.6);
    }

    body {
        font-family: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
        background-color: var(--bg-dark);
        color: #ffffff;
    }

    a {
        text-decoration: none;
        color: inherit;
    }

    /* ========= HEADER ========= */
    header {
        border-bottom: 1px solid rgba(255,255,255,0.1);
        padding: 14px 40px;
        display: flex;
        align-items: center;
        justify-content: space-between;
    }

    .header-left {
        display: flex;
        align-items: center;
        gap: 40px;
    }

    .logo {
        display: flex;
        align-items: center;
        gap: 10px;
    }

    .logo-icon {
        width: 26px;
        height: 26px;
        color: var(--primary);
    }

    .logo-title {
        font-size: 18px;
        font-weight: 700;
    }

    .menu {
        display: flex;
        gap: 24px;
        font-size: 14px;
    }

    .menu a {
        color: rgba(255,255,255,0.7);
        font-weight: 500;
        transition: color 0.2s;
    }

    .menu a:hover {
        color: var(--primary);
    }

    .header-right {
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
        width: 230px;
    }

    .search-box span {
        font-size: 14px;
        opacity: 0.7;
        margin-right: 6px;
    }

    .search-box input {
        border: none;
        outline: none;
        background: transparent;
        color: #ffffff;
        width: 100%;
        font-size: 13px;
    }

    .icon-btn {
        width: 40px;
        height: 40px;
        border-radius: 10px;
        background: rgba(255,255,255,0.05);
        display: flex;
        align-items: center;
        justify-content: center;
        cursor: pointer;
        font-size: 18px;
    }

    .avatar {
        width: 40px;
        height: 40px;
        border-radius: 999px;
        background-size: cover;
        background-position: center;
    }

    /* ========= MAIN LAYOUT ========= */
    main {
        min-height: calc(100vh - 180px); /* trừ header + footer */
        display: flex;
        align-items: center;
        justify-content: center;
        padding: 32px 16px;
    }

    .share-wrapper {
        width: 100%;
        max-width: 420px;
        padding: 0 8px;
    }

    .share-card {
        background: rgba(255,255,255,0.05);
        border: 1px solid rgba(255,255,255,0.1);
        border-radius: 16px;
        padding: 24px 20px 24px;
    }

    .share-title {
        font-size: 24px;
        font-weight: 700;
        text-align: center;
        margin-bottom: 6px;
    }

    .share-subtitle {
        font-size: 14px;
        color: var(--text-muted);
        text-align: center;
        margin-bottom: 20px;
    }

    .movie-preview {
        display: flex;
        gap: 16px;
        margin-bottom: 20px;
        padding: 12px;
        border-radius: 10px;
        background: rgba(255,255,255,0.05);
    }

    .movie-thumb {
        width: 110px;
        aspect-ratio: 16 / 9;
        border-radius: 8px;
        background-size: cover;
        background-position: center;
        flex-shrink: 0;
    }

    .movie-preview h3 {
        font-size: 15px;
        font-weight: 600;
        margin-bottom: 4px;
    }

    .movie-preview p {
        font-size: 13px;
        color: rgba(255,255,255,0.6);
    }

    form {
        display: flex;
        flex-direction: column;
        gap: 16px;
    }

    label {
        font-size: 13px;
        font-weight: 500;
        color: rgba(255,255,255,0.8);
        margin-bottom: 4px;
        display: block;
    }

    .input-wrapper {
        position: relative;
    }

    .input-wrapper span {
        position: absolute;
        left: 10px;
        top: 50%;
        transform: translateY(-50%);
        font-size: 13px;
        color: rgba(255,255,255,0.7);
    }

    .share-input {
        width: 100%;
        height: 44px;
        border-radius: 10px;
        border: 1px solid rgba(255,255,255,0.2);
        background: rgba(255,255,255,0.05);
        padding: 0 10px 0 32px;
        color: #ffffff;
        font-size: 14px;
        outline: none;
        transition: border 0.2s, box-shadow 0.2s, background 0.2s;
    }

    .share-input::placeholder {
        color: rgba(255,255,255,0.5);
    }

    .share-input:focus {
        border-color: var(--primary);
        box-shadow: 0 0 0 1px rgba(230,10,21,0.4);
        background: rgba(255,255,255,0.08);
    }

    .share-btn {
        margin-top: 4px;
        width: 100%;
        height: 46px;
        border-radius: 10px;
        border: none;
        outline: none;
        background: var(--primary);
        color: #ffffff;
        font-size: 15px;
        font-weight: 700;
        cursor: pointer;
        display: flex;
        align-items: center;
        justify-content: center;
        gap: 8px;
        transition: background 0.2s;
    }

    .share-btn:hover {
        background: #c60912;
    }

    /* ========= FOOTER ========= */
    footer {
        border-top: 1px solid rgba(255,255,255,0.1);
        padding: 32px 32px 24px;
    }

    .footer-grid {
        max-width: 1200px;
        margin: 0 auto;
        display: grid;
        grid-template-columns: repeat(4, minmax(0,1fr));
        gap: 24px;
    }

    footer h3 {
        font-size: 15px;
        font-weight: 700;
        margin-bottom: 10px;
    }

    footer a {
        display: block;
        margin-bottom: 6px;
        font-size: 13px;
        color: rgba(255,255,255,0.6);
        transition: color 0.2s;
    }

    footer a:hover {
        color: #ffffff;
    }

    .footer-social {
        display: flex;
        gap: 14px;
        margin-top: 6px;
        font-size: 22px;
    }

    .footer-bottom {
        max-width: 1200px;
        margin: 24px auto 0;
        padding-top: 16px;
        border-top: 1px solid rgba(255,255,255,0.1);
        text-align: center;
        font-size: 13px;
        color: rgba(255,255,255,0.5);
    }

    /* ========= RESPONSIVE ========= */
    @media (max-width: 768px) {
        header {
            padding: 12px 16px;
        }
        .menu {
            display: none;   /* giống tailwind: menu ẩn trên mobile */
        }
        .search-box {
            display: none;   /* giống tailwind: ô search ẩn trên mobile */
        }
        footer {
            padding: 24px 16px;
        }
        .footer-grid {
            grid-template-columns: repeat(2,minmax(0,1fr));
        }
    }

    @media (max-width: 480px) {
        .movie-preview {
            flex-direction: column;
        }
        .movie-thumb {
            width: 100%;
        }
        .footer-grid {
            grid-template-columns: 1fr;
        }
    }
</style>
</head>
<body>

<!-- ========== HEADER ========== -->
<header>
    <div class="header-left">
        <div class="logo">
            <svg class="logo-icon" viewBox="0 0 24 24" fill="currentColor">
                <path d="M20 3H4c-1.11 0-2 .89-2 2v12c0 1.1.89 2 2 2h4v2h8v-2h4c1.1 0 2-.9 2-2V5c0-1.11-.9-2-2-2zm0 14H4V5h16v12zM6 7h2v2H6zm3.5 6H18v-2h-8.5zM6 11h2v2H6zm0 4h2v2H6zm3.5-4H18V9h-8.5z"/>
            </svg>
            <div class="logo-title">PhimHay</div>
        </div>

        <nav class="menu">
            <a href="#">Trang chủ</a>
            <a href="#">Phim Lẻ</a>
            <a href="#">Phim Bộ</a>
            <a href="#">Thể Loại</a>
        </nav>
    </div>

    <div class="header-right">
        <div class="search-box">
            <span>🔍</span>
            <input type="text" placeholder="Tìm kiếm phim...">
        </div>
        <div class="icon-btn">🔔</div>
        <div class="avatar" style="background-image:url('https://i.pravatar.cc/80');"></div>
    </div>
</header>

<!-- ========== MAIN ========== -->
<main>
    <div class="share-wrapper">
        <div class="share-card">
            <h1 class="share-title">Chia sẻ phim qua Email</h1>
            <p class="share-subtitle">Gửi bộ phim này cho bạn bè của bạn.</p>

            <!-- Movie preview -->
            <div class="movie-preview">
                <div class="movie-thumb"
                     style="background-image:url('https://lh3.googleusercontent.com/aida-public/AB6AXuD4JS0UR338P_-kUZ6sxybUD-85i5ZBC53av2YJXaL4kp0mBmVEjgiznSiyoczNMRCFnBuBaclILQyqzLtkgjZydJfJtvlBHnlMp7eMHAERcLO20Fxnjx6epOUCBc1zHLFET3ridr1kj3TbPFOlfne8gDJvvbq8DcQK5hsnPMlTIndgy3bjT4ozZreBc_mGKsJywDoE_LB8SdFndqfWOhhW5EibWamrRSzrIhAiC949sV-HDuZfspg2d6qAlfTl4mZm6cJkM35f3W0');">
                </div>
                <div>
                    <h3>Dune: Part Two</h3>
                    <p>Hành Động, Phiêu Lưu • 2h 46m</p>
                </div>
            </div>

            <!-- Form -->
            <form action="#" method="post">
                <div>
                    <label for="recipient-email">Email người nhận</label>
                    <div class="input-wrapper">
                        <span>✉</span>
                        <input id="recipient-email"
                               name="email"
                               type="email"
                               class="share-input"
                               placeholder="Nhập địa chỉ email"
                               required>
                    </div>
                </div>

                <button type="submit" class="share-btn">
                    <span>📨</span>
                    <span>Gửi</span>
                </button>
            </form>
        </div>
    </div>
</main>

<!-- ========== FOOTER ========== -->
<footer>
    <div class="footer-grid">
        <div>
            <h3>PhimHay</h3>
            <a href="#">Về chúng tôi</a>
            <a href="#">Tuyển dụng</a>
            <a href="#">Báo chí</a>
        </div>
        <div>
            <h3>Hỗ trợ</h3>
            <a href="#">Trung tâm trợ giúp</a>
            <a href="#">Liên hệ</a>
            <a href="#">FAQ</a>
        </div>
        <div>
            <h3>Pháp lý</h3>
            <a href="#">Điều khoản dịch vụ</a>
            <a href="#">Chính sách bảo mật</a>
            <a href="#">Chính sách cookie</a>
        </div>
        <div>
            <h3>Mạng xã hội</h3>
            <div class="footer-social">
                <a href="#">f</a>
                <a href="#">t</a>
                <a href="#">ig</a>
            </div>
        </div>
    </div>

    <div class="footer-bottom">
        © 2024 PhimHay. All Rights Reserved.
    </div>
</footer>

</body>
</html>