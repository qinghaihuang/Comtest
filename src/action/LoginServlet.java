package action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.StudentDao;
import dao.TeacherDao;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private final static String ADMIN = "admin";
	private final static String APWD = "123456";

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String who = request.getParameter("who");
		String logout = request.getParameter("logout");
		// System.out.println(who);
		if ("admin".equals(who)) {// 管理员登录验证
			request.setCharacterEncoding("utf-8");
			String admin = request.getParameter("Admin").trim();
			// System.out.println(admin);
			String apwd = request.getParameter("Apwd").trim();
			String opttype = request.getParameter("opttype");

			if (admin.equals(ADMIN) && apwd.equals(APWD)) {
				request.getSession().setMaxInactiveInterval(30 * 60);
				// 设置session失效时间（timeout），单位为秒
				request.getSession().setAttribute("admininfo", admin);
				// 用户名和密码正确，保存登录信息(获得session与jsp网页稍有不同)

				// response.sendRedirect("admin_manage.jsp");

				RequestDispatcher d = request
						.getRequestDispatcher("admin_manage.jsp");
				d.forward(request, response);
			} else {
				response.sendRedirect("login_admin.jsp?error=failed");
				// 用户名和密码错误，跳转到登录界面 }
			}

		} else if ("student".equals(who)) { // 学生登录验证
			Integer sno = Integer.parseInt(request.getParameter("sno"));
			String spwd = request.getParameter("spwd");
			// String logout = request.getParameter("logout");
			// String opttype = request.getParameter("opttype");
			String uyzm = request.getParameter("uyzm");
			String yzm = request.getSession().getAttribute("yzm").toString();
			StudentDao sd = new StudentDao();
			if (sd.loginCheck(sno, spwd) && uyzm.equals(yzm)) {
				// 真的合法
				// 将用户信息存入session中
				HttpSession hs = request.getSession(true);
				hs.setMaxInactiveInterval(30);
				hs.setAttribute("stuinfo", sno);
				response.sendRedirect("student_homepage.jsp");
			} else {
				// 密码错误
				response.sendRedirect("login.jsp?error=failed");
				// }else if()
			}

		} else if ("teacher".equals(who)) {// 教师登录验证
			Integer tno = Integer.parseInt(request.getParameter("tno"));
			String tpwd = request.getParameter("tpwd");
			String uyzm = request.getParameter("uyzm");
			String yzm = request.getSession().getAttribute("yzm").toString();
			// System.out.println(sno + spwd);
			// String opttype = request.getParameter("opttype");
			TeacherDao td = new TeacherDao();
			if (td.loginCheck(tno, tpwd) && uyzm.equals(yzm)) {
				// 真的合法
				// 将用户信息存入session中
				HttpSession hs = request.getSession(true);
				hs.setMaxInactiveInterval(30);
				hs.setAttribute("teainfo", tno);
				response.sendRedirect("teacher_homepage.jsp");
			} else {
				// 密码错误
				response.sendRedirect("login_teacher.jsp?error=failed");
			}
		}
		if ("tealogout".equals(logout)) {
			request.getSession().setAttribute("teainfo", "");
			response.sendRedirect("login_teacher.jsp");
		}
		if ("stulogout".equals(logout)) {
			request.getSession().setAttribute("stuinfo", "");
			response.sendRedirect("login.jsp");
		}
		if ("adminlogout".equals(logout)) {
			request.getSession().setAttribute("admininfo", "");
			response.sendRedirect("login_admin.jsp");
		}

	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
}
