package model;

public class Clientes {
	
	private int id;
	private String nombres, apellidos;
	private int id_sexo, id_tipo_doc;
	private String sexo, tipo_doc, num_doc, correo, password, telefono, fec_nac;
	
	public Clientes() {
		
	}

	public Clientes(int id, String nombres, String apellidos, int id_sexo, int id_tipo_doc, String sexo,
			String tipo_doc, String num_doc, String correo, String password, String telefono, String fec_nac) {
		this.id = id;
		this.nombres = nombres;
		this.apellidos = apellidos;
		this.id_sexo = id_sexo;
		this.id_tipo_doc = id_tipo_doc;
		this.sexo = sexo;
		this.tipo_doc = tipo_doc;
		this.num_doc = num_doc;
		this.correo = correo;
		this.password = password;
		this.telefono = telefono;
		this.fec_nac = fec_nac;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombres() {
		return nombres;
	}

	public void setNombres(String nombres) {
		this.nombres = nombres;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public int getId_sexo() {
		return id_sexo;
	}

	public void setId_sexo(int id_sexo) {
		this.id_sexo = id_sexo;
	}

	public int getId_tipo_doc() {
		return id_tipo_doc;
	}

	public void setId_tipo_doc(int id_tipo_doc) {
		this.id_tipo_doc = id_tipo_doc;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public String getTipo_doc() {
		return tipo_doc;
	}

	public void setTipo_doc(String tipo_doc) {
		this.tipo_doc = tipo_doc;
	}

	public String getNum_doc() {
		return num_doc;
	}

	public void setNum_doc(String num_doc) {
		this.num_doc = num_doc;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getFec_nac() {
		return fec_nac;
	}

	public void setFec_nac(String fec_nac) {
		this.fec_nac = fec_nac;
	}
	
}
