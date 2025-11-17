<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Entertainment</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600&display=swap" rel="stylesheet">

<style>
body { font-family: 'Inter', sans-serif; background-color: #f7f7f7; }
.navbar-brand { font-weight: 600; }
footer { background: #eee; padding: 10px 0; margin-top: 40px; }
</style>

</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark shadow-sm">
  <div class="container">
    <a class="navbar-brand" href="home.jsp">Online Entertainment</a>

    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
            data-bs-target="#navbarNav"><span class="navbar-toggler-icon"></span></button>

    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav me-auto">
        <li class="nav-item"><a class="nav-link" href="home.jsp">Home</a></li>
        <li class="nav-item"><a class="nav-link" href="favorites.jsp">My Favorites</a></li>
      </ul>

      <ul class="navbar-nav">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown">My Account</a>
          <ul class="dropdown-menu dropdown-menu-end">
            <li><a class="dropdown-item" href="login.jsp">Login</a></li>
            <li><a class="dropdown-item" href="register.jsp">Registration</a></li>
            <li><a class="dropdown-item" href="forgot-password.jsp">Forgot Password</a></li>
            <li><a class="dropdown-item" href="change-password.jsp">Change Password</a></li>
            <li><a class="dropdown-item" href="profile.jsp">Edit Profile</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item text-danger" href="#">Logoff</a></li>
          </ul>
        </li>
      </ul>
    </div>

  </div>
</nav>

<div class="container mt-4">
    <jsp:include page="home.jsp"/>
</div>

<footer>
  <div class="container text-center text-muted">
    © 2025 Online Entertainment
  </div>
</footer>

</body>
</html>
