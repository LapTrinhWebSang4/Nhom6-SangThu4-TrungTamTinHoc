package huy;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Load_info_monhoc
 */
@WebServlet("/Load_info_monhoc")
public class Load_info_monhoc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Load_info_monhoc() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
PrintWriter out = response.getWriter();
		

		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/ttth", "root", "1234");

			Statement stmt = conn.createStatement();
			String sql;
			String name = request.getParameter("name");
			
			
				sql = "SELECT * FROM khoahoc where MaKhoaHoc='"+name+"'";
			
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				String info = rs.getString("GioiThieu");
				String ten = rs.getString("TenKhoaHoc");
				
				out.println("<h3>"
						+ ten
						+ "</h3>"
						+ "<P>"+info);
			}

		} catch (Exception e2) {
			
			System.out.println(e2);
		}

		out.close();
	}

}
