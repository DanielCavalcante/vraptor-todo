package business;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

import model.User;
import repository.UserRepository;
import util.GenericBusiness;

public class UserBusiness extends GenericBusiness<User> implements UserRepository {
	
	@Inject private EntityManager em;
	
	public UserBusiness() {
		super();
	}

	@Override
	public User findByEmail(String email) {
		User user = null;
		Criteria criteria = createCriteria(User.class);
		criteria.add(Restrictions.like("email", email));
		criteria.uniqueResult();
		if (criteria != null) {
			user = (User) criteria;
		}
		
		return user;
	}

	@Override
	public User findByEmailAndPassword(String email, String password) {
		try {
			return (User) em.createQuery("from User where email = '" + email + "' and password = '" + password + "'").
					getSingleResult();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
