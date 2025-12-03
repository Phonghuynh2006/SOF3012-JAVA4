<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Quản lý Video</title>

    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet"/>

    <link rel="stylesheet" href="layout/adminsytle.css">
</head>
<style> .video-form { padding: 20px; } .video-form .form-row { margin-bottom: 15px; display: flex; flex-direction: column; } .video-form label { font-weight: 600; margin-bottom: 5px; color: #1a3d7c; /* Xanh dương đậm */ } .form-input { padding: 10px 12px; background: #ffffff; /* Nền trắng */ border: 1px solid #1a73e8; /* Viền xanh dương */ border-radius: 8px; color: #1a3d7c; /* Chữ xanh dương đậm */ font-size: 15px; } .form-input:focus { border-color: #0b57d0; /* Xanh dương tươi */ box-shadow: 0 0 5px rgba(11, 87, 208, 0.4); } textarea.form-input { resize: vertical; } </style>
<body>

<div class="admin-layout">

    <!-- SIDEBAR -->
    <jsp:include page="sidebar.jsp"/>

    <!-- MAIN -->
    <main class="admin-main">
        <div class="admin-main-inner">

            <!-- HEADER -->
            <jsp:include page="header.jsp">
                <jsp:param name="title" value="Quản lý Video"/>
                <jsp:param name="subtitle" value="Thêm – Sửa – Xóa Video"/>
            </jsp:include>


            <!-- ======================= FORM THÊM / SỬA VIDEO ======================= -->
            <div class="table-card" style="margin-bottom: 30px;">
                <div class="table-wrapper">

                    <form class="video-form" method="post" action="videos">
                        <input type="hidden" name="id" value="${video.id}"/>

                        <div class="form-row">
                            <label>Tên Video</label>
                            <input type="text" name="title" class="form-input"
                                   value="${video.title}" placeholder="Nhập tên video..." required>
                        </div>

                        <div class="form-row">
                            <label>Link Thumbnail</label>
                            <input type="text" name="poster" class="form-input"
                                   value="${video.poster}" placeholder="Dán link thumbnail tại đây..." required>
                        </div>

                        <div class="form-row">
                            <label>Youtube ID</label>
                            <input type="text" name="youtubeId" class="form-input"
                                   value="${video.youtubeId}" placeholder="VD: dQw4w9WgXcQ" required>
                        </div>

                        <div class="form-row">
                            <label>Mô tả</label>
                            <textarea name="description" class="form-input" rows="3"
                                      placeholder="Nhập mô tả video...">${video.description}</textarea>
                        </div>

                        <div class="form-row">
                            <button class="primary-btn" type="submit" name="action"
                                    value="${empty video ? 'create' : 'update'}">
                                <span class="material-symbols-outlined">save</span>
                                <span>${empty video ? 'Thêm Video' : 'Cập nhật Video'}</span>
                            </button>

                            <c:if test="${not empty video}">
                                <a href="videos" class="primary-btn" style="background:#888;">
                                    <span class="material-symbols-outlined">close</span> Hủy chỉnh sửa
                                </a>
                            </c:if>
                        </div>
                    </form>

                </div>
            </div>


            <!-- ======================= DANH SÁCH VIDEO ======================= -->
            <div class="table-card">
                <div class="table-wrapper">

                    <table class="video-table">
                        <thead>
                        <tr>
                            <th>Thumbnail</th>
                            <th>Tên Video</th>
                            <th>Mô tả</th>
                            <th>Lượt xem</th>
                            <th>Trạng thái</th>
                            <th>Hành Động</th>
                        </tr>
                        </thead>

                        <tbody>
                        <c:forEach var="v" items="${list}">
                            <tr>
                                <td>
                                    <img class="thumb-img" src="${v.poster}"
                                         style="width:120px; border-radius:8px;">
                                </td>

                                <td>${v.title}</td>
                                <td style="max-width:300px;">${v.description}</td>
                                <td>${v.views}</td>

                                <td>
                                    <span class="status-badge ${v.active ? 'status-public' : 'status-hidden'}">
                                        <c:choose>
                                            <c:when test="${v.active}">Công khai</c:when>
                                            <c:otherwise>Ẩn</c:otherwise>
                                        </c:choose>
                                    </span>
                                </td>

                                <td>
                                    <div class="action-buttons">

                                        <!-- NÚT SỬA -->
                                        <a class="icon-btn" href="videos?action=edit&id=${v.id}">
                                            <span class="material-symbols-outlined">edit</span>
                                        </a>

                                        <!-- NÚT XÓA -->
                                        <form method="post" action="videos" style="display:inline;">
                                            <input type="hidden" name="id" value="${v.id}">
                                            <button class="icon-btn delete" name="action" value="delete"
                                                    onclick="return confirm('Xóa video này?');">
                                                <span class="material-symbols-outlined">delete</span>
                                            </button>
                                        </form>

                                    </div>
                                </td>
                            </tr>
                        </c:forEach>

                        <c:if test="${empty list}">
                            <tr>
                                <td colspan="6" style="text-align:center; padding:20px;">
                                    Chưa có video nào.
                                </td>
                            </tr>
                        </c:if>

                        </tbody>
                    </table>

                </div>
            </div>

            <!-- ===== FOOTER ===== -->
            <jsp:include page="footer.jsp"/>

        </div>
    </main>
</div>

</body>
</html>
