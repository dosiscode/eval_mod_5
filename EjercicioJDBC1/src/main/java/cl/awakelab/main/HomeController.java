package cl.awakelab.main;



import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cl.awakelab.dao.UsuarioDAO;
import cl.awakelab.model.Usuario;

@Controller
public class HomeController {
	
	@Autowired
	UsuarioDAO ud;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "home";
	}
	
	/*
	@RequestMapping(value = "/entrar", method = RequestMethod.GET)
	public String entrar() {
		return "vistaAdmin";
	}
	*/
	
	// validar inicio de sesion
	@RequestMapping(value = "/inicio", method = RequestMethod.POST)
	public String inicioSesion(@RequestParam("usuario") String usuario,
			@RequestParam("password")String password){
		
		
		List<String> vistasUsuarios = new ArrayList<String>();
		vistasUsuarios.add("vistaAdmin");
		vistasUsuarios.add("vistaProfesional");
		vistasUsuarios.add("nuevoAccidente");
		
		String vistaRetorno = "home";
	 
		List<Usuario> listaUsuarios = new ArrayList<Usuario>();
		 
		listaUsuarios = ud.read();
		
		for (int i = 0; i < listaUsuarios.size(); i++) {
			
			if(usuario.equals(listaUsuarios.get(i).getNombreUsuario())) {
				if (password.equals(listaUsuarios.get(i).getContrasenia())) {
					
					for (int j = 0; j < vistasUsuarios.size(); j++) {
						
						if((listaUsuarios.get(i).getId_rol() - 1) == j) {
							
							vistaRetorno = vistasUsuarios.get(j);
						}
					}						
				}
			}
			
		}
		 
		 return vistaRetorno;
	}	
	
}
