<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
.card:hover { transform: translateY(-5px); transition: 0.2s; }
.video-title { font-size: 18px; font-weight: 600; }
</style>
</head>

<body>

<h2 class="mb-4 fw-bold">Top Videos</h2>

<div class="row g-4">

    <!-- loop từng video -->
    <%
        String[][] videos = {
         {"yGyO4Yy68fk","Video 1"},
         {"V778Np-6SG0","Video 2"},
         {"yKaCVOc1NYs","Video 3"},
         {"rQwe9NYz200","Video 4"},
         {"Mn3yUhfXoUY","Video 5"},
         {"46lMx_UGkK0","Video 6"},
         {"llTJ0DDf9kI","Video 7"}
        };
        for(String[] v : videos){
    %>

    <div class="col-md-4">
        <div class="card shadow-sm">
            <img src="https://img.youtube.com/vi/<%=v[0]%>/hqdefault.jpg" class="card-img-top">
            <div class="card-body">
                <p class="video-title"><%=v[1]%></p>

                <a href="detail.jsp?v=<%=v[0]%>" class="btn btn-primary btn-sm">Watch</a>
                <button class="btn btn-outline-success btn-sm">Like</button>
                <button class="btn btn-outline-secondary btn-sm">Share</button>
            </div>
        </div>
    </div>

    <% } %>

</div>

</body>
</html>
