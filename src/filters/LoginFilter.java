package filters;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginFilter implements Filter {
	@Override
	public void init(FilterConfig arg0) throws ServletException {
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) arg0;
		HttpServletResponse response = (HttpServletResponse) arg1;

		HttpSession session = request.getSession();
		if (session.getAttribute("admininfo") == null
				&& session.getAttribute("stuinfo") == null
				&& session.getAttribute("teainfo") == null) {
			// response.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=gb2312");
			PrintWriter out = response.getWriter();
			out.print("<script>alert('����û�е�¼�����¼...'); window.location='login.jsp' </script>");
			out.flush();
			out.close();

			// request.setAttribute("loginError", "����û�е�¼�����¼...");
			// request.getRequestDispatcher("userlogin.html").forward(request,
			// response);
		} else {
			arg2.doFilter(request, response);
		}
	}

	@Override
	public void destroy() {
	}
}
