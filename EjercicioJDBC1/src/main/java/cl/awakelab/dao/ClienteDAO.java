package cl.awakelab.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import cl.awakelab.model.Cliente;
import cl.awakelab.model.Profesional;

public class ClienteDAO {

	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	//CREAR
	
	public int create(Cliente c) throws SQLException {
		String sql = "INSERT INTO CLIENTE (ID_CLIENTE, NOMBRE, RUT, CORREO_ELECTRONICO, DIRECCION, COMUNA_ID_COMUNA, NUMERO_DIRECCION) VALUES (idcliente_sequence.NEXTVAL, '"+c.getNombre()+"', '"+c.getRut()+"', '"+c.getEmail()+"', '"+c.getDireccion()+"', "+c.getComuna_id_comuna()+", "+c.getNum_direccion()+")";
		return template.update(sql); 	
	}
	
	//LEER
	public List<Cliente> read() {
		String sql = "SELECT ID_CLIENTE, NOMBRE, RUT, CORREO_ELECTRONICO, DIRECCION, COMUNA_ID_COMUNA, NUMERO_DIRECCION, REGION, COMUNA from cliente INNER JOIN comuna on comuna.id_comuna = cliente.comuna_id_comuna INNER join region on region.id_region = comuna.region_id_region ORDER BY id_cliente";
		return template.query(sql, new ClienteMapper());	
	}
	
	//ACTUALIZAR
	
	public int update(Cliente c) {
		String sql = "update CLIENTE set NOMBRE='"+c.getNombre()+"', RUT='"+c.getRut()+"', CORREO_ELECTRONICO='"+c.getEmail()+"', DIRECCION='"+c.getDireccion()+"', COMUNA_ID_COMUNA='"+c.getComuna_id_comuna()+"', NUMERO_DIRECCION='"+c.getNum_direccion()+"' where ID_CLIENTE='"+c.getId_cliente()+"'";
		return template.update(sql);
	}
	
	//ELIMINAR
	
	public int delete(Cliente c) {
		String sql = "delete from CLIENTE where ID_CLIENTE='"+c.getId_cliente()+"'";
		return template.update(sql);
	}
	
	//BUSCAR POR ID
	
	public Cliente FindById(int id) {
		String sql = "SELECT id_cliente, NOMBRE, RUT, CORREO_ELECTRONICO, DIRECCION, COMUNA_ID_COMUNA, NUMERO_DIRECCION, REGION, COMUNA from cliente INNER JOIN comuna on comuna.id_comuna = cliente.comuna_id_comuna INNER join region on region.id_region = comuna.region_id_region WHERE ID_CLIENTE=?";
		return template.queryForObject(sql, new Object[] {id}, new ClienteMapper());
	}
	
	
	//MAPPER
	
	public class ClienteMapper implements RowMapper<Cliente>{
		public Cliente mapRow(ResultSet rs, int rowNum) throws SQLException {
			return new Cliente(rs.getInt("id_cliente"), 
					rs.getString("nombre"), 
					rs.getString("rut"),
					rs.getString("correo_electronico"), 
					rs.getString("direccion"),
					rs.getString("REGION"),
					rs.getString("COMUNA"),
					rs.getInt("comuna_id_comuna"),
					rs.getInt("numero_direccion")
					);
		}
	}
	
	
	
}
