package tasks.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import tasks.dao.UsuarioDao;
import tasks.modelo.Usuario;

@Controller
public class LoginController {

	private final UsuarioDao dao;
	
	public LoginController() {
		dao = new  UsuarioDao();
	}
	
	
	@RequestMapping("/formlogin")
	public String formLogin() {
		return "tasks/form-login";
	}
	
	@RequestMapping("/getLogin")
	public String getLogin(Usuario usuario, HttpSession session) {

		if(dao.existeUsuario(usuario)) {
			session.setAttribute("usuarioLogado", usuario);
			System.out.println("Usuario : " + usuario.getLogin() + " fez login em Tasks");
			return "tasks/portal";
		}else {
			return "redirect:formLogin";
		}
	}
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		
		session.invalidate();
		return "redirect:formlogin";
	}
	
}
