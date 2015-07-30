<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link href="${context}/css/bootstrap.min.css" rel="stylesheet" >
		<link href="${context}/css/style.css" rel="stylesheet" >
		<title>VRaptor TODO</title>
	</head>
	<body>
		<form action="<c:url value="/users/save"></c:url>" method="post" class="form-horizontal">
			<div class="jumbotron">
				<h3>Create new account</h3>
				<label class="pull-left">Name</label>
				<input name="user.name" placeholder="Digit your name" type="text" class="form-control">
				<label class="pull-left">Email</label>
				<input name="user.email" placeholder="Digit your email" type="text" class="form-control">
				<label class="pull-left">Password</label>
				<input name="user.password" placeholder="Digit your password" type="password" class="form-control">
				<label class="pull-left">Confirm</label>
				<input name="user.confirmPassword" placeholder="Confirm your password" type="password" class="form-control">
				<div class="buttons">
					<button type="submit" class="btn btn-success btn-block">Salvar</button>
					<a href="<c:url value="/login" />" class="btn btn-default btn-block">Cancelar</a>
				</div>
			</div>
		</form>
		<script src="${context}/js/bootstrap.min.js"></script>
	</body>
</html>