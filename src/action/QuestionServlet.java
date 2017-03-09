package action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.QuestionDao;
import entity.Question;

public class QuestionServlet extends HttpServlet {
	QuestionDao dao = new QuestionDao();
	Question qt = new Question();

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		String opttype = request.getParameter("opttype");
		if ("保存".equals(opttype)) {
			String Qcontent = request.getParameter("Qcontent");
			String Qtype = request.getParameter("Qtype");
			String Aanswer = request.getParameter("Aanswer");
			String Banswer = request.getParameter("Banswer");
			String Canswer = request.getParameter("Canswer");
			String Danswer = request.getParameter("Danswer");
			String Tanswer = request.getParameter("Tanswer");
			dao.addQuestion(Qcontent, Qtype, Aanswer, Banswer, Canswer,
					Danswer, Tanswer);
			response.sendRedirect("question.action?opttype=query");
		} else if ("query".equals(opttype)) {
			List<Question> qlist = dao.queryAllQuestions();
			request.getSession().setAttribute("qlist", qlist);
			response.sendRedirect("questionBank.jsp");
		} else if ("delete".equals(opttype)) {
			Integer id = Integer.parseInt(request.getParameter("id"));
			System.out.println(id);
			dao.deleteQuestionById(id);
			response.sendRedirect("question.action?opttype=query");
		} else if ("edit".equals(opttype)) {
			Integer Id = Integer.parseInt(request.getParameter("id"));
			String Qcontent = request.getParameter("qcontent");
			String Qtype = request.getParameter("qtype");
			String Aanswer = request.getParameter("aanswer");
			String Banswer = request.getParameter("banswer");
			String Canswer = request.getParameter("canswer");
			String Danswer = request.getParameter("danswer");
			String Tanswer = request.getParameter("tanswer");
			request.getSession().setAttribute("id", Id);
			request.getSession().setAttribute("qcontent", Qcontent);
			request.getSession().setAttribute("qtype", Qtype);
			request.getSession().setAttribute("aanswer", Aanswer);
			request.getSession().setAttribute("banswer", Banswer);
			request.getSession().setAttribute("canswer", Canswer);
			request.getSession().setAttribute("danswer", Danswer);
			request.getSession().setAttribute("tanswer", Tanswer);
			RequestDispatcher d = request
					.getRequestDispatcher("editQuestion.jsp");
			d.forward(request, response);
		} else if ("更新".equals(opttype)) {
			// request.setCharacterEncoding("utf-8");
			// System.out.println(opttype);
			Integer Id = Integer.parseInt(request.getParameter("id"));
			String Qcontent = request.getParameter("qcontent");
			// System.out.println(Qcontent);
			String Qtype = request.getParameter("qtype");
			String Aanswer = request.getParameter("aanswer");
			String Banswer = request.getParameter("banswer");
			String Canswer = request.getParameter("canswer");
			String Danswer = request.getParameter("danswer");
			String Tanswer = request.getParameter("tanswer");
			dao.updateQuestion(Id, Qcontent, Qtype, Aanswer, Banswer, Canswer,
					Danswer, Tanswer);
			RequestDispatcher d = request
					.getRequestDispatcher("question.action?opttype=query");
			d.forward(request, response);
		}
		// } else if ("查询ID".equals(opttype)) {
		// Integer Id = Integer.parseInt(request.getParameter("qid"));
		// System.out.println(opttype + Id);
		// Question qt = null;
		// try {
		// qt = dao.queryQuestionsById(Id);
		// } catch (SQLException e) {
		// // TODO Auto-generated catch block
		// e.printStackTrace();
		// }
		// request.getSession().setAttribute("qt", qt);
		// RequestDispatcher d = request
		// .getRequestDispatcher("queryQuestionResult.jsp");
		// d.forward(request, response);
		// }

	}
}
