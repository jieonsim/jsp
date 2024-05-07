package study2.mapping;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test5DeleteOkCommand implements Test5Interface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("이 곳은 Test5DeleteOkCommand 입니다.");
		System.out.println("이 곳에서는  삭제된 회원의 정보를 DB에 저장합니다.");
		
		String message = "회원 정보가 삭제(delete)되었습니다.";
		request.setAttribute("message", message);
		request.setAttribute("url", "test5.do5");
	}
}
