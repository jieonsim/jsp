package study.j0425;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/T03Ok")
public class T03Ok2 extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/* response.setContentType("text/html; charset=utf-8"); */
		request.setCharacterEncoding("utf-8");
		// 인코딩 한글 깨짐 방지
		
		// Front에서 넘어온 값들을 항상 변수에 담아서 처리한다.
		String name = request.getParameter("name")==null ? "" : request.getParameter("name");
		// 삼항연산자를 이용하여 처리
		int age = (request.getParameter("age")==null || request.getParameter("age")=="") ? 0 : Integer.parseInt(request.getParameter("age"));

		System.out.println("이름 : " + name);
		System.out.println("나이 : " + age);
		
	}
}
