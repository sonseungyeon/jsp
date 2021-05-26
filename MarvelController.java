package jsp08_mvc.marvel.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jsp08_mvc.marvel.model.MarvelListService;
import jsp08_mvc.marvel.model.MarvelListView;

public class MarvelController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pageNumberStr = req.getParameter("page");
		int pageNumber = 1;
			if(pageNumberStr !=null) {
				pageNumber = Integer.parseInt(pageNumberStr);
			}
			//리스트로 보여줄 데이타를 찾아올꺼임
			//서비스를 이용함
			MarvelListService service = new MarvelListService();
			
			//서비스를 이용하여 데이타를 받아옴
			MarvelListView viewData = service.getMarvelListView(pageNumber);
			
			//화면에 보내줄 데이타를 request에 담는다.
			req.setAttribute("viewData", viewData);
			
			//리스트를 어떤화면에 보여줄지 정해서 보내줌
			req.getRequestDispatcher("/WEB-INF/view/listview.jsp").forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
}
