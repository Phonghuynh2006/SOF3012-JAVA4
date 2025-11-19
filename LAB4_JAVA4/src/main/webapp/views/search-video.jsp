<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tìm kiếm video</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f5f5f5;
            padding: 30px;
        }
        h2 {
            color: #333;
        }
        form {
            margin-bottom: 20px;
            background: #fff;
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0 0 8px rgba(0,0,0,0.1);
        }
        input[type=text] {
            padding: 8px;
            width: 250px;
            margin-right: 10px;
        }
        button {
            padding: 8px 14px;
            cursor: pointer;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background: #fff;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        th, td {
            border: 1px solid #ccc;
            padding: 8px 10px;
            text-align: left;
        }
        th {
            background: #0066cc;
            color: #fff;
        }
        .no-result {
            margin-top: 10px;
            color: #999;
        }
        .active-yes {
            color: green;
            font-weight: bold;
        }
        .active-no {
            color: red;
            font-weight: bold;
        }
    </style>
</head>
<body>

<h2>Tìm kiếm video theo từ khóa</h2>

<form action="search" method="get">
    <label>Từ khóa:</label>
    <input type="text" name="keyword" value="${keyword}" placeholder="Nhập tên video..." />
    <button type="submit">Tìm kiếm</button>
</form>

<c:if test="${empty videos}">
    <p class="no-result">Không có kết quả nào phù hợp.</p>
</c:if>

<c:if test="${not empty videos}">
    <table>
        <tr>
            <th>STT</th>
            <th>Tiêu đề</th>
            <th>Views</th>
            <th>Trạng thái</th>
            <th>Youtube ID</th>
        </tr>
        <c:forEach var="v" items="${videos}" varStatus="st">
            <tr>
                <td>${st.index + 1}</td>
                <td>${v.title}</td>
                <td>${v.views}</td>
                <td>
                    <c:choose>
                        <c:when test="${v.active}">
                            <span class="active-yes">Còn hiệu lực</span>
                        </c:when>
                        <c:otherwise>
                            <span class="active-no">Ngưng</span>
                        </c:otherwise>
                    </c:choose>
                </td>
                <td>${v.youtubeId}</td>
            </tr>
        </c:forEach>
    </table>
</c:if>

</body>
</html>
