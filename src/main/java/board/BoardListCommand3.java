package board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.Pagination;

//public class BoardListCommand3 implements BoardInterface {
//
//	@Override
//	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		BoardDAO dao = new BoardDAO();
//		
//		int pag = request.getParameter("pag")==null ? 1 : Integer.parseInt(request.getParameter("pag"));
//		int pageSize = request.getParameter("pageSize")==null ? 10 : Integer.parseInt(request.getParameter("pageSize"));
//		String part = request.getParameter("part")==null ? "전체" : request.getParameter("part");
//		int totRecCnt = dao.getTotRecCnt(); // 게시판의 전체 레코드 수 구하기
//		
//		int startIndexNo = (pag - 1) * pageSize;
//		List<BoardVO> vos = dao.getBoardList(startIndexNo, pageSize); // 게시판의 전체 자료 가져오기
//		request.setAttribute("vos", vos);
//		
//		// Pagination.pageChange(request, pag, pageSize, totRecCnt, startIndexNo, part);
//		// 다른 게시판에서 이용할 때는 위 주석 두개의 값만 바꾸면 됨 
//	}
//}
