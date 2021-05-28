package jsp08_mvc.marvel.model;

import java.sql.Connection;
import java.sql.SQLException;

import jsp08_mvc.marvel.db.MyConnector;

public class MarvelDeleteService {
	private MarvelDao marvelDao;
	
	public MarvelDeleteService() {
		marvelDao = MarvelDao.getInstance();
	}
	
	public boolean marvelDelete(int marvelId) {
		try(Connection conn = MyConnector.getConnection()){
			marvelDao.deleteMarvel(conn, marvelId);
			return true;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return false;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
}
