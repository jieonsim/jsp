package study2.mapping;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test4UpdateOkCommand implements Test4Interface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("이 곳은 Test4UpdateOkCommand 입니다.");
		System.out.println("이 곳에서는 DB의 자료를 수정합니다.");
		
		String message = "정보가 수정(update)되었습니다.";
		request.setAttribute("message", message);
		request.setAttribute("url", "test4.do4");
	}
}
