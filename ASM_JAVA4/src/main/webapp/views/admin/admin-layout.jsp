<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Panel</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>

<style>
    body { background: #f7f7f7; font-family: Arial; }
    .sidebar { height: 100vh; width: 230px; position: fixed; left: 0; top: 0; background: #343a40; padding-top: 20px; }
    .sidebar a { display: block; padding: 12px 20px; color: white; text-decoration: none; font-size: 16px; }
    .sidebar a:hover { background: #495057; }
    .sidebar-title { color: #fff; font-weight: bold; font-size: 20px; margin-left: 20px; margin-bottom: 20px; }
    .content { margin-left: 240px; padding: 20px; }
</style>

</head>
<body>

    <div class="sidebar">
        <div class="sidebar-title">ADMIN PANEL</div>

        <a href="admin-layout.jsp?page=videos">Video Manager</a>
        <a href="admin-layout.jsp?page=users">User Manager</a>

        <hr style="border-color:#777;">

        <a href="admin-layout.jsp?page=fav-count">Favorite Count Report</a>
        <a href="admin-layout.jsp?page=fav-users">Favorite Users Report</a>
        <a href="admin-layout.jsp?page=share">Share Report</a>
    </div>

    <div class="content">
        <% 
            // KHÔNG dùng tên biến 'page', vì nó trùng với biến implicit
            String view = request.getParameter("page");
            if (view == null || view.trim().length() == 0) {
                view = "videos";
            }

            if ("users".equals(view)) {
        %>
                <jsp:include page="admin-users.jsp" />
        <%
            } else if ("fav-count".equals(view)) {
        %>
                <jsp:include page="report-favorite-count.jsp" />
        <%
            } else if ("fav-users".equals(view)) {
        %>
                <jsp:include page="report-favorite-users.jsp" />
        <%
            } else if ("share".equals(view)) {
        %>
                <jsp:include page="report-share.jsp" />
        <%
            } else { // mặc định: videos
        %>
                <jsp:include page="admin-videos.jsp" />
        <%
            }
        %>
    </div>

</body>
</html>
