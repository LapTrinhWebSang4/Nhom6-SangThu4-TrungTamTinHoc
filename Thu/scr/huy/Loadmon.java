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
 * Servlet implementation class Loadmon
 */
@WebServlet("/Loadmon")
public class Loadmon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Loadmon() {
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
			String al ="ALLALL";
			if(name.equals(al)){sql = "SELECT * FROM khoahoc";}
			else
				sql = "SELECT * FROM khoahoc where MaLoaiKhoaHoc='"+name+"'";
			
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				String ten = rs.getString("TenKhoaHoc");
				String id = rs.getString("MaKhoaHoc");
				String Tid = rs.getString("MaLoaiKhoaHoc");
				String date = "Load_info_monhoc?name="+id;
				String info = rs.getString("GioiThieu");
				//String safe = rs.getString("CheDoMienGiam");
				String cost = rs.getString("HocPhi");
				String link = "fromdkonline.jsp?loaimonhoc="+Tid+"&id="+id;
				
				out.println("<tr>"
						+ "<td>"+ten
						+ "<td>"+ id
						+ "<td>"+ date
						+ "<td><a hred="+info+">detail</a>"
						+ "<td>"+cost
						//+ "<td>"+ safe
						+ "<td> <a href="+link+"><button class='btn btn-success'><span class='glyphicon glyphicon-pencil'/></button></a>"
						+ "</tr>");
			}

		} catch (Exception e2) {
			
			System.out.println(e2);
		}

		out.close();
	}

}