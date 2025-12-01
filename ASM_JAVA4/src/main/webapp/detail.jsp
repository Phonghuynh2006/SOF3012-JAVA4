<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${video.title}</title>
<link rel="stylesheet" href="layout/detail.css">
</head>
<body>

<!-- ================= HEADER ================= -->
<header>
    <div class="nav-left">
        <div class="logo">
            <svg fill="currentColor" viewBox="0 0 24 24">
                <path d="M20 3H4c-1.11 0-2 .89-2 2v12c0 1.1.89 2 2 2h4v2h8v-2h4c1.1 0 2-.9 2-2V5c0-1.11-.9-2-2-2z"/>
            </svg>
            <h2>PhimHay</h2>
        </div>

        <div class="menu">
            <a href="index">Trang chủ</a> /
            <a href="#">Phim Lẻ</a> /
            <a href="#">Phim Bộ</a> /
            <a href="#">Thể Loại</a>
        </div>
    </div>

    <div class="nav-right">
        <div class="search-box">
            🔍 <input placeholder="Tìm kiếm phim...">
        </div>
        <div class="icon-btn">🔔</div>
        <div class="avatar" style="background-image:url('https://i.pravatar.cc/80')"></div>
    </div>
</header>


<!-- ================= MAIN ================= -->
<div class="container">

<!-- ==== VIDEO SECTION ==== -->
<div class="video-area">

    <div class="video-box">
        <iframe width="100%" height="100%"
            src="https://www.youtube.com/embed/${video.youtubeId}"
            
            title="${video.title}"
            allowfullscreen>
        </iframe>
    </div>

    <div class="title">${video.title}</div>

    <p class="description">
        ${video.description}
    </p>

    <div class="action-buttons">
        <a href="like?id=${video.id}" class="btn">👍 Thích</a>

        <a href="share?id=${video.id}">
            <button class="btn">📤 Chia sẻ</button>
        </a>

        <a href="favorite?id=${video.id}" class="btn">➕ Thêm vào danh sách</a>
    </div>
</div>


<!-- ==== SIDEBAR ==== -->
<div class="sidebar">
    <h2>Đề xuất cho bạn</h2>

    <c:forEach var="v" items="${suggest}">
        <a href="detail?id=${v.id}">
            <div class="suggest-item">
                <div class="suggest-thumb" style="background-image:url('${v.poster}');"></div>
                <div>
                    <div class="suggest-title">${v.title}</div>
                    <div class="suggest-meta">${v.views} lượt xem</div>
                </div>
            </div>
        </a>
    </c:forEach>

</div>
</div>


<!-- ================= FOOTER ================= -->
<footer>
    <div class="footer-grid">
        <div>
            <h3>PhimHay</h3>
            <a href="#">Về chúng tôi</a>
            <a href="#">Tuyển dụng</a>
        </div>

        <div>
            <h3>Hỗ trợ</h3>
            <a href="#">Trung tâm trợ giúp</a>
            <a href="#">FAQ</a>
        </div>

        <div>
            <h3>Pháp lý</h3>
            <a href="#">Chính sách bảo mật</a>
        </div>

        <div>
            <h3>Mạng xã hội</h3>
            <a href="#">Facebook</a>
            <a href="#">Twitter</a>
        </div>
    </div>
</footer>

</body>
</html>
