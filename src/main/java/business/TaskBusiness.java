package business;

import model.Task;
import repository.TaskRepository;
import util.GenericBusiness;

public class TaskBusiness extends GenericBusiness<Task> implements TaskRepository {

	public TaskBusiness() {
		super();
	}
	
}
