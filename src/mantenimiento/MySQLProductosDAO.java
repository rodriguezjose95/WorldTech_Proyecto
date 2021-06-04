package mantenimiento;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import interfaces.ProductoInterface;
import model.Productos;
import utils.MySQLConexion8;

public class MySQLProductosDAO implements ProductoInterface{

	@Override
	public int registrar(Productos p) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int actualizar(Productos p) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int eliminar(Productos p) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<Productos> listado() {
		ArrayList<Productos> lista = null;
		// plantilla de BD
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		try {
			con = MySQLConexion8.getConexion();
			String sql = "select * from vw_productos";
			pst = con.prepareStatement(sql);
			rs = pst.executeQuery();
			
			lista = new ArrayList<Productos>();
			while (rs.next()) {
				Productos p = new Productos();
				p.setId(rs.getInt(1));
				p.setProducto(rs.getString(2));
				p.setDescripcion(rs.getString(3));
				p.setId_subcategoria(rs.getInt(4));
				p.setSubcategoria(rs.getString(5));
				p.setId_categoria(rs.getInt(6));
				p.setCategoria(rs.getString(7));
				p.setPrecio_costo(rs.getDouble(8));
				p.setPrecio_venta(rs.getDouble(9));
				p.setDscto(rs.getInt(10));
				p.setPrecio_final(rs.getDouble(11));
				p.setGanancia(rs.getDouble(12));
				p.setStock(rs.getInt(13));
				p.setUrl_img(rs.getString(14));
				
				lista.add(p);
			}
		} catch (Exception e) {
			System.out.println("Error al listar Producto: " + e.getMessage());
		} finally {
			MySQLConexion8.closeConexion(con);
		}
		return lista;
	}

}
