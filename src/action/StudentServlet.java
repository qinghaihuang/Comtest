package action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.StudentDao;
import entity.Student;

public class StudentServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		String logout = request.getParameter("logout");
		String opttype = request.getParameter("opttype");

		StudentDao sd = new StudentDao();

		if ("logout".equals(opttype)) {
			request.getSession().setAttribute("stuinfo", "");
			response.sendRedirect("login.jsp");
		} else if ("query".equals(opttype)) {
			List<Student> slist = sd.queryAllStudents();
			request.getSession().setAttribute("slist", slist);
			response.sendRedirect("studentBank.jsp");
		} else if ("delete".equals(opttype)) {
			Integer sno = Integer.parseInt(request.getParameter("sno"));
			System.out.println(sno);
			sd.deleteStudent(sno);
			// response.sendRedirect("student.action?opttype=query");
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("student.action?opttype=query");
			try {
				dispatcher.forward(request, response);
				return;
			} catch (Exception e) {
				// TODO: handle exception
			}

		} else if ("stuAccount".equals(opttype)) {
			// Integer sno1 = Integer.parseInt(request.getParameter("sno1"));
			String sname = request.getParameter("sname");
			// System.out.println(opttype + sno + sname);
			String ssex = request.getParameter("ssex");
			String sclass = request.getParameter("sclass");
			String sdept = request.getParameter("sdept");
			String sscore = request.getParameter("sscore");
			// request.getSession().setAttribute("sno", sno);
			request.getSession().setAttribute("sname", sname);
			request.getSession().setAttribute("ssex", ssex);
			request.getSession().setAttribute("sclass", sclass);
			request.getSession().setAttribute("sdept", sdept);
			request.getSession().setAttribute("sscore", sscore);
			response.sendRedirect("editStudent.jsp");
			return;

		} else if ("¸üÐÂ".equals(opttype)) {
			// request.setCharacterEncoding("utf-8");
			// System.out.println(opttype);
			Integer sno = Integer.parseInt(request.getParameter("sno"));
			String sname = request.getParameter("sname");
			String ssex = request.getParameter("ssex");
			String sclass = request.getParameter("sclass");
			String sdept = request.getParameter("sdept");
			String sscore = request.getParameter("sscore");
			sd.updateQuestion(sno, sname, ssex, sclass, sdept, sscore);
			RequestDispatcher d = request
					.getRequestDispatcher("student.action?opttype=query");
			d.forward(request, response);
		}
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
}
