package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ExerciseServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// response.setContentType("text/html");
		String opttype = request.getParameter("opttype");
		// String index = request.getParameter("answerResult");
		if ("提交".equals(opttype)) {
			// String[] index = request.getParameterValues("answerResult");
			// System.out.print(index);
			// Map map = request.getParameterMap();
			// // 循环Map
			//
			// Set<String> key = map.keySet();
			// for (Iterator it = key.iterator(); it.hasNext();) {
			// String s = (String) it.next();
			// // 以answerResult开头的参数就是结果,第几题可以去判断后面跟的数字
			//
			// if (s.startsWith("answerResult")) {
			// System.out.println("第" + s.replace("answerResult", "")
			// + "题的结果是:" + map.get(s).toString());
			// }
			response.sendRedirect("single_choice_result.jsp");
		}

	}
}
