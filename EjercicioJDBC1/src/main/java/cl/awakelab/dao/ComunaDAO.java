package cl.awakelab.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import cl.awakelab.model.Comuna;

public class ComunaDAO {
	
	@Autowired
	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public List<Comuna> read() {
		String sql = "SELECT id_comuna, comuna FROM comuna";
		return template.query(sql, new ComunaMapper());	
	}
	
	public class ComunaMapper implements RowMapper<Comuna>{
		public Comuna mapRow(ResultSet rs, int rowNum) throws SQLException {
			return new Comuna(rs.getInt("id_comuna"), 
					rs.getString("comuna")
					);
		}
	}
	
}
