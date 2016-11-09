package Connection;

import java.sql.*;
public class DatabaseManagement {
	static final String password = "kien2509";
	static final String username ="root";
	static final String url = "jdbc:mysql://localhost:3306/";
	static final String driver ="com.mysql.jdbc.Driver";
	static final String dbname = "ttth";
	static Connection conn = null;
	public static Connection getConnection(){
		try {
			Class.forName(driver).newInstance();
		} catch (InstantiationException e) {
		
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		try {
			conn = DriverManager
			        .getConnection(url + dbname, username, password);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return conn;
	}
}
