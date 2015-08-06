<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link href="${context}/css/bootstrap.min.css" rel="stylesheet" >
		<link href="${context}/css/login.css" rel="stylesheet" >
		<title>VRaptor - TODO</title>
	</head>
	<body>
		<div class="container">
			<form class="form-signin" action="<c:url value="/authenticate" />" method="post">
				<msg:messages />
				<div class="row">
					<h3 class="form-signin-heading"><fmt:message key="name.system" /></h3>
					<h5><fmt:message key="please.fill.your.email.and.password" /></h5>
					<input type="text" name="email" class="form-control" placeholder="<fmt:message key="user.email" />" required autofocus />
					<input type="password" name="password" class="form-control" placeholder="<fmt:message key="user.password" />" required />
					<button type="submit" class="btn btn-lg btn-primary btn-block"><fmt:message key="btn.sign.in" /></button>
				</div>
				<div class="row pull-right" style="margin-top: 10px;">
					<a href="<c:url value="#"></c:url>"><fmt:message key="msg.cant.access.your.account" /></a>
				</div>
				
				<div class="row pull-center" style="margin-top: 40px;">				
					<fmt:message key="msg.dont.have.account" /> <a href="<c:url value="/users/create"></c:url>"><fmt:message key="msg.sign.up.now" /></a>
				</div>
			</form>
		</div>
		<script src="${context}/js/lib/jquery-2.1.4.min.js"></script>
		<script src="${context}/js/lib/bootstrap.min.js"></script>
	</body>
</html>