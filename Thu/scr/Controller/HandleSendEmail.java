package Controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.URL;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;
import Connection.DatabaseManagement;
import DAO.SendEmail;
import Model.TaiKhoan;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class HandleSendEmail
 */
@WebServlet("/HandleSendEmail")
public class HandleSendEmail extends HttpServlet {


	private boolean isMultipart;
	private String filePath;
	private int maxFileSize = 300 * 1024;
	private int maxMemSize = 4 * 1024;
	private File file ;

	/**
	 * handles form submission
	 */
	public void init( ){
		// Get the file location where it would be stored.
		filePath = 
				getServletContext().getInitParameter("file-upload"); 
	}
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		isMultipart = ServletFileUpload.isMultipartContent(request);
		java.io.PrintWriter out = response.getWriter( );
		HttpSession session = request.getSession(false);
		TaiKhoan tk = (TaiKhoan)session.getAttribute("taikhoan");
		String user = tk.getEmail();
		String googlepass=null ;
		String subject=null;
		String recipient=null;
		String message=null;
		List<String> addresses = new ArrayList<String>();
		if( !isMultipart ){
			try {
				googlepass = request.getParameter("googlepass");
				subject = request.getParameter("subject");
				recipient = request.getParameter("recipient");
				message = request.getParameter("message");
				if(!recipient.contains("@")){
					Connection con = (Connection)DatabaseManagement.getConnection();
					PreparedStatement pst = (PreparedStatement) con.prepareStatement("select email "
							+ "from khoahoc,hocvien,lophoc where khoahoc.TenKhoaHoc=? and khoahoc.MaKhoaHoc"
							+ "=lophoc.MaKhoa and lophoc.MaLop=hocvien.MaLop");
					pst.setString(1,recipient);
					ResultSet rs = (ResultSet) pst.executeQuery();
					while(rs.next()){
						addresses.add(rs.getString("Email"));
					}	
					rs.close();
					pst.close();
					con.close();
				}else{
					addresses.add(recipient);
				}
				SendEmail.sendMailToMany(subject, message,
						user, googlepass,addresses);

			} catch (Exception ex) {
				ex.printStackTrace();
			} finally {
				response.sendRedirect("static-guimail.jsp");;
			}
			return;
		}
		DiskFileItemFactory factory = new DiskFileItemFactory();
		// maximum size that will be stored in memory
		factory.setSizeThreshold(maxMemSize);
		// Location to save data that is larger than maxMemSize.
		factory.setRepository(new File("c:\\temp"));

		// Create a new file upload handler
		ServletFileUpload upload = new ServletFileUpload(factory);
		// maximum file size to be uploaded.
		upload.setSizeMax( maxFileSize );

		try{ 
			// Parse the request to get file items.
			List<FileItem> fileItems = upload.parseRequest(request);

			// Process the uploaded file items
			Iterator i = fileItems.iterator();


			while ( i.hasNext () ) 
			{
				FileItem fi = (FileItem)i.next();
				if ( !fi.isFormField () )	
				{

					// Get the uploaded file parameters
					String fieldName = fi.getFieldName();				
					String fileName = fi.getName();
					String contentType = fi.getContentType();

					boolean isInMemory = fi.isInMemory();
					long sizeInBytes = fi.getSize();
					// Write the file
					if( fileName.lastIndexOf("\\") >= 0 ){
						file = new File( filePath + 
								fileName.substring( fileName.lastIndexOf("\\"))) ;
					}else{
						file = new File( filePath + 
								fileName.substring(fileName.lastIndexOf("\\")+1)) ;
					}

					fi.write( file ) ;
				}else{
					InputStream input = fi.getInputStream();
					if(fi.getFieldName().equals("recipient")){
						byte[] str = new byte[input.available()];
						input.read(str);
						recipient = new String(str,"UTF8");

					}
					if(fi.getFieldName().equals("subject")){
						byte[] str = new byte[input.available()];
						input.read(str);
						subject = new String(str,"UTF8");
					}
					if(fi.getFieldName().equals("message")){
						byte[] str = new byte[input.available()];
						input.read(str);
						message = new String(str,"UTF8");
					}
					if(fi.getFieldName().equals("googlepass")){
						byte[] str = new byte[input.available()];
						input.read(str);
						googlepass = new String(str,"UTF8");
					}

				}
			}
		}catch(Exception ex) {
			System.out.println(ex);
		}



		try {
			if(!recipient.contains("@")){
				System.out.println("di vao neu ko co @");
				Connection con = (Connection)DatabaseManagement.getConnection();
				PreparedStatement pst = (PreparedStatement) con.prepareStatement("select email "
						+ "from khoahoc,hocvien,lophoc where khoahoc.TenKhoaHoc=? and khoahoc.MaKhoaHoc"
						+ "=lophoc.MaKhoa and lophoc.MaLop=hocvien.MaLop");
				pst.setString(1,recipient);
				ResultSet rs = (ResultSet) pst.executeQuery();
				while(rs.next()){
					addresses.add(rs.getString("Email"));
				}	
				rs.close();
				pst.close();
				con.close();
			}else{
				addresses.add(recipient);
			}
			SendEmail.sendEmailWithAttachment(user, googlepass,
					addresses, subject, message, file);

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			response.sendRedirect("static-guimail.jsp");;
		}

	}


}