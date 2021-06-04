package dao;

import interfaces.BusesDAO;
import interfaces.ChoferesDAO;
import interfaces.RutasDAO;
import mantenimientos.MySQLBusesDAO;
import mantenimientos.MySQLChoferesDAO;
import mantenimientos.MySQLRutasDAO;

public class MySQLDAOFactory extends DAOFactory {

	public BusesDAO getBusesDAO() {
		return new MySQLBusesDAO();
	}

	public ChoferesDAO getChoferesDAO() {
		return new MySQLChoferesDAO();
	}
	
	public RutasDAO getRutasDAO() {
		return new MySQLRutasDAO();
	}

}
