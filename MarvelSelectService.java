package jsp08_mvc.marvel.model;

import java.sql.Connection;
import java.sql.SQLException;

import jsp08_mvc.marvel.db.MyConnector;
import jsp08_mvc.marvel.model.MarvelDao;

public class MarvelSelectService{
	private MarvelDao marvelDao;
	
	public MarvelSelectService() {
		marvelDao = MarvelDao.getInstance();
	}
	
	public MarvelDto getMarvel(int marvelId) {
		try(Connection conn = MyConnector.getConnection()){
			MarvelDto marvelDto = marvelDao.selectMarvelById(conn,marvelId);
			
			return marvelDto;
			
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
			return null;
		}catch(SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
}
