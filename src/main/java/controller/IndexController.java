package controller;

import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Result;
import model.Task;
import model.UserSession;
import repository.TaskRepository;
import util.Inbox;

@Controller
public class IndexController {

	@Inject private Result result;
	@Inject private UserSession userSession;
	@Inject private TaskRepository taskRepository;
	@Inject private Inbox inbox;
	
	@Get("/index")
	public void index() {
		List<Task> tasks = (List<Task>) taskRepository.listOrder();
		result.include("tasks", tasks);
		if (userSession.getUser() != null) {
			inbox.message("msg.welcome", userSession.getUser().getName()).success();
		} else {
			result.redirectTo(LoginController.class).logout();
		}
	}
	
	@Get("/about")
	public void about() {
		
	}

}