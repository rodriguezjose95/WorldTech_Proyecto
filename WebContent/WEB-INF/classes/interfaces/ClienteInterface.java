package interfaces;

import java.util.ArrayList;

import model.Clientes;

public interface ClienteInterface {
	
	public int registrar(Clientes c);
	public int actualizar(Clientes c);
	public int eliminar(Clientes c);
	
	public ArrayList<Clientes> listado();

}
