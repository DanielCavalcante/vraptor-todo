<html>
	<head>
		<meta charset="UTF-8">
		<title>VRaptor TODO</title>
		<link href="${context}/css/bootstrap.min.css" rel="stylesheet" >
		<link href="${context}/css/style.css" rel="stylesheet" >
	</head>
	<body>
		<div class="container">
			<div class="col-md-8 centered">
				<div class="header clearfix" style="margin-top: 10px;">
					<nav>
						<ul class="nav nav-pills pull-right">
							<li><a href="<c:url value="/index" />">Home</a></li>
							<li><a href="<c:url value="/users/edit" />">Account</a></li>
							<li class="active"><a href="<c:url value="/about" />">About</a></li>
							<li><a href="<c:url value="/logout" />">Logout</a></li>
						</ul>
					</nav>
					<h3 class="text-muted">System Task</h3>
					<hr>
				</div>
				<div class="jumbotron">
					<h3>System Task</h3>
					<p>O System Task, foi criado usando o VRaptor na sua última versão (4.0.0).</p>
				</div>
			</div>
		</div>
		<script src="${context}/js/lib/jquery-2.1.4.min.js"></script>
		<script src="${context}/js/lib/bootstrap.min.js"></script>
	</body>
</html>