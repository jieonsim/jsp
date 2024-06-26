package study.j0427;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/j0427/T05_storageTestOk")
public class T05_storageTestOk extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid"); 
		System.out.println("T05_storageTestOk : mid = " + mid);
		
		// 세션 객체 생성
		HttpSession session = request.getSession();
		session.setAttribute("sMid", mid);
		
		// 어플리케이션객체 생성. 아래 세가지 모두 가능
		/* ServletContext application = session.getServletContext(); */
		/* ServletContext application = request.getSession().getServletContext(); */
		ServletContext application = request.getServletContext();
		
		application.setAttribute("aMid", mid);
		
		response.sendRedirect(request.getContextPath()+"/study/0427_storage/t05_storageTest.jsp");
		
	}
}
