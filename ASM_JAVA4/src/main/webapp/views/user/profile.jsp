<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Profile</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body class="container mt-5">

<div class="row justify-content-center">
  <div class="col-md-5">
    <div class="card p-4 shadow-sm">
        <h3 class="fw-bold mb-3 text-center">My Profile</h3>

        <form>
            <label class="form-label">Fullname</label>
            <input class="form-control mb-2" type="text">

            <label class="form-label">Email</label>
            <input class="form-control mb-3" type="email">

            <button class="btn btn-success w-100">Update Profile</button>
        </form>

    </div>
  </div>
</div>

</body>
</html>
