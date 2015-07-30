package repository;

import model.User;
import util.GenericRepository;

public interface UserRepository extends GenericRepository<User> {
	
	public User findByEmail(String email);
	
	public User findByEmailAndPassword(String email, String password);

}
