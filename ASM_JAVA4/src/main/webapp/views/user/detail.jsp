<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Video Detail</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
iframe { border-radius: 12px; }
</style>

</head>
<body class="container mt-4">

<%
    String vid = request.getParameter("v");
    if(vid == null) vid = "yGyO4Yy68fk";
%>

<div class="row">
    <div class="col-md-8">
        <div class="ratio ratio-16x9 mb-3">
            <iframe src="https://www.youtube.com/embed/<%=vid%>" allowfullscreen></iframe>
        </div>

        <h4 class="fw-bold">Now Watching</h4>
        <p class="text-muted">Video ID: <%=vid%></p>

        <button class="btn btn-success btn-sm">Like</button>
        <a href="share.jsp?v=<%=vid%>" class="btn btn-secondary btn-sm">Share</a>
    </div>

    <div class="col-md-4">
        <h5 class="fw-bold">Related Videos</h5>
        <ul class="list-group shadow-sm">
            <li class="list-group-item">Funny Video A</li>
            <li class="list-group-item">Funny Video B</li>
        </ul>
    </div>
</div>

</body>
</html>
