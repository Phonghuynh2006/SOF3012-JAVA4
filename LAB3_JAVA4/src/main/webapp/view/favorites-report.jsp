<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách yêu thích</title>
</head>
<body>
    <h2>Danh sách video đã được yêu thích</h2>
    <table border="1" cellpadding="6" cellspacing="0">
        <tr>
            <th>Video Title</th>
            <th>Người thích</th>
            <th>Ngày thích</th>
        </tr>
        <c:forEach var="f" items="${items}">
            <tr>
                <td>${f.video.title}</td>
                <td>${f.user.fullname}</td>
                <td><fmt:formatDate value="${f.likedDate}" pattern="dd/MM/yyyy"/></td>
            </tr>
        </c:forEach>

        <c:if test="${empty items}">
            <tr><td colspan="3"><i>Chưa có lượt yêu thích nào.</i></td></tr>
        </c:if>
    </table>
</body>
</html>
