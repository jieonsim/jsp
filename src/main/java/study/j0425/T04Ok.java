package study.j0425;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 패키지명을 중간 경로로 넣어준다. 동일한 클래스명이 많이 있을 수 있기때문에 중간경로 필수
@WebServlet("/j0425/T04Ok")
public class T04Ok extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		// 인코딩 한글 깨짐 방지 : 위 두개는 같이 달고다니기
		
		// Front에서 넘어온 값들을 항상 변수에 담아서 처리한다.
		String name = request.getParameter("name")==null ? "" : request.getParameter("name");
		int age = (request.getParameter("age")==null || request.getParameter("age")=="") ? 0 : Integer.parseInt(request.getParameter("age"));

		System.out.println("이름 : " + name);
		System.out.println("나이 : " + age);
		
		PrintWriter out = response.getWriter();
		out.println("<p>이름 : "+ name +"</p>");
		out.println("<p>나이 : "+ age +"</p>");
		out.println("<p><a href='"+request.getContextPath()+"/study/0425/t04.jsp'>돌아가기</a></p>");
	}
}
