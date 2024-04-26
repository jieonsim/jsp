package study.j0425;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/j0425/T14Ok3")
public class T14Ok3 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("이 곳은 T14Ok3 입니다.");
		
		// setAttribute로 저장된 값 getAttribute로 꺼내기
		// request는 객체이기 때문에 string으로 강제 형변환 필요
		String mid = (String) request.getAttribute("mid");
		String pwd = (String) request.getAttribute("pwd");
		String secureKey = (String) request.getAttribute("secureKey");
		String secureMasterKey = (String) request.getAttribute("secureMasterKey");
		String userPwd = pwd + secureKey;
		
		String viewPage = "";
		if(!mid.equals("admin") || !userPwd.equals("1234" + secureMasterKey)) {
			request.setAttribute("loginFlag", "NO");
			viewPage = "/study/0425/t14_forward.jsp";
			// 아이디, 비밀번호 불일치 시 다시 로그인 페이지로 넘기기
		} else {
			request.setAttribute("loginFlag", "OK");
			viewPage = "/study/0425/t14_Res.jsp";
			// 일치 시 로그인 성공 시의 결과 페이지로 넘기기
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
}
