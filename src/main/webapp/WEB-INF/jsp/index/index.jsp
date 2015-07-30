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
					<nav>
						<ul class="nav nav-pills pull-right">
							<li class="active"><a href="<c:url value="/index" />">Home</a></li>
							<li><a href="<c:url value="/users/edit" />">Account</a></li>
							<li><a href="<c:url value="/about" />">About</a></li>
							<li><a href="<c:url value="/logout" />">Logout</a></li>
						</ul>
					</nav>
					<h3 class="text-muted">System Task</h3>
					<hr>
				</div>
				<msg:messages />
				<div class="jumbotron">
					<div class="form-inline">
						<div class="form-group">
							<label>Add Tasks</label>
							<input name="task.title" value="${task.title}" id="taskTitle" placeholder="Digite your task here" class="form-control">
							<a onclick="save()" class="btn btn-success">Save</a>
						</div>
					</div>
				</div>
				<c:if test="${!empty tasks}">
					<table id="table">
						<thead>
							<tr>
								<th></th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${tasks}" var="task">
								<tr id="task_${task.id}">
									<td><input name="task.done" type="checkbox"></td>
									<td>
										<a href="${linkTo[TaskController].edit(task.id)}" style="margin-left: 5px;">${task.title}</a>
									</td>
									<td>
										<a onclick="removeTask(${task.id})" href="javascript:void(0)" style="margin-left: 10px;" class="close">&times;</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:if>
				<hr>
				<footer class="footer">
       				<p>&copy; Company 2014</p>
      			</footer>
			</div>
		</div> <!-- container -->
		<script src="${context}/js/lib/jquery-2.1.4.min.js"></script>
		<script src="${context}/js/lib/bootstrap.min.js"></script>
		<script>
			function save() {
				var task = {
					'task.title' : $('#taskTitle').val()
				};
				$.post("${context}/tasks/save", task, function(result) {
					var res = eval("("+ result.string +")");
					if (res.success) {
						console.log(res.id);
						var id = res.id;
						var content = "<td><input type='checkbox'></td>";
						content += "<td><a href='${linkTo[TaskController].edit("+res.id+")}' style='margin-left: 5px;'>"+ $('#taskTitle').val() +"</a></td>";
						content += "<td><a onclick=\"removeTask('"+res.id+"')\" href='javascript:void(0)' style='margin-left: 10px;'>Remover</a></td>";
						var row = "<tr id='task_"+res.id+"'>"+ content + "</tr>";
						$('#table').append(row);
					} else {
						alert('Erro na hora de criar a task!');
					}
				});
			}
			function removeTask(id) {
				$.post("${context}/tasks/remove/"+id, function(result) {
					var res = eval("("+ result.string +")");
					if (res.success) {
						$('#task_'+id).remove();
					} else {
						alert("Erro");
					}
				});
			}
		</script>
	</body>
</html>