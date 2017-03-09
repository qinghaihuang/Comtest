package dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dbutil.DBHelper;
import entity.Single_choice;

public class ExerciseDao {
	public List<Single_choice> querySingle_choices() {
		List<Single_choice> slist = new ArrayList<Single_choice>();
		try {
			String sql = "select * from single_choice";
			ResultSet rs = DBHelper.executeQuery(sql);
			while (rs.next()) {
				Single_choice sg = new Single_choice();
				sg.setId(rs.getInt(1));
				sg.setScontent(rs.getString(2));
				sg.setSchapter(rs.getInt(3));
				sg.setAanswer(rs.getString(4));
				sg.setBanswer(rs.getString(5));
				sg.setCanswer(rs.getString(6));
				sg.setDanswer(rs.getString(7));
				sg.setTanswer(rs.getString(8));
				slist.add(sg);
			}
			DBHelper.closeConnection();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return slist;
	}

	/*
	 * public boolean check() {
	 * 
	 * }
	 */
}
