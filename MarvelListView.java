package jsp08_mvc.marvel.model;

import java.util.List;
//화면을 보여주기 위해 필요한 데이타를 담는 아이
//리스트화면에 필요한 내용
//페이지번호, 페이지 목록(리스트), 전체 메시지 개수, 페이지 개수, 페이지당 보여줄 메시지 개수
public class MarvelListView {
	private int marvelTotalCount;//영화 전체 개수
	private int currentPageNumber;//현재 페이지 번호
	private List<MarvelDto> marvelList;//한 화면(현재화면)에 보여줄 영화 리스트
	private int pageTotalCount;//전체페이지 개수
	private int marvelCountPerPage;//페이지당 영화 개수
	private int firstRow;//화면상 맨 위에 있는 로우 번호
	
	public MarvelListView(int marvelTotalCount, int currentPageNumber, List<MarvelDto> marvelList, int marvelCountPerPage, int firstRow) {
		super();
		this.marvelTotalCount = marvelTotalCount;
		this.currentPageNumber = currentPageNumber;
		this.marvelList = marvelList;
		this.marvelCountPerPage = marvelCountPerPage;
		this.firstRow = firstRow;
		
		//전체 페이지 개수
		if(marvelCountPerPage ==0) {
			pageTotalCount = 0;
		}else {
			//Math.ceil은 반올림해주는 함수			
			pageTotalCount = (int)Math.ceil((double)marvelTotalCount / marvelCountPerPage) ;
		}
	}

	public int getMarvelTotalCount() {
		return marvelTotalCount;
	}

	public int getCurrentPageNumber() {
		return currentPageNumber;
	}

	public List<MarvelDto> getMarvelList() {
		return marvelList;
	}

	public int getPageTotalCount() {
		return pageTotalCount;
	}

	public int getMarvelCountPerPage() {
		return marvelCountPerPage;
	}

	public int getFirstRow() {
		return firstRow;
	}
}
