<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>PolyOE - Trang chính</title>
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
            width: 350px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        a {
            text-decoration: none;
            font-size: 18px;
            display: block;
            margin: 12px 0;
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
    </style>
</head>
<body>

<h1>PolyOE – Trang Demo Lab 3</h1>

<div class="menu">

    <h3>Chức năng chính</h3>

    <!-- Link xem tất cả favorites -->
    <a href="favorites">➤ Danh sách tất cả video được yêu thích</a>

    <div class="input-box">
        <form action="user-favorites" method="get">
            <label>Nhập User ID để xem video yêu thích:</label><br><br>
            <input type="text" name="userId" placeholder="vd: teo" required />
            <button type="submit">Xem</button>
        </form>
    </div>

</div>

</body>
</html>
