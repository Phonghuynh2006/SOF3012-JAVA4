<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thống kê báo cáo</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/layout/reports.css">
</head>

<body>

<!-- HEADER -->
<jsp:include page="header.jsp" />

<div class="admin-container">

    <!-- SIDEBAR -->
    <jsp:include page="sidebar.jsp" />

    <div class="admin-content">

        <h1 class="admin-title">📊 Báo cáo thống kê</h1>

        <!-- TAB MENU -->
        <div class="tab-menu">
            <a href="reports?type=summary" 
               class="tab-btn ${param.type == 'summary' || empty param.type ? 'active' : ''}">
                Thống kê yêu thích
            </a>

            <a href="reports?type=detail" 
               class="tab-btn ${param.type == 'detail' ? 'active' : ''}">
                Người dùng yêu thích
            </a>
        </div>

        <!-- ================================= -->
        <!--       TAB 1: SUMMARY REPORT        -->
        <!-- ================================= -->
        <c:if test="${param.type == 'summary' || empty param.type}">
            <h2 class="section-title">Tổng hợp lượt thích theo video</h2>

            <table class="admin-table">
                <thead>
                    <tr>
                        <th>Video</th>
                        <th>Số lượt thích</th>
                        <th>Ngày thích mới nhất</th>
                    </tr>
                </thead>

                <tbody>
                    <c:forEach var="r" items="${summary}">
                        <tr>
                            <td>${r.videoTitle}</td>
                            <td>${r.likeCount}</td>
                            <td>${r.newestLike}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>

        <!-- ================================= -->
        <!--       TAB 2: DETAIL REPORT         -->
        <!-- ================================= -->
        <c:if test="${param.type == 'detail'}">

            <h2 class="section-title">Danh sách người dùng đã yêu thích</h2>

            <!-- FORM CHỌN VIDEO -->
            <form method="get" action="reports" class="video-select-form">
                <input type="hidden" name="type" value="detail">

                <label>Chọn video:</label>
                <select name="videoId" class="video-select" onchange="this.form.submit()">
                    <c:forEach var="v" items="${videos}">
                        <option value="${v.id}" 
                            ${v.id == param.videoId ? 'selected' : ''}>
                            ${v.title}
                        </option>
                    </c:forEach>
                </select>
            </form>

            <!-- TABLE DETAIL -->
            <table class="admin-table">
                <thead>
                    <tr>
                        <th>Tên người dùng</th>
                        <th>Email</th>
                        <th>Ngày thích</th>
                    </tr>
                </thead>

                <tbody>
                    <c:forEach var="f" items="${detail}">
                        <tr>
                            <td>${f.user.fullname}</td>
                            <td>${f.user.email}</td>
                            <td>${f.likedDate}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

        </c:if>

    </div>
</div>

<jsp:include page="footer.jsp" />

</body>
</html>
