<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Quản lý Video</title>

    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet"/>

    <!-- FIX đường dẫn CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/layout/adminstyle.css">
</head>

<body>

<c:set var="page" value="videos"/>

<div class="admin-layout">

    <!-- SIDEBAR -->
    <jsp:include page="sidebar.jsp" />

    <!-- MAIN -->
    <main class="admin-main">
        <div class="admin-main-inner">

            <!-- HEADER -->
            <jsp:include page="header.jsp">
                <jsp:param name="title" value="Quản lý Video"/>
                <jsp:param name="subtitle" value="Thêm – Sửa – Xóa Video"/>
            </jsp:include>


            <!-- FORM THÊM/SỬA VIDEO -->
            <div class="table-card" style="margin-bottom:30px;">
                <div class="table-wrapper">

                    <form class="admin-form" method="post" action="videos">

                        <input type="hidden" name="id" value="${video.id}" />

                        <div class="form-row">
                            <label>Tên Video</label>
                            <input type="text" name="title" class="form-input"
                                   value="${video.title}" required>
                        </div>

                        <div class="form-row">
                            <label>Link Thumbnail</label>
                            <input type="text" name="poster" class="form-input"
                                   value="${video.poster}" required>
                        </div>

                        <div class="form-row">
                            <label>Youtube ID</label>
                            <input type="text" name="youtubeId" class="form-input"
                                   value="${video.youtubeId}" required>
                        </div>

                        <div class="form-row">
                            <label>Mô tả</label>
                            <textarea name="description" class="form-input" rows="3">${video.description}</textarea>
                        </div>

                        <div class="form-row">
                            <button class="primary-btn" type="submit" name="action"
                                    value="${video == null ? 'create' : 'update'}">
                                <span class="material-symbols-outlined">save</span>
                                <span>${video == null ? "Thêm Video" : "Cập nhật Video"}</span>
                            </button>

                            <c:if test="${video != null}">
                                <a href="videos" class="primary-btn cancel-btn">
                                    <span class="material-symbols-outlined">close</span>
                                    Hủy chỉnh sửa
                                </a>
                            </c:if>
                        </div>

                    </form>

                </div>
            </div>


            <!-- DANH SÁCH VIDEO -->
            <div class="table-card">
                <div class="table-wrapper">

                    <table class="admin-table">
                        <thead>
                        <tr>
                            <th>Poster</th>
                            <th>Tiêu đề</th>
                            <th>Mô tả</th>
                            <th>Lượt xem</th>
                            <th>Trạng thái</th>
                            <th>Hành động</th>
                        </tr>
                        </thead>

                        <tbody>

                        <c:forEach var="v" items="${list}">
                            <tr>

                                <!-- Thumbnail -->
                                <td>
                                    <img src="${v.poster}" class="thumb-img">
                                </td>

                                <td>${v.title}</td>

                                <td style="max-width:300px; white-space:nowrap; overflow:hidden; text-overflow:ellipsis;">
                                    ${v.description}
                                </td>

                                <td>${v.views}</td>

                                <td>
                                    <span class="badge ${v.active ? 'badge-green' : 'badge-red'}">
                                        ${v.active ? "Công khai" : "Ẩn"}
                                    </span>
                                </td>

                                <td>
                                    <div class="action-buttons">

                                        <!-- EDIT -->
                                        <a class="icon-btn" href="videos?action=edit&id=${v.id}">
                                            <span class="material-symbols-outlined">edit</span>
                                        </a>

                                        <!-- DELETE -->
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

            <!-- FOOTER -->
            <jsp:include page="footer.jsp"/>

        </div>
    </main>

</div>

</body>
</html>
