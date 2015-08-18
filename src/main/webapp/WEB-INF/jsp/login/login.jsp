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
					<a data-toggle="modal" data-target="#myModal" type="button" class="btn btn-link">
						<fmt:message key="msg.cant.access.your.account" />
					</a>
				</div>
				
				<div class="row" style="margin-top: 60px;">
					<p><fmt:message key="msg.dont.have.account" /> <a href="<c:url value="/users/create"></c:url>"><fmt:message key="msg.sign.up.now" /></a></p>
				</div>
			</form>
		</div>
		
		<!-- Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="myModalLabel"><fmt:message key="msg.forgot.password.title" /></h4>
					</div>
					<div class="modal-body">
						<form class="form-inline">
							<div class="">
								<label><fmt:message key="user.email" /></label>
								<input type="email" name="email" class="form-control" required>
								<button type="submit" class="btn btn-primary"><fmt:message key="btn.send" /></button>
							</div>
						</form>
					</div>
					<div class="modal-footer">
					  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
		
		<script src="${context}/js/lib/jquery-2.1.4.min.js"></script>
		<script src="${context}/js/lib/bootstrap.min.js"></script>
	</body>
</html>