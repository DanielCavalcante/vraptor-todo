package controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import model.User;
import model.UserSession;
import repository.UserRepository;
import service.UserService;

@Controller
@Path("/users")
public class UserController {
	
	@Inject private UserRepository repository;
	@Inject private UserService service;
	@Inject private Result result;
	@Inject private UserSession userSession;
	
	@Get("/create")
	public void create() {
		
	}
	
	@Post("/save")
	public void save(User user) {
		boolean isValid = service.isValid(user);
		if (isValid) {
			repository.save(user);
			result.redirectTo(LoginController.class).login();
		} else {
			result.redirectTo(this).create();	
		}
	}
	
	@Get("/edit")
	public void edit() {
		User user = userSession.getUser();
		if (user != null) {
			result.include("user", user);
		} else {
			result.redirectTo(LoginController.class).logout();
		}
	}

}
