package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.sql.ResultSet;

import Connection.DatabaseManagement;
import Model.TaiKhoan;
/**
 * Servlet implementation class HandleLogin
 */
@WebServlet("/HandleLogin")
public class HandleLogin extends HttpServlet {
	
	
	public static final String CLIENTS = "ClientMap";
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HandleLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid = request.getParameter("username");
		String pwd = request.getParameter("password");
		String quyen ;
		ServletContext appScope = request.getServletContext();
		List<TaiKhoan> OnlineUser = (List<TaiKhoan>)appScope.getAttribute(CLIENTS);
		
		java.sql.Date today ;
		
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.DATE, 1);
		java.util.Date utilDate = cal.getTime();
		today = new java.sql.Date(utilDate.getTime());
		PrintWriter out = response.getWriter();
		Connection con = (Connection)DatabaseManagement.getConnection();
		
		//java.util.Date utilDate1 = new java.util.Date();
		//java.sql.Date today1 = new java.sql.Date(utilDate1.getTime()) ;
		PreparedStatement pst;
		PreparedStatement pst1;
		try {
		
			pst = (PreparedStatement) con.prepareStatement("select * from taikhoan where Taikhoan=? and MatKhau=?");			
			pst.setString(1,userid);
			pst.setString(2,pwd);		
			ResultSet rs;					
			rs = (ResultSet) pst.executeQuery();			
			if(rs.next()){
				quyen= rs.getString("Quyen"); 
				TaiKhoan tk = new TaiKhoan(rs.getString("Taikhoan"),
						rs.getString("MatKhau"),
						rs.getString("TenThanhVien"),
						rs.getInt("Sodt"),
						rs.getString("Email"),
						rs.getDate("NgaySinh"),
						rs.getDate("NgayDangNhapGanNhat"),
						rs.getString("DiaChi"),
						rs.getInt("SoCMND"),
						rs.getString("Quyen"),
						rs.getString("GioiThieu"));
				HttpSession session = request.getSession(true);
				session.setAttribute("taikhoan",tk);
				session.setAttribute("peerid",userid);			
				OnlineUser.add(tk);
				appScope.setAttribute(CLIENTS, OnlineUser);
				pst1 = (PreparedStatement) con.prepareStatement("update taikhoan set NgayDangNhapGanNhat=? where Taikhoan=?");
				pst1.setDate(1,today);
				pst1.setString(2,userid);
				 pst1.executeUpdate();
				if(quyen.equals("tvv")){
					
					response.sendRedirect("static-dashboard.jsp");
				}else if(quyen.equals("qtnd")){
					response.sendRedirect("QTNDPT.jsp");
					
				}else if(quyen.equals("qtv")){
					response.sendRedirect("QuanTriVien.jsp");
					
					
				}else {out.println("Tai Khoan cua ban da bi khoa");}
				
			}else{
				out.println("Invalid password <a href='login.jsp'>try again</a>");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
