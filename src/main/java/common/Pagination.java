package common;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import board.BoardDAO;
import board.BoardVO;
import pds.PdsDAO;

public class Pagination {

	public static void pageChange(HttpServletRequest request, int pag, int pageSize, String section, String part) {
		// 각 dao 마다 변수에도 클래스 이름과 같이 지어주기, 다른 게시판의 dao도 써야하기 때문에 구분하기 위해
		BoardDAO boardDao = new BoardDAO();
		PdsDAO pdsDao = new PdsDAO();
		int totRecCnt = 0;
		
		if(section.equals("board")) {
			totRecCnt = boardDao.getTotRecCnt();
			// 게시판의 전체 레코드수 구하기
		} else if(section.equals("pds")) {
			// totRecCnt = pdsDao.getTotRecCnt();
			// 자료실의 전체 레코드수 구하기
		}
		
		int totPage = (totRecCnt % pageSize)==0 ? (totRecCnt / pageSize) : (totRecCnt / pageSize) + 1;
		if(pag > totPage) pag = 1;
		int startIndexNo = (pag - 1) * pageSize;
		int curScrStartNo = totRecCnt - startIndexNo;
		
		int blockSize = 3;
		int curBlock = (pag - 1) / blockSize;
		int lastBlock = (totPage - 1) / blockSize;
		
		List<BoardVO> vos = null;
		// List<PdsVO> vos = null;
		
		if(section.equals("board")) {
			vos = boardDao.getBoardList(startIndexNo, pageSize);	// 게시판의 전체 자료 가져오기
		} else if (section.equals("pds")) {
			// List<PdsVO> vos = boardDao.getBoardList(startIndexNo, pageSize);	// 게시판의 전체 자료 가져오기
		}
		request.setAttribute("vos", vos);
		
		request.setAttribute("pag", pag);
		request.setAttribute("pageSize", pageSize);
		request.setAttribute("totRecCnt", totRecCnt);
		request.setAttribute("totPage", totPage);
		request.setAttribute("curScrStartNo", curScrStartNo);
		request.setAttribute("blockSize", blockSize);
		request.setAttribute("curBlock", curBlock);
		request.setAttribute("lastBlock", lastBlock);
		
		// request.setAttribute("part", part);
		// Borad pagination 끝
	}
}
