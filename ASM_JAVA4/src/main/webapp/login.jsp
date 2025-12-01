<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng nhập</title>

<link rel="stylesheet" href="layout/login.css">
</head>
<body>

<div class="page">
    <div class="page-bg">
        <div class="page-bg-image"></div>
        <div class="page-bg-overlay"></div>
    </div>

    <div class="page-inner">
        <div class="login-card">

            <div class="login-header">
                <svg class="login-logo" viewBox="0 0 24 24" fill="currentColor">
                    <path d="M6.36881 ..."></path>
                    <path d="M12 11.9998 ..."></path>
                </svg>
                <h1 class="login-title">Chào mừng trở lại</h1>
            </div>

            <!-- ========================== -->
            <!--       FORM LOGIN           -->
            <!-- ========================== -->

            <form method="post" action="login" class="login-form">

                <!-- Hiển thị lỗi -->
                <p style="color:#ff4d4d; font-size:14px; text-align:center;">
                    ${error}
                </p>

                <div class="form-group">
                    <label class="form-label">Email hoặc Tên người dùng</label>
                    <input
                        type="text"
                        name="username"
                        class="form-input"
                        placeholder="Nhập email hoặc tên người dùng"
                        required
                    >
                </div>

                <div class="form-group">
                    <label class="form-label">Mật khẩu</label>
                    <div class="password-wrapper">
                        <input
                            type="password"
                            name="password"
                            class="form-input-password"
                            placeholder="Nhập mật khẩu"
                            required
                        >
                        <div class="password-toggle">👁️</div>
                    </div>
                </div>

                <a href="forgot-password.jsp">
                    <div class="forgot-link">Quên mật khẩu?</div>
                </a>

                <div class="login-actions">
                    <button type="submit" class="btn-primary">Đăng nhập</button>

                    <div class="divider">
                        <div class="divider-line"></div>
                        <span>Hoặc đăng nhập với</span>
                        <div class="divider-line"></div>
                    </div>

                    <div class="social-row">
                        <button class="social-btn">
                            <img src="https://lh3..." alt="Google">
                        </button>
                        <button class="social-btn">
                            <img src="https://lh3..." alt="Facebook">
                        </button>
                        <button class="social-btn">
                            <img src="https://lh3..." alt="Apple">
                        </button>
                    </div>
                </div>
            </form>

            <p class="login-footer-text">
                Bạn là người mới?
                <a href="register.jsp">Đăng ký ngay.</a>
            </p>
        </div>
    </div>
</div>

</body>
</html>
