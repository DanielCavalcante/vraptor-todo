<html>
	<head>
		<meta charset="UTF-8">
		<link href="${context}/css/bootstrap.min.css" rel="stylesheet" >
		<link href="${context}/css/style.css" rel="stylesheet" >
		<title>VRaptor TODO</title>
	</head>
	<body>
		<div class="container">
			<div class="col-md-8 centered">
				<div class="header clearfix" style="margin-top: 10px;">
					<nav>
						<ul class="nav nav-pills pull-right">
							<li><a href="<c:url value="/index" />"><fmt:message key="menu.home" /></a></li>
							<li><a href="<c:url value="/users/edit" />"><fmt:message key="menu.account" /></a></li>
							<li><a href="<c:url value="/about" />"><fmt:message key="menu.about" /></a></li>
							<li><a href="<c:url value="/logout" />"><fmt:message key="menu.logout" /></a></li>
						</ul>
					</nav>
					<h3 class="text-muted"><fmt:message key="name.system" /></h3>
					<hr>
				</div>
				<form action="<c:url value="/tasks/update" />" method="post">
					<input type="hidden" name="task.id" value="${task.id}">
					<div class="row">
						<div class="col-md-12">
							<div class="row">
								<div class="col-md-8">
									<label><fmt:message key="task.title" /></label>
									<input name="task.title" value="${task.title}" type="text" placeholder="<fmt:message key="task.placeholder.title" />" class="form-control">
								</div>
								<div class="col-md-8">
									<label><fmt:message key="task.created.on" /></label> 
									<input name="task.createdOn" placeholder="<fmt:formatDate pattern="dd/MM/yyyy" value="${task.createdOn}"/>" type="text" disabled class="form-control">
								</div>
								<div class="col-md-8">
									<input name="task.done" value="${task.done}" checked="${task.done}" type="checkbox">
									<label><fmt:message key="task.done" /></label>
								</div>
							</div>
							<div class="col-md-12">
								<div class="buttons">
									<div class="row">
										<div class="col-md-4">
											<button type="submit" class="btn btn-success btn-block"><fmt:message key="btn.save" /></button>
										</div>
										<div class="col-md-4">
											<a href="${linkTo[IndexController].index()}" class="btn btn-default btn-block"><fmt:message key="btn.cancel" /></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>
				<hr>
				<footer class="footer">
					<p>&copy; Company 2014</p>
				</footer>
			</div>
		</div>
		<script src="${context}/js/lib/jquery-2.1.4.min.js"></script>
		<script src="${context}/js/lib/bootstrap.min.js"></script>
	</body>
</html>