package dao;

import hibernate.HibernateSessionFactory;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import dbutil.DBHelper;
import entity.Student;

public class StudentDao {
	// 登录验证
	public boolean loginCheck(Integer sno, String spwd) {
		boolean check = false;
		String sql = "select spwd from student where sno=" + sno + "";
		ResultSet rs = DBHelper.executeQuery(sql);
		try {
			if (rs.next()) {
				if (rs.getString("spwd").equals(spwd)) {
					check = true;
				} else {
					check = false;
				}
			} else {
				check = false;
			}
			DBHelper.closeConnection();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return check;
	}

	// 查询所有学生
	public List<Student> queryAllStudents() {
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		// List<Customer> clist = new ArrayList<Customer>();
		Query query = session.createQuery("from entity.Student");
		List<Student> slist = query.list();

		/*
		 * for (int i = 0; i < clist.size(); i++) { Customer cus = clist.get(i);
		 * System.out.println(cus.getCustomerId()); }
		 */
		session.getTransaction().commit();
		return slist;
	}

	// 用户账户设置请求
	public Student queryStudentBySno(Integer sno) throws SQLException {
		Student s = new Student();
		try {
			String sql = "select * from student where sno=" + sno + "";
			ResultSet rs = DBHelper.executeQuery(sql);
			while (rs.next()) {
				s.setSno(rs.getInt("sno"));
				s.setSname(rs.getString("sname"));
				s.setSpwd(rs.getString("spwd"));
				s.setSclass(rs.getString("sclass"));
				s.setComfirmpwd(rs.getString("comfirmpwd"));
				s.setSdept(rs.getString("sdept"));
				s.setSscore(rs.getString("sscore"));
				s.setSsex(rs.getString("ssex"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return s;
	}

	public void addStudent(Integer sno, String spwd, String comfirmpwd) {
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		Student stu = new Student();
		stu.setSno(sno);
		stu.setSpwd(spwd);
		stu.setComfirmpwd(comfirmpwd);
		stu.setSclass(null);
		stu.setSdept(null);
		stu.setSname(null);
		stu.setSsex(null);
		stu.setSscore(null);
		session.save(stu);
		session.getTransaction().commit();
	}

	public void deleteStudent(Integer sno) {
		Session session = HibernateSessionFactory.getSession();
		Student q = (Student) session.get(Student.class, sno);
		if (q != null) {
			session.beginTransaction();
			session.delete(q);
			session.getTransaction().commit();
		}
	}

	public void updateQuestion(Integer sno, String sname, String ssex,
			String sclass, String sdept, String sscore) {
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		Student s = (Student) session.get(Student.class, sno);
		if (s != null) {
			s.setSno(sno);
			s.setSname(sname);
			s.setSsex(ssex);
			s.setSclass(sclass);
			s.setSdept(sdept);
			s.setSscore(sscore);
			session.update(s);
			session.getTransaction().commit();
		}
	}

}
