<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<h2 class="fw-bold mb-3">User Manager</h2>

<div class="card p-4 shadow-sm mb-4">
	<h5 class="fw-bold mb-3">User Form</h5>

	<form class="row g-3">

		<div class="col-md-6">
			<label class="form-label">Username</label>
			<input class="form-control">
		</div>

		<div class="col-md-6">
			<label class="form-label">Password</label>
			<input class="form-control" type="password">
		</div>

		<div class="col-md-6">
			<label class="form-label">Fullname</label>
			<input class="form-control">
		</div>

		<div class="col-md-6">
			<label class="form-label">Email</label>
			<input class="form-control">
		</div>

		<div class="col-md-6">
			<label class="form-label">Admin</label>
			<select class="form-select">
				<option>true</option>
				<option>false</option>
			</select>
		</div>

		<div class="col-md-6">
			<label class="form-label">Active</label>
			<select class="form-select">
				<option>true</option>
				<option>false</option>
			</select>
		</div>

		<div class="col-12 mt-3">
			<button class="btn btn-success">Create</button>
			<button class="btn btn-primary">Update</button>
			<button class="btn btn-danger">Delete</button>
			<button class="btn btn-secondary">Reset</button>
		</div>

	</form>
</div>

<h5 class="fw-bold mb-2">User List</h5>

<table class="table table-striped table-bordered shadow-sm">
	<thead class="table-dark">
		<tr>
			<th>Username</th>
			<th>Fullname</th>
			<th>Email</th>
			<th>Active</th>
			<th>Admin</th>
		</tr>
	</thead>

	<tbody>
		<tr>
			<td>admin</td>
			<td>Administrator</td>
			<td>admin@gmail.com</td>
			<td>true</td>
			<td>true</td>
		</tr>
	</tbody>
</table>
