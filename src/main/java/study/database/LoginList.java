package study.database;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import guest.GuestVO;

@SuppressWarnings("serial")
@WebServlet("/study/database/LoginList")
public class LoginList extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LoginDAO dao = new LoginDAO();

		String sortKey = request.getParameter("sortKey");
		
		/*
		 * ArrayList<LoginVO> vos = dao.getLoginList(sortKey);
		 * 
		 * request.setAttribute("sortKey", sortKey); request.setAttribute("vos", vos);
		 */
		
		// 1. 현재 페이지 번호를 구해온다. (제일 처음에는 페이지를 넘기지 않으니 무조건 1페이지로 넘겨아하는거고 그 다음부터가 페이지 처리이다.)
		int pag = request.getParameter("pag")==null ? 1 : Integer.parseInt(request.getParameter("pag"));
		
		// 2. 한 페이지의 분량을 구한다.
		/* int pageSize = 5; */
		int pageSize = request.getParameter("pageSize")==null ? 5 : Integer.parseInt(request.getParameter("pageSize"));
		
		if(pageSize > 5) {
			pag = 1;
		}
		
		// 3. 총 레코드 건 수를 구한다.(sql 명령어 중 count 함수 이용)
		int totRecCnt = dao.getTotRecCnt();
		
		// 4. 총 페이지 건 수를 구한다.
		int totPage = (totRecCnt % pageSize) == 0 ? (totRecCnt / pageSize) : (totRecCnt / pageSize) + 1;
		
		// 5. 현재 페이지에서 출력할 '시작 인덱스 번호'를 구한다.
		int startIndexNo = (pag - 1) * pageSize;
		
		// 6. 현재 화면에서 표시될 '시작 실제 번호'를 구한다.
		int curScrStartNo = totRecCnt - startIndexNo;

		// 한 페이지에 표시할 건 수만큼(pageSize수만큼) DAO 에서 가져온다.
		ArrayList<LoginVO> vos = dao.getLoginList(sortKey, startIndexNo, pageSize);
		
		// 설정(지정)된 페이지의 모든 자료(변수)들을 viewPage로 넘겨줄 준비를 한다.
		request.setAttribute("pag", pag);
		request.setAttribute("pageSize", pageSize);
		request.setAttribute("totPage", totPage);
		request.setAttribute("curScrStartNo", curScrStartNo);
		request.setAttribute("vos", vos);
		request.setAttribute("sortKey", sortKey);
		
		String viewPage = "/study/database/loginMain.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
}
