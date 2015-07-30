package model;

import java.io.Serializable;

import javax.enterprise.context.SessionScoped;
import javax.inject.Named;

@SessionScoped
@Named("userSession")
public class UserSession implements Serializable {

	private static final long serialVersionUID = -5791767860133576752L;
	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public boolean isValidSession() {
		return user != null && user.getId() != null;
	}

	public void invalidSession() {
		user = null;
	}

}
