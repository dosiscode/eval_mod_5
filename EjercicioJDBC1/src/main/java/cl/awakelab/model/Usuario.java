package cl.awakelab.model;

public class Usuario {

	private int id_usuario;
	private String nombreUsuario;
	private String contrasenia;
	private int id_rol;

	public Usuario() {
		super();
	}

	public Usuario(int id_usuario, String nombreUsuario, String contrasenia, int id_rol) {
		super();
		this.id_usuario = id_usuario;
		this.nombreUsuario = nombreUsuario;
		this.contrasenia = contrasenia;
		this.id_rol = id_rol;
	}

	public int getId_usuario() {
		return id_usuario;
	}

	public void setId_usuario(int id_usuario) {
		this.id_usuario = id_usuario;
	}

	public String getNombreUsuario() {
		return nombreUsuario;
	}

	public void setNombreUsuario(String nombreUsuario) {
		this.nombreUsuario = nombreUsuario;
	}

	public String getContrasenia() {
		return contrasenia;
	}

	public void setContrasenia(String contrasenia) {
		this.contrasenia = contrasenia;
	}

	public int getId_rol() {
		return id_rol;
	}

	public void setId_rol(int id_rol) {
		this.id_rol = id_rol;
	}
	
}
