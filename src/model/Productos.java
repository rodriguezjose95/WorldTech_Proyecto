package model;

public class Productos {
	
	private int id;
	private String producto, descripcion;
	private int id_subcategoria, id_categoria;
	private String subcategoria, categoria;
	private double precio, precio_dscto;
	private int dscto, stock;
	private String url_img;
	
	
	public Productos() {
		
	}

	public Productos(int id, String producto, String descripcion, int id_subcategoria, int id_categoria,
			String subcategoria, String categoria, double precio, double precio_dscto, int dscto, int stock,
			String url_img) {
		this.id = id;
		this.producto = producto;
		this.descripcion = descripcion;
		this.id_subcategoria = id_subcategoria;
		this.id_categoria = id_categoria;
		this.subcategoria = subcategoria;
		this.categoria = categoria;
		this.precio = precio;
		this.precio_dscto = precio_dscto;
		this.dscto = dscto;
		this.stock = stock;
		this.url_img = url_img;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProducto() {
		return producto;
	}
	public void setProducto(String producto) {
		this.producto = producto;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public int getId_subcategoria() {
		return id_subcategoria;
	}
	public void setId_subcategoria(int id_subcategoria) {
		this.id_subcategoria = id_subcategoria;
	}
	public int getId_categoria() {
		return id_categoria;
	}
	public void setId_categoria(int id_categoria) {
		this.id_categoria = id_categoria;
	}
	public String getSubcategoria() {
		return subcategoria;
	}
	public void setSubcategoria(String subcategoria) {
		this.subcategoria = subcategoria;
	}
	public String getCategoria() {
		return categoria;
	}
	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}
	public double getPrecio() {
		return precio;
	}
	public void setPrecio(double precio) {
		this.precio = precio;
	}
	public double getPrecio_dscto() {
		return precio_dscto;
	}
	public void setPrecio_dscto(double precio_dscto) {
		this.precio_dscto = precio_dscto;
	}
	public int getDscto() {
		return dscto;
	}
	public void setDscto(int dscto) {
		this.dscto = dscto;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public String getUrl_img() {
		return url_img;
	}
	public void setUrl_img(String url_img) {
		this.url_img = url_img;
	}

}
