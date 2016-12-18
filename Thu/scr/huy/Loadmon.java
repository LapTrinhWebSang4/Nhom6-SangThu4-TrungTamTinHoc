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
			sql = "SELECT * FROM khoahoc where MaLoaiKhoaHoc='"+name+"'";

			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				String ten = rs.getString("TenKhoaHoc");
				String id = rs.getString("MaKhoaHoc");
				String Tid = rs.getString("MaLoaiKhoaHoc");
				String date = rs.getString("NgayKhaiGiang");
				String info = rs.getString("GioiThieu");
				String urlink =rs.getString("url");
				//String safe = rs.getString("CheDoMienGiam");
				String cost = rs.getString("HocPhi");
				String link = "fromdkonline.jsp?loaimonhoc="+Tid+"&id="+id;

				out.println("<tr>"
						+ "<td>"+ten
						+ "<td>"+ id
						+ "<td>"+ date
						+ "<td>"
						+ ""
						+ "<a data-toggle='modal'"
						+"value='info' data-target='#myModal"+id+"''><strong>Detail</strong></a>"
						+"<div class='modal fade' id='myModal"+id+"' tabindex='-1' role='dialog'"
						+"aria-labelledby='' aria-hidden='false'>"
						+"<div class='modal-dialog'>"
						+"<div class='modal-content'>"
						+"<div class='modal-header'>"
						+"<button type='button' class='close' data-dismiss='modal'"
						+"aria-hidden='true'>&times;</button>"
						+"<h2 class='modal-title' id='myModalLabel' align='center'>Thông tin khóa học</h2>"
						+"</div>"
						+"<div>"
						+ "<h4 style='color: blue;' align='center'>"+ten+"</h4>"
						+""+info+""							
						+"<br>"
						+ "<a href='${pageContext.servletContext.contextPath }/DownloadFile?filename="+urlink+"'><h6 style='color: blue;'>Link kèm theo</h6></a>"
						+ "</div>"
						+"<div class='modal-footer'>"
						+"<button type='button' class='btn btn-block btn-success'"
						+"data-dismiss='modal'>OK</button>"
						+"</div>"
						+"</div>"						
						+"</div>"
						+"</div>"
						+"</td>"
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
