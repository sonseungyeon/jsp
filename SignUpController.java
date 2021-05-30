package practice_project.controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import practice_project.model.SignUpDao;
import practice_project.model.SignUpDto;

public class SignUpController extends HttpServlet{
private SignUpDao signUpDao;
	
	public SignUpController() {
		signUpDao = SignUpDao.getInstance();	
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.getParameter("email");
		
		signUpDao.selectSignUpList(null, 0);
		
		//데이터 검증을 하고, 원래 있던 데이터들과 겹치지 않는다면
		//회원가입데이터에 입력한 데이터를 넘겨주고 화면을 회원가입 완료로 이동시킴
		if() {
			

			
			
			
			req.getRequestDispatcher("/WEB-INF/view/signUpComplete.jsp").forward(req, resp);
		}
	}
	
	
	
}
