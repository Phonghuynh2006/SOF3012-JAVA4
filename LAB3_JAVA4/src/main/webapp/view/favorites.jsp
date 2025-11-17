<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>${user.fullname}</h2>
<h3>Các video đã yêu thích:</h3>

<ul>
  <c:forEach var="fav" items="${favorites}">
    <li>${fav.video.title}</li>
  </c:forEach>
</ul>

<c:if test="${empty favorites}">
  <p><i>Người dùng chưa thích video nào.</i></p>
</c:if>
</body>
</html>