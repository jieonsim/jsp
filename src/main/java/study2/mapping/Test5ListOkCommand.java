package study2.mapping;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test5ListOkCommand implements Test5Interface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("이 곳은 Test5ListOkCommand 입니다.");
		System.out.println("이 곳에서는 전체 회원의 정보를 DB에서 조회합니다.");
		
		String message = "전체 회원 정보를 조회(list)하였습니다.";
		request.setAttribute("message", message);
		request.setAttribute("url", "test5.do5");
	}
}
