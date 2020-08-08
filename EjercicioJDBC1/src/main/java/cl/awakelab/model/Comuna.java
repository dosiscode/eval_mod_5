package cl.awakelab.model;

public class Comuna {

	private int id_comuna;
	private String comuna;
	
	public Comuna(int id_comuna, String comuna) {
		super();
		this.id_comuna = id_comuna;
		this.comuna = comuna;
	}

	
	public int getId_comuna() {
		return id_comuna;
	}
	

	public void setId_comuna(int id_comuna) {
		this.id_comuna = id_comuna;
	}

	public String getComuna() {
		return comuna;
	}
	
	public void setComuna(String comuna) {
		this.comuna = comuna;
	}
	
}
