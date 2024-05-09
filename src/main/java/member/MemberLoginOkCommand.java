package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemberLoginOkCommand implements MemberInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
		String pwd = request.getParameter("pwd")==null ? "" : request.getParameter("pwd");
		
		MemberDAO dao = new MemberDAO();
		
		MemberVO vo = dao.getMemberIdCheck(mid);
		
		// 아래로 회원 인증처리
		if(vo.getPwd() == null || !vo.getPwd().equals(pwd)) {
			request.setAttribute("message", "존재하지 않는 계정입니다.");
			request.setAttribute("url", request.getContextPath() + "/MemberLogin.mem");
			return;
		}
		
		//로그인 체크 완료 후에 처리할 내용(cookie, session)
		
		// 회원이 맞으면 vo.getMid 값이 null이 아니다
		
		// 회원일 때 처리할 부분
		// 1. 방문 포인트 지급 : 매번 10포인트씩 지급, 단 1일 50포인트까지만
		// 2. 최종접속일, 방문카운트 (일일 방문 카운트, 전체 누적 방문 카운트)
		
		// 쿠키에 아이디를 저장/해제 처리한다.
		// 로그인시 아이디저장시킨다고 체크하면 쿠키에 아이디 저장하고, 그렇지 않으면 쿠키에서 아이디를 제거한다.
		String idSave = request.getParameter("idSave")==null ? "off" : "on";
		Cookie cookieMid = new Cookie("cMid", mid);
		cookieMid.setPath("/");
		if(idSave.equals("on")) {
			cookieMid.setMaxAge(60*60*24*7);	// 쿠키의 만료시간은 1주일로 한다.
		}
		else {
			cookieMid.setMaxAge(0);
		}
		response.addCookie(cookieMid);
			
		// 등급 레벨별 등급 명칭을 저장한다.
		String strLevel = "";
		if (vo.getLevel() == 0) {
			strLevel = "관리자";
		} 
		else if (vo.getLevel() == 1) {
			strLevel = "준회원";
		}
		else if (vo.getLevel() == 2) {
			strLevel = "정회원";
		}
		else if (vo.getLevel() == 3) {
			strLevel = "우수회원";
		}
		
		// 필요한 정보를 session에 저장처리한다.
		HttpSession session = request.getSession();
		session.setAttribute("sMid", mid);
		session.setAttribute("sNickName", vo.getNickName());
		session.setAttribute("sLevel", vo.getLevel());
		session.setAttribute("strLevel", strLevel);

		request.setAttribute("message", mid + "님 로그인되었습니다.");
		request.setAttribute("url", request.getContextPath() + "/MemberMain.mem");
		
	}
}
