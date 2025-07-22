<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Add notes</title>
	<%@include file="all_js_css.jsp"%>
</head>
<body>

	<!-- Navbar -->
	<%@include file="navbar.jsp"%>

	<!-- Main Content -->
	<div class="container mt-5">

		<h1 class="text-center mb-4">Add your notes here</h1>

		<div class="text-center">
			<img src="img/pencil.png" style="max-width: 100px;" class="card-img-top m-4" alt="Card-image">
		</div>

		<!-- this is add form -->
		<form action="SaveNoteServlet" method="post" class="p-4 shadow rounded bg-light">
			<div class="mb-3">
				<label for="title" class="form-label">Note Title</label>
				<input name="title" required placeholder="Enter your title here"
					type="text" class="form-control" id="title"
					aria-describedby="titleHelp">
				<div id="titleHelp" class="form-text">Summarize your note here.</div>
			</div>

			<div class="mb-3">
				<label for="content" class="form-label">Note Content</label>
				<textarea id="content" required name="content"
					placeholder="Enter your content here" class="form-control"
					style="height: 100px;"></textarea>
			</div>

			<div class="text-center">
				<button type="submit" class="btn btn-primary">Save Note</button>
			</div>
		</form>

	</div>

</body>
</html>
