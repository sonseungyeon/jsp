package jsp08_mvc.marvel.model;

import java.sql.Connection;
import java.sql.SQLException;

import jsp08_mvc.marvel.db.MyConnector;
import jsp08_mvc.marvel.model.MarvelDao;

public class MarvelUpdateService {
	private MarvelDao marvelDao;
	
	public MarvelUpdateService() {
		marvelDao = MarvelDao.getInstance();
	}
	
	public boolean marvelUpdate(MarvelDto marvelDto) {
		try(Connection conn = MyConnector.getConnection()){
			marvelDao.updateMarvel(conn, marvelDto);
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
