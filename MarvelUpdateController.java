package jsp08_mvc.marvel.controller;

import java.io.IOException;
import java.time.LocalDateTime;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jsp08_mvc.marvel.model.MarvelDto;
import jsp08_mvc.marvel.model.MarvelListService;
import jsp08_mvc.marvel.model.MarvelSelectService;
import jsp08_mvc.marvel.model.MarvelUpdateService;

public class MarvelUpdateController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String marvelIdStr = req.getParameter("marvel_id");
		int marvelId = Integer.parseInt(marvelIdStr);
		//화면에 수정할 데이타를 보내야하는데 그 정보를 서비스에서 가져온다.
		MarvelSelectService service = new MarvelSelectService();
		MarvelDto marvelDto = service.getMarvel(marvelId);
		
		//리퀘스트에 데이타를 담아준다
		req.setAttribute("marvel", marvelDto);
		
		//보여줄 화면으로 보낸다.
		req.getRequestDispatcher("/WEB-INF/view/updateForm.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//인코딩
		req.setCharacterEncoding("utf-8");
		
		String marvelIdStr = req.getParameter("marvelId");
		int marvelId = Integer.parseInt(marvelIdStr);
		System.out.println(marvelIdStr);
		String title = req.getParameter("title");
		String titleEng = req.getParameter("titleEng");
		Long worldBoxOffice = Long.parseLong(req.getParameter("worldBoxOffice"));
		
		//마블 Dto객체 생성
		MarvelDto marvelDto = new MarvelDto(marvelId, title, titleEng, LocalDateTime.now(), worldBoxOffice, LocalDateTime.now(), LocalDateTime.now());
		
		//마블 서비스를 사용해서 업데이트 결과를 가져옴
		MarvelUpdateService service = new MarvelUpdateService();
		boolean result = service.marvelUpdate(marvelDto);
		
		req.setAttribute("result", result);
		
		req.getRequestDispatcher("/WEB-INF/view/updateResult.jsp").forward(req, resp);
	}
}
