<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Favorites</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body class="container mt-4">

<h3 class="fw-bold mb-4">My Favorite Videos</h3>

<div class="row g-4">

    <!-- Example favorite video -->
    <div class="col-md-4">
        <div class="card">
            <img src="https://img.youtube.com/vi/yGyO4Yy68fk/hqdefault.jpg" class="card-img-top">
            <div class="card-body">
                <h5>Funny Video</h5>
                <a href="detail.jsp?v=yGyO4Yy68fk" class="btn btn-primary btn-sm">Watch</a>
                <button class="btn btn-danger btn-sm">Unlike</button>
            </div>
        </div>
    </div>

</div>

</body>
</html>
