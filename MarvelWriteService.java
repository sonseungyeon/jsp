package jsp08_mvc.marvel.model;

import java.sql.Connection;
import java.sql.SQLException;

import jsp08_mvc.marvel.db.MyConnector;


public class MarvelWriteService {
	private MarvelDao marvelDao;
	
	public MarvelWriteService() {
		marvelDao = marvelDao.getInstance();
	}
	
	public boolean writeMarvel(MarvelDto marvelDto) {
		try (Connection conn = MyConnector.getConnection()){
			
			//dao를 이용하여 디비에 insert 해준다.
			marvelDao.insertMarvel(conn, marvelDto);
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
