<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<h2 class="fw-bold mb-3">Video Manager</h2>

<div class="card p-4 shadow-sm mb-4">
	<h5 class="fw-bold mb-3">Video Form</h5>

	<form class="row g-3">

		<div class="col-md-4">
			<label class="form-label">Video ID</label>
			<input class="form-control">
		</div>

		<div class="col-md-8">
			<label class="form-label">Title</label>
			<input class="form-control">
		</div>

		<div class="col-md-12">
			<label class="form-label">Description</label>
			<textarea class="form-control" rows="3"></textarea>
		</div>

		<div class="col-md-6">
			<label class="form-label">Poster URL (YouTube Thumbnail)</label>
			<input class="form-control">
		</div>

		<div class="col-md-6">
			<label class="form-label">YouTube ID</label>
			<input class="form-control">
		</div>

		<div class="col-md-4">
			<label class="form-label">Views</label>
			<input class="form-control" type="number">
		</div>

		<div class="col-md-4">
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

<h5 class="fw-bold mb-2">Video List</h5>

<table class="table table-striped table-bordered shadow-sm">
	<thead class="table-dark">
		<tr>
			<th>ID</th>
			<th>Title</th>
			<th>Views</th>
			<th>Active</th>
		</tr>
	</thead>

	<tbody>
		<tr>
			<td>V1</td>
			<td>Funny Video</td>
			<td>1234</td>
			<td>true</td>
		</tr>
	</tbody>
</table>
