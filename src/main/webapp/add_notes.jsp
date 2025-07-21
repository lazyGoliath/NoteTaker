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

	<div>
		<%@include file="navbar.jsp"%>

		<h1>Add your notes here</h1>
		<br><br>
		<img src="img/pencil.png" style="max-width:100px;" class="card-img-top m-4" alt="Card-image">

		<!-- this is add form -->

		<form action="SaveNoteServlet" method="post">
			<div class="mb-3">
				<label for="title" class="form-label">Note Title</label> <input
					name="title" required placeholder="Enter your title here"
					type="text" class="form-control" id="title"
					aria-describedby="emailHelp">
				<div id="titleHelp" class="form-text">Summarize your note
					here.</div>
			</div>
			<div class="mb-3">
				<label for="content" class="form-label">Note Content</label>
				<textarea id="content" required name="content"
					placeholder="Enter your content here" class="form-control"
					style="height: 100px"></textarea>
			</div>

			<div class="container text-centre">
				<button type="submit" class="btn btn-primary">Save Note</button>
			</div>
		</form>
	</div>

</body>
</html>