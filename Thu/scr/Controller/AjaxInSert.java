package Controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Date;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import Model.KhoaHoc;
import DAO.TVVDAO;
/**
 * Servlet implementation class AjaxInSert
 */
@WebServlet("/AjaxInSert")
public class AjaxInSert extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private boolean isMultipart;
	private String filePath;
	private int maxFileSize = 300 * 1024;
	private int maxMemSize = 4 * 1024;
	private File file ;
	static String MaKhoaHoc;
	static String TenKhoaHoc;
	static String NgayKhaiGiang;
	static String GioiThieu;
	static String HocPhi;
	static String MaLoaiKhoaHoc;
	static String url;
    /**
     * @see HttpServlet#HttpServlet()
     */
	public void init( ){
		// Get the file location where it would be stored.
		filePath = 
				getServletContext().getRealPath("/")+"UploadFile\\";
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
		try{
			isMultipart = ServletFileUpload.isMultipartContent(request);
			if(!isMultipart){
				System.out.println("khong file de up");
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
							url=fileName;						
						}else{
							file = new File( filePath + 
									fileName.substring(fileName.lastIndexOf("\\")+1)) ;
							url=fileName;				
						}
						fi.write( file ) ;
						
					}else{
						InputStream input = fi.getInputStream();
						if(fi.getFieldName().equals("MaKhoaHoc")){
							byte[] str = new byte[input.available()];
							input.read(str);						
							MaKhoaHoc = new String(str,"UTF8");
						}
						if(fi.getFieldName().equals("TenKhoaHoc")){
							byte[] str = new byte[input.available()];
							input.read(str);
							TenKhoaHoc = new String(str,"UTF8");
						}
						if(fi.getFieldName().equals("date")){
							byte[] str = new byte[input.available()];
							input.read(str);
							NgayKhaiGiang = new String(str,"UTF8");
						}
						if(fi.getFieldName().equals("GioiThieu")){
							byte[] str = new byte[input.available()];
							input.read(str);
							GioiThieu = new String(str,"UTF8");
						}
						if(fi.getFieldName().equals("HocPhi")){
							byte[] str = new byte[input.available()];
							input.read(str);
							HocPhi = new String(str,"UTF8");
						}
						if(fi.getFieldName().equals("MaLoaiKhoaHoc")){
							byte[] str = new byte[input.available()];
							input.read(str);
							MaLoaiKhoaHoc = new String(str,"UTF8");
						}
						
					}
					
				}										
			}catch(Exception ex) {
				System.out.println(ex);
			}			
			boolean f = TVVDAO.InsertKhoaHoc(new KhoaHoc(MaKhoaHoc,TenKhoaHoc,Date.valueOf(NgayKhaiGiang),GioiThieu,
					Double.valueOf(HocPhi),MaLoaiKhoaHoc,url));
			if(f){
				response.sendRedirect("NewNienKhoa.jsp");
			}
			else{
				System.out.println("hihi");
				response.sendRedirect("NewNienKhoa.jsp");
			}
		}catch(Exception e){
			e.printStackTrace();
			response.sendRedirect("NewNienKhoa.jsp");
		}
	}

}
