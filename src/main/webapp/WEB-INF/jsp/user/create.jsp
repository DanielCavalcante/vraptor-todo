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
								<li><a href="<c:url value="/index" />"><fmt:message key="menu.home" /></a></li>
								<li class="active"><a href="<c:url value="/users/edit" />"><fmt:message key="menu.account" /></a></li>
								<li><a href="<c:url value="/about" />"><fmt:message key="menu.about" /></a></li>
								<li><a href="<c:url value="/logout" />"><fmt:message key="menu.logout" /></a></li>
							</ul>
						</nav>
					</c:if>
					<h3 class="text-muted"><fmt:message key="name.system" /></h3>
					<hr>
				</div>
				<form action="<c:url value="/users/save"></c:url>" method="post" class="form-horizontal">
					<input type="hidden" name="user.id" value="${user.id}" id="userId">
					<div class="col-md-12">
						<msg:messages />
						<h3><fmt:message key="msg.create.new.accout" /></h3>
						<div class="row">
							<div class="col-md-8">
								<label><fmt:message key="user.name" /></label>
								<input name="user.name" value="${user.name}" placeholder="<fmt:message key="user.placeholder.name" />" type="text" class="form-control">
							</div>
							<div class="col-md-8">
								<label><fmt:message key="user.email" /></label>
								<input name="user.email" value="${user.email}" placeholder="<fmt:message key="user.placeholder.email" />" type="text" class="form-control">
							</div>
							<div class="col-md-8">
								<label><fmt:message key="user.password" /></label>
								<input name="user.password" value="${user.password}" placeholder="<fmt:message key="user.placeholder.password" />" type="password" class="form-control">
							</div>
							<div class="col-md-8">
								<label><fmt:message key="user.confirm.password" /></label>
								<input name="user.confirmPassword" value="${user.confirmPassword}" placeholder="<fmt:message key="user.placeholder.confirm.password" />" type="password" class="form-control">
							</div>
						</div>
					</div>
					<div class="col-md-12">	
						<div class="buttons">
							<div class="col-md-4">
								<button type="submit" class="btn btn-success btn-block"><fmt:message key="btn.save" /></button>
							</div>
							<div class="col-md-4">
								<c:if test="${empty user.id}">
									<a href="<c:url value="/login" />" class="btn btn-default btn-block"><fmt:message key="btn.cancel" /></a>
								</c:if>
								<c:if test="${!empty user.id}">
									<a href="<c:url value="/index" />" class="btn btn-default btn-block"><fmt:message key="btn.cancel" /></a>
								</c:if>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
		<script src="${context}/js/bootstrap.min.js"></script>
	</body>
</html>