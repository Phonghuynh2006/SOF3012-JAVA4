<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Video yêu thích</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/layout/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/layout/favorites.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

</head>
<body>

<jsp:include page="header.jsp" />

<main class="page">

    <div class="title-row">
        <h1>Video đã thích</h1>
        <span>${list.size()} phim</span>
    </div>

    <!-- Nếu danh sách rỗng -->
    <c:if test="${empty list}">
        <p style="color:white; text-align:center; padding:20px; font-size:18px;">
            Bạn chưa thích video nào.
        </p>
    </c:if>

    <section class="favorites-grid">

<c:forEach var="fav" items="${list}">
    <article class="favorite-card">

        <a href="detail?id=${fav.video.id}">
            
            <!-- KHÔNG LOAD ẢNH — NỀN ĐEN -->
            <div class="poster" style="background-color:#000;"></div>

            <div class="movie-info">
                <div class="movie-title">${fav.video.title}</div>
                <div class="movie-genre">Lượt xem: ${fav.video.views}</div>
            </div>
        </a>

        <form action="favorite" method="post">
            <input type="hidden" name="videoId" value="${fav.video.id}">
            <button class="unlike-btn">🗑 Bỏ thích</button>
        </form>

    </article>
</c:forEach>



    </section>

</main>

<jsp:include page="footer.jsp" />

</body>
</html>
