package dao;

import interfaces.BusesDAO;
import interfaces.ChoferesDAO;
import interfaces.RutasDAO;

public abstract class DAOFactory {
	
	public static final int MYSQL = 1;
	
	//que interfaces , puedo implementar - usando get
	public abstract BusesDAO getBusesDAO();
	public abstract ChoferesDAO getChoferesDAO();
	public abstract RutasDAO getRutasDAO();
	
	public static DAOFactory getDAOFactory(int qDB) {
		switch (qDB) {
			case MYSQL:
				return new MySQLDAOFactory();
			default:
				return null;
		}
		
	}
	
}
