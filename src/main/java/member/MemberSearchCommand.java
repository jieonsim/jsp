package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemberSearchCommand implements MemberInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
		
		MemberDAO dao = new MemberDAO();
		
		MemberVO vo = dao.getMemberIdCheck(mid);

		// 주소 출력 시 슬래시가 나오지 않도록 슬래시를 공백으로 replace. 앞에 우편번호 표기
		vo.setAddress("(우) " + vo.getAddress().replace("/", ""));
		// 생일 출력 시 시간없이 날짜만 출력되도록 substring
		vo.setBirthday(vo.getBirthday().substring(0, 10));
		
		request.setAttribute("vo", vo);
	}

}
