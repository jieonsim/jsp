package study.database;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/study/database/LoginView")
public class LoginView extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idx = request.getParameter("idx")==null ? 0 : Integer.parseInt(request.getParameter("idx"));
		
		LoginDAO dao = new LoginDAO();
		
		LoginVO vo = dao.getLoginIdxSearch(idx);
		/* System.out.println("vo : " + vo); < 에러날 땐 콘솔로 값을 찍어보기!*/
	 	request.setAttribute("vo", vo);
	 	
	 	String viewPage = "/study/database/view.jsp";
	 	RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
	 	dispatcher.forward(request, response);
	}
}
