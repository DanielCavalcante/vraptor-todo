package controller;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import com.google.gson.Gson;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.view.Results;
import model.Task;
import repository.TaskRepository;

@Controller
@Path("/tasks")
public class TaskController {
	
	@Inject private Result result;
	@Inject	private TaskRepository repository;
	
	@Post("/save")
	public void save(Task task) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("success", true);
		try {
			if (task.getCreatedOn() == null)
				task.setCreatedOn(new Date());
				
			repository.save(task);
			map.put("id", task.getId());
		} catch (Exception e) {
			map.put("success", false);
			e.printStackTrace();
		}
		String json = new Gson().toJson(map);
		result.use(Results.json()).from(json).serialize();
	}
	
	@Post("/remove/{id}")
	public void remove(Long id) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("success", true);
		
		try {
			repository.delete(id);
		} catch (Exception e) {
			map.put("success", false);
			e.printStackTrace();
		}
		String json = new Gson().toJson(map);
		result.use(Results.json()).from(json).serialize();
	}
	
	@Path("/edit/{id}")
	public void edit(Long id) {
		Task task = null;
		if (id != null) {
			task = repository.find(id);
			result.include("task", task);
		}
	}
	
	@Post("/update")
	public void update(Task task) {
		try {
			if (task.getCreatedOn() == null)
				task.setCreatedOn(new Date());
			
			repository.save(task);
			result.redirectTo(IndexController.class).index();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
