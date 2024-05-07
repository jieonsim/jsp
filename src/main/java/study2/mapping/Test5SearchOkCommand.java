package study2.mapping;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test5SearchOkCommand implements Test5Interface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("이 곳은 Test5SearchOkCommand 입니다.");
		System.out.println("이 곳에서는 회원의 정보를 DB에서 검색합니다.");
		
		String message = "회원 정보가 검색(search)되었습니다.";
		request.setAttribute("message", message);
		request.setAttribute("url", "test5.do5");
	}
}
