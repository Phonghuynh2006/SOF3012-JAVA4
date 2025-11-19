<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>PolyOE - Trang chính Lab 4</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f5f5f5;
            padding: 30px;
        }
        h1 {
            color: #333;
        }
        .menu {
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            width: 380px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        a {
            text-decoration: none;
            font-size: 16px;
            display: block;
            margin: 8px 0;
            color: #0066cc;
        }
        a:hover {
            color: #ff3300;
        }
        .input-box {
            margin-top: 20px;
        }
        input[type=text] {
            padding: 8px;
            width: 200px;
            margin-right: 10px;
        }
        button {
            padding: 8px 14px;
            cursor: pointer;
        }
        h3 {
            margin-top: 0;
        }
    </style>
</head>
<body>

<h1>PolyOE – Trang Demo Lab 4</h1>

<div class="menu">

    <h3>Chức năng chính</h3>

    <!-- Lab 3: danh sách tất cả favorites -->
    <a href="favorites">➤ Danh sách tất cả video được yêu thích</a>

    <!-- Lab 3: xem favorites của 1 user -->
    <div class="input-box">
        <form action="user-favorites" method="get">
            <label>Nhập User ID để xem video yêu thích:</label><br><br>
            <input type="text" name="userId" placeholder="vd: 1, 2, 3" required />
            <button type="submit">Xem</button>
        </form>
    </div>

    <hr>

    <!-- Lab 4: tìm kiếm video -->
    <a href="search">➤ Tìm kiếm video theo từ khóa</a>

    <!-- Lab 4: thống kê chia sẻ -->
    <a href="share-summary">➤ Thống kê chia sẻ video</a>

    <!-- Lab 4: đăng nhập -->
    <a href="login">➤ Đăng nhập (username hoặc email)</a>

</div>

</body>
</html>
