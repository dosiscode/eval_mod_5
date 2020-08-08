package cl.awakelab.main;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cl.awakelab.dao.ClienteDAO;
import cl.awakelab.dao.ComunaDAO;
import cl.awakelab.dao.ProfesionalDAO;
import cl.awakelab.model.Cliente;
import cl.awakelab.model.Comuna;
import cl.awakelab.model.Profesional;

@Controller
public class AdminController {
	
	@Autowired
	ProfesionalDAO pd;
	
	@Autowired
	ClienteDAO cd;
	
	@Autowired
	ComunaDAO comd;
	
	@RequestMapping(value="/menuAdmin")
	public String menuAdmin() {
		return "vistaAdmin";
	}
	
	//Mantenedor Cliente
	@RequestMapping(value="/mantenedor/cliente", method=RequestMethod.GET)
	public ModelAndView listarCliente(Model model) {
		
		List<Cliente> lista = cd.read();
		
		return new ModelAndView("mantenedorCliente", "lista", lista);
	}
	
	@RequestMapping(value="/nuevoCliente", method=RequestMethod.GET)
	public String nuevoCliente(Model model) {
		List<Comuna> listaComuna = new ArrayList<Comuna>();
		listaComuna = comd.read();
		
		model.addAttribute("comunas", listaComuna);
		
		return "nuevoCliente";
	}
	
	@RequestMapping(value="/agregarCliente", method=RequestMethod.POST)
	public String agregarCliente(@RequestParam("nombre") String nombre, @RequestParam("rut") String rut,
			@RequestParam("correo") String correo, @RequestParam("direccion") String direccion,
			@RequestParam("numero") int numero, @RequestParam("comuna") int comuna) {
		
		Cliente c = new Cliente(nombre, rut, correo, direccion, comuna, numero);
		
		try {
			cd.create(c);
		} catch (SQLException e) {
			
			System.out.println("ERROR al agregar nuevo profesional " + e.getMessage());
		}
		
		//List<Profesional> lista = pd.read();
		
		return "redirect:/mantenedor/cliente";
	}
	
	@RequestMapping(value="/editarCliente/{id}", method=RequestMethod.GET)
	public String verCliente(Model model, @PathVariable("id") int id) {
		Cliente cEdit = cd.FindById(id);
		List<Comuna> listaComuna = new ArrayList<Comuna>();
		listaComuna = comd.read();
		model.addAttribute("comunas", listaComuna);
		model.addAttribute("cEdit", cEdit);
		return "editarCliente";
	}
	
	@RequestMapping(value="/editarCli", method=RequestMethod.POST)
	public String editarCliente(@RequestParam("nombre") String nombre, @RequestParam("rut") String rut,
			@RequestParam("correo") String correo, @RequestParam("direccion") String direccion,
			@RequestParam("numero") int numero, @RequestParam("comuna") int comuna,
			@RequestParam("id_cliente") int id_cliente) {
		
		Cliente cEditado = new Cliente(id_cliente, nombre, rut, correo, direccion, comuna, numero);
		cd.update(cEditado);
		return "redirect:/mantenedor/cliente";
	}
	
	@RequestMapping(value="/eliminarCliente/{id}", method=RequestMethod.GET)
	public String eliminarCliente(@PathVariable("id") int id) {
		Cliente cEliminar = cd.FindById(id);
		cd.delete(cEliminar);
		return "redirect:/mantenedor/cliente";
	}
	
	

	//Mantenedor profesional
	@RequestMapping(value="/mantenedor/profesional", method=RequestMethod.GET)
	public ModelAndView listarProfesional(Model model) {
		
		List<Profesional> lista = pd.read();
		
		return new ModelAndView("mantenedorProfesional", "lista", lista);
	}
	
	@RequestMapping(value="/nuevoProfesional", method=RequestMethod.GET)
	public String nuevoProfesional() {
		return "nuevoProf";
	}
	
	@RequestMapping(value="/agregarProfesional", method=RequestMethod.POST)
	public String agregarProfesional(@RequestParam("rut") String rut, @RequestParam("nombre") String nombre,
			@RequestParam("apellido") String apellido) {
		
		Profesional p = new Profesional(rut, nombre, apellido);
		
		try {
			pd.create(p);
		} catch (SQLException e) {
			
			System.out.println("ERROR al agregar nuevo profesional " + e.getMessage());
		}
		
		//List<Profesional> lista = pd.read();
		
		return "redirect:/mantenedor/profesional";
	}
	
	@RequestMapping(value="/editarProfesional/{id}", method=RequestMethod.GET)
	public String verProfesional(Model model, @PathVariable("id") int id) {
		Profesional pEdit = pd.FindById(id);
		model.addAttribute("pEdit", pEdit);
		return "editarProf";
	}
	
	@RequestMapping(value="/editarProf", method=RequestMethod.POST)
	public String editarProfesional(@RequestParam("id_profesional") int id, @RequestParam("rut") String rut, @RequestParam("nombre") String nombre,
			@RequestParam("apellido") String apellido) {
		
		Profesional pEditado = new Profesional(id, rut, nombre, apellido);
		
		pd.update(pEditado);

		return "redirect:/mantenedor/profesional";
	}
	
	@RequestMapping(value="/eliminarProf/{id}", method=RequestMethod.GET)
	public String eliminarProfesional(@PathVariable("id") int id) {
		Profesional pEliminar = pd.FindById(id);
		pd.delete(pEliminar);
		return "redirect:/mantenedor/profesional";
	}
}
