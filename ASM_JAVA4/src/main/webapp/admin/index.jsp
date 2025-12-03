<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>

    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;700;800&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet" />

    <link rel="stylesheet" href="layout/adminsytle.css">
</head>
<body>

<div class="admin-layout">

    <!-- SIDEBAR -->
    <jsp:include page="sidebar.jsp" />

    <!-- MAIN -->
    <main class="admin-main">
        <div class="admin-main-inner">

            <!-- HEADER -->
            <jsp:include page="header.jsp">
                <jsp:param name="title" value="Bảng điều khiển"/>
                <jsp:param name="subtitle" value="Tổng quan hoạt động của trang web"/>
            </jsp:include>

            <!-- THỐNG KÊ -->
            <div class="stats-grid">
                <div class="stat-card">
                    <p class="stat-title">Tổng số phim</p>
                    <p class="stat-value">${totalVideos}</p>
                </div>

                <div class="stat-card">
                    <p class="stat-title">Tổng số người dùng</p>
                    <p class="stat-value">${totalUsers}</p>
                </div>

                <div class="stat-card">
                    <p class="stat-title">Tổng lượt xem</p>
                    <p class="stat-value">${totalViews}</p>
                </div>

                <div class="stat-card">
                    <p class="stat-title">Tổng lượt thích</p>
                    <p class="stat-value">${totalFavorites}</p>
                </div>
            </div>

            <!-- BẢNG PHIM MỚI -->
            <div class="table-card">
                <h2 class="table-title">Phim Mới Được Tải Lên</h2>

                <div style="overflow-x:auto;">
                    <table class="admin-table">
                        <thead>
                            <tr>
                                <th>Tên phim</th>
                                <th>Mô tả</th>
                                <th>Lượt xem</th>
                                <th>Trạng thái</th>
                            </tr>
                        </thead>

                        <tbody>
                            <c:forEach var="v" items="${latestVideos}">
                                <tr>
                                    <td>${v.title}</td>
                                    <td style="max-width:350px; white-space:nowrap; overflow:hidden; text-overflow:ellipsis;">
                                        ${v.description}
                                    </td>
                                    <td>${v.views}</td>

                                    <td>
                                        <span class="badge ${v.active ? 'badge-green' : 'badge-yellow'}">
                                            <c:choose>
                                                <c:when test="${v.active}">Đã xuất bản</c:when>
                                                <c:otherwise>Nháp</c:otherwise>
                                            </c:choose>
                                        </span>
                                    </td>
                                </tr>
                            </c:forEach>

                            <c:if test="${empty latestVideos}">
                                <tr>
                                    <td colspan="4" style="text-align:center; padding:16px;">
                                        Chưa có phim nào.
                                    </td>
                                </tr>
                            </c:if>
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- FOOTER -->
            <jsp:include page="footer.jsp" />

        </div>
    </main>
</div>

</body>
</html>
