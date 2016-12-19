package Connection;

import java.sql.*;
public class DatabaseManagement {
	static final String password = "123456";
	static final String username ="root";
	static final String url = "jdbc:mysql://localhost:3306/";
	static final String driver ="com.mysql.jdbc.Driver";
	static final String dbname = "ttth?useUnicode=true&characterEncoding=UTF-8";
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
	public void closeConnect() throws SQLException{
		if(conn != null && !conn.isClosed()){
			conn.close();
		}
	}
	
	public int updateData(String sql) throws ClassNotFoundException, SQLException{
		int result =0;
		getConnection();
		Statement sta = conn.createStatement();
		result = sta.executeUpdate(sql);
		closeConnect();
		return result;
	}
	
	public ResultSet getData(String sql) throws SQLException, ClassNotFoundException{
		ResultSet rs = null;
		getConnection();
		Statement sta = conn.createStatement();
		rs = sta.executeQuery(sql);
		return rs;
	}
	
}
