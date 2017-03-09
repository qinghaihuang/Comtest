package dao;

import hibernate.HibernateSessionFactory;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import dbutil.DBHelper;
import entity.Question;

public class QuestionDao {

	public List<Question> queryAllQuestions() {
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		// List<Customer> clist = new ArrayList<Customer>();
		Query query = session.createQuery("from entity.Question");
		List<Question> clist = query.list();
		session.getTransaction().commit();
		return clist;

	}

	// 查询ID
	public Question queryQuestionsById(Integer id) throws SQLException {
		Question qt = new Question();
		try {
			String sql = "select Id,qcontent,qtype,createtime from question where Id="
					+ id + "";
			ResultSet rs = DBHelper.executeQuery(sql);
			while (rs.next()) {
				qt.setId(rs.getInt("Id"));
				qt.setQcontent(rs.getString("Qcontent"));
				qt.setQtype(rs.getString("Qtype"));
				qt.setCreatetime(rs.getTimestamp("createtime"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return qt;
	}

	// 删除
	public void deleteQuestionById(Integer id) {
		Session session = HibernateSessionFactory.getSession();
		Question q = (Question) session.get(Question.class, id);
		if (q != null) {
			session.beginTransaction();// 开始事务
			session.delete(q);
			session.getTransaction().commit();// 获取当前事务，提交该事务
		}
	}

	public void updateQuestion(Integer Id, String Qcontent, String Qtype,
			String Aanswer, String Banswer, String Canswer, String Danswer,
			String Tanswer) {
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		Question qt = (Question) session.get(Question.class, Id);
		if (qt != null) {
			qt.setQcontent(Qcontent);
			qt.setQtype(Qtype);
			qt.setAanswer(Aanswer);
			qt.setBanswer(Banswer);
			qt.setCanswer(Canswer);
			qt.setDanswer(Danswer);
			qt.setTanswer(Tanswer);
			session.update(qt);
			session.getTransaction().commit();
		}
	}

	public void addQuestion(String Qcontent, String Qtype, String Aanswer,
			String Banswer, String Canswer, String Danswer, String Tanswer) {
		String sql = "insert into question(Qcontent,Qtype,Aanswer,Banswer,Canswer,Danswer,Tanswer) values('"
				+ Qcontent
				+ "','"
				+ Qtype
				+ "','"
				+ Aanswer
				+ "','"
				+ Banswer
				+ "','" + Canswer + "','" + Danswer + "','" + Tanswer + "')";
		DBHelper.executeUpdate(sql);
	}
	/*
	 * public List<Question> queryQuestions() { List<Question> qlist = new
	 * ArrayList<Question>(); try { String sql = "select * from question";
	 * ResultSet rs = DBHelper.executeQuery(sql); while (rs.next()) { Question
	 * qt = new Question(); qt.setId(rs.getInt(1));
	 * qt.setQcontent(rs.getString(2)); qt.setQtype(rs.getString(3));
	 * qt.setAanswer(rs.getString(4)); qt.setBanswer(rs.getString(5));
	 * qt.setCanswer(rs.getString(6)); qt.setDanswer(rs.getString(7));
	 * qt.setTanswer(rs.getString(8)); qt.setCreatetime(rs.getTimestamp(9));
	 * qlist.add(qt); } DBHelper.closeConnection(); } catch (Exception ex) {
	 * ex.printStackTrace(); } return qlist; }
	 * 
	 * public Question queryQuestionsById(Integer id) { Question qt = null; try
	 * { String sql = "select * from question where Id=" + id + ""; ResultSet rs
	 * = DBHelper.executeQuery(sql); while (rs.next()) { // Integer Id =
	 * rs.getInt("Id"); qt.setQcontent(rs.getString("Qcontent"));
	 * qt.setQtype(rs.getString("Qtype"));
	 * qt.setAanswer(rs.getString("Aanswer"));
	 * qt.setBanswer(rs.getString("Banswer"));
	 * qt.setCanswer(rs.getString("Canswer"));
	 * qt.setDanswer(rs.getString("Danswer"));
	 * qt.setTanswer(rs.getString("Tanswer"));
	 * qt.setCreatetime(rs.getTimestamp("createtime"));
	 * 
	 * 
	 * qt = new Question(Qcontent, Qtype, Aanswer, Banswer, Canswer, Danswer,
	 * Tanswer, Createtime);
	 * 
	 * 
	 * } DBHelper.closeConnection(); } catch (Exception ex) {
	 * ex.printStackTrace(); } return qt; }
	 * 
	 * public void addQuestion(String Qcontent, String Qtype, String Aanswer,
	 * String Banswer, String Canswer, String Danswer, String Tanswer) { String
	 * sql =
	 * "insert into question(Qcontent,Qtype,Aanswer,Banswer,Canswer,Danswer,Tanswer) values('"
	 * + Qcontent + "','" + Qtype + "','" + Aanswer + "','" + Banswer + "','" +
	 * Canswer + "','" + Danswer + "','" + Tanswer + "')";
	 * DBHelper.executeUpdate(sql); }
	 * 
	 * public void deleteQuestionById(Integer id) { String sql =
	 * "delete from question where Id=" + id + ""; DBHelper.executeUpdate(sql);
	 * }
	 * 
	 * public void updateQuestion(Integer Id, String Qcontent, String Qtype,
	 * String Aanswer, String Banswer, String Canswer, String Danswer, String
	 * Tanswer) { String sql = "update question set Qcontent='" + Qcontent +
	 * "',Qtype='" + Qtype + "',Aanswer='" + Aanswer + "',Banswer='" + Banswer +
	 * "',Canswer='" + Canswer + "',Danswer='" + Danswer + "',Tanswer='" +
	 * Tanswer + "'where Id=" + Id + ""; DBHelper.executeUpdate(sql); }
	 */
}
