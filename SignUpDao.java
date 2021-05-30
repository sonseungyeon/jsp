package practice_project.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class SignUpDao {
	//싱글톤 객체 생성
	private static SignUpDao instance = new SignUpDao();
	private SignUpDao() {}
	public static SignUpDao getInstance() {
		return instance;
	}
	
	//signUp 리스트 가져오는 메서드(회원가입 및 로그인 검증)
	public List<SignUpDto> selectSignUpList(Connection conn, int select_id) throws SQLException{
		String sql = "select * from practice_project";
		
		try(Statement st = conn.createStatement();
				ResultSet rs = st.executeQuery(sql)){
			List<SignUpDto> signUpList = new ArrayList<SignUpDto>();
			while(rs.next()) {
				signUpList.add(new SignUpDto(rs.getInt("user_id"),
						rs.getString("email"),
						rs.getString("password"),
						rs.getString("name"),
						rs.getString("nick_name")));
			}
			return signUpList;
		}
	}
	
	public SignUpDto selectSignUpById(Connection conn, int userId) throws SQLException {
		String sql = "select * from practice_project where user_id = ?";
		try(PreparedStatement pst = conn.prepareStatement(sql)){
			pst.setInt(1, userId);
			try(ResultSet rs = pst.executeQuery()){
				if(rs.next()) {
					return new SignUpDto(rs.getInt("user_id"),
							rs.getString("email"),
							rs.getString("password"),
							rs.getString("name"),
							rs.getString("nick_name"));
				}else {
					return null;
				}
			}
		}
	}
	
}
