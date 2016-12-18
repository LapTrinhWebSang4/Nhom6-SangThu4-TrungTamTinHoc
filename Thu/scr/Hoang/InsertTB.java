package Hoang;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import Connection.DatabaseManagement;



/**
 * Servlet implementation class InsertTB
 */
@WebServlet("/InsertTB")
@MultipartConfig(maxFileSize = 16177215)
public class InsertTB extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public InsertTB() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		InputStream inputStream = null;
		Part filePart = request.getPart("photo");
		
		java.sql.Date today ;
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.DATE, 1);
		java.util.Date utilDate = cal.getTime();
		today = new java.sql.Date(utilDate.getTime());
		String mathongbao = request.getParameter("mathongbao");
		String tomtat = request.getParameter("tomtat");
		String loaithongbao = request.getParameter("box");
		String noidung = request.getParameter("noidung");
		String tieude = request.getParameter("tieude");
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
			pst = con.prepareStatement("insert into thongbao values(?,?,?,?,?,?,?,?)");
			pst.setString(1,mathongbao);
			pst.setString(2,tieude);
			pst.setString(3,loaithongbao);
			pst.setDate(4,today);
			pst.setString(5,tomtat);
			pst.setString(6,noidung);
			pst.setBlob(7, inputStream,filePart.getSize());
			pst.setInt(8,0);
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		
	}

}
