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
		if ("�ύ".equals(opttype)) {
			// String[] index = request.getParameterValues("answerResult");
			// System.out.print(index);
			// Map map = request.getParameterMap();
			// // ѭ��Map
			//
			// Set<String> key = map.keySet();
			// for (Iterator it = key.iterator(); it.hasNext();) {
			// String s = (String) it.next();
			// // ��answerResult��ͷ�Ĳ������ǽ��,�ڼ������ȥ�жϺ����������
			//
			// if (s.startsWith("answerResult")) {
			// System.out.println("��" + s.replace("answerResult", "")
			// + "��Ľ����:" + map.get(s).toString());
			// }
			response.sendRedirect("single_choice_result.jsp");
		}

	}
}
