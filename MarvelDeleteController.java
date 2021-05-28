package jsp08_mvc.marvel.controller;

import java.io.IOException;
import java.time.LocalDateTime;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jsp08_mvc.marvel.model.MarvelDeleteService;
import jsp08_mvc.marvel.model.MarvelDto;

public class MarvelDeleteController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int marvelId = Integer.parseInt(req.getParameter("marvel_id"));
		MarvelDeleteService service = new MarvelDeleteService();
		
		boolean result = service.marvelDelete(marvelId);
		
		req.setAttribute("result", result);
		
		req.getRequestDispatcher("/WEB-INF/view/deleteResult.jsp").forward(req, resp);
	}
}
