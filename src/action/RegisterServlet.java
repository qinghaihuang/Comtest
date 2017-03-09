package action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.StudentDao;

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		Integer sno = Integer.parseInt(request.getParameter("sno").trim());
		String spwd = request.getParameter("spwd").trim();
		String comfirmpwd = request.getParameter("comfirmpwd").trim();
		StudentDao sd = new StudentDao();
		// System.out.println(admin);
		String opttype = request.getParameter("opttype");
		try {
			if (comfirmpwd.equals(spwd)) {
				sd.addStudent(sno, spwd, comfirmpwd);
				System.out.println("add()");
				RequestDispatcher d = request.getRequestDispatcher("login.jsp");
				d.forward(request, response);
			} else {
				response.sendRedirect("register.jsp");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
}