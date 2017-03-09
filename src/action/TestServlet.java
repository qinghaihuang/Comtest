package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TestDao;
import entity.Test;

public class TestServlet extends HttpServlet {
	TestDao td = new TestDao();
	Test test = new Test();

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		String opttype = request.getParameter("opttype");
		if ("Äâ¾í".equals(opttype)) {
			String name = request.getParameter("name");
			String member = request.getParameter("member");
			Integer testtime = Integer.parseInt(request
					.getParameter("testtime"));
			String question = request.getParameter("singlequestion");
			Integer fenzhi = Integer.parseInt(request
					.getParameter("singlefenzhi"));
			td.addTest(name, member, testtime, question, fenzhi);
			response.sendRedirect("test.jsp?success=sus");
		}
	}
}
