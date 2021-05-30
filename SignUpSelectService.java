package practice_project.model;

import java.sql.Connection;
import java.sql.SQLException;

import practice_project.db.MyConnector;

public class SignUpSelectService {
	private SignUpDao signUpDao;
	
	public SignUpSelectService() {
		signUpDao = SignUpDao.getInstance();	
	}
	
	public SignUpDto getSignUp(int userId) {
		try(Connection conn = MyConnector.getConnection()){
			SignUpDto signUpDto = signUpDao.selectSignUpById(conn,userId);
			
			return signUpDto;
			
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
			return null;
		}catch(SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
}
