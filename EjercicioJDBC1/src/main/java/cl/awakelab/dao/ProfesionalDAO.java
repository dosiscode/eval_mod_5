package cl.awakelab.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import cl.awakelab.model.Profesional;

public class ProfesionalDAO {

	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	
	//CREAR
	
	public int create(Profesional p) throws SQLException {
		String sql = "INSERT INTO PROFESIONAL (ID_PROFESIONAL, RUT,  NOMBRE, APELLIDO) "
				+ "VALUES (idprofesional.NEXTVAL, '"+p.getRut()+"', '"+p.getNombre()+"', '"+p.getApellido()+"')";
		return template.update(sql); 	
	}
	
	//LISTARTODO
	
	public List<Profesional> read() {
		String sql = "select ID_PROFESIONAL, RUT, NOMBRE, APELLIDO FROM PROFESIONAL order by ID_PROFESIONAL asc";
		return template.query(sql, new ProfesionalMapper());	
	}
	
	//Buscar por id
	public Profesional FindById(int id) {
		String sql = "SELECT ID_PROFESIONAL, RUT, NOMBRE, APELLIDO "
				+ "FROM PROFESIONAL WHERE ID_PROFESIONAL=?";
		return template.queryForObject(sql, new Object[] {id}, new ProfesionalMapper());
	}
	
	//EDITAR
	
	public int update(Profesional p) {
		String sql = "update PROFESIONAL set rut='"+p.getRut()+"', nombre='"+p.getNombre()+"', apellido='"+p.getApellido()+"' WHERE ID_PROFESIONAL='"+p.getId_profesional()+"'";
		return template.update(sql);
	}
	
	//ELIMINAR
	
	public int delete(Profesional p) {
		String sql = "delete from PROFESIONAL where id_profesional='"+p.getId_profesional()+"'";
		return template.update(sql);
	}
	
	public class ProfesionalMapper implements RowMapper<Profesional>{
		public Profesional mapRow(ResultSet rs, int rowNum) throws SQLException {
			return new Profesional(rs.getInt("id_profesional"), 
					rs.getString("rut"),
					rs.getString("nombre"), 
					rs.getString("apellido"));
		}
	}
	
	
}
