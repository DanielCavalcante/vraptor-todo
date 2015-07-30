package model;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;

import util.AbstractEntity;

@Entity
@Table(name = "users")
public class User extends AbstractEntity {
	
	private String name;
	private String email;
	private String password;

	@Transient
	private String confirmPassword;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

}
