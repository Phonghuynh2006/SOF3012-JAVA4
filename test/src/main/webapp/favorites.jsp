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

    body {
        font-family: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
        background-color: #121212;
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
        color: #e60a15;
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
        color: #e60a15;
    }

    .menu .active {
        color: #e60a15;
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
    .page {
        max-width: 1200px;
        margin: 32px auto 0;
        padding: 0 32px 40px;
    }

    .title-row {
        display: flex;
        align-items: center;
        justify-content: space-between;
        margin-bottom: 24px;
        gap: 12px;
        flex-wrap: wrap;
    }

    .title-row h1 {
        font-size: 26px;
        font-weight: 700;
    }

    .title-row span {
        font-size: 14px;
        color: rgba(255,255,255,0.6);
        font-weight: 500;
    }

    /* ========= GRID FAVORITES ========= */
    .favorites-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit,minmax(260px,1fr));
        gap: 32px 24px;
    }

    .favorite-card {
        display: flex;
        flex-direction: column;
    }

    .poster {
        width: 100%;
        aspect-ratio: 16 / 9;
        border-radius: 10px;
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        overflow: hidden;
        transform: translateZ(0);
        transition: transform 0.25s ease;
    }

    .favorite-card:hover .poster {
        transform: scale(1.05);
    }

    .movie-info {
        margin-top: 10px;
    }

    .movie-title {
        font-size: 15px;
        font-weight: 700;
        line-height: 1.4;
        margin-bottom: 4px;
        transition: color 0.2s;
    }

    .favorite-card:hover .movie-title {
        color: #e60a15;
    }

    .movie-genre {
        font-size: 13px;
        color: rgba(255,255,255,0.5);
    }

    .unlike-btn {
        margin-top: 10px;
        width: 100%;
        padding: 9px 14px;
        border-radius: 8px;
        border: none;
        background: rgba(255,255,255,0.1);
        color: rgba(255,255,255,0.8);
        font-size: 13px;
        font-weight: 500;
        display: flex;
        align-items: center;
        justify-content: center;
        gap: 6px;
        cursor: pointer;
        transition: background 0.2s;
    }

    .unlike-btn:hover {
        background: rgba(255,255,255,0.2);
    }

    /* ========= PAGINATION ========= */
    .pagination {
        margin-top: 32px;
        display: flex;
        justify-content: center;
    }

    .pagination-inner {
        display: inline-flex;
        align-items: center;
        border-radius: 8px;
        overflow: hidden;
    }

    .page-link {
        padding: 8px 14px;
        font-size: 14px;
        border: 1px solid rgba(255,255,255,0.1);
        background: rgba(255,255,255,0.05);
        color: rgba(255,255,255,0.7);
        cursor: pointer;
        transition: background 0.2s, color 0.2s;
    }

    .page-link:hover {
        background: rgba(255,255,255,0.15);
        color: #ffffff;
    }

    .page-link.active {
        background: #e60a15;
        border-color: #e60a15;
        color: #ffffff;
        font-weight: 600;
    }

    /* ========= FOOTER ========= */
    footer {
        border-top: 1px solid rgba(255,255,255,0.1);
        padding: 32px 32px 24px;
        margin-top: 40px;
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
        .page {
            padding: 0 16px 32px;
        }
        .menu {
            display: none; /* giống bản Tailwind ẩn menu trên mobile */
        }
        .search-box {
            display: none; /* giống bản Tailwind: chỉ hiện search từ sm trở lên */
        }
    }
</style>
</head>
<body>

<!-- ============== HEADER ============== -->
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
            <a href="#" class="active">Phim Đã Thích</a>
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

<!-- ============== MAIN ============== -->
<main class="page">
    <div class="title-row">
        <h1>Video đã thích</h1>
        <span>6 phim</span>
    </div>

    <section class="favorites-grid">

        <!-- 1 -->
        <article class="favorite-card">
            <a href="#">
                <div class="poster"
                     style="background-image:url('https://lh3.googleusercontent.com/aida-public/AB6AXuB7dzS9z9svc70yYO0hcfa5NL9wH3z7sLD4EDpq0v_tCgagucx0qYifpGwztqWJz81b19G8jSmgy3p7ZyY-DoTgYkF_R-xSOozAd1OXME8Wq1UhUmzomEz3B7DsTBpbqzzKflsG0c7nj54-2A6_A4_onVBGcd8Gxeo8NYiI3pIIQyFp29lGMvGUeggv9Q1tV2yMwLzAAblV6v-cxesArvQs_AxFY8XMO_KLTLl98E4y0IzIUe17JHa-eqVp7-GnQJtQulOVXGRTw6s');">
                </div>
                <div class="movie-info">
                    <div class="movie-title">Dune: Part Two</div>
                    <div class="movie-genre">Hành Động, Viễn Tưởng</div>
                </div>
            </a>
            <button class="unlike-btn">🗑 Bỏ thích</button>
        </article>

        <!-- 2 -->
        <article class="favorite-card">
            <a href="#">
                <div class="poster"
                     style="background-image:url('https://lh3.googleusercontent.com/aida-public/AB6AXuD4JS0UR338P_-kUZ6sxybUD-85i5ZBC53av2YJXaL4kp0mBmVEjgiznSiyoczNMRCFnBuBaclILQyqzLtkgjZydJfJtvlBHnlMp7eMHAERcLO20Fxnjx6epOUCBc1zHLFET3ridr1kj3TbPFOlfne8gDJvvbq8DcQK5hsnPMlTIndgy3bjT4ozZreBc_mGKsJywDoE_LB8SdFndqfWOhhW5EibWamrRSzrIhAiC949sV-HDuZfspg2d6qAlfTl4mZm6cJkM35f3W0');">
                </div>
                <div class="movie-info">
                    <div class="movie-title">Oppenheimer</div>
                    <div class="movie-genre">Lịch Sử, Tiểu Sử</div>
                </div>
            </a>
            <button class="unlike-btn">🗑 Bỏ thích</button>
        </article>

        <!-- 3 -->
        <article class="favorite-card">
            <a href="#">
                <div class="poster"
                     style="background-image:url('https://lh3.googleusercontent.com/aida-public/AB6AXuCeD-QQ8i6TqZ3kSbLELQtqGRZTN9DlDIwkcokQuQ0u_aUTe8otZr83SQcHe4SPLQuYQiW8UxrCgd6SP7TvnJv0kz_skZjY9gEj5GDKS1mBB9RFKp6NOw1z96LufY5dynfrPf_FOZXQe3EobaaNGMkQ3jdu6wqy9ZvZ-_xCSHkSiLSFHlrg08hGpm95tDwb-FrG_AbBUD0CV8mdhMpVgvFkH3Ux7jOxC-zhsFcNy2gKj-c1IoSd8aRY-8OwaKDokeEJvhwtz7YD6Bk');">
                </div>
                <div class="movie-info">
                    <div class="movie-title">The Creator</div>
                    <div class="movie-genre">Viễn Tưởng, Hành Động</div>
                </div>
            </a>
            <button class="unlike-btn">🗑 Bỏ thích</button>
        </article>

        <!-- 4 -->
        <article class="favorite-card">
            <a href="#">
                <div class="poster"
                     style="background-image:url('https://lh3.googleusercontent.com/aida-public/AB6AXuB1gIK3W-eGNXRdk_fNsqweczs0VyKUbNgg8ash7tLOk1pEL62XaaVzu43tIMeoWwqCwVD24QhOgMNkq5EABG-sXTVQfVfHeOsykSAu2ynL7O-1EVbsjozVLOrIob2DU5HlFsjYyNPorMfP9fbuwuiIXuEznTNBWIvdjUzyLddYU3fgKrdh-XBPSjaiMFo8eeX_73Pvw93HekKLVwqFps7Kzirjwzaih8Q1YNNRaW6rv1AqQLS8X3Dg0fcJH14gdJnRus_Lv1vEuQA');">
                </div>
                <div class="movie-info">
                    <div class="movie-title">Godzilla x Kong: The New Empire</div>
                    <div class="movie-genre">Hành Động, Viễn Tưởng</div>
                </div>
            </a>
            <button class="unlike-btn">🗑 Bỏ thích</button>
        </article>

        <!-- 5 -->
        <article class="favorite-card">
            <a href="#">
                <div class="poster"
                     style="background-image:url('https://lh3.googleusercontent.com/aida-public/AB6AXuB1gIK3W-eGNXRdk_fNsqweczs0VyKUbNgg8ash7tLOk1pEL62XaaVzu43tIMeoWwqCwVD24QhOgMNkq5EABG-sXTVQfVfHeOsykSAu2ynL7O-1EVbsjozVLOrIob2DU5HlFsjYyNPorMfP9fbuwuiIXuEznTNBWIvdjUzyLddYU3fgKrdh-XBPSjaiMFo8eeX_73Pvw93HekKLVwqFps7Kzirjwzaih8Q1YNNRaW6rv1AqQLS8X3Dg0fcJH14gdJnRus_Lv1vEuQA');">
                </div>
                <div class="movie-info">
                    <div class="movie-title">Kung Fu Panda 4</div>
                    <div class="movie-genre">Hoạt Hình, Hài Kịch</div>
                </div>
            </a>
            <button class="unlike-btn">🗑 Bỏ thích</button>
        </article>

        <!-- 6 -->
        <article class="favorite-card">
            <a href="#">
                <div class="poster"
                     style="background-image:url('https://lh3.googleusercontent.com/aida-public/AB6AXuB1gIK3W-eGNXRdk_fNsqweczs0VyKUbNgg8ash7tLOk1pEL62XaaVzu43tIMeoWwqCwVD24QhOgMNkq5EABG-sXTVQfVfHeOsykSAu2ynL7O-1EVbsjozVLOrIob2DU5HlFsjYyNPorMfP9fbuwuiIXuEznTNBWIvdjUzyLddYU3fgKrdh-XBPSjaiMFo8eeX_73Pvw93HekKLVwqFps7Kzirjwzaih8Q1YNNRaW6rv1AqQLS8X3Dg0fcJH14gdJnRus_Lv1vEuQA');">
                </div>
                <div class="movie-info">
                    <div class="movie-title">Monkey Man</div>
                    <div class="movie-genre">Giật Gân, Hành Động</div>
                </div>
            </a>
            <button class="unlike-btn">🗑 Bỏ thích</button>
        </article>

    </section>

    <!-- ========== PAGINATION ========== -->
    <div class="pagination">
        <div class="pagination-inner">
            <span class="page-link">«</span>
            <span class="page-link active">1</span>
            <span class="page-link">2</span>
            <span class="page-link">3</span>
            <span class="page-link">»</span>
        </div>
    </div>
</main>

<!-- ============== FOOTER ============== -->
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