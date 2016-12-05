package Controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Date;
import java.sql.SQLException;
import java.util.Iterator;
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
import org.apache.commons.io.IOUtils;

import Connection.DatabaseManagement;
import Model.TaiKhoan;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class updateKhoaHoc
 */
@WebServlet("/updateKhoaHoc")
@MultipartConfig(maxFileSize = 16177215)
public class updateKhoaHoc extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private boolean isMultipart;
	private String filePath;
	private int maxFileSize = 300 * 1024;
	private int maxMemSize = 4 * 1024;
	private File file ;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateKhoaHoc() {
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
        request.setCharacterEncoding("UTF-8");
		String TenKhoaHoc = request.getParameter("TenKhoaHoc");
        System.out.println(TenKhoaHoc);
        Part filePart = request.getPart("image");
		String NgayKhaiGiang = request.getParameter("date");
		String GioiThieu=request.getParameter("GioiThieu");
		String HocPhi = request.getParameter("HocPhi");
		String MaLoaiKhoaHoc = request.getParameter("MaLoaiKhoaHoc");
		String MaKhoaHoc=request.getParameter("MaKhoaHoc");
		byte[] bytes =null;
        InputStream inputStream = null; // input stream of the upload file
         
        // obtains the upload file part in this multipart request
        
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
             
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
            bytes = IOUtils.toByteArray(inputStream);
        }
         
        Connection conn = null; // connection to the database
         
        try {
            // connects to the database
            conn = (Connection)DatabaseManagement.getConnection();
 
            // constructs SQL statement
            PreparedStatement statement = (PreparedStatement) conn.prepareStatement("update KhoaHoc set TenKhoaHoc=?,NgayKhaiGiang=?,GioiThieu=?,HocPhi=?,Hinh=?,MaLoaiKhoaHoc=? where MaKhoaHoc=?");
            statement.setString(1, TenKhoaHoc);
            statement.setDate(2, java.sql.Date.valueOf(NgayKhaiGiang));
            statement.setString(3, GioiThieu);
            statement.setDouble(4, Double.valueOf(HocPhi));
            statement.setBytes(5, bytes);
            statement.setString(6, MaLoaiKhoaHoc);
            statement.setString(7, MaKhoaHoc);
             
            
            // sends the statement to the database server
            int row = statement.executeUpdate();
            if (row > 0) {
            	System.out.println("thanh cong");
            }else{
            	System.out.println("fail");
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            // sets the message in request scope
    
             
            // forwards to the message page
           response.sendRedirect("static-chitietkhoahoc.jsp?khoahoc="+MaKhoaHoc);
      
        }
	}

}
