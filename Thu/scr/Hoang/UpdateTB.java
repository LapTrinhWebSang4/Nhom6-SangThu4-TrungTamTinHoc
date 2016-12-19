package Hoang;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import Connection.DatabaseManagement;

/**
 * Servlet implementation class UpdateTB
 */
@WebServlet("/UpdateTB")
@MultipartConfig(maxFileSize = 16177215)
public class UpdateTB extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateTB() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		InputStream inputStream = null;
		Part filePart = request.getPart("photo");
		
		
		String mathongbao = request.getParameter("mathongbao");
		String tomtat = request.getParameter("tomtat");
		String loaithongbao = request.getParameter("box");
		String noidung = request.getParameter("noidung");
		String tieude = request.getParameter("tieude");
		System.out.println(mathongbao);
		System.out.println(loaithongbao);
		if (filePart != null) {
			// prints out some information for debugging
			
			System.out.println(filePart.getName());
			System.out.println(filePart.getSize());
			System.out.println(filePart.getContentType());

			// obtains input stream of the upload file
			inputStream = filePart.getInputStream();
			
		}	
		Connection con = DatabaseManagement.getConnection();
		PreparedStatement pst;
		try {
			if(filePart.getSize()==0)
			{pst = con.prepareStatement("update thongbao set TieuDe=? ,LoaiThongBao=?,TomTat=?,NoiDung=? where MaThongBao=?");
			
			pst.setString(1,tieude);
			pst.setString(2,loaithongbao);
			
			pst.setString(3,tomtat);
			pst.setString(4,noidung);
			
			pst.setString(5,mathongbao);
			pst.executeUpdate();
			response.sendRedirect("QTNDThongBao.jsp");
			}
			else{
				pst = con.prepareStatement("update thongbao set TieuDe=? ,LoaiThongBao=?,TomTat=?,NoiDung=?,Hinh=? where MaThongBao=?");
				
				pst.setString(1,tieude);
				pst.setString(2,loaithongbao);
				
				pst.setString(3,tomtat);
				pst.setString(4,noidung);
				pst.setBlob(5, inputStream,filePart.getSize());
				pst.setString(6,mathongbao);
				pst.executeUpdate();
				response.sendRedirect("QTNDThongBao.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
