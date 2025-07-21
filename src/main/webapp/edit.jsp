<%@page import="org.hibernate.Session, com.helper.FactoryProvider, com.entities.Note" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Note</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>

<div>
<%@include file="navbar.jsp"%>

<h1>Start editing your note here.</h1>

<%
int noteId = Integer.parseInt(request.getParameter("note_id").trim());

Session s = FactoryProvider.getSessionFactory().openSession();
Note note = s.find(Note.class, noteId);
%>

<!-- this is add form -->

		<form action="UpdateServlet" method="post">
			<div class="mb-3">
				<input value="<%= note.getId() %>" name="noteId" type="hidden" />
				<label for="title" class="form-label">Note Title</label> <input
					name="title" required placeholder="Enter your title here"
					value="<%= note.getTitle() %>"
					type="text" class="form-control" id="title"
					aria-describedby="emailHelp">
				<div id="titleHelp" class="form-text">Summarize your note
					here.</div>
			</div>
			<div class="mb-3">
				<label for="content" class="form-label">Note Content</label>
				<textarea id="content" required name="content"
					placeholder="Enter your content here" class="form-control"
					style="height: 100px"><%= note.getContent() %></textarea>
			</div>

			<div class="container text-centre">
				<button type="submit" class="btn btn-success">Update Note</button>
			</div>
		</form>
</div>
</body>
</html>