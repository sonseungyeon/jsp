package jsp08_mvc.marvel.controller;

import java.io.IOException;
import java.time.LocalDateTime;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jsp08_mvc.marvel.model.MarvelDto;
import jsp08_mvc.marvel.model.MarvelWriteService;

public class MarvelWriteController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//전달 받은 방명록데이타 인코딩
		req.setCharacterEncoding("utf-8");
		
		//클라이언트로부터 넘어온 파라미터를 객체에 담는다.
		
		int marvelId = 0;
		
		String title = req.getParameter("title");
		String titleEng = req.getParameter("titleEng");
		Long worldBoxOffice = Long.parseLong(req.getParameter("worldBoxOffice"));
		MarvelDto marvelDto = new MarvelDto(marvelId, title, titleEng, LocalDateTime.now(), worldBoxOffice, LocalDateTime.now(), LocalDateTime.now());
		
		//서비스를 통해 메시지를 쓴다
		MarvelWriteService service = new MarvelWriteService();
		boolean result = service.writeMarvel(marvelDto);
		
		//리스트 페이지로 보낸다 
		if(result) {
			req.setAttribute("wr", true);
		}else {
			req.setAttribute("wr",false); 
		}
		req.getRequestDispatcher("/WEB-INF/view/writeResult.jsp").forward(req, resp);
	}
	
}
