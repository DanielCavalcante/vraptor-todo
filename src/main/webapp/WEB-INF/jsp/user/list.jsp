<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VRaptor TODO</title>
</head>
<body>
	<ul>
		<c:forEach items="${list}" var="usuario">
			<li>${usuario.name}</li>
			<li>${usuario.email}</li>
			<li>${usuario.password}</li>
			<hr>
		</c:forEach>
	</ul>
</body>
</html>