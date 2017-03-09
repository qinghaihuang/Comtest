package dao;

import hibernate.HibernateSessionFactory;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import dbutil.DBHelper;
import entity.Test;

public class TestDao {
	public List<Test> queryAllTests() {
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		// List<Customer> clist = new ArrayList<Customer>();
		Query query = session.createQuery("from entity.Test");
		List<Test> tlist = query.list();
		session.getTransaction().commit();
		return tlist;
	}

	public void addTest(String name, String member, Integer testtime,
			String question, Integer fenzhi) {
		String sql = "insert into test(name, member, testtime, question, fenzhi) values('"
				+ name
				+ "','"
				+ member
				+ "',"
				+ testtime
				+ ",'"
				+ question
				+ "'," + fenzhi + ")";
		DBHelper.executeUpdate(sql);
	}
}
