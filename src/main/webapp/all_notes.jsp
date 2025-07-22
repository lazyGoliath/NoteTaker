<%@page
	import="org.hibernate.Session, com.helper.FactoryProvider, org.hibernate.query.Query, com.entities.Note, java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>View Notes</title>
	<%@include file="all_js_css.jsp"%>
</head>
<body>

	<div>
		<%@include file="navbar.jsp"%>

		<div class="container mt-5">
			<h1 class="text-center mb-4">You can see all your notes here.</h1>

			<%
			Session s = FactoryProvider.getSessionFactory().openSession();
			Query<Note> q = s.createQuery("from Note", Note.class);
			List<Note> list = q.list();
			for(Note note : list){
			%>

			<!-- Note Card -->
			<div class="card mt-4 mx-5 shadow-sm">
				<img src="img/pencil.png" style="max-width: 100px;" class="card-img-top m-4 mx-auto" alt="Card-image">
				<div class="card-body px-5">
					<h5 class="card-title text-center">
						<i><%= note.getTitle() %></i>
					</h5>
					<p class="card-text"><%= note.getContent() %></p>
					<p class="card-date text-center text-primary">
						<b><%= note.getAddedDate() %></b>
					</p>
					<div class="container text-center mb-3">
						<a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger me-2">Delete</a>
						<a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-secondary">Update</a>
					</div>
				</div>
			</div>

			<%
			System.out.println(note.getId()+" : "+note.getTitle()+"<br>");
			}
			%>
		</div>
	</div>

</body>
</html>