package jsp08_mvc.marvel.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class MarvelDao {
	//싱글톤 객체 생성
	private static MarvelDao instance = new MarvelDao();
	private MarvelDao() {}
	public static MarvelDao getInstance() {
		return instance;
	} 
	
	//전체 개수를 가져오는 메서드
	public int selectTotalCount(Connection conn) throws SQLException {
		String sql = "select count(*) from marvelmovie";
		try(Statement st = conn.createStatement();
				ResultSet rs = st.executeQuery(sql)){
			
			if(rs.next()) {
				return rs.getInt(1);
			}else {
				return 0;
			}
		}
	}
	
	//마블영화 리스트 가져오는 메서드
	public List<MarvelDto> selectMarvelList(Connection conn,int firstRow, int marvelCountPerPage) throws SQLException{
		String sql = "select * from marvelmovie order by marvel_id limit ?,?";
		
		try(PreparedStatement pstm = conn.prepareStatement(sql)){
			pstm.setInt(1, firstRow);
			pstm.setInt(2, marvelCountPerPage);
			
			try(ResultSet rs= pstm.executeQuery()){
				List<MarvelDto> marvelList = new ArrayList<MarvelDto>();
				while(rs.next()) {
					marvelList.add(new MarvelDto(rs.getInt("marvel_id"),
							rs.getString("title"),
							rs.getString("title_eng"),
							rs.getTimestamp("release_date").toLocalDateTime(),
							rs.getLong("world_box_office"),
							rs.getTimestamp("write_date").toLocalDateTime(),
							rs.getTimestamp("update_date").toLocalDateTime()));
				}
				return marvelList;
			}
		}
	}
	
	//마블영화 추가하는 메서드
	public void insertMarvel(Connection conn, MarvelDto marvelDto) throws SQLException {
		String sql = "insert into marvelmovie values(?,?,?,?,?,?,?)";
		
		try(PreparedStatement pstm = conn.prepareStatement(sql)){
			pstm.setInt(1, marvelDto.getMarvelId());
			pstm.setString(2, marvelDto.getTitle());
			pstm.setString(3, marvelDto.getTitleEng());
			pstm.setTimestamp(4, Timestamp.valueOf(marvelDto.getReleaseDate()));
			pstm.setLong(5, marvelDto.getWorldBoxOffice());
			pstm.setTimestamp(6, Timestamp.valueOf(marvelDto.getWriteDate()));
			pstm.setTimestamp(7, Timestamp.valueOf(marvelDto.getUpdateDate()));
			
			pstm.executeUpdate();
		}
	}
	
	public MarvelDto selectMarvelById(Connection conn, int marvelId) throws SQLException {
		String sql = "select marvel_id, title, title_eng, release_date, world_box_office,"
				+ " write_date, update_date from marvelmovie where marvel_id = ?";
		try(PreparedStatement pst = conn.prepareStatement(sql)){
			pst.setInt(1, marvelId);
			try(ResultSet rs = pst.executeQuery()){
				
				if(rs.next()) {
					return new MarvelDto(rs.getInt("marvel_id"),
							rs.getString("title"),
							rs.getString("title_eng"),
							rs.getTimestamp("release_date").toLocalDateTime(),
							rs.getLong("world_box_office"),
							rs.getTimestamp("write_date").toLocalDateTime(),
							rs.getTimestamp("update_date").toLocalDateTime());
				}else {
					return null;
				}
			}
		}
	}
	
	public void updateMarvel(Connection conn, MarvelDto marvelDto) throws SQLException {
		String sql = "update marvelmovie set"
				+ " title=?, title_eng=?, release_date=?,"
				+ " world_box_office=?, write_date=?, update_date=? where marvel_id =?";
		
		try(PreparedStatement pst = conn.prepareStatement(sql)){
			pst.setString(1, marvelDto.getTitle());
			pst.setString(2, marvelDto.getTitleEng());
			pst.setTimestamp(3, Timestamp.valueOf(marvelDto.getReleaseDate()));
			pst.setLong(4, marvelDto.getWorldBoxOffice());
			pst.setTimestamp(5, Timestamp.valueOf(marvelDto.getWriteDate()));
			pst.setTimestamp(6, Timestamp.valueOf(marvelDto.getUpdateDate()));
			pst.setInt(7, marvelDto.getMarvelId());
			System.out.println(marvelDto.getMarvelId());
			pst.executeUpdate();
		}
	}
}
