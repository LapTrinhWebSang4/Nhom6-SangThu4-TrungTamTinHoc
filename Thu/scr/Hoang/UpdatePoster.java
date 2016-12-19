package Hoang;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import Connection.DatabaseManagement;

/**
 * Servlet implementation class UpdatePoster
 */
@WebServlet("/UpdatePoster")
@MultipartConfig(maxFileSize = 16177215)
public class UpdatePoster extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatePoster() {
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
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		int i=0;
	
		
		
		while(request.getParameter("makhoahoc"+i)!=null)
		{
		InputStream inputStream = null;
		System.out.print("so:"+i);
		Part filePart = request.getPart("photo"+i);
		
		
		String makhoahoc = request.getParameter("makhoahoc"+i);
		
		String dacbiet = request.getParameter("se"+i);
		
		
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
			if(filePart.getSize()!=0)
			{
			pst = con.prepareStatement("update khoahoc set Hinh=?, db=? where MaKhoaHoc=?");
			System.out.println(dacbiet+"   "+makhoahoc);
			
			pst.setBlob(1, inputStream,filePart.getSize());
			if(dacbiet.equals("1"))
			{
				
				pst.setBoolean(2,true);
			}
			else if(dacbiet.equals("0"))
				{
				pst.setBoolean(2,false);
				}
			
				
			
			pst.setString(3,makhoahoc);
			pst.executeUpdate();
			}
			else{
				pst = con.prepareStatement("update khoahoc set db=? where MaKhoaHoc=?");
				System.out.println(dacbiet+ "-- "+makhoahoc);
				
				if(dacbiet.equals("1"))
				{
					
					pst.setBoolean(1,true);
				}
				else if(dacbiet.equals("0"))
					{
					pst.setBoolean(1,false);
					}
				
				/*if(dacbiet=="1")
				{
					
					pst.setBoolean(1,true);
				}
				else if(dacbiet=="0")
					{
					pst.setBoolean(1,false);
					}*/
				pst.setString(2,makhoahoc);
				pst.executeUpdate();
				System.out.println("ok");
			}
			i++;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			i++;
		}
		
		}
		response.sendRedirect("QTNDPT.jsp");
		
	}

}
