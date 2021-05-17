package servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mantenimiento.GestionProductos;
import model.Productos;

/**
 * Servlet implementation class ProductoServlet
 */
@WebServlet(name = "crudprod", urlPatterns = { "/crudprod" })
public class ProductoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Entro al Servlet Producto");
		//leer la opcion seleccionada del JSP
		String opc = request.getParameter("opcion");
		System.out.println("Opcion seleccionada: " + opc);
		//segun la opcion, realizar
		switch (opc) {
			case "r": registrar(request, response); 
					break;
			case "a": actualizar(request, response); 
					break;
			case "e": eliminar(request, response); 
					break;
			case "l": listado(request, response); 
					break;
			default: response.sendRedirect("error.jsp");
		}
	}

	private void listado(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Entro al listado de Producto");
		//1. obtener un lsitado de los productos
		ArrayList <Productos> lista = new GestionProductos().listado();
		//2. enviar el listado como atributo al JSP
		request.setAttribute("lstProductos", lista);
		//3. ir a la pag
		request.getRequestDispatcher("catalogo.jsp").forward(request, response);
		
	}

	private void eliminar(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	private void actualizar(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	private void registrar(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

}
