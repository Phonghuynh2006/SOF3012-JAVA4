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
        --bg-dark: #141414;
        --text-muted: rgba(255,255,255,0.6);
    }

    body {
        font-family: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
        background-color: var(--bg-dark);
        color: #ffffff;
        min-height: 100vh;
    }

    /* ====== FULLSCREEN BACKGROUND ====== */
    .page {
        position: relative;
        min-height: 100vh;
        overflow: hidden;
    }

    .page-bg {
        position: absolute;
        inset: 0;
        z-index: 0;
    }

    .page-bg-image {
        width: 100%;
        height: 100%;
        background-image: url('https://lh3.googleusercontent.com/aida-public/AB6AXuCZjET_ph5Sm3HTTvaM4XJIM1mJfDLc2LDfHadEzSHkTDwksDf12fYzF0oWhNDMvuVsiKBcZvBHPlcS6KO6cA65WEpCTQeaU0eCR2Q_adIFR_Rgth_ixp8e_Iwam3orHjEb6Q_U0kBtfiCa6rQDWV-4_w1SuZebITfxHMZBqW1z1lNsNiLvdczP_FEHQXqXSgrvoFgoaHJRiA9VW73tZzBgvSITUIeow6LkXFvIQvQQWZPbkUdVqL5F-FKNUC0EgHjpsUkO9bGRt8g');
        background-size: cover;
        background-position: center;
        filter: blur(2px);
        transform: scale(1.03);
    }

    .page-bg-overlay {
        position: absolute;
        inset: 0;
        background: rgba(20,20,20,0.85);
    }

    /* ====== CENTER LAYOUT ====== */
    .page-inner {
        position: relative;
        z-index: 1;
        min-height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        padding: 16px;
    }

    .login-card {
        width: 100%;
        max-width: 420px;
        background: rgba(20,20,20,0.9);
        border-radius: 16px;
        padding: 26px 24px 22px;
        box-shadow: 0 20px 40px rgba(0,0,0,0.6);
        border: 1px solid rgba(255,255,255,0.06);
        display: flex;
        flex-direction: column;
        align-items: stretch;
    }

    .login-header {
        display: flex;
        flex-direction: column;
        align-items: center;
        gap: 8px;
        padding-bottom: 20px;
    }

    .login-logo {
        width: 40px;
        height: 40px;
        color: var(--primary);
    }

    .login-title {
        font-size: 24px;
        font-weight: 700;
        text-align: center;
    }

    /* ====== FORM ====== */
    .login-form {
        display: flex;
        flex-direction: column;
        gap: 14px;
    }

    .form-group {
        display: flex;
        flex-direction: column;
        width: 100%;
    }

    .form-label {
        font-size: 13px;
        font-weight: 500;
        color: rgba(255,255,255,0.9);
        margin-bottom: 6px;
    }

    .form-input,
    .form-input-password {
        width: 100%;
        height: 44px;
        border-radius: 10px;
        border: 2px solid rgba(255,255,255,0.2);
        background: rgba(255,255,255,0.05);
        color: rgba(255,255,255,0.9);
        padding: 0 12px;
        font-size: 14px;
        outline: none;
        transition: border 0.2s, background 0.2s;
    }

    .form-input::placeholder,
    .form-input-password::placeholder {
        color: rgba(255,255,255,0.4);
    }

    .form-input:focus,
    .form-input-password:focus {
        border-color: var(--primary);
        background: rgba(255,255,255,0.08);
    }

    .password-wrapper {
        display: flex;
        align-items: stretch;
    }

    .form-input-password {
        border-right: none;
        border-radius: 10px 0 0 10px;
        padding-right: 10px;
    }

    .password-toggle {
        width: 44px;
        border-radius: 0 10px 10px 0;
        border: 2px solid rgba(255,255,255,0.2);
        border-left: none;
        background: rgba(255,255,255,0.05);
        display: flex;
        align-items: center;
        justify-content: center;
        color: rgba(255,255,255,0.7);
        font-size: 18px;
        cursor: default;
    }

    .forgot-link {
        font-size: 13px;
        color: var(--text-muted);
        text-align: right;
        margin-top: 4px;
        cursor: pointer;
        text-decoration: underline;
        transition: color 0.2s;
    }

    .forgot-link:hover {
        color: var(--primary);
    }

    /* ====== ACTIONS ====== */
    .login-actions {
        display: flex;
        flex-direction: column;
        gap: 16px;
        margin-top: 18px;
    }

    .btn-primary {
        width: 100%;
        height: 46px;
        border-radius: 10px;
        border: none;
        background: var(--primary);
        color: #ffffff;
        font-size: 15px;
        font-weight: 700;
        cursor: pointer;
        transition: background 0.2s;
    }

    .btn-primary:hover {
        background: #c60912;
    }

    .divider {
        display: flex;
        align-items: center;
        gap: 12px;
        font-size: 13px;
        color: var(--text-muted);
    }

    .divider-line {
        flex: 1;
        height: 1px;
        background: rgba(255,255,255,0.2);
    }

    .social-row {
        display: flex;
        justify-content: center;
        gap: 16px;
    }

    .social-btn {
        width: 44px;
        height: 44px;
        border-radius: 999px;
        border: 2px solid rgba(255,255,255,0.2);
        background: rgba(255,255,255,0.05);
        display: flex;
        align-items: center;
        justify-content: center;
        cursor: pointer;
        transition: background 0.2s;
    }

    .social-btn:hover {
        background: rgba(255,255,255,0.1);
    }

    .social-btn img {
        width: 22px;
        height: 22px;
    }

    .login-footer-text {
        margin-top: 22px;
        font-size: 13px;
        color: var(--text-muted);
        text-align: center;
    }

    .login-footer-text a {
        color: #ffffff;
        font-weight: 600;
        text-decoration: underline;
        transition: color 0.2s;
    }

    .login-footer-text a:hover {
        color: var(--primary);
    }

    /* ====== RESPONSIVE ====== */
    @media (min-width: 640px) {
        .login-card {
            padding: 32px 32px 26px;
        }
        .login-title {
            font-size: 28px;
        }
    }

    @media (max-width: 480px) {
        .login-card {
            padding: 22px 18px 20px;
        }
    }
</style>
</head>
<body>
<div class="page">
    <!-- Background -->
    <div class="page-bg">
        <div class="page-bg-image"></div>
        <div class="page-bg-overlay"></div>
    </div>

    <!-- Content -->
    <div class="page-inner">
        <div class="login-card">
            <!-- Logo + title -->
            <div class="login-header">
                <svg class="login-logo" viewBox="0 0 24 24" fill="currentColor">
                    <path d="M6.36881 21.9998C5.23438 21.9998 4.3125 21.0779 4.3125 19.9434V4.05615C4.3125 2.92172 5.23438 1.99982 6.36881 1.99982H17.6312C18.7656 1.99982 19.6875 2.92172 19.6875 4.05615V19.9434C19.6875 21.0779 18.7656 21.9998 17.6312 21.9998H6.36881ZM2.25 4.05615C2.25 1.76906 4.09406 0.0562744 6.36881 0.0562744H17.6312C19.9059 0.0562744 21.75 1.76906 21.75 4.05615V19.9434C21.75 22.2305 19.9059 23.9432 17.6312 23.9432H6.36881C4.09406 23.9432 2.25 22.2305 2.25 19.9434V4.05615Z"></path>
                    <path d="M12 11.9998C13.5938 11.9998 14.8969 10.7061 14.8969 9.10294C14.8969 7.49982 13.5938 6.20605 12 6.20605C10.4062 6.20605 9.10312 7.49982 9.10312 9.10294C9.10312 10.7061 10.4062 11.9998 12 11.9998Z"></path>
                </svg>
                <h1 class="login-title">Chào mừng trở lại</h1>
            </div>

            <!-- Form -->
            <div class="login-form">
                <div class="form-group">
                    <label class="form-label">Email hoặc Tên người dùng</label>
                    <input
                        type="text"
                        class="form-input"
                        placeholder="Nhập email hoặc tên người dùng của bạn">
                </div>

                <div class="form-group">
                    <label class="form-label">Mật khẩu</label>
                    <div class="password-wrapper">
                        <input
                            type="password"
                            class="form-input-password"
                            placeholder="Nhập mật khẩu của bạn">
                        <div class="password-toggle">👁️</div>
                    </div>
                </div>

                <div class="forgot-link">Quên mật khẩu?</div>
            </div>

            <!-- Actions -->
            <div class="login-actions">
                <button class="btn-primary">Đăng nhập</button>

                <div class="divider">
                    <div class="divider-line"></div>
                    <span>Hoặc đăng nhập với</span>
                    <div class="divider-line"></div>
                </div>

                <div class="social-row">
                    <button class="social-btn">
                        <img src="https://lh3.googleusercontent.com/aida-public/AB6AXuAvB8eadtOzFpmsS3uy5xw8hicYLR47eAx7OWjaxFwqDNUDqcvGo6pGBYKKZx5Ta7-HBgQF-4Z6UoqODKUopew3Yd3lSz2fqrQgjqIboNqfA6JvRoMrmtKoSBVJonCBGPQedVTIvh3zNs5RB8-ebpZxUF5wht5z4b1_szteXC9uGxTmNi-wbDVgtrSTBLe68wqyGaDogkDe-AFo-CtvRhL67Y2bo1ckx8KrRBxCjS6rneW-b-Kqgy4OuBr-obDnmCu8wnQPDg5R8F0"
                             alt="Google">
                    </button>
                    <button class="social-btn">
                        <img src="https://lh3.googleusercontent.com/aida-public/AB6AXuBhJKNncd0GC0jgVs3GRIoxzwh2k4IiQDB-4URfElNcxseIgmw7Lj0Rhil5zHWsjTSCLUfWMoB68FFxh-MS_k54ipKBB1kD4T1k2Bw7bF-odqGxn8r2XNIg70uo3JhsSK-Yswpph5eILvhUHnGIcMonajzlzNTqGTn_UtKB2exggjBfVpRJYB1cSHTEKqPvnAmYh2Wt_zUvxfsKPUiS4maidtSvHLd28KhO_OarUx8WqRRCFmm6fjAGuqHmkn7hy4OIbEY91UY2mn8"
                             alt="Facebook">
                    </button>
                    <button class="social-btn">
                        <img src="https://lh3.googleusercontent.com/aida-public/AB6AXuCZYcSo--hTsCHZ0gs0qKC94WAn0iKsYfYEcPOPR9FtxbjZeOgSBQLphCLIole1fV_WwV-kqZ_I8uXkQZbQ77_AiFi-1j3OdOyLdiOLQUmoukPlBJ-QLyqX8ahR02YbPVPrDcpMYplHZXewmnskxnKgpke67tQV7wpcB7sNVoWZIdG-x4f4aZVU31a1Um_V4nb7goup4Vemgn7pANXitURVd25t_DusASY2jDgKKcmeWZOBNKP1eMJh73NIhT4IRf87OTBf-h7tJ_A"
                             alt="Apple">
                    </button>
                </div>
            </div>

            <!-- Footer text -->
            <p class="login-footer-text">
                Bạn là người mới?
                <a href="#">Đăng ký ngay.</a>
            </p>
        </div>
    </div>
</div>
</body>
</html>