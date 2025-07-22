<nav class="navbar navbar-expand-lg navbar-dark gray bg-body-tertiary">
	<div class="container">
		<a class="navbar-brand me-3" href="#">NoteTaker</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<!-- Align entire navbar content properly -->
		<div class="collapse navbar-collapse d-flex justify-content-between align-items-center" id="navbarSupportedContent">

			<!-- Grouped Nav Items -->
			<ul class="navbar-nav d-flex flex-row align-items-center gap-3 mb-2 mb-lg-0">
				<li class="nav-item">
					<a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="add_notes.jsp">Add Notes</a>
				</li>

				<!-- <li class="nav-item dropdown">
		          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
		            Dropdown
		          </a>
		          <ul class="dropdown-menu">
		            <li><a class="dropdown-item" href="#">Action</a></li>
		            <li><a class="dropdown-item" href="#">Another action</a></li>
		            <li><hr class="dropdown-divider"></li>
		            <li><a class="dropdown-item" href="#">Something else here</a></li>
		          </ul>
		        </li> -->

				<li class="nav-item">
					<a class="nav-link" aria-disabled="true" href="all_notes.jsp">Show Notes</a>
				</li>
			</ul>

			<!-- Centered Search Form with button slightly to the right -->
			<div class="mx-auto w-50">
				<form class="d-flex justify-content-center" role="search">
					<input class="form-control me-2 r-3 w-75" type="search"
						placeholder="Search" aria-label="Search" />
					<button class="btn btn-outline-light r-2" type="submit">Search</button>
				</form>
			</div>

		</div>
	</div>
</nav>
