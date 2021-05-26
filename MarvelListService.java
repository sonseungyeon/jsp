package jsp08_mvc.marvel.model;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import jsp08_mvc.marvel.db.MyConnector;

public class MarvelListService {
	static final int MARVEL_COUNT_PER_PAGE = 5; //한페이지당 5개를 보여줌. (상수)
	private MarvelDao marvelDao;
	
	public MarvelListService() {
		marvelDao = marvelDao.getInstance();
	}
	
	public MarvelListView getMarvelListView(int pageNumber) {
		MarvelListView marvelListView = null;
		
		try(Connection conn = MyConnector.getConnection()){
			//전체 페이지 개수
			int marvelTotalCount = marvelDao.selectTotalCount(conn);
			
			//마블 영화 리스트
			List<MarvelDto> marvelList = null;
			
			int firstRow = 0;
			
			//firstRow를 셋팅
			if(marvelTotalCount > 0) {
				//pageNumber-1로 셋팅하는 이유 = 0* 한페이지당 보여줄 개수인 5를 곱하여 처음에는 0페이지, 다음에는 1*5 1페이지
				firstRow = (pageNumber -1) * MARVEL_COUNT_PER_PAGE;
				
			}else {
				pageNumber =0;//현재 페이지 번호를 0으로 함
			}
			
			//영화 리스트를 dao를 통해 가져오기
			marvelList = marvelDao.selectMarvelList(conn, firstRow, MARVEL_COUNT_PER_PAGE);
			
			//화면에 보내줄 모든 데이터를 객체 안에 넣어 셋팅
			marvelListView = new MarvelListView(marvelTotalCount, pageNumber,
					marvelList, MARVEL_COUNT_PER_PAGE, firstRow);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}
		return marvelListView;
		
	}
}
