<!DOCTYPE html>
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
					<c:if test="${!empty user.id}">
						<nav>
							<ul class="nav nav-pills pull-right">
								<li><a href="<c:url value="/index" />">Home</a></li>
								<li class="active"><a href="<c:url value="/user/edit" />">Account</a></li>
								<li><a href="<c:url value="/about" />">About</a></li>
								<li><a href="<c:url value="/logout" />">Logout</a></li>
							</ul>
						</nav>
					</c:if>
					<h3 class="text-muted">System Task</h3>
					<hr>
				</div>
				<form action="<c:url value="/users/save"></c:url>" method="post" class="form-horizontal">
					<input type="hidden" name="user.id" value="${user.id}" id="userId">
					<div class="jumbotron">
						<h3>Create new account</h3>
						<label>Name</label>
						<input name="user.name" value="${user.name}" placeholder="Digit your name" type="text" class="form-control">
						<label>Email</label>
						<input name="user.email" value="${user.email}" placeholder="Digit your email" type="text" class="form-control">
						<label>Password</label>
						<input name="user.password" value="${user.password}" placeholder="Digit your password" type="password" class="form-control">
						<label>Confirm</label>
						<input name="user.confirmPassword" value="${user.confirmPassword}" placeholder="Confirm your password" type="password" class="form-control">
						<div class="buttons">
							<button type="submit" class="btn btn-success btn-block"><fmt:message key="btn.save" /></button>
							<c:if test="${empty user.id}">
								<a href="<c:url value="/login" />" class="btn btn-default btn-block"><fmt:message key="btn.cancel" /></a>
							</c:if>
							<c:if test="${!empty user.id}">
								<a href="<c:url value="/index" />" class="btn btn-default btn-block"><fmt:message key="btn.cancel" /></a>
							</c:if>
						</div>
					</div>
				</form>
			</div>
		</div>
		<script src="${context}/js/bootstrap.min.js"></script>
	</body>
</html>