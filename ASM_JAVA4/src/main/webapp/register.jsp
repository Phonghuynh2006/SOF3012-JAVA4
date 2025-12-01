<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="layout/register.css">
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

<form action="register" method="post">
    <label for="name">Tên của bạn</label>
    <div class="input-group">
        <input type="text" name="fullname" id="name" placeholder="Nhập tên của bạn" required>
        <span>person</span>
    </div>

    <label for="email">Email</label>
    <div class="input-group">
        <input type="email" name="email" id="email" placeholder="Nhập email của bạn" required>
        <span>mail</span>
    </div>

    <label for="username">Tên đăng nhập</label>
    <div class="input-group">
        <input type="text" name="username" id="username" placeholder="Tạo tên đăng nhập" required>
        <span>badge</span>
    </div>

    <label for="password">Mật khẩu</label>
    <div class="input-group">
        <input type="password" name="password" id="password" placeholder="Nhập mật khẩu" required>
        <span>visibility_off</span>
    </div>

    <label for="confirm-password">Xác nhận mật khẩu</label>
    <div class="input-group">
        <input type="password" name="confirm" id="confirm-password" placeholder="Nhập lại mật khẩu" required>
        <span>visibility_off</span>
    </div>

    <button type="submit" class="btn-register">Đăng ký</button>

    <p style="color:#e60a15; font-size:14px; text-align:center;">
        ${message}
    </p>
</form>


        <p class="bottom-text">
            Đã có tài khoản?
            <a href="#">Đăng nhập ngay</a>
        </p>

    </div>
</div>
</body>
</html>