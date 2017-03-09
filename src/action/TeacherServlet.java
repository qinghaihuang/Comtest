package action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TeacherDao;
import entity.Teacher;

public class TeacherServlet extends HttpServlet {
	TeacherDao dao = new TeacherDao();

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		response.setContentType("text/html");
		String opttype = request.getParameter("opttype");
		if ("±£´æ".equals(opttype)) {
			Integer tno = Integer.parseInt(request.getParameter("tno"));
			String tname = request.getParameter("tname");
			String tsex = request.getParameter("tsex");
			String tdept = request.getParameter("tdept");
			dao.addTeacher(tno, tname, tsex, tdept);
			response.sendRedirect("teacher.action?opttype=query");
		} else if ("query".equals(opttype)) {
			List<Teacher> tlist = dao.queryAllTeachers();
			request.getSession().setAttribute("tlist", tlist);
			response.sendRedirect("teacherBank.jsp");
		} else if ("delete".equals(opttype)) {
			Integer tno = Integer.parseInt(request.getParameter("tno"));
			System.out.println(tno);
			dao.deleteTeacherById(tno);
			response.sendRedirect("teacher.action?opttype=query");
		} else if ("edit".equals(opttype)) {
			Integer tno = Integer.parseInt(request.getParameter("tno"));
			String tname = request.getParameter("tname");
			String tsex = request.getParameter("tsex");
			String tdept = request.getParameter("tdept");
			request.getSession().setAttribute("tno", tno);
			request.getSession().setAttribute("tname", tname);
			request.getSession().setAttribute("tsex", tsex);
			request.getSession().setAttribute("tdept", tdept);
			RequestDispatcher d = request
					.getRequestDispatcher("editTeacher.jsp");
			d.forward(request, response);
		} else if ("¸üÐÂ".equals(opttype)) {
			Integer tno = Integer.parseInt(request.getParameter("tno"));
			String tname = request.getParameter("tname");
			String tsex = request.getParameter("tsex");
			String tdept = request.getParameter("tdept");
			dao.updateTeacher(tno, tname, tsex, tdept);
			RequestDispatcher d = request
					.getRequestDispatcher("teacher.action?opttype=query");
			d.forward(request, response);
		}

	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
}
