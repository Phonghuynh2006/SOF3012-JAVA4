<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product</title>
</head>
<body>

<h2>phong</h2>

<form method="post" action="product">
    <input type="hidden" name="id" value="${product.id}">

    Name:
    <input name="name" value="${product.name}"><br><br>

    Price:
    <input name="price" value="${product.price}"><br><br>

    Quantity:
    <input name="quantity" value="${product.quantity}"><br><br>

    <button type="submit">Save</button>
    
        <button type="button"
            onclick="location.href='product?action=reset'">
        Reset
    </button>
</form>


<h3>danh sásch</h3>

<table border="1" cellpadding="5">
<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Price</th>
    <th>Quantity</th>
    <th>Action</th>
</tr>

<c:forEach var="p" items="${list}">
<tr>
    <td>${p.id}</td>
    <td>${p.name}</td>
    <td>${p.price}</td>
    <td>${p.quantity}</td>
    <td>
        <a href="product?action=edit&id=${p.id}">Edit</a>
        <a href="product?action=delete&id=${p.id}"
   onclick="return confirm('Bạn có chắc chắn muốn xóa sản phẩm này không?')">
   Delete
</a>
    </td>
</tr>
</c:forEach>

</table>



</body>
</html>
