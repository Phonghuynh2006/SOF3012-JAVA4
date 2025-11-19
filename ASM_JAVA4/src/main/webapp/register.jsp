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
        font-family: "Plus Jakarta Sans", sans-serif;
        background-color: #141414;
        overflow-x: hidden;
    }

    /* Background */
    .bg-wrapper {
        position: fixed;
        inset: 0;
        z-index: -1;
    }
    .bg-wrapper img {
        width: 100%;
        height: 100%;
        object-fit: cover;
        filter: blur(6px);
        opacity: 0.25;
    }
    .bg-overlay {
        position: absolute;
        inset: 0;
        background: linear-gradient(to top, #141414, #141414cc, transparent);
    }

    /* Layout */
    .register-wrapper {
        min-height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 20px;
    }

    /* Card */
    .register-card {
        width: 100%;
        max-width: 420px;
        background: rgba(0, 0, 0, 0.35);
        border: 1px solid rgba(255, 255, 255, 0.1);
        border-radius: 12px;
        padding: 32px;
        backdrop-filter: blur(10px);
        box-shadow: 0 0 30px #00000065;
    }

    .logo {
        text-align: center;
        color: #e60a15;
        font-size: 36px;
        font-weight: 800;
        letter-spacing: -1px;
        margin-bottom: 20px;
    }

    .title {
        color: white;
        font-size: 28px;
        font-weight: 700;
        text-align: center;
    }
    .subtitle {
        color: #cccccc;
        font-size: 15px;
        text-align: center;
        margin-bottom: 20px;
    }

    /* Form Items */
    label {
        color: white;
        font-size: 15px;
        margin-bottom: 6px;
        display: block;
        font-weight: 500;
    }

    .input-group {
        display: flex;
        align-items: center;
        background: rgba(30,30,30,0.6);
        border: 1px solid #555;
        border-radius: 8px;
        margin-bottom: 16px;
        transition: 0.2s;
    }
    .input-group:focus-within {
        border-color: #e60a15;
        box-shadow: 0 0 0 2px #e60a1545;
    }
    .input-group input {
        flex: 1;
        padding: 12px;
        padding-left: 14px;
        background: transparent;
        border: none;
        outline: none;
        font-size: 15px;
        color: white;
    }
    .input-group span {
        color: #bbb;
        padding-right: 14px;
        font-family: "Material Symbols Outlined";
        cursor: pointer;
    }

    /* Button */
    .btn-register {
        width: 100%;
        background: #e60a15;
        color: white;
        padding: 13px;
        font-size: 16px;
        font-weight: 700;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        transition: 0.2s;
        margin-top: 10px;
    }
    .btn-register:hover {
        background: #c80912;
    }

    /* Bottom Text */
    .bottom-text {
        margin-top: 18px;
        color: #cccccc;
        text-align: center;
        font-size: 14px;
    }
    .bottom-text a {
        color: #e60a15;
        font-weight: 600;
        text-decoration: none;
    }
    .bottom-text a:hover {
        color: #ff4c4c;
    }
</style>

<!-- Material Symbols -->
<link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet" />

</head>
<body>

<div class="bg-wrapper">
    <img src="https://lh3.googleusercontent.com/aida-public/AB6AXuBGJ0RmjRW4jkGXg8cEzyUXEvwPvQRI-ygoIVUE_pupsJPzpdk8UPB3PsahucjRHnGRTAI5j6p1qU2X_r2yjEeAyA9SbxeTQJMqYaplNQ88MQHjYcBRdefAZDMsSkKgV00t4h50WlKw_MRKLvD3_hLxyhc7jVqZfrmjx5LmhBrZqGVmSgiPvNsZBUIr4FjEyiRheRst1QgQQ7CaaqZjfZwvHY1_Xib1WzJK7Ktq2qBkxpaZLQzjn40eWo_HgnsOBIuU76i5GlwhWHU"
         alt="Background">
    <div class="bg-overlay"></div>
</div>

<div class="register-wrapper">
    <div class="register-card">

        <div class="logo">MOVIEMAX</div>

        <h1 class="title">Tạo tài khoản</h1>
        <p class="subtitle">Tham gia cùng chúng tôi để khám phá thế giới phim ảnh không giới hạn.</p>

        <form>
            <label for="name">Tên của bạn</label>
            <div class="input-group">
                <input type="text" id="name" placeholder="Nhập tên của bạn">
                <span>person</span>
            </div>

            <label for="email">Email</label>
            <div class="input-group">
                <input type="email" id="email" placeholder="Nhập email của bạn">
                <span>mail</span>
            </div>

            <label for="password">Mật khẩu</label>
            <div class="input-group">
                <input type="password" id="password" placeholder="Nhập mật khẩu">
                <span>visibility_off</span>
            </div>

            <label for="confirm-password">Xác nhận mật khẩu</label>
            <div class="input-group">
                <input type="password" id="confirm-password" placeholder="Nhập lại mật khẩu">
                <span>visibility_off</span>
            </div>

            <button type="submit" class="btn-register">Đăng ký</button>
        </form>

        <p class="bottom-text">
            Đã có tài khoản?
            <a href="#">Đăng nhập ngay</a>
        </p>

    </div>
</div>
</body>
</html>