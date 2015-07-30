package service;

import javax.inject.Inject;

import model.User;
import repository.UserRepository;

public class UserService {
	
	@Inject private UserRepository repository;
	
	public boolean isValid(User user) {
		if (user.getPassword() != null && user.getConfirmPassword() != null) {
			if (user.getPassword().trim().equals(user.getConfirmPassword().trim())) {
				if (!ifEmailAlreadyExists(user.getEmail().trim())) {
					return true;
				}
			}
		}
		return false;
	}
	
	public boolean ifEmailAlreadyExists(String email) {
		User user = null;
		user = repository.findByEmail(email);
		if (user != null)
			return true;
		return false;
	}
	
	public User getByemailAndPassword(String email, String password) {
		User user = null;
		try {
			user = repository.findByEmailAndPassword(email, password);
			if (user != null)
			return user;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	
}
