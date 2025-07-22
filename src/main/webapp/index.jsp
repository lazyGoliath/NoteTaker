<!doctype html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <%@include file="all_js_css.jsp"%>

  <title>NoteTaker</title>
</head>
<body>

  <!-- Navbar -->
  <%@include file="navbar.jsp"%>

  <!-- Hero Section -->
  <div class="container-fluid p-0 m-0">
    <section class="py-5 text-center bg-light">
      <div class="container">
        <h1 class="display-5 fw-bold text-dark">Welcome to NoteTaker</h1>
        <p class="lead text-muted">Capture your thoughts, ideas, and reminders in one place.</p>

        <div class="card mx-auto mt-4 border-0 bg-transparent" style="max-width: 450px;">
          <img src="img/pencil.png" alt="Note Illustration" class="img-fluid">
        </div>

        <h2 class="text-primary text-uppercase mt-5">Start taking down your notes</h2>

        <div class="mt-4">
          <a href="add_notes.jsp" class="btn btn-primary btn-lg shadow-sm">Start Here</a>
        </div>
      </div>
    </section>
  </div>

</body>
</html>
