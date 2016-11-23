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
 * Servlet implementation class Hocphi
 */
@WebServlet("/Hocphi")
public class Hocphi extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Hocphi() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
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
				String hoc = rs.getString("HocPhi");		
				out.println("<label>Học phí:</label><input id='hocphi' name='hocphi'value='"+hoc+"' style='display: none;'>"
						+ "<input class='form-control' id='hocphi' name='hocphi'value='"+hoc+"' disabled='disabled'>");
			}

		} catch (Exception e2) {

			System.out.println(e2);
		}

		out.close();
	}

}
