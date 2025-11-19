<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <!-- Google Fonts + Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;700;800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet" />

    <style>
        body {
            margin: 0;
            font-family: "Plus Jakarta Sans", sans-serif;
            background: #121212;
            color: white;
        }

        /* HEADER */
        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 14px 40px;
            border-bottom: 1px solid rgba(255, 255, 255, .1);
        }

        header .left {
            display: flex;
            gap: 14px;
            align-items: center;
        }

        header .left h2 {
            margin: 0;
            font-size: 20px;
            font-weight: 700;
        }

        /* CONTENT WRAPPER */
        .wrapper {
            max-width: 650px;
            margin: 40px auto;
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid rgba(255, 255, 255, 0.1);
            padding: 40px;
            border-radius: 16px;
        }

        .wrapper h1 {
            font-size: 32px;
            margin: 0 0 10px;
            font-weight: 800;
        }

        .wrapper p {
            color: #bdbdbd;
            margin-bottom: 20px;
        }

        /* FORM */
        .form-group {
            margin-bottom: 25px;
        }

        .form-group label {
            font-size: 16px;
            margin-bottom: 8px;
            display: block;
            font-weight: 500;
        }

        .input-box {
            display: flex;
            align-items: center;
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 10px;
        }

        .input-box input {
            width: 100%;
            padding: 14px;
            font-size: 16px;
            color: white;
            border: none;
            background: transparent;
            outline: none;
        }

        .input-box span {
            padding: 14px;
            cursor: pointer;
            color: #bdbdbd;
        }

        /* PASSWORD Strength */
        .strength-bar {
            margin-top: -15px;
            margin-bottom: 10px;
        }

        .strength-bar div {
            height: 6px;
            width: 33%;
            background: #e60a15;
            border-radius: 50px;
        }

        .strength-text {
            font-size: 14px;
            color: #aaa;
        }

        /* BOTTOM BUTTON */
        .bottom {
            margin-top: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .bottom a {
            color: #ccc;
            text-decoration: none;
            transition: .2s;
        }

        .bottom a:hover {
            color: #e60a15;
        }

        .btn-submit {
            background: #e60a15;
            border: none;
            color: white;
            padding: 12px 26px;
            font-size: 16px;
            font-weight: bold;
            border-radius: 10px;
            cursor: pointer;
            transition: .2s;
        }

        .btn-submit:hover {
            background: #c30913;
        }

        /* RESPONSIVE */
        @media (max-width: 600px) {
            .wrapper {
                margin: 20px;
                padding: 25px;
            }

            header {
                padding: 12px 16px;
            }
        }
    </style>
</head>
<body>

    <!-- HEADER -->
    <header>
        <div class="left">
            <span class="material-symbols-outlined" style="color:#e60a15; font-size:32px;">movie</span>
            <h2>MovieStream</h2>
        </div>
    </header>

    <!-- FORM BOX -->
    <div class="wrapper">
        <h1>Đổi Mật Khẩu</h1>
        <p>Để bảo vệ tài khoản của bạn, vui lòng không chia sẻ mật khẩu cho người khác.</p>

        <form>

            <!-- OLD PASSWORD -->
            <div class="form-group">
                <label>Mật khẩu cũ</label>
                <div class="input-box">
                    <input type="password" placeholder="Nhập mật khẩu cũ của bạn">
                    <span class="material-symbols-outlined">visibility</span>
                </div>
            </div>

            <!-- NEW PASSWORD -->
            <div class="form-group">
                <label>Mật khẩu mới</label>
                <div class="input-box">
                    <input type="password" placeholder="Nhập mật khẩu mới">
                    <span class="material-symbols-outlined">visibility</span>
                </div>
            </div>

            <!-- Strength -->
            <div class="strength-bar">
                <div></div>
            </div>
            <p class="strength-text">Yếu</p>

            <!-- CONFIRM -->
            <div class="form-group">
                <label>Xác nhận mật khẩu mới</label>
                <div class="input-box">
                    <input type="password" placeholder="Nhập lại mật khẩu mới">
                    <span class="material-symbols-outlined">visibility_off</span>
                </div>
            </div>

            <!-- Bottom -->
            <div class="bottom">
                <a href="#">Quên mật khẩu?</a>
                <button type="submit" class="btn-submit">Đổi Mật Khẩu</button>
            </div>

        </form>
    </div>
</body>
</html>