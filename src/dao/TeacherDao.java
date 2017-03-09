package dao;

import hibernate.HibernateSessionFactory;

import java.sql.ResultSet;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import dbutil.DBHelper;
import entity.Teacher;

public class TeacherDao {
	public boolean loginCheck(Integer tno, String tpwd) {
		boolean check = false;
		String sql = "select tpwd from teacher where tno=" + tno + "";
		ResultSet rs = DBHelper.executeQuery(sql);
		try {
			if (rs.next()) {
				if (rs.getString("tpwd").equals(tpwd)) {
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

	public List<Teacher> queryAllTeachers() {
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		// List<Customer> clist = new ArrayList<Customer>();
		Query query = session.createQuery("from entity.Teacher");
		List<Teacher> tlist = query.list();
		session.getTransaction().commit();
		return tlist;

	}

	// public Teacher queryTeachersById(Integer id) throws SQLException {
	// Question qt = null;
	// try {
	// String sql = "select * from question where Id=" + id + "";
	// ResultSet rs = DBHelper.executeQuery(sql);
	// while (rs.next()) { //
	// qt.setId(rs.getInt("Id"));
	// qt.setQcontent(rs.getString("Qcontent"));
	// qt.setQtype(rs.getString("Qtype"));
	// qt.setCreatetime(rs.getTimestamp("createtime"));
	// }
	// } catch (SQLException e) {
	// // TODO Auto-generated catch block
	// e.printStackTrace();
	// }
	// return qt;
	// }

	public void deleteTeacherById(Integer id) {
		Session session = HibernateSessionFactory.getSession();
		Teacher t = (Teacher) session.get(Teacher.class, id);
		if (t != null) {
			session.beginTransaction();// 开始事务
			session.delete(t);
			session.getTransaction().commit();// 获取当前事务，提交该事务
		}
	}

	public void updateTeacher(Integer Id, String tname, String tsex,
			String tdept) {
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		Teacher t = (Teacher) session.get(Teacher.class, Id);
		if (t != null) {
			t.setTname(tname);
			t.setTsex(tsex);
			t.setTdept(tdept);
			session.update(t);
			session.getTransaction().commit();
		}
	}

	public void addTeacher(Integer tno, String tname, String tsex, String tdept) {
		String sql = "insert into teacher(tno,tname,tsex,tdept) values(" + tno
				+ ",'" + tname + "','" + tsex + "','" + tdept + "')";
		DBHelper.executeUpdate(sql);
	}
}
