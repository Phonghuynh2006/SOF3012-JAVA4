<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Change Password</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="container mt-5">

<div class="row justify-content-center">
  <div class="col-md-4">
    <div class="card p-4 shadow-sm">
        <h4 class="text-center fw-bold mb-3">Change Password</h4>

        <form>
            <label class="form-label">Current Password</label>
            <input type="password" class="form-control mb-3">

            <label class="form-label">New Password</label>
            <input type="password" class="form-control mb-3">

            <label class="form-label">Confirm Password</label>
            <input type="password" class="form-control mb-3">

            <button class="btn btn-warning w-100">Update Password</button>
        </form>
    </div>
  </div>
</div>

</body>
</html>
