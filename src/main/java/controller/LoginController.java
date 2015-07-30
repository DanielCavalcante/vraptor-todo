package controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import model.User;
import model.UserSession;
import service.UserService;
import util.Inbox;

@Controller
@Path("")
public class LoginController {
	
	@Inject private Result result;
	@Inject private HttpServletRequest request;
	@Inject private UserService service;
	@Inject private UserSession userSession;
	@Inject private Inbox inbox;
	
	@Get("/login")
	public void login() {
		
	}
	
	@Post("/authenticate")
	public void authenticate(String email, String password) {
		try {
			User user = service.getByemailAndPassword(email.trim(), password.trim()); 
			if (user != null) {
				userSession.setUser(user);
				request.getSession().setAttribute("userSession", userSession);
				result.redirectTo(IndexController.class).index();
			} else {
				inbox.message("msg.user.login.invalid").danger();
				result.redirectTo(this).login();
			}
		} catch (Exception e) {
			e.printStackTrace();
			inbox.operationNotPerformed();
			result.redirectTo(this).login();
		}
	}
	
	@Get("/logout")
	public void logout() {
		userSession.invalidSession();
		request.getSession().setAttribute("userSession", null);
		request.getSession().invalidate();
		result.redirectTo(this).login();
	}

}
