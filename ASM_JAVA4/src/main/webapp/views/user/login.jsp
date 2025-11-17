<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body class="container mt-5">

<div class="row justify-content-center">
  <div class="col-md-4">
    <div class="card p-4 shadow-sm">
        <h4 class="text-center mb-3 fw-bold">Login</h4>

        <form>
            <label class="form-label">Username</label>
            <input class="form-control mb-2" type="text">

            <label class="form-label mt-2">Password</label>
            <input class="form-control mb-3" type="password">

            <button class="btn btn-primary w-100">Sign In</button>

            <div class="d-flex justify-content-between mt-3">
                <a href="register.jsp">Create Account</a>
                <a href="forgot-password.jsp">Forgot Password?</a>
            </div>
        </form>
    </div>
  </div>
</div>

</body>
</html>
