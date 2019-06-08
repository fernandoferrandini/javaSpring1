package tasks.controller;



import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import tasks.dao.TaskDAO;
import tasks.modelo.Task;

@Controller
public class TaskController {

	
	private final TaskDAO dao;
	
	@Autowired
	public TaskController(TaskDAO dao) {
		this.dao = dao;
	}
	
	@RequestMapping("/novatask")
	public String  form() {
		return "tasks/form-tasks";
	}
	/*recebe uma Task - conceito de Reflection - o nome dos campos do form no JSP são iguais aos atributos do objeto etc*/
	@RequestMapping("/cadastratask")
	public String cadastra(@Valid Task task, BindingResult result) {
		
		if(result.hasFieldErrors("descricao")) {
			return "tasks/form-tasks";
		}
		dao.inserir(task);
		return "tasks/taskcadastrada";
	}
	@RequestMapping("/gettasks")
/*	public ModelAndView getTasks() {
		List<Task> tasks = dao.getTasks();
		ModelAndView mv = new ModelAndView("pages/tasks/get-tasks");	
		mv.addObject("tasks",tasks);
		
		return mv;
	}
	Preferivel usar o abaixo.
*/
	public String getTasks(Model model) {
		model.addAttribute("tasks", dao.getTasks());
		return "tasks/get-tasks-ajax";
	}
	
	
	@RequestMapping("/excluitask")
	public String exclui(Task task) {
		dao.exclui(task);
		return "redirect:gettasks";
	}
	
	@RequestMapping("/buscartask")
	public String busca(Long id, Model model) {
		model.addAttribute("task", dao.getById(id));
		return "tasks/edita-task";
		
	}
	@RequestMapping("/editatask")
	public String edita(Task task) {
		dao.edita(task);
		return "redirect:gettasks";
	}	
	
	@ResponseBody 
	@RequestMapping("/finalizatask")
	public void finaliza(Long id) {
		dao.finaliza(id);
		
	}
}
