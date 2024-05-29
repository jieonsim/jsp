package study2.ajax;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import study2.StudyDAO;

@SuppressWarnings("serial")
@WebServlet("/AjaxIdCheck1")
public class AjaxIdCheck1 extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
		
		StudyDAO dao = new StudyDAO();
		
		String name = dao.getIdSearch(mid);
				
		
		if(name.equals("")) {
			name = "찾는 자료가 없습니다.";
		}
		else {
			// PrintWriter out = response.getWriter();
			// out.println(name);  브라우저에 출력
			// out.write(name);    헤더에 실어 출력
			response.getWriter().write(name); // 위 내용 축약한거(헤더에 실어 출력하는건 같음)
		}
	}
}
