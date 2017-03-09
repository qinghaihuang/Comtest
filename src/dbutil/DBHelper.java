package dbutil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DBHelper {
	private static String driver = "com.mysql.jdbc.Driver";
	private static String url = "jdbc:mysql://127.0.0.1:3306/comtest",
			user = "root", pwd = "1234";
	private static Connection conn = null;
	static {
		try {
			Class.forName(driver);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void closeConnection() {
		try {
			if (conn != null && !conn.isClosed())
				conn.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	public static ResultSet executeQuery(String sql) {
		ResultSet rs = null;
		try {
			conn = DriverManager.getConnection(url, user, pwd);
			Statement cmd = conn.createStatement();
			rs = cmd.executeQuery(sql);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return rs;
	}

	public static int executeUpdate(String sql, Object[] params) {
		return 0;
	}

	public static int executeUpdate(String sql) {
		int r = 0;
		try {
			Connection conn = DriverManager.getConnection(url, user, pwd);
			Statement cmd = conn.createStatement();
			r = cmd.executeUpdate(sql);
			conn.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return r;
	}
}
