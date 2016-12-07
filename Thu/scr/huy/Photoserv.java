package huy;

import java.io.IOException;
import java.io.InputStream;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Photoserv
 */
@WebServlet("/Photoserv")
public class Photoserv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Photoserv() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String connectionURL = "jdbc:mysql://localhost:3306/ttth";
		java.sql.Connection con=null;
		String id = request.getParameter("id");
		String loai = request.getParameter("loai");
		try{			
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			con=DriverManager.getConnection(connectionURL,"root","1234");			
			Statement st1=con.createStatement();
			ResultSet rs1 = st1.executeQuery("select Hinh from "+loai+" where Ma"+loai+" ='"+id+"'");
			String imgLen="";
			if(rs1.next()){
				imgLen = rs1.getString(1);
				System.out.println(imgLen.length());
			}	
			rs1 = st1.executeQuery("select Hinh from "+loai+" where Ma"+loai+"='"+id+"'");
			if(rs1.next()){
				int len = imgLen.length();
				byte [] rb = new byte[len];
				InputStream readImg = rs1.getBinaryStream(1);
				int index=readImg.read(rb, 0, len);	
				System.out.println("index"+index);
				st1.close();
				response.reset();
				response.setContentType("image/jpg");
				response.getOutputStream().write(rb,0,len);
				response.getOutputStream().flush();				
			}
		}
		catch (Exception e){
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
