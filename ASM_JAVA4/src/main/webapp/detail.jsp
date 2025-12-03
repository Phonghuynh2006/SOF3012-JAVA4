<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${video.title}</title>

<!-- CSS tổng -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/layout/style.css">

<!-- CSS riêng trang chi tiết -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/layout/detail.css">

</head>
<body>

<!-- HEADER DÙNG FILE CHUNG -->
<jsp:include page="header.jsp"/>


<!-- ================= MAIN WRAPPER (BẮT BUỘC CÓ) ================= -->
<div class="container">
    <!-- ===== VIDEO AREA ===== -->
    <div class="video-area">

        <div class="video-box">
            <iframe width="100%" height="100%"
                src="https://www.youtube.com/embed/${video.youtubeId}"
                title="${video.title}" allowfullscreen>
            </iframe>
        </div>

        <div class="title">${video.title}</div>

        <p class="description">${video.description}</p>

        <div class="action-buttons">
            <a href="like?id=${video.id}" class="btn">👍 Thích</a>

            <a href="share?id=${video.id}" class="btn">📤 Chia sẻ</a>

            <a href="favorite?id=${video.id}" class="btn">➕ Thêm vào danh sách</a>
        </div>
    </div>


    <!-- ===== SIDEBAR ===== -->
    <div class="sidebar">
        <h2>Đề xuất cho bạn</h2>

        <c:forEach var="v" items="${suggest}">
            <a href="detail?id=${v.id}" style="text-decoration:none; color:white;">
                <div class="suggest-item">
                    <div class="suggest-thumb"
                         style="background-image:url('${v.poster}');"></div>

                    <div>
                        <div class="suggest-title">${v.title}</div>
                        <div class="suggest-meta">${v.views} lượt xem</div>
                    </div>
                </div>
            </a>
        </c:forEach>

    </div>

</div> <!-- END .container -->

<!-- FOOTER DÙNG FILE CHUNG -->
<jsp:include page="footer.jsp"/>

</body>
</html>
