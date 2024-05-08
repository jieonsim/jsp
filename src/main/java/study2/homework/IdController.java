package study2.homework;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("*.id")
public class IdController extends HttpServlet {
		@Override
		protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				IdInterface command = null;
				String viewPage = "/study/database/";
				
				String com = request.getRequestURI();
				com = com.substring(com.lastIndexOf("/")+1, com.lastIndexOf("."));
			
				if(com.equals("update")) {
					command = new updateCommand();
					command.execute(request, response);
					return;
				}
		}
}
