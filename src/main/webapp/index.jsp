<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<%@include file="all_js_css.jsp" %>
    
    <title>NoteTaker</title>
  </head>
  <body>
    
    <div class="container-fluid p-0 m-0">
    	<%@include file="navbar.jsp" %>
    	
    	<h1>This is home page</h1>
    	<br><br>
    	
    	<div class="card">
    	<img alt="" src="img/pencil.png" class="image-fluid mx-auto" style="max-width:400px" />
    	</div>
    	
    	<br>
    	<h1 class="text-primary text-uppercase text-center mt-5 ">
    	Start taking down your notes.
    	</h1>
    	
    	<div class="container text-center">
    	<a href="add_notes.jsp" class="btn btn-outline-primary">Start here</a>
    	</div>
    </div>
    
  </body>
</html>