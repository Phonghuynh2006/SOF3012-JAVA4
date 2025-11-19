<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thống kê chia sẻ</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f5f5f5;
            padding: 30px;
        }
        table {
            background: white;
            border-collapse: collapse;
            width: 800px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        th, td {
            border: 1px solid #ccc;
            padding: 10px;
        }
        th {
            background: #0066cc;
            color: white;
        }
        h2 {
            color: #333;
        }
    </style>
</head>
<body>

<h2>Thống kê chia sẻ video</h2>

<table>
    <tr>
        <th>Tiêu đề video</th>
        <th>Số lượt chia sẻ</th>
        <th>Ngày chia sẻ đầu tiên</th>
        <th>Ngày chia sẻ gần nhất</th>
    </tr>

    <c:forEach var="row" items="${summaries}">
        <tr>
            <td>${row[0]}</td> <!-- video title -->
            <td>${row[1]}</td> <!-- số lượt share -->
            <td>${row[2]}</td> <!-- min date -->
            <td>${row[3]}</td> <!-- max date -->
        </tr>
    </c:forEach>
</table>

</body>
</html>
