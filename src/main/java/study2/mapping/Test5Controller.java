package study2.mapping;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("*.do5")
public class Test5Controller extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Test5Interface command = null;
		String viewPage = "/WEB-INF/study2/mapping/";
		
		String uri = request.getRequestURI();
		String com = uri.substring(uri.lastIndexOf("/")+1, uri.lastIndexOf("."));
		
		if(com.equals("test5")) {
			viewPage += "test5.jsp";
		}
		else if(com.equals("input")) {
			viewPage += "test5input.jsp";
		}
		else if(com.equals("inputOk")) {
			command = new Test5InputCommand();
			command.execute(request, response);
			viewPage = "/WEB-INF/common/message.jsp";
		}
		else if(com.equals("update")) {
			command = new Test5UpdateCommand();
			command.execute(request, response);
			viewPage += "test5update.jsp";
		}
		else if(com.equals("updateOk")) {
			command = new Test5UpdateOkCommand();
			command.execute(request, response);
			viewPage = "/WEB-INF/common/message.jsp";
		}
		else if(com.equals("delete")) {
			command = new Test5DeleteCommand();
			command.execute(request, response);
			viewPage += "test5delete.jsp";
		}
		else if(com.equals("deleteOk")) {
			command = new Test5DeleteOkCommand();
			command.execute(request, response);
			viewPage = "/WEB-INF/common/message.jsp";
		}
		else if(com.equals("search")) {
			command = new Test5SearchCommand();
			command.execute(request, response);
			viewPage += "test5search.jsp";
		}
		else if(com.equals("searchOk")) {
			command = new Test5SearchOkCommand();
			command.execute(request, response);
			viewPage = "/WEB-INF/common/message.jsp";
		}
		else if(com.equals("list")) {
			command = new Test5ListCommand();
			command.execute(request, response);
			viewPage += "test5list.jsp";
		}
		else if(com.equals("listOk")) {
			command = new Test5ListOkCommand();
			command.execute(request, response);
			viewPage = "/WEB-INF/common/message.jsp";
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
}