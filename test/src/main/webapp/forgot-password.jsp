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
        background-color: #221011;
        color: white;
    }

    /* Header */
    header {
        height: 80px;
        display: flex;
        align-items: center;
        padding: 0 24px;
    }
    .brand {
        display: flex;
        align-items: center;
        gap: 8px;
        text-decoration: none;
    }
    .brand span:first-child {
        font-family: "Material Symbols Outlined";
        color: #e60a15;
        font-size: 42px;
    }
    .brand span:last-child {
        font-size: 28px;
        font-weight: 900;
        color: white;
    }

    /* Layout */
    .wrap {
        display: flex;
        justify-content: center;
        padding: 24px;
        min-height: calc(100vh - 80px);
    }

    .card {
        max-width: 420px;
        width: 100%;
    }

    /* Title text */
    .title {
        text-align: center;
        font-size: 36px;
        font-weight: 900;
        margin-bottom: 8px;
    }
    .subtitle {
        color: #ba9c9d;
        text-align: center;
        margin-bottom: 32px;
    }

    /* Input field */
    label {
        font-size: 16px;
        font-weight: 500;
        margin-bottom: 8px;
        display: block;
    }
    .input {
        width: 100%;
        height: 56px;
        border-radius: 10px;
        border: 1px solid #543b3c;
        background: #271b1c;
        padding: 14px;
        color: white;
        font-size: 16px;
        outline: none;
        transition: 0.15s;
    }
    .input:focus {
        border-color: #e60a15;
        box-shadow: 0 0 0 2px #e60a1540;
    }

    /* Button */
    .btn {
        width: 100%;
        height: 48px;
        background: #e60a15;
        color: white;
        border: none;
        border-radius: 10px;
        font-size: 16px;
        font-weight: 700;
        cursor: pointer;
        transition: 0.2s;
        margin-top: 8px;
    }
    .btn:hover {
        background: #c10c13;
    }

    .back {
        margin-top: 24px;
        font-size: 14px;
        color: #ba9c9d;
        text-align: center;
    }
    .back a {
        color: white;
        text-decoration: underline;
    }
    .back a:hover {
        color: #e60a15;
    }

</style>

</head>
<body>

<header>
    <a class="brand" href="#">
        <span class="material-symbols-outlined">movie</span>
        <span>STREAM</span>
    </a>
</header>

<div class="wrap">
    <div class="card">

        <p class="title">Khôi phục Mật khẩu</p>
        <p class="subtitle">Nhập email của bạn để nhận liên kết đặt lại mật khẩu.</p>

        <label for="email">Địa chỉ Email</label>
        <input class="input" type="email" id="email" placeholder="Nhập địa chỉ email của bạn">

        <button class="btn">Gửi liên kết khôi phục</button>

        <p class="back">
            Nhớ mật khẩu?
            <a href="#">Quay lại Đăng nhập</a>
        </p>

    </div>
</div>

</body>
</html>