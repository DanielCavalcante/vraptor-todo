<html>
	<head>
		<meta charset="UTF-8">
		<title>VRaptor TODO</title>
		<link href="${context}/css/bootstrap.min.css" rel="stylesheet" >
		<style type="text/css">
			.col-md-8 {
				margin-top: 10px;
			}
		</style>
	</head>
	<body>
		<div class="container">
			<div class="header clearfix" style="margin-top: 10px;">
				<nav>
					<ul class="nav nav-pills pull-right">
						<li class="active"><a href="<c:url value="/index" />">Home</a></li>
						<li><a href="<c:url value="/logout" />">Account</a></li>
						<li><a href="<c:url value="/logout" />">About</a></li>
						<li><a href="<c:url value="/logout" />">Logout</a></li>
					</ul>
				</nav>
				<h3 class="text-muted">System Task</h3>
				<hr>
			</div>
			<form action="<c:url value="/tasks/update" />" method="post">
				<input type="hidden" name="task.id" value="${task.id}">
				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="col-md-8">
								<label>Title</label>
								<input name="task.title" value="${task.title}" type="text" placeholder="Digit your task" class="form-control">
							</div>
							<div class="col-md-8">
								<label>Created on</label>
								<input name="task.createdOn" value="${task.createdOn}" type="text" disabled class="form-control">
							</div>
							<div class="col-md-8">
								<input name="task.done" value="${task.done}" type="checkbox">
								<label>Done</label>
							</div>
						</div>
						<div class="col-md-12">
							<div class="row">
								<div class="col-md-6">
									<button type="submit" class="btn btn-success btn-block">Salvar</button>
								</div>
								<div class="col-md-6">
									<a href="${linkTo[IndexController].index()}" class="btn btn-default btn-block">Cancelar</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
		<script src="${context}/js/lib/jquery-2.1.4.min.js"></script>
		<script src="${context}/js/lib/bootstrap.min.js"></script>
	</body>
</html>