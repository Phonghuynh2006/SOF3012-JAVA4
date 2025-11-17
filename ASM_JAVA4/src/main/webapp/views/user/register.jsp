<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body class="container mt-5">

<div class="row justify-content-center">
  <div class="col-md-5">
    <div class="card p-4 shadow-sm">
        <h3 class="fw-bold text-center mb-4">Create Account</h3>

        <form>
            <label class="form-label">Username</label>
            <input class="form-control" type="text">

            <label class="form-label mt-3">Password</label>
            <input class="form-control" type="password">

            <label class="form-label mt-3">Confirm Password</label>
            <input class="form-control" type="password">

            <label class="form-label mt-3">Fullname</label>
            <input class="form-control" type="text">

            <label class="form-label mt-3">Email</label>
            <input class="form-control" type="email">

            <button class="btn btn-success w-100 mt-4">Register</button>
        </form>
    </div>
  </div>
</div>

</body>
</html>
