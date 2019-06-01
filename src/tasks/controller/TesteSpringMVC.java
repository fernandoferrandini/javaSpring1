package tasks.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TesteSpringMVC {

	@RequestMapping("/testespring")
	public String execute() {
		
		System.out.println("Testando framework Spring");
		return "testando";
	}
	
}
