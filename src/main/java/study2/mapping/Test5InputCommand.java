package study2.mapping;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test5InputCommand implements Test5Interface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("이 곳은 Test5InputCommand 입니다.");
		System.out.println("이 곳은 회원 가입된 회원의 정보를 DB에 저장합니다.");
		
		String message = "회원가입이 완료되었습니다.";
		request.setAttribute("message", message);
		request.setAttribute("url", "test5.do5");
	}
}
