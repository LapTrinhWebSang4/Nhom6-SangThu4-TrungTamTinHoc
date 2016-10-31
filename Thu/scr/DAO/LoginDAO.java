package DAO;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDAO {
	 public static boolean validate(String name, String pass,String quyen) {        
	        boolean status = false;
	        Connection conn = null;
	        PreparedStatement pst = null;
	        ResultSet rs = null;

	        String url = "jdbc:mysql://localhost:3306/";
	        String dbName = "ttth";
	        String driver = "com.mysql.jdbc.Driver";
	        String userName = "root";
	        String password = "kien2509";
	        try {
	            Class.forName(driver).newInstance();
	            conn = DriverManager
	                    .getConnection(url + dbName, userName, password);

	            pst = conn
	                    .prepareStatement("select * from taikhoan where Taikhoan=? and MatKhau=? and Quyen=?");
	            pst.setString(1, name);
	            pst.setString(2, pass);
	            pst.setString(3, quyen);
	            rs = pst.executeQuery();
	            status = rs.next();

	        } catch (Exception e) {
	            System.out.println(e);
	        } finally {
	            if (conn != null) {
	                try {
	                    conn.close();
	                } catch (SQLException e) {
	                    e.printStackTrace();
	                }
	            }
	            if (pst != null) {
	                try {
	                    pst.close();
	                } catch (SQLException e) {
	                    e.printStackTrace();
	                }
	            }
	            if (rs != null) {
	                try {
	                    rs.close();
	                } catch (SQLException e) {
	                    e.printStackTrace();
	                }
	            }
	        }
	        return status;
	    }
	
}
