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
				<h3 class="form-signin-heading">System Tasks</h3>
				<h5>Please fill in your email address and password</h5>
				<input type="text" name="email" class="form-control" placeholder="Email" required autofocus />
				<input type="password" name="password" class="form-control" placeholder="Password" required />
				<button type="submit" class="btn btn-lg btn-primary btn-block">Sign in</button>
				<br />
				<p>Don't have account? <a href="<c:url value="/users/create"></c:url>">Sign up now</a></p>
			</form>
		</div>
		<script src="${context}/js/lib/jquery-2.1.4.min.js"></script>
		<script src="${context}/js/lib/bootstrap.min.js"></script>
	</body>
</html>