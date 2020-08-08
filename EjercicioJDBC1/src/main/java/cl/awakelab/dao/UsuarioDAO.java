package cl.awakelab.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import cl.awakelab.model.Usuario;

public class UsuarioDAO {
	
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	//READ/LIST
	
	public List<Usuario> read() {
		String sql = "SELECT usuario, contrasenia, rol_id_rol, rol from usuario INNER JOIN rol on usuario.rol_id_rol = rol.id_rol";
		return template.query(sql, new UsuarioMapper());
	}
	
	public class UsuarioMapper implements RowMapper<Usuario>{
		public Usuario mapRow(ResultSet rs, int rowNum) throws SQLException {
			return new Usuario(rs.getInt("id_usuario"), 
					rs.getString("usuario"), 
					rs.getString("contrasenia"),
					rs.getInt("rol_id_rol")
					);
		}
	}
}
