<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Video yêu thích của người dùng</title>
</head>
<body>
<h2>Danh sách video yêu thích</h2>

<c:if test="${not empty error}">
    <p style="color:red">${error}</p>
</c:if>

<c:if test="${not empty user}">
    <p>Người dùng: <strong>${user.fullname} (${user.id})</strong></p>

    <table border="1" cellpadding="5" cellspacing="0">
        <tr>
            <th>STT</th>
            <th>Tiêu đề video</th>
            <th>Ngày thích</th>
        </tr>
        <c:forEach var="fav" items="${favorites}" varStatus="st">
            <tr>
                <td>${st.index + 1}</td>
                <td>${fav.video.title}</td>
                <td>${fav.likeDate}</td>
            </tr>
        </c:forEach>
    </table>
</c:if>

</body>
</html>
