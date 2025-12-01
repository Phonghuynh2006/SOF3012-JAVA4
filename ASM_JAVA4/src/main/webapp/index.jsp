<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>
<link rel="stylesheet" href="layout/style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>

<body>

<jsp:include page="layout/header.jsp"/>

<!-- ======================== PHIM THỊNH HÀNH ========================== -->
<section>
    <h2>Phim Thịnh Hành</h2>

    <div class="grid">

        <c:forEach var="v" items="${videos}">
            <!-- Video card -->
            <a class="movie-card" href="detail?id=${v.id}">
                <div class="movie-thumb" 
                     style="background-image:url('${v.poster}');"></div>

                <div class="movie-info">
                    <h3>${v.title}</h3>
                    <p>Lượt xem: ${v.views}</p>
                </div>
            </a>
        </c:forEach>

    </div>
</section>


<!-- ======================== MỚI CẬP NHẬT ========================== -->
<section>
    <h2>Mới Cập Nhật</h2>

    <div class="grid">

        <!-- Nếu bạn muốn có mục riêng “Mới cập nhật”, 
             bạn chỉ cần truyền thêm list mới từ controller:
             req.setAttribute("updated", videoService.getUpdatedVideos());
        -->

        <c:forEach var="v" items="${videos}">
            <a class="movie-card" href="detail?id=${v.id}">
                <div class="movie-thumb"
                     style="background-image:url('${v.poster}');"></div>

                <div class="movie-info">
                    <h3>${v.title}</h3>
                    <p>Lượt xem: ${v.views}</p>
                </div>
            </a>
        </c:forEach>

    </div>
</section>


<!-- ======================== PHÂN TRANG ========================== -->
<div class="pagination">
    <a class="active" href="#">1</a>
    <a href="#">2</a>
    <a href="#">3</a>
    <a href="#">4</a>
</div>

<jsp:include page="layout/footer.jsp"/>

</body>
</html>
