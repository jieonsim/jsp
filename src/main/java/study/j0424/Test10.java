package study.j0424;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/T10")
public class Test10 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		
		int su = Integer.parseInt(request.getParameter("su"));
//		웹은 문자 형식으로 오기 때문에 숫자로 파싱해줘야함
		
		int tot = 0;
		for(int i = 1; i <= su; i++ ) {
			tot += i;
		}
		System.out.println("tot : " + tot);
		
		PrintWriter out = response.getWriter();
		out.println("이 곳은 서블릿에서 보냅니다.");
		out.println("<p><input type='button' value='돌아가기' onclick='location.href=\"/javaclass/study/0424/test10Ok.jsp?tot="+tot+"\"' ></p>");
//																												파라미터에 값 넘길 때 '?변수=값'
	}
}
