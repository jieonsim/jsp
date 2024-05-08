package study2.ajax;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import study2.StudyInterface;
import study2.studyDAO;

public class AjaxIdCheck1Command implements StudyInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
		
		studyDAO dao = new studyDAO();
		
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
