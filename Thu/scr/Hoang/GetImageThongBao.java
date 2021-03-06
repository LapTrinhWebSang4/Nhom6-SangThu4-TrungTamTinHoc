package Hoang;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Connection.DatabaseManagement;

import com.mysql.jdbc.Connection;

/**
 * Servlet implementation class GetImageThongBao
 */
@WebServlet("/GetImageThongBao")
public class GetImageThongBao extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetImageThongBao() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			OutputStream oImage;
			Connection con = (Connection) DatabaseManagement.getConnection();
			PreparedStatement stmt = con.prepareStatement("select Hinh from thongbao where MaThongBao=?");
	        stmt.setString(1,request.getParameter("mathongbao"));
	        ResultSet rs = stmt.executeQuery();
	        if (rs.next()) {
	        	byte barray[] = rs.getBytes("Hinh");
	            response.setContentType("image/png");
	            oImage=response.getOutputStream();
	            oImage.write(barray);
	            oImage.flush();
	            oImage.close();
	        }
	        rs.close();
	        stmt.close();
	        con.close();	
		}catch (Exception e){
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
