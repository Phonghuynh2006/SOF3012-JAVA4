<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách video đã được yêu thích</title>
</head>
<body>
<h2>Danh sách video đã được yêu thích</h2>

<table border="1" cellpadding="5" cellspacing="0">
    <tr>
        <th>STT</th>
        <th>Video Title</th>
        <th>Người thích</th>
        <th>Ngày thích</th>
    </tr>
    <c:forEach var="fav" items="${favorites}" varStatus="st">
        <tr>
            <td>${st.index + 1}</td>
            <td>${fav.video.title}</td>
            <td>${fav.user.fullname}</td>
            <td>${fav.likeDate}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
