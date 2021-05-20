package interfaces;

import java.util.ArrayList;

import model.Productos;

public interface ProductoInterface {
	
	public int registrar(Productos p);
	public int actualizar(Productos p);
	public int eliminar(Productos p);
	
	public ArrayList<Productos> listado();
	
}
