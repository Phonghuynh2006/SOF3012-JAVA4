<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${!empty sessionScope.user}">
    <b>Xin chào: ${sessionScope.user.fullname}</b>
</c:if>

</body>
</html>